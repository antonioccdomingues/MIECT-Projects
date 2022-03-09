#include "../include/Preditor.h"
#include <iostream>
#include <vector>
#include <math.h>
#include <map>
#include <time.h>
#include <time.h>


using namespace std;

#define BIT_DEPTH 8

double quantization(double sample, int rate);


/* Returns a integer value of the sample*/
/* https://hydrogenaud.io/index.php?topic=58723.0 */
int floatToInt(float sample) {
    return sample >= 0 ? (int) (sample * 100) : (int) (sample * 101);
    //return sample >= 0 ? (int) (sample * 32767.0) : (int) (sample * 32768.0);;
}



int main(int argc, char** argv) {

    if(argc != 2) {
        cout << "./ex1 sample.wavXX.wav" << endl;
        return EXIT_FAILURE;
    }


    printf("\n\n########################################################");
    printf("\nStarting compressing audiofile -  %s", argv[1]);
    printf("\n########################################################\n");


    AudioFile<double> audio;   
    audio.load(argv[1]);


    int numChannels = audio.getNumChannels();
    int size = audio.getNumSamplesPerChannel();
    int r = audio.getSampleRate();

    vector<int> leftChannel = {};
    vector<int> rightChannel = {};

    clock_t begin = clock();
    for(int i = 0; i < size; i++) {
        leftChannel.push_back( floatToInt(quantization(audio.samples[0][i], r)));
        rightChannel.push_back( floatToInt(quantization(audio.samples[1][i], r)));
        //cout << audio.samples[0][i] << endl;
    } 
    clock_t end = clock();
    double time_spent;
    time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("Time Spent in quantization = %.3f seconds\n", time_spent);



    Preditor p_left(leftChannel, size);         // starts left and right predictor
    Preditor p_right(rightChannel, size);


    cout << "Leftchannel " << endl; 
    p_left.get_prediction();
    p_left.print_entropy();
    cout << "Rightchannl " << endl;
    p_right.get_prediction();
    p_right.print_entropy();

    begin = clock();
    p_left.compress_audio_file("leftchannel");
    p_right.compress_audio_file("rightchannel");
    end = clock();

    time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("Compress Time Spent = %.3f seconds\n", time_spent);


    // begin = clock();
    // vector<int> left_dec = p_left.decompress_audio_file("leftchannel");
    // vector<int> right_dec = p_right.decompress_audio_file("rightchannel");
    // end = clock();
    // time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    // printf("Decompress Time Spent = %.3f seconds\n", time_spent);   


    remove("leftchannel");
    remove("rightchannel");

    return EXIT_SUCCESS;
}



double quantization(double sample, int rate) {
    double s = 1;
    int sample_max = pow(2, BIT_DEPTH-1) - 1;
    double outSample;
    for (int i = 0; i < rate * s; i++)
        outSample = floor(sample * sample_max);
    return outSample;
}