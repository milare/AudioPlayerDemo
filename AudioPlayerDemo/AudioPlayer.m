//
//  AudioPlayer.m
//  AudioPlayerDemo
//
//  Created by Bruno Macedo on 22/04/11.
//  Copyright 2011 home. All rights reserved.
//

#import "AudioPlayer.h"


@implementation AudioPlayer

@synthesize audioSlots;

- (id) init
{
    self = [super init];
    if (self) {
        audioSlots =  [[NSMutableDictionary alloc] init];
    }
    return self;
}

- (void) playFile:(NSString*) filename ofType:(NSString*) type nTimes:(NSInteger) times
{
    AVAudioPlayer *currentSlot = [audioSlots objectForKey:filename];
    if (currentSlot == nil) {
        NSString *filePath = [[NSBundle mainBundle] pathForResource: filename ofType: type];
        NSURL *fileURL = [[NSURL alloc] initFileURLWithPath:filePath];
        currentSlot = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
        [audioSlots setObject:currentSlot forKey:filename];
        [currentSlot prepareToPlay];
        [fileURL release];
        [currentSlot release];
    }
    
    currentSlot.numberOfLoops = times;
    
    [currentSlot play];
}

- (void) stopPlayingFile:(NSString*) filename
{
    AVAudioPlayer *currentSlot = [audioSlots objectForKey:filename];
    if (currentSlot != nil) {
        [currentSlot stop];
    }
}

- (BOOL) isPlayingFile: (NSString*) filename
{
    AVAudioPlayer *currentSlot = [audioSlots objectForKey:filename];
    if (currentSlot != nil) {
        return currentSlot.playing;
    }
    return NO;
}

- (void) stopPlayingFilesLike:(NSString*) name
{
    NSRange textRange;
    
    for (NSString *slotKey in [audioSlots allKeys]) {
        textRange =[[slotKey lowercaseString] rangeOfString:[name lowercaseString]];
        if(textRange.location != NSNotFound)
        {
            [[audioSlots objectForKey:slotKey] stop];
        }
	}
}

- (void) muteAll
{    
    for (NSString *slotKey in [audioSlots allKeys]) {
        [[audioSlots objectForKey:slotKey] stop];
	}
}

- (void) clearStoredAudios
{
    [self muteAll];
    [audioSlots removeAllObjects];
}

- (void) dealloc
{
    [self muteAll];
    [audioSlots release];
    [super dealloc];
}

@end
