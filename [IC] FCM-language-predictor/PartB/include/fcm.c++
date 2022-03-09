#include "fcm.h"

#define FACTOR(occor, total) (double)(occor + alpha) / (total + (alpha * alphabet_length))

fcm::fcm(uint32_t k, double alpha, uint32_t alphabet_length) {
    this->k = k;
    this->alpha = alpha;
    this->alphabet_length = alphabet_length;
}

void fcm::fcm_readfile(string filename, string alphabet) {
    ifs.open(filename);

    this->alphabet = alphabet;
    string txt;
    char ctx[k+1];
    char c;

    ifs.read(ctx, k);
    ctx[k] = 0;
    while(ifs.get(c)) {
        if(alphabet.find(c) != string::npos) {
            txt = string(ctx);
            table[txt][c]++;
            leftRotatebyOne(ctx, k);
            ctx[k-1] = c;
        }
    }
    ifs.close();
    fill_table();  
}

void fcm::fill_table() {
    for(auto const &it : table) {
        for(auto const &elem : alphabet) {
            if(table[it.first].count(elem) == 0) {
                table[it.first][elem] = 0;
            }
        }
    }
}


void fcm::getEntropy() {
    uint32_t soma = 0;
    // calcula o total em cada contexto e guarda em ctx_total
    for(auto const& it : table) {
        for(auto const &elem : alphabet) {
            soma += table[it.first][elem];          // algumas somas estão a dar 0 ????
        }   
        ctx_total[it.first] = soma;
        soma = 0;
    }


    map<string, double> p_c;

    int soma_total = 0;
    for(auto const& it : ctx_total) {
        soma_total += it.second;
    }

    for(auto const& it : ctx_total) {
        p_c[it.first] = it.second / (double) soma_total;
    }

    // entropia estimada do sub-modelo
    
    uint32_t ocorrencia;
    uint32_t total;
    double factor;
    double res;
    for(auto const& it : table) {
        for(auto const& it_s : it.second) {

            ocorrencia = it_s.second;
            total = ctx_total[it.first];
            
            if(total == 0) continue;        // se o total der 0 passo para a proxima iteração

            total = ctx_total[it.first];

            factor = FACTOR(ocorrencia, total);
            res += ((factor) * log(factor)); 
        }

        //if(isnan(res)) continue;

        isnan(res) ? ctx_entropy[it.first] = 0 : ctx_entropy[it.first] = -res;
        res = 0;
    }

    for(const auto &it : table) {
        //std::cout << "ctx entropy = " << ctx_entropy[it.first] << "\tp_c = " <<  p_c[it.first] << endl;
        entropy += ctx_entropy[it.first] * p_c[it.first];
    }

    std::cout << "entropy = " << entropy << endl;
}

void fcm::printMap() {
    for(auto const& it : table) {
        cout << string(it.first);   
        for(auto const& x : it.second) {
            cout << " " << x.first << "=" << x.second; 
        }

        cout << endl;
    }
}

void fcm::leftRotatebyOne(char arr[], int n)
{
    char temp = arr[0];
    int i;
    for (i = 0; i < n - 1; i++)
        arr[i] = arr[i + 1];

    arr[n-1] = temp;
}

