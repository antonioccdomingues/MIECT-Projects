#include <iostream>
#include <opencv2/opencv.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui.hpp>
#include "../../include/BitStream.h"
#include <vector>
#include "../../include/Golomb.h"
using namespace cv;
using namespace std;

double mediaResidual[3] = {0, 0, 0};
int m[3] = {0,0,0};
int rows, columns;

int maximo(int a, int b){
    if (a>b) return a;
    else if (b>a) return b;
    else return a;
}

int minimo(int a, int b){
    if (a<b) return a;
    else if (b<a) return b;
    else return a;
}

vector<vector<int>> prediction(vector<vector<int>>& entrada){ //função para calcular a prediction da residual(que vai ser descodificada)
        
        vector<vector<int>> prediction( rows , vector<int> (columns));
        int a;
        int b;
        int c;
        for(int i=0; i<rows; i++){ //cada linha
            for(int j=0; j<columns; j++){ //cada coluna
                if (i == 0 || j == 0){
                    if(i == 0 && j ==0){
                        a = 0;
                        b = 0;
                        c = 0;
                    }else if (j == 0){
                        a = 0;
                        b = entrada[i-1][j];
                        c = 0;
                    }else if (i ==0){
                        a = entrada[i][j-1];
                        b = 0;
                        c = 0;
                    }
                    
                }else{
                    a = entrada[i][j-1];
                    b = entrada[i-1][j];
                    c = entrada[i-1][j-1];
                }

                if(c >= maximo(a, b)){
                prediction[i][j] = minimo(a, b);

                } else if(c <= minimo(a, b)){
                    prediction[i][j] = maximo(a, b);

                }else{
                    prediction[i][j] = a+b-c;
                }
            }
        }
        return prediction;
    }

vector<vector<double>> residual(int rows, int columns, vector<vector<int>>& predictor, Mat matImageIn, int canal){    //função que calcula a residual O CANAL É PARA IDENTIFICAR SÉ É PARA O R,G OU B
    
    double soma =0;
    vector<vector<double>> residual( rows , vector<double> (columns));

    for(int i=0; i<rows; i++){ //cada linha
        for(int j=0; j<columns; j++){ //cada coluna
            int valueOriginal;
            valueOriginal = matImageIn.at<Vec3b>(i,j)[canal];
            residual[i][j] = valueOriginal - predictor[i][j];
            //cout << "residual i = "<< i<< " j = "<< j <<": "<< residual[i][j]<<endl;

            if(residual[i][j]< 0){
                soma += (-1)*residual[i][j];
            }else{
                soma += residual[i][j];
            }
            
        }
    }
    //cout<< "soma= "<<soma<<endl;
    mediaResidual[canal] = soma /(rows*columns); // média dos valores para calcular o m otimo para o golomb
    //cout << mediaResidual[canal]<<endl;
    return residual;
}

string codificarResidual(vector<vector<double>>& residual, int canal){ //O CANAL SERVE PARA IR BUSCAR A MÉDIA DOS VALORES DA RESIDUAL DOS R's G's OU B's
    Golomb g;
    BitStream stream;
    string escreveFicheiro = "";
    string valueCodified = "";
    
    double p = 1/(mediaResidual[canal]+1); 
    //cout<< "p = " << p<< endl;
    m[canal] = ceil(-(1/(log2(1-p))));
    cout<< "m = "<< m[canal]<< endl;
    

    //---------codificar a residual------------
    for(int i=0; i<rows; i++){
        for(int j=0; j<columns; j++){

            double r; //armazenamento do valor residual para a matriz R caso seja negativo

            if(residual[i][j]<0){  // PARA NUMEROS NEGATIVOS
                r = -1*residual[i][j];
            }else{                  //PARA NUMEROS POSITIVOS
                r = residual[i][j];
            }
            
            if(residual[i][j]<0){  //SE FOR UM NUMERO NEGATIVO
                string valueCodified = g.Encoder(r, m[canal]); 
                valueCodified+= "1";
                escreveFicheiro += valueCodified;
                //cout<< "i = "<< residual[i][j]<<endl;
                //cout << valueCodified<<endl;
                
            }else{                  //SE FOR POSITIVO
                
                string valueCodified = g.Encoder(r, m[canal]);
                valueCodified+= "0";
                escreveFicheiro += valueCodified;
                //cout<< "i = "<< residual[i][j]<<endl;
                //cout << valueCodified<<endl;
                
            }
        }
    }
    return escreveFicheiro;
}



