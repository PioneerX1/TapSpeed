//
//  ViewController.h
//  TapSpeed
//
//  Created by Mick Sexton on 3/27/18.
//  Copyright © 2018 Mick Sexton. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer *timer;
    int timeInt;
    int tapInt;
}
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *tapLabel;
@property (weak, nonatomic) IBOutlet UIButton *tapButtonOutlet;

- (IBAction)StartGame:(id)sender;
- (IBAction)TapButton:(id)sender;

@end

