
#include<iostream>
#include<fstream>
#include<string.h>
#include<math.h>

#include <cstdlib>
#include<map>

using namespace std;

class fcm {
public:

    fcm(uint32_t k, double alpha);

    void fcm_readfile(string filename);

    void printMap();

    void getEntropy();

private:

    void leftRotatebyOne(char arr[], int n);

    void fill_table();

    map<string, map<char, uint32_t>> table; // TABLE WITH ALPHABET ELEMENTS

    map<string, uint32_t> ctx_total; // CONTEXT AND TOTAL 

    map<string, double> ctx_entropy; // CONTEXT AND ENTROPY

    uint32_t k;

    double alpha;

    double entropy;

    ifstream ifs;
};