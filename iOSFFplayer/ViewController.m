//
//  ViewController.m
//  iOSFFplayer
//
//  Created by friday on 2019/6/4.
//  Copyright © 2019 friday. All rights reserved.
//

#import "ViewController.h"
#import "ffmpeg.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)ScaleVideo:(id)sender {
    char **a = malloc(sizeof(int*)*10) ;
    a[0] = "ffmpeg";
    a[1] = "-i";
    a[2] = "/Users/friday/Downloads/邓紫棋-喜欢你.mp4";
    a[3] = "-s";
    a[4] = "320x320";
    a[5] = "/Users/friday/Downloads/out1123.mp4";
    
    ffmpeg_main(6,a);
}

-(IBAction)GetVoice:(id)sender
{
    char **a = malloc(sizeof(int*)*10) ;
    
    
#if 1
    a[0] = "ffmpeg";
    a[1] = "-i";
    a[2] = "/Users/friday/Downloads/邓紫棋-喜欢你.mp4";
    a[3] = "-f";
    a[4] = "mp2";
    a[5] = "-vn";
    a[6] = "/Users/friday/Downloads/out1123.mp3";
#endif
    ffmpeg_main(7,a);
}



-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self ScaleVideo:nil];
}

@end
