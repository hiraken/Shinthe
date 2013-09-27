//
//  RemoteOutput.h
//  RemoteIO
//
//  Created by Norihisa Nagano
//

#import <AudioUnit/AudioUnit.h>
#import <AudioToolbox/AudioToolbox.h>
#include <stdio.h>
#include <math.h>


typedef struct SineWaveDef {
    double phase;
    Float64 sampleRate;
    double frequency;
    double freqz;
} SineWaveDef;

@interface RemoteOutput : NSObject {
    AudioUnit audioUnit;    
    BOOL isPlaying;
    SineWaveDef sineWaveDef;
    bool sw;
}

@property(nonatomic) double frequency;

-(BOOL)play;
-(BOOL)stop;
- (void)prepareAudioUnit;
-(void)swre:(bool)shi;

-(float)nokogiriwave:(double)taste;

@end