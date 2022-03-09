#include "../include/BitStream.h"

//ficheiro de teste para a class BitStream

int main(){

    BitStream bs; //objeto do tipo bitstream
    
    bs.writenbits("bitfileout", "001111010010011000101010"); //funcao writenbits (ficheiro a escrever, palavra a escrever). escreve um array de bits no ficheiro
    bs.read1bit("bitfileout", 3, 1); //funcao read1bit (nome do ficheiro a ler, byte, bit do byte). imprime no terminal o bit do byte desejado
    cout << bs.readnbits("bitfileout") << endl; //funcao readnbits (nome do ficheiro a ler). imprime no terminal os bits do ficheiro
    bs.write1bit("bitfileout2", 0); //funcao write1bit (ficheiro a escrever, bit a escrever). escreve um byte no ficheiro, bit a bit
    bs.write1bit("bitfileout2", 0);
    bs.write1bit("bitfileout2", 1);
    bs.write1bit("bitfileout2", 0);
    bs.write1bit("bitfileout2", 0);
    bs.write1bit("bitfileout2", 0);
    bs.write1bit("bitfileout2", 1);
    bs.write1bit("bitfileout2", 1);

    return 0;
}