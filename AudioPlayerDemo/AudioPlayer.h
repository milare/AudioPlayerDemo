//
//  AudioPlayer.h
//  AudioPlayerDemo
//
//  Created by Bruno Macedo on 22/04/11.
//  Copyright 2011 home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVAudioPlayer.h>

@class AVAudioPlayer;

@interface AudioPlayer : NSObject {
    NSMutableDictionary *audioSlots;
}

@property (retain, nonatomic) NSMutableDictionary* audioSlots;

- (void) playFile:(NSString*) filename ofType:(NSString*) type nTimes:(NSInteger) times;
- (void) stopPlayingFile:(NSString*) filename;
- (void) stopPlayingFilesLike:(NSString*) name;
- (BOOL) isPlayingFile: (NSString*) filename;
- (void) muteAll;
- (void) clearStoredAudios;
- (id) init;

@end

