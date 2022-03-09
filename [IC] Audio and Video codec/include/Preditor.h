#include "AudioFile.h"
#include "BitStream.h"
#include "Golomb.h"
#include <iostream>
#include <vector>
#include <math.h>
#include <map>




using namespace std;

#define GET_VARIABLE_NAME(Variable) (#Variable)

class Preditor{

    private:

        string name;

        double h_x;     // entropy of original audio file 
        double h_r;     // entropy of prediction

        int m;

        int size; 
        vector<int> c = {};             // initial vector

        vector<int> r_n = {};           // prediction vector
        vector<int> not_x_n = {};

        string decToBinary(int n) {
            // array to store binary number
            int binaryNum[32];
            string stringBinario;
            
        
            for(int i = 31; i >= 0; i--) {
                int k = n >> 1;
                stringBinario += (k&1) ? "1" : "0";
            }
            return stringBinario;
        }

        int binToDecimal(int n) {
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


        double get_entropy(vector<int> arr) {
                /*calculates entropy*/
            double entropy = 0;
            int k = 0;
            for (int const &i: arr) {
                double p_x = (double) arr.at(k++) / size;
                if(p_x > 0) entropy -= p_x * log(p_x)/log(2);
            }
            return entropy;
        }  

    public:
        
        Preditor(vector<int> channel, int s) {
            c = channel;
            size = s;
            name = GET_VARIABLE_NAME(channel);
        }


        void get_prediction() {
            int x_n[size];

            int k = 0;
            for (int const &i: c) {
                x_n[k++] = i;
            }

            r_n.push_back(x_n[0]);
            r_n.push_back(x_n[1]);
            r_n.push_back(x_n[2]);

            cout << "Performing prediction ..." << endl;
            for(int n = 3; n < size; n++) {
                not_x_n.push_back( 3 * x_n[n-1] - 3 * x_n[n-2] + x_n[n-3]);    

                r_n.push_back(x_n[n] - not_x_n.at(n-3));                          
            }

            h_x = get_entropy(c);
            h_r = get_entropy(r_n);
        }

        void compress_audio_file(string file) {
            BitStream stream;
            Golomb g;

            int soma = 0;
            for(int i = 0; i < size; i++) {
                string aux =decToBinary(abs(r_n.at(i)));
                soma += aux.size();
            }

            double media = soma / r_n.size();
            double p = 1/(media-1);
            m = ceil(-1/log2(1-p));

            string str;
            for(auto elem : r_n) {
                str += elem > 0 ? g.Encoder(elem, m) + "0" :  g.Encoder(abs(elem), m) + "1";   
                
            }
            stream.writenbits(file, str);
        }


        void print_entropy() {
            cout << "Entropy of " << name << " is " << h_x << endl;
            cout << "Entropy of predicted sample file is " << h_r << endl;
        }


        vector<int> decompress_audio_file(string file) {
            Golomb g;
            BitStream b;
            string signal;
            vector<int> rn;

            string p = b.readnbits(file);
            rn = g.decoderByBit(p, m);

            vector<int> original;
            original.push_back(rn.at(0));
            original.push_back(rn.at(1));
            original.push_back(rn.at(2));

            vector<int> prediction = {};

            for(int n = 3; n < rn.size(); n++) {
                prediction.push_back( 3 * rn[n-1] - 3 * rn[n-2] + rn[n-3]);    
                original.push_back( rn.at(n-3) + prediction.at(n-3) );                          
            }


            return original;
        }
};