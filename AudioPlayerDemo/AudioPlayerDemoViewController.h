//
//  AudioPlayerDemoViewController.h
//  AudioPlayerDemo
//
//  Created by Bruno Macedo on 22/04/11.
//  Copyright 2011 home. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AudioPlayer.h"

@interface AudioPlayerDemoViewController : UIViewController {
  AudioPlayer* audioPlayer;  
}

@property (retain, nonatomic) AudioPlayer *audioPlayer;

- (IBAction) playFoo;
- (IBAction) playBar;
- (IBAction) playBack;
- (IBAction) stopFoo;
- (IBAction) stopBar;
- (IBAction) stopBack;
- (IBAction) stopSounds;
- (IBAction) stopAll;

@end
