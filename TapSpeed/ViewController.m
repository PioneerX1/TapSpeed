//
//  ViewController.m
//  TapSpeed
//
//  Created by Mick Sexton on 3/27/18.
//  Copyright © 2018 Mick Sexton. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    timeInt = 10;
    tapInt = 0;
    self.tapButtonOutlet.enabled = NO;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)StartGame:(id)sender {
    if (timeInt == 10) {
        tapInt = 0;
        self.tapButtonOutlet.enabled = YES;
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(DecrementTime) userInfo:nil repeats:YES];
    }
}

-(void)DecrementTime {
    timeInt--;
    self.timeLabel.text = [NSString stringWithFormat:@"%i", timeInt];
    
    if (timeInt == 0) {
        [timer invalidate];
    }
}

- (IBAction)TapButton:(id)sender {
    if (timeInt > 0) {
        tapInt++;
        self.tapLabel.text = [NSString stringWithFormat:@"%i", tapInt];
    }
}
@end
