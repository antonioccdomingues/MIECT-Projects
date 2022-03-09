
#include "../include/lang.h"
#include <chrono>

#include <list>
#include <map>
#include <experimental/filesystem>

using namespace std;
using namespace chrono;

using namespace experimental::filesystem;

#define MAXVALUE 1.7976931348623157E+308;


map<string, string> ref_to_map = {

    {"r_EN.txt", "English"},
    {"r_ES.txt", "Spanish"},
    {"r_FR.txt", "French"},
    {"r_IT.txt", "Italian"},
    {"r_NL.txt", "Dutch"},
    {"r_PT.txt", "Portuguese"},
    {"r_SE.txt", "Swedish"},
    {"r_DE.txt", "German"},
    {"r_SK.txt", "Slovak"},
    {"r_SL.txt", "Lithuanian"},
    {"r_CZ.txt", "Czech"}

};

int main(int argc, char** argv) { 
    list<string> lst;
    map<string, double> flang;

    if(argc != 4) {
        cerr << "./findlang textSample k alpha" << endl;
        return EXIT_FAILURE;
    }

    /* Requires some handling ... */
    string txt = argv[1];
    int k = atoi(argv[2]);
    double alpha = stod(argv[3]);
    

    string path = "../samples/ref/";
    for (const auto & file : directory_iterator(path))
        lst.push_front(file.path());
    
    double total;
    double bitsPerChar;
    double d;

    cout << "Starting FindLang ..." << endl;
    for(const auto &ref : lst) {   
        cout << "For file: '" << ref <<  "' the results was: " << endl;
        
        auto start = high_resolution_clock::now();

        lang lang_reader(ref, txt, k, alpha);
        lang_reader.readFile();
        total = lang_reader.readTextAnalysis();
        flang[ref] = total;
        bitsPerChar = lang_reader.getbitsPerChar();

        auto stop = high_resolution_clock::now();
        auto duration = duration_cast<microseconds>(stop - start);
        printf("ntotal = %.3f\t nbits/char = %.3f\t Execution Time  = %.3f\n\n", total, bitsPerChar, ((double) duration.count() / 1000000));
    }

    /* Checks who as the minimum entropy*/
    string min_ref;
    double min = MAXVALUE;
    for(auto const & it : flang) {
        if( it.second < min ) {
            min = it.second;
            min_ref = it.first;
        }
    }
    string delimiter = "../samples/ref/";
    string ref = min_ref.substr(delimiter.length(), min_ref.length() - delimiter.length());

    cout << "The language is " << ref_to_map[ref] << endl;
    return EXIT_SUCCESS;
}