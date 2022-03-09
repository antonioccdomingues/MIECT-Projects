#include "lang.h"

#define FACTOR(occor, total) (double)(occor + alpha) / (total + (alpha * alphabet_length))

lang::lang(string in_ir, string in_t, uint32_t k, double alpha) {
    this->in_ir = in_ir;
    this->in_t = in_t;
    this->k = k;
    this->alpha = alpha;
}

void lang::readFile() {
    ifstream ir;
    ir.open(in_ir);

    string txt;
    char ctx[k+1];
    char c;

    ir.read(ctx, k);
    ctx[k] = 0;
    while(ir.get(c)) {
        if(isalpha(c)) {
            txt = string(ctx);
            ref[txt][c]++;
            leftRotatebyOne(ctx, k);
            ctx[k-1] = c;

            if(alphabet.find(c) == string::npos) alphabet += c;
        }
    }
    ir.close();

    uint32_t soma = 0;
    // calcula o total em cada contexto e guarda em ctx_total
    for(auto const& it : ref) {
        for(auto const &elem : it.second) {
            soma += ref[it.first][elem.first];
        }   
        ref_total[it.first] = soma;
        soma = 0;
    }
}


double lang::readTextAnalysis() {
    ifstream it;
    it.open(in_t);

    string txt;
    char ctx[k+1];
    char c;

    it.read(ctx, k);
    ctx[k] = 0;

    double ocorr;
    double total;
    nChars =0;
    total_bits = 0;
    while(it.get(c)) {
        if(isalpha(c)) {
            nChars +=1;  
            txt = string(ctx);
            if (ref[txt].count(c) > 0) {
                ocorr = (double) ref[txt][c];
                total = (double) ref_total[txt];

                total_bits += -log2( (ocorr / total) );
            }

            leftRotatebyOne(ctx, k);
            ctx[k-1] = c;
        }
    }
    it.close();
    return total_bits;
}

double lang::getbitsPerChar(){
  bitsPerChar = total_bits/nChars;

  return bitsPerChar;
}


void lang::leftRotatebyOne(char arr[], int n)
{
    char temp = arr[0];
    int i;
    for (i = 0; i < n - 1; i++)
        arr[i] = arr[i + 1];

    arr[n-1] = temp;
}

void lang::printReference() {
    for(auto const& it : ref) {
        cout << string(it.first);   
        for(auto const& x : it.second) {
            cout << " " << x.first << "=" << x.second; 
        }

        cout << endl;
    }
}

void lang::printCtxPobability() {
    for(auto const& it : ref_prob) {
        cout << it.first << " : " << it.second << endl;
    }
}