#include "../include/fcm.h"


// g++ main.c++ ../include/fcm.c++ -o main
int main(void) {

    fcm fcm_reader(3, 0.1);
    fcm_reader.fcm_readfile("../example.txt");

    fcm_reader.printMap();

    fcm_reader.getEntropy();


    return EXIT_SUCCESS;
}