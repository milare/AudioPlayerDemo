//
//  AudioPlayerDemoAppDelegate.h
//  AudioPlayerDemo
//
//  Created by Bruno Macedo on 22/04/11.
//  Copyright 2011 home. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AudioPlayer.h"

@class AudioPlayerDemoViewController;

@interface AudioPlayerDemoAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet AudioPlayerDemoViewController *viewController;

@end