int main(int argc, char* argv[]){

    String imageIn = argv[1]; //imagem a ser alterada

    Mat matImageIn = imread(imageIn); //le a imagem e guarda-a num objeto MAT (matrix n-dimensional)
    //-----------------------------------CONVERSÃO DE RGB PARA YUV-----------------------------------
    for(int i=0; i<rows; i++){ //cada linha
        for(int j=0; j<columns; j++){ //cada coluna
            matImageIn.at<Vec3b>(i,j)[1] = (0.299 * matImageIn.at<Vec3b>(i,j)[2]) + (0.587 * matImageIn.at<Vec3b>(i,j)[1]) + (0.114 * matImageIn.at<Vec3b>(i,j)[0]);
            matImageIn.at<Vec3b>(i,j)[0] = 128 - (0.168736 * matImageIn.at<Vec3b>(i,j)[2]) -(0.331264 * matImageIn.at<Vec3b>(i,j)[1]) + (0.5 * matImageIn.at<Vec3b>(i,j)[0]);
            matImageIn.at<Vec3b>(i,j)[2] = 128 + (0.5 * matImageIn.at<Vec3b>(i,j)[2]) -(0.418688 * matImageIn.at<Vec3b>(i,j)[1]) - (0.081312 * matImageIn.at<Vec3b>(i,j)[0]);
        }
    }


    columns = matImageIn.size().width; //columns
    rows = matImageIn.size().height; //rows

    vector<vector<int>> predictorR( rows , vector<int> (columns));
    vector<vector<int>> predictorG( rows , vector<int> (columns));
    vector<vector<int>> predictorB( rows , vector<int> (columns));

    vector<vector<double>> residualR( rows , vector<double> (columns));
    vector<vector<double>> residualG( rows , vector<double> (columns));
    vector<vector<double>> residualB( rows , vector<double> (columns));


    int aR, aG, aB, bR, bG, bB, cR, cG, cB;

    for(int i=0; i<rows; i++){ //cada linha
        for(int j=0; j<columns; j++){ //cada coluna
            if (i == 0 || j ==0){   // Para inicializar a primeira linha e a primeira coluna com os valores a b c para prosseguir com a prediction

                if (i == 0 && j == 0){ //se for o primeiro valor da matriz
                    aR = 0;
                    bR = 0;
                    cR = 0;

                    aG = 0;
                    bG = 0;
                    cG = 0;

                    aB = 0;
                    bB = 0;
                    cB = 0;

                }else if (j == 0){  //se for a primeira coluna da matriz
                    aR = 0;
                    bR = matImageIn.at<Vec3b>(i-1,j)[2];    //R
                    cR = 0;

                    aG = 0;
                    bG = matImageIn.at<Vec3b>(i-1,j)[1];    //G
                    cG = 0;

                    aB = 0;
                    bB = matImageIn.at<Vec3b>(i-1,j)[0];    //B
                    cB = 0;

                }else if (i ==0){   //se for a primeira linha da matriz
                    aR = matImageIn.at<Vec3b>(i,j-1)[2];    //R
                    bR = 0;
                    cR = 0;

                    aG = matImageIn.at<Vec3b>(i,j-1)[1];    //G
                    bG = 0;
                    cG = 0;

                    aB = matImageIn.at<Vec3b>(i,j-1)[0];    //B
                    bB = 0;
                    cB = 0;
                }

            }else{  //para os valores que nao estao nem na primeira coluna nem na primeira linha
                aR = matImageIn.at<Vec3b>(i,j-1)[2];
                bR = matImageIn.at<Vec3b>(i-1,j)[2];
                cR = matImageIn.at<Vec3b>(i-1,j-1)[2];

                aG = matImageIn.at<Vec3b>(i,j-1)[1];
                bG = matImageIn.at<Vec3b>(i-1,j)[1];
                cG = matImageIn.at<Vec3b>(i-1,j-1)[1];

                aB = matImageIn.at<Vec3b>(i,j-1)[0];
                bB = matImageIn.at<Vec3b>(i-1,j)[0];
                cB = matImageIn.at<Vec3b>(i-1,j-1)[0];
            }

            //-------------PREDITOR PARA OS VALORES R---------------

            if(cR >= maximo(aR, bR)){
                predictorR[i][j] = minimo(aR, bR);

            } else if(cR <= minimo(aR, bR)){
                predictorR[i][j] = maximo(aR, bR);

            }else{
                predictorR[i][j] = aR+bR-cR;
            }
            //-------------PREDITOR PARA OS VALORES G---------------

                if(cG >= maximo(aG, bG)){
                predictorG[i][j] = minimo(aG, bG);

            } else if(cG <= minimo(aG, bG)){
                predictorG[i][j] = maximo(aG, bG);

            }else{
                predictorG[i][j] = aG+bG-cG;
            }
            //-------------PREDITOR PARA OS VALORES B---------------

                if(cB >= maximo(aB, bB)){
                predictorB[i][j] = minimo(aB, bB);

            } else if(cB <= minimo(aB, bB)){
                predictorB[i][j] = maximo(aB, bB);

            }else{
                predictorB[i][j] = aB+bB-cB;
            }
        } 
    }
    
    //----------------------CALCULO DA RESIDUAL---------------------------
    residualR = residual(rows, columns, predictorR, matImageIn, 2); 
    residualG = residual(rows, columns, predictorG, matImageIn, 1);
    residualB = residual(rows, columns, predictorB, matImageIn, 0);

    //--------------------CODIFICAR A RESIDUAL COM GOLOMB-----------------
    string residualRCodificada = codificarResidual(residualR, 2);
    string residualGCodificada = codificarResidual(residualG, 1);
    string residualBCodificada = codificarResidual(residualB, 0);

    //cálculo de quantos bits foram acrescentados, caso ao escrever no ficheiro o ultimo byte nao fique completo

    long unsigned int temp[3] =  {residualBCodificada.size(), residualGCodificada.size(), residualRCodificada.size()};
    int nbits_acrescentados[3] = {0,0,0};
    
    for(int i= 0; i< 3; i++){
        if(temp[i] %8 != 0){
        nbits_acrescentados[i] = 8-(temp[i]%8);
        }
    }

    //----------------------ESCREVER A RESIDUAL NO FICHEIRO BINARIO------------------
    BitStream stream;
    Golomb g;
    stream.writenbits("rMatrix", residualRCodificada); 
    stream.writenbits("gMatrix", residualGCodificada);
    stream.writenbits("bMatrix", residualBCodificada);
    //---------------------------DESCODIFICAÇÃO------------------------------------------

    string residualRDescodificada = stream.readnbits("rMatrix");
    string residualGDescodificada = stream.readnbits("gMatrix");
    string residualBDescodificada = stream.readnbits("bMatrix");

    cout << "A processar a imagem..."<< endl << "aguarde"<< endl;

    //-------------------obtenção dos valores inteiros -----------------------------------
    vector <int> R = g.decoderByBitAcrescentados(residualRDescodificada, m[2], nbits_acrescentados[2]);
    vector <int> G = g.decoderByBitAcrescentados(residualGDescodificada, m[1], nbits_acrescentados[1]);
    vector <int> B = g.decoderByBitAcrescentados(residualBDescodificada, m[0], nbits_acrescentados[0]);
    
    vector<vector<int>> resRDescodificada( rows , vector<int> (columns));
    vector<vector<int>> resGDescodificada( rows , vector<int> (columns));
    vector<vector<int>> resBDescodificada( rows , vector<int> (columns));
    int contador = 0;
    for(int i=0; i<rows; i++){ //cada linha
        for(int j=0; j<columns; j++){ //cada coluna
        resRDescodificada[i][j] = R[contador];
        resGDescodificada[i][j] = G[contador];
        resBDescodificada[i][j] = B[contador];
        contador++;
        }
    }
    vector<vector<int>> predRDescodificada( rows , vector<int> (columns));
    vector<vector<int>> predGDescodificada( rows , vector<int> (columns));
    vector<vector<int>> predBDescodificada( rows , vector<int> (columns));

    //calcular a prediction da residual para depois somar as duas e obter a imagem final
    predRDescodificada = prediction(resRDescodificada);
    predGDescodificada = prediction(resGDescodificada);
    predBDescodificada = prediction(resBDescodificada);

    //inicialização dos vetores r g b para armazenar os valores finais da imagem apos descodificação
    vector<vector<int>> originalRDescodificada( rows , vector<int> (columns));
    vector<vector<int>> originalGDescodificada( rows , vector<int> (columns));
    vector<vector<int>> originalBDescodificada( rows , vector<int> (columns));

    //OBTENÇÃO DOS VALORES FINAIS (RESIDUAL + PREDICTION DA RESIDUAL)
    for(int i=0; i<rows; i++){ //cada linha
        for(int j=0; j<columns; j++){ //cada coluna
        originalRDescodificada[i][j] = predRDescodificada[i][j] + resRDescodificada[i][j];
        originalGDescodificada[i][j] = predGDescodificada[i][j] + resGDescodificada[i][j];
        originalBDescodificada[i][j] = predBDescodificada[i][j] + resBDescodificada[i][j];
        }
    }

    //imagem de saida após descodificação
    Mat matImageOut = Mat::zeros(Size(matImageIn.cols, matImageIn.rows), matImageIn.type()); //inicializaçao do objeto out (Mat é inicializada a zeros)
    
     for(int i=0; i<rows; i++){ //cada linha
        for(int j=0; j<columns; j++){ //cada coluna
            matImageOut.at<Vec3b>(i,j)[0] = originalBDescodificada[i][j]; //B
            matImageOut.at<Vec3b>(i,j)[1] = originalGDescodificada[i][j]; //G
            matImageOut.at<Vec3b>(i,j)[2] = originalRDescodificada[i][j]; //R
        }

    }
    
    imshow("original", matImageIn); //show original
    imshow("image decoded", matImageOut); //show copy
    waitKey(0);
    return EXIT_SUCCESS;
}
