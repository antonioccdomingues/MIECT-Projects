#include "../include/lang.h"
#include <chrono>

using namespace std::chrono;


//g++ main.c++ ../include/lang.c++ ../include/fcm.c++ -o main
int main(int argc, char** argv) {
    
    if (argc == 1){
        auto start = high_resolution_clock::now();
        lang lang_reader("../samples/ref/r_EN.txt", "../samples/text/t_PT.txt", 3, 0.1);
        lang_reader.readFile();

        double total = lang_reader.readTextAnalysis();
        double bitsPerChar = lang_reader.getbitsPerChar();
        auto stop = high_resolution_clock::now();
        auto duration = duration_cast<microseconds>(stop - start);

        cout << "Numero total de bits necessários: " <<total << endl;
        cout << "Numero médio de bits necessário por Char: " << bitsPerChar << endl;

        cout << "Duration Time = " << (double) duration.count() / 1000000 << " seconds" <<endl;


        start = high_resolution_clock::now();
        lang lang_reader_0("../samples/ref/r_EN.txt", "../samples/text/t_EN.txt", 3, 0.1);
        lang_reader_0.readFile();

        total = lang_reader_0.readTextAnalysis();
        stop = high_resolution_clock::now();
        duration = duration_cast<microseconds>(stop - start);

        cout << "Numero total de bits necessários: " <<total << endl;
        cout << "Numero médio de bits necessário por Char" << bitsPerChar << endl;
        cout << "Duration Time = " << (double) duration.count() / 1000000 << " seconds" <<endl;
        
    }else{
        
        auto start = high_resolution_clock::now();
        lang lang_reader_0("../samples/ref/r_EN.txt", argv[1], 3, 0.1);
        lang_reader_0.readFile();
        double total1 = lang_reader_0.readTextAnalysis();
        double bitsPerChar1 = lang_reader_0.getbitsPerChar();
        cout << endl<< "Average bits per Char : " << bitsPerChar1 << endl;
        cout << "Target text need: :" << total1 << " bits" << endl<< endl;

        double min = total1;

        lang lang_reader_1("../samples/ref/r_PT.txt", argv[1], 3, 0.1);
        lang_reader_1.readFile();
        double total2 = lang_reader_1.readTextAnalysis();
        double bitsPerChar2 = lang_reader_1.getbitsPerChar();
        cout << "Average bits per Char : " << bitsPerChar2 << endl;
        if (total2 < min){
            min = total2;
        }
        cout << "Target text need: :" << total2 << " bits" << endl<< endl;

        lang lang_reader_2("../samples/ref/r_ES.txt", argv[1], 3, 0.1);
        lang_reader_2.readFile();
        double total3 = lang_reader_2.readTextAnalysis();
        double bitsPerChar3 = lang_reader_2.getbitsPerChar();
        cout << "Average bits per Char : " << bitsPerChar3 << endl;
        if (total3 < min){
            min = total3;
        }
        cout << "Target text need: :" << total3 << " bits" << endl<< endl;
        

        lang lang_reader_3("../samples/ref/r_FR.txt", argv[1], 3, 0.1);
        lang_reader_3.readFile();
        double total4 = lang_reader_3.readTextAnalysis();
        double bitsPerChar4 = lang_reader_3.getbitsPerChar();
        cout << "Average bits per Char : " << bitsPerChar4 << endl;
        
        if (total4 < min){
            min = total4;
        }
        cout << "Target text need: :" << total4 << " bits" << endl<< endl;
        

        lang lang_reader_4("../samples/ref/r_NL.txt", argv[1], 3, 0.1);
        lang_reader_4.readFile();
        double total5 = lang_reader_4.readTextAnalysis();
        double bitsPerChar5 = lang_reader_4.getbitsPerChar();
        cout << "Average bits per Char : " << bitsPerChar5 << endl;
        
        if (total5 < min){
            min = total5;
        }
        cout << "Target text need: :" << total5 << " bits" << endl<< endl;


        lang lang_reader_5("../samples/ref/r_IT.txt", argv[1], 3, 0.1);
        lang_reader_5.readFile();
        double total6 = lang_reader_5.readTextAnalysis();
        double bitsPerChar6 = lang_reader_5.getbitsPerChar();
        cout << "Average bits per Char : " << bitsPerChar6 << endl;
        
        if (total6 < min){
            min = total6;
        }
        cout << "Target text need: :" << total6 << " bits" << endl<< endl;
        

        auto stop = high_resolution_clock::now();
        auto duration = duration_cast<microseconds>(stop - start);
        cout << "Duration Time = " << (double) duration.count() / 1000000 << " seconds" <<endl;

        if(min == total1){
            cout << "Texto em Inglês" << endl;
        }else if(min == total2){
            cout << "Texto em Português" << endl;
        }else if(min == total3){
            cout << "Texto em Espanhol" << endl;
        }else if(min == total4){
            cout << "Texto em Francês" << endl;
        }else if(min == total5){
            cout << "Texto em Alemão" << endl;
        }else if(min == total6){
            cout << "Texto em Italiano" << endl;
        }

    }

    

    return 0;
}