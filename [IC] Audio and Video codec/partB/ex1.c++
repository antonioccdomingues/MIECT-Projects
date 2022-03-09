#include "../include/Preditor.h"
#include <iostream>
#include <vector>
#include <math.h>
#include <map>
#include <time.h>
#include <time.h>


using namespace std;


/* Returns a integer value of the sample*/
/* https://hydrogenaud.io/index.php?topic=58723.0 */
int floatToInt(float sample) {
    //return sample >= 0 ? (int) (sample * 100) : (int) (sample * 101);
    return sample >= 0 ? (int) (sample * 32767.0) : (int) (sample * 32768.0);;
}

/* ################### APLICATION ###################### */
int main(int argc, char** argv) {

    if(argc != 2) {
        cout << "./ex1 ../samples/sample0X.wav" << endl;
        return EXIT_FAILURE;
    }


    printf("\n\n########################################################");
    printf("\nStarting compressing audiofile -  %s", argv[1]);
    printf("\n\n########################################################\n");

    AudioFile<double> audio;   
    if(!audio.load(argv[1])) return EXIT_FAILURE;

    int numChannels = audio.getNumChannels();
    int size = audio.getNumSamplesPerChannel();

    vector<int> leftChannel = {};
    vector<int> rightChannel = {};

    for(int i = 0; i < size; i++) {
        //cout << floatToInt(audio.samples[0][i]) << endl;
        leftChannel.push_back( floatToInt(audio.samples[0][i]));
        rightChannel.push_back( floatToInt(audio.samples[1][i]));
    } 

    Preditor p_left(leftChannel, size);         // starts left and right predictor
    Preditor p_right(rightChannel, size);

    cout << "Leftchannel " << endl; 
    p_left.get_prediction();
    p_left.print_entropy();
    cout << "Rightchannl " << endl;
    p_right.get_prediction();
    p_right.print_entropy();
    

    clock_t begin = clock();
    p_left.compress_audio_file("leftchannel");
    p_right.compress_audio_file("rightchannel");
    clock_t end = clock();

    double time_spent;
    time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("Compress Time Spent = %.3f seconds\n", time_spent);


    AudioFile<double> decompressed;
    decompressed.setNumChannels(numChannels);
    decompressed.setNumSamplesPerChannel(size);
    
    begin = clock();
    vector<int> left_dec = p_left.decompress_audio_file("leftchannel");
    vector<int> right_dec = p_right.decompress_audio_file("rightchannel");
    end = clock();
    time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("Decompress Time Spent = %.3f seconds\n", time_spent);   


    // printf("Appending samples to sample ...\n");
    // for(int i = 0; i < numChannels; i++) {
    //     for(int j = 0; j < size; j++) {
    //         decompressed.samples[i][j] = i == 0 ?  left_dec.at(j) : right_dec.at(j);
    //     }
    // }

    // printf("Setting name out \n");
    // string name = string(argv[1]);
    // name = name.substr(0, name.find("."));
    // decompressed.save(name + "_dec.wav");

    remove("leftchannel");
    remove("rightchannel");

    return EXIT_SUCCESS;
}