//
//  AudioPlayerDemoViewController.m
//  AudioPlayerDemo
//
//  Created by Bruno Macedo on 22/04/11.
//  Copyright 2011 home. All rights reserved.
//

#import "AudioPlayerDemoViewController.h"

@implementation AudioPlayerDemoViewController

@synthesize audioPlayer;


- (IBAction) playFoo
{ 
    [audioPlayer playFile:@"SoundFoo" ofType:@"wav" nTimes:-1]; 
}

- (IBAction) playBar
{ 
    [audioPlayer playFile:@"SoundBar" ofType:@"wav" nTimes:-1]; 
}

- (IBAction) playBack
{
    [audioPlayer playFile:@"MusicBack" ofType:@"mp3" nTimes:-1];
}

- (IBAction) stopFoo
{
    [audioPlayer stopPlayingFile:@"SoundFoo"];
}

- (IBAction) stopBar
{
    [audioPlayer stopPlayingFile:@"SoundBar"];
}

- (IBAction) stopBack
{
    [audioPlayer stopPlayingFile:@"MusicBack"];
}

- (IBAction) stopSounds
{
    [audioPlayer stopPlayingFilesLike:@"Sound"];
}

- (IBAction) stopAll
{
    [audioPlayer muteAll];
    
}


- (void)dealloc
{
    [audioPlayer release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
