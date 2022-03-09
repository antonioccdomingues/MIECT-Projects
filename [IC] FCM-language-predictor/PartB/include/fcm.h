
#include<iostream>
#include<fstream>
#include<string.h>
#include<math.h>

#include <cstdlib>
#include<map>

using namespace std;

class fcm {
public:

    fcm(uint32_t k, double alpha, uint32_t alphabet_length);

    void fcm_readfile(string filename, string alphabet);

    void printMap();

    void getEntropy();

private:

    void leftRotatebyOne(char arr[], int n);

    void fill_table();

    map<string, map<char, uint32_t>> table; // TABLE WITH ALPHABET ELEMENTS

    map<string, uint32_t> ctx_total; // CONTEXT AND TOTAL 

    map<string, double> ctx_entropy; // CONTEXT AND ENTROPY

    string alphabet;

    uint32_t k;

    double alpha;

    double entropy;

    uint32_t alphabet_length;

    ifstream ifs;
};