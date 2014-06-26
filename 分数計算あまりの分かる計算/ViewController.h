//
//  ViewController.h
//  分数計算あまりの分かる計算
//
//  Created by 加藤 周 on 2014/06/22.
//  Copyright (c) 2014年 mycompany. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController{
    int number;
    int number2;
    int number3;
    int number4;
    int number5;
    int ope;
    IBOutlet UILabel *label;
    IBOutlet UILabel *label2;
    IBOutlet UILabel *label3;
    IBOutlet UILabel *label4;
    IBOutlet UILabel *label5;
    IBOutlet UILabel *label6;
    IBOutlet UILabel *label7;
    IBOutlet UILabel *label8;
    IBOutlet UILabel *label9;
    IBOutlet UILabel *label10;
    IBOutlet UILabel *label11;
    IBOutlet UILabel *label12;
    
}
-(IBAction)ITI;
-(IBAction)NI;
-(IBAction)SAN;
-(IBAction)YON;
-(IBAction)GO;
-(IBAction)ROKU;
-(IBAction)SITI;
-(IBAction)HATI;
-(IBAction)KYU;
-(IBAction)SERO;
-(IBAction)clear;
-(IBAction)migi;
-(IBAction)ikoru;

@end
