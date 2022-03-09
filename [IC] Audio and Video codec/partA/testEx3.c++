#include "../include/Golomb.h"
#include <stdio.h>
#include <stdlib.h> 
#include <time.h>
#include <assert.h>

int main(){

    /* initialize random seed: */
    srand (time(NULL));

    Golomb g; //objeto do tipo bitstream

    cout << g.Encoder(7, 5) << endl;    //codificar o inteiro 7, com m = 5 (tem de dar 1010 conforme slides da teoria)
    cout << g.Encoder(14, 5) << endl;   // codificar o inteiro 14, com m = 5 tem de dar 110111

    cout << g.decoder("1010", 5) << endl;   //descodificar 1010 com m= 5 que vai ter de dar 7 (valor acima testado)
    cout << g.decoder("110111", 5) << endl; //descodificar 110111 com m= 5 que vai ter de dar 14 (valor acima testado)
    
    int valores;
    cout << "quantos valores quer codificar e descodificar aleatoriamente?"<< endl; 
    cin  >> valores;
    
    string save[valores];
    int valor[valores];
    
    for(int i = 0; i< valores; i++){
        valor[i] = rand() % 51;     // gerar valor a codificar entre 0 e 50      
    }
    int soma = 0;
    double media;
     
    for(int i = 0; i< valores; i++){     // calculo do m ótimo
        soma += valor[i];
    }
    media = soma/valores;
    double p = 1/(media+1);
    int m = ceil(-(1/(log2(1-p)))); //obtenção do valor m
    cout << endl<<"m = " << m <<endl<<endl;

    for(int i = 0; i<valores; i++){
        save[i] = g.Encoder(valor[i], m);
        int temp = g.decoder(save[i], m);

        assert(temp== valor[i]);    //VERIFICA SE O VALOR DESCODIFICADO É IGUAL AO VALOR I, QUE FOI CODIFICADO

        cout<< "i = " << valor[i]<< " codeword = " << save[i]<<endl;
        cout << "palavra " << save[i] << " inteiro =" << temp << endl<< endl;
    }
    
    return 0;
}