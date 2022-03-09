#include <iostream>
#include <fstream>
using namespace std;

class BitStream{

    public: 
        string readnbits(string fnamein){ //funcao que le os bits do ficheiro 
            ifstream ifs(fnamein); //ficheiro que vai ser lido

            char c;
            string bits="";

            while (ifs.get(c)) //obtem os caracteres do ficheiro
            {
                for (int i = 7; i >= 0; i--) //para cada char (byte)
                    bits+= to_string( ((c >> i) & 1)); //cada bit é comparado com 1 (&) e concatenado na string
                    
            }

            return bits;

        }; 

        void read1bit(string fnamein, int nbyte, short nbit){ //funcao que permite ler um bit de um byte  e imprime no terminal
            ifstream ifs(fnamein); //ficheiro que vai ser lido

            int count = 0;
            char c; 
            while (ifs.get(c) && count < nbyte) //percorrer o ficheiro de texto ate chegar ao byte desejado
            {
                count++; 
                if(count == nbyte){ //quando chega ao byte desejado
                    cout << ((c >> nbit)  & 0x01) << endl; //faz shift right ate ao bit desejado, compara com 1 (&1) e imprime-o
                }
            }
            
        }

        void writenbits(string fnameout, string bitStr){ //funcao que permite escrever n bits num ficheiro

            ofstream ofs(fnameout); //ficheiro onde vao ser escritos os bits

            int bittt;
            int i=0;
            int count = 1; 
            unsigned char byteBuffer; //buffer para imprimir no ficheiro de 8 em 8 bits recebidos

            while(i < bitStr.size()){ //
                //cout << "Bit " << count << endl; 
                //cin >> bit; //guarda o valor lido

                bittt = bitStr[i];

                if (bittt == '0'){ //se for 0
                    byteBuffer = byteBuffer << 1; //o buffer sofre um shift left 

                }else if(bittt == '1'){ //se for 1 
                    byteBuffer = (byteBuffer << 1) | 0x01; //o buffer sofre um shift left e um (or 1)

                }

                if(count%8 == 0){ //imprime no ficheiro de 8 em 8 bits (byte em byte)
                    //cout << "byte" << endl;
                    ofs << byteBuffer; //imprime o byte no ficheiro
                    byteBuffer = {}; //reset do buffer
                }

                if(bitStr.size() % 8 != 0 && i+1 == bitStr.size()){ //se o numero de bits nao for multiplo de 8
                    for(int j=0; j<(8-(bitStr.size()%8)); j++){
                        byteBuffer = 0^byteBuffer << 1; //preenche as restantes posiçoes com 0 
                    }

                    ofs << byteBuffer; //imprime no ficheiro 
                }

                count++;
                i++;

            }
        }

        unsigned char buff; //variaveis globais
        int cnt=0; //para serem atualizadas sempre q a funcao e chamada

        void write1bit(string fnameout, short bit){ //funcao que permite escrever 1 bit no ficheiro
            ofstream ofs(fnameout); //ficheiro onde é escrito o bit
            
            if (bit == 0x00){ //se bit for 0
                buff = buff << 1; //o buffer sofre um shift left 
            }else if(bit == 0x01){ //se bit for 1 
                buff = (buff << 1) | 0x01; //o buffer sofre um shift left e um (or 1)
            }

            cnt++;              //novo bit
           
            if (cnt == 8) {
                ofs << buff; //o buffer e imprimido no file apos ter 8 bits
                buff = {}; //reset do buffer
                cnt = 0; //reset do counter
            }

        }
};
