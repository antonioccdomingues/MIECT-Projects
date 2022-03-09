#include <iostream>
#include <math.h>
#include <vector>
#include <string>
using namespace std;

class Golomb{
    private:
        int q, r, m;

    private:
        string leftPart(int m){ //FUNÇÃO PARA CODIFICAR PARA CODIGO UNÁRIO
            string left = "";

            //TODO dar um check nisto que nem sempre o valor é correto 
            if(ceil(log2(m))== floor(log2(m))){ // se o m é potencia de 2
                
                if(q==0){
                    left = "1";
                }else{
                    left = "0";
                    for(int i =0; i<q; i++){
                        if(i+1 == q){ // para o ultimo 0
                            left += "1";
                        }else{
                            left +="0";
                        }
                    }
                }
            }else{ //SE nao é potencia de 2

                if(q==0){
                    left = "0";
                }else{
                    left = "1";
                    for(int i =0; i<q; i++){
                        if(i+1 == q){ // para o ultimo 0
                            left += "0";
                        }else{
                            left +="1";
                        }
                    }
                }
            }
            
            return left;
        }

    private:
        string decToBinary(int n, int bits) //FUNÇÃO AUXILIAR QUE CONVERTE DECIMAL EM BINARIO
    {
        // array to store binary number
        int binaryNum[32];
        string stringBinario;
        
    
        // counter for binary array
        int i = 0;
        while (n > 0) {
    
            // storing remainder in binary array
            binaryNum[i] = n % 2;
            n = n / 2;
            i++;
        }
    
        // printing binary array in reverse order
        for (int j = i - 1; j >= 0; j--){
            
            stringBinario = stringBinario + to_string(binaryNum[j]);
        }
        int checkN;
        if (bits == -1){
            checkN =1;
        }
        else{
            checkN =0;    
        } 

        while(checkN!=1 ){
            if(stringBinario.length()< bits){
                stringBinario= "0" + stringBinario;
            }else{
                checkN =1;
            }
        }
        return stringBinario;
    }

    private:
    int binaryToDecimal(int n)  // FUNÇÃO AUXILIAR QUE CONVERTE BINÁRIO EM DECIMAL
    {
        int num = n;
        int dec_value = 0;
    
        // Initializing base value to 1, i.e 2^0
        int base = 1;
    
        int temp = num;
        while (temp) {
            int last_digit = temp % 10;
            temp = temp / 10;
    
            dec_value += last_digit * base;
    
            base = base * 2;
        }
    
        return dec_value;
    }
    
    public: 
        string Encoder(int i, int m){

            q = floor(i/m);

            r = i - (q*m);
            //cout << "q = " << q<< " r= " << r << " ";

            m = m;
            int b =  ceil(log2(m));
            //cout << " b = " << b<< " ";
            string right, left, final;
            if(ceil(log2(m))!= floor(log2(m))){ // SE O M NÃO É POTENCIA DE 2
                //cout<< "pow(2, b)-m= " << pow(2, b)-m << " ";
                if( r<pow(2, b)-m ){
                right =decToBinary(r, b-1);
                //cout << "right = " << right << " ";
                }else{
                    //cout<< "nao entra no 1º if, mas entra no 2º ";
                    right = decToBinary((r+ pow(2,b)- m), b);
                }  
                left = leftPart(m);

            }else{ // SE O M É POTENCIA DE 2
                int nCasas = log2(m);
                
                left = leftPart(m);
                
                right = decToBinary(r, (-1));
 
                for(int i = 0 ; i<nCasas; i++){
                    if (right.length()< nCasas){
                        right = "0" + right;
                    }
                }
            }
            
            final = left + right;
            return (final);
        }

    public: 
        int decoder(string codeword, int m){

            int b =  ceil(log2(m));
            //cout << "b= "<<b<<endl;
            int q;
            int r;
            int tamanhoParteDireita;
            int t = (pow(2,b) - m);
            int countZeros;
            
            //cout << t <<endl;
            string parteDireita = "";

            if(ceil(log2(m))== floor(log2(m))){ // se o m é potencia de 2
            if (m == 1){
                    for(int i = 0; i< codeword.length(); i++){
                        if(codeword[i] == '0'){
                            countZeros +=1; // o countZeros é igual ao q
                        }
                    }
                    return countZeros;
                }
                int nCasas = log2(m);
                for(int i =0; i< codeword.size(); i++){
                    if(codeword[0] != '0'){
                        q = 0;
                        tamanhoParteDireita= codeword.size() - (q+1);
                        break;
                    }else{
                        if(codeword[i+1] == '1'){
                            q = i+1;
                            tamanhoParteDireita= codeword.size() - (q+1);
                            break;
                        }
                    }
                }
                for(int i =0; i<codeword.size()-(q+1); i++){
                    parteDireita = parteDireita + codeword[i+q+1]  ;
                }
                r = binaryToDecimal(stoi(parteDireita));
                //cout <<"cona"<< parteDireita<< endl;

            }else{
                for(int i =0; i< codeword.size(); i++){
                    if(codeword[0] != '1'){
                        q = 0;
                        tamanhoParteDireita= codeword.size() - (q+1);
                        break;
                    }else{
                        if(codeword[i+1] == '0'){
                            q = i+1;
                            tamanhoParteDireita= codeword.size() - (q+1);
                            break;
                        }
                    }
                }
                //cout << q<< endl;
                for(int i =0; i<codeword.size()-(q+1); i++){
                    parteDireita = parteDireita + codeword[i+q+1]  ;
                }
                
                if(tamanhoParteDireita == (b-1)){
                    r = binaryToDecimal(stoi(parteDireita));
                }else{
                    r =binaryToDecimal(stoi(parteDireita));
                    r = r-t;
                }

            }
            int number = r+ (q*m);
            return number;
        }
    
    public:
        vector<int> decoderByBitAcrescentados(string palavra, int m, int bitsAcrescentados){

            vector<int> palavrasDecifradas;

            if(ceil(log2(m))== floor(log2(m))){ //se o m é potencia de 2
                int nCasasDireita = log2(m);
                int inicioPalavra=0;
                int q, r;
                int i;  //palavra final

                for(int i = 0; i< palavra.size(); i++){
                    if(bitsAcrescentados> 0){
                        if(i ==palavra.size()- 8){
                            break;
                        }
                    }
                    if(palavra[i] == '1' && i >= inicioPalavra){
                        q = i- inicioPalavra;
                        string direita = palavra.substr(i+1, nCasasDireita);
                        r = binaryToDecimal(stoi(direita));
                        inicioPalavra = i+nCasasDireita+2;
                        i = r + (q*m);
                        if(palavra[inicioPalavra-1] == '1'){    //numero é negativo
                            palavrasDecifradas.push_back(-i);
                        }else{
                            palavrasDecifradas.push_back(i);
                        }
                    }
                }

            }else{
                //vou fazer todas as combinações possiveis do resto, e ver se a parte da direita equivale a alguma delas

                string restos[m];   //possui todas as partes direitas possiveis
                int b =  ceil(log2(m));

                for(int i = 0; i< m; i++){  //aqui o i simula o r
                    if(i < pow(2,b)- m){
                        restos[i] = decToBinary(i, b-1);
                    }else{
                        restos[i] = decToBinary((i+ pow(2,b)- m), b);
                    }
                }

                int inicioPalavra=0;
                int q, r;
                int i;  //palavra final
                string palavraDireita = "";

                for(int i = 0; i< palavra.size(); i++){
                    if(bitsAcrescentados> 0){
                        if(i ==palavra.size()- 8){
                            break;
                        }
                    }

                    if(palavra[i] == '0' && i >= inicioPalavra){
                        q = i- inicioPalavra;
                        //descobrir a parte direita da palavra
                        for(int t = 0; t< m; t++){
                            string palavraDireitaTemp1 = palavra.substr(i+1, b-1);
                            string palavraDireitaTemp2 = palavra.substr(i+1, b);

                            if(restos[t].compare(palavraDireitaTemp1) == 0){
                                palavraDireita = palavraDireitaTemp1;
                                r = t;
                            }else if(restos[t].compare(palavraDireitaTemp2) == 0){
                                palavraDireita = palavraDireitaTemp2;
                                r = t;
                            }
                        }
                        inicioPalavra = i+palavraDireita.size()+2;
                        i = r + (q*m);

                        if(palavra[inicioPalavra-1] == '1'){    //numero é negativo
                            palavrasDecifradas.push_back(-i);
                        }else{
                            palavrasDecifradas.push_back(i);
                        }
                        
                        
                    }
                }
            }
            return palavrasDecifradas;
        }

        vector<int> decoderByBit(string palavra, int m){

            vector<int> palavrasDecifradas;

            if(ceil(log2(m))== floor(log2(m))){ //se o m é potencia de 2
                int nCasasDireita = log2(m);
                int inicioPalavra=0;
                int q, r;
                int i;  //palavra final

                for(int i = 0; i< palavra.size(); i++){

                    if(palavra[i] == '1' && i >= inicioPalavra){
                        q = i- inicioPalavra;
                        string direita = palavra.substr(i+1, nCasasDireita);
                        r = binaryToDecimal(stoi(direita));
                        inicioPalavra = i+nCasasDireita+2;
                        i = r + (q*m);
                        if(palavra[inicioPalavra-1] == '1'){    //numero é negativo
                            palavrasDecifradas.push_back(-i);
                        }else{
                            palavrasDecifradas.push_back(i);
                        }
                    }
                }

            }else{
                //vou fazer todas as combinações possiveis do resto, e ver se a parte da direita equivale a alguma delas

                string restos[m];   //possui todas as partes direitas possiveis
                int b =  ceil(log2(m));

                for(int i = 0; i< m; i++){  //aqui o i simula o r
                    if(i < pow(2,b)- m){
                        restos[i] = decToBinary(i, b-1);
                    }else{
                        restos[i] = decToBinary((i+ pow(2,b)- m), b);
                    }
                }

                int inicioPalavra=0;
                int q, r;
                int i;  //palavra final
                string palavraDireita = "";

                for(int i = 0; i< palavra.size(); i++){
                    if(palavra[i] == '0' && i >= inicioPalavra){
                        q = i- inicioPalavra;
                        //descobrir a parte direita da palavra
                        for(int t = 0; t< m; t++){
                            string palavraDireitaTemp1 = palavra.substr(i+1, b-1);
                            string palavraDireitaTemp2 = palavra.substr(i+1, b);

                            if(restos[t].compare(palavraDireitaTemp1) == 0){
                                palavraDireita = palavraDireitaTemp1;
                                r = t;
                            }else if(restos[t].compare(palavraDireitaTemp2) == 0){
                                palavraDireita = palavraDireitaTemp2;
                                r = t;
                            }
                        }
                        inicioPalavra = i+palavraDireita.size()+2;
                        i = r + (q*m);

                        if(palavra[inicioPalavra-1] == '1'){    //numero é negativo
                            palavrasDecifradas.push_back(-i);
                        }else{
                            palavrasDecifradas.push_back(i);
                        }
                        
                        
                    }
                }
            }
            return palavrasDecifradas;
        }
};