
#include<iostream>
#include<fstream>
#include<map>
#include<vector>
#include<string>

#include "fcm.h"


using namespace std;

class lang {

public:

    lang(string in_ir, string in_t, uint32_t k, double alpha);

    void readFile();

    double getbitsPerChar();

    double readTextAnalysis();

    void printReference();

    void printCtxPobability();

private:

    void leftRotatebyOne(char arr[], int n);

    map<string, map<char, uint32_t>> ref;

    map<string, uint32_t> ref_total;    // ref and total 

    map<string, double> ref_prob;       // ref and probability

    string in_ir;

    string in_t;

    string alphabet;

    uint32_t k;

    double total_bits;
    
    double bitsPerChar;

    double nChars;

    double alpha;
};