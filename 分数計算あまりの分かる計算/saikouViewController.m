//
//  saikouViewController.m
//  分数計算あまりの分かる計算
//
//  Created by 加藤 周 on 2014/06/22.
//  Copyright (c) 2014年 mycompany. All rights reserved.
//

#import "saikouViewController.h"

@interface saikouViewController ()

@end

@implementation saikouViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    keisanLabel.text = @"0";
    keisanLabel1.text = @"0";
    leftNumber = 0;
    rightNumber = 0;
    resultNumber = 0;
    
    //TextFieldとLabelの初期状態の設定
    leftTextField.placeholder = [NSString stringWithFormat:@"%d", leftNumber];
    leftTextField.tag = 0;// -- TextFieldを区別するためのタグ
    rightTextField.placeholder = [NSString stringWithFormat:@"%d", rightNumber];
    rightTextField.tag = 1;// -- TextFieldを区別するためのタグ
    resultLabel.text = [NSString stringWithFormat:@"%d", resultNumber];
    resultLabel1.text = @"0";

    
    //TextFiled(キーボード)の設定
    leftTextField.delegate = self;
    rightTextField.delegate = self;
    
    
}


#pragma mark - デリゲートメソッド
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    //キーボードを閉じる
    [textField resignFirstResponder];
    return YES;
}



#pragma mark - プライベートメソッド
- (IBAction)segmentChange:(UISegmentedControl *)seg{
    switch (seg.selectedSegmentIndex) {
        case 0:// -- 最大公約数が選ばれていた場合
            segmentLabel.text = @"最大公約数";
            break;
        case 1:// -- 最小公倍数が選ばれていた場合
            segmentLabel.text = @"最小公倍数";
        default:
            break;
    }
    
}


- (IBAction)showResult:(id)sender{

    
    leftNumber = [leftTextField.text intValue];
    rightNumber = [rightTextField.text intValue];
    
        //最大公約数(GCD)の計算
        resultNumber = [self calculateGCD];
        resultLabel.text = [NSString stringWithFormat:@"%d", resultNumber];

        //一度最大公約数を計算する
        resultNumber = [self calculateGCD];
        
        //最小公倍数(LCM)の計算
        int lcm = [self calculateLCM];
        resultLabel1.text = [NSString stringWithFormat:@"%d", lcm];
    
}
- (int)calculateGCD{
    
    leftNumber = [leftTextField.text intValue];
    rightNumber = [rightTextField.text intValue];

    int a = leftNumber;
    int b = rightNumber;
    int number;
    keisanLabel.text = [NSString stringWithFormat:@"%d",a];
    keisanLabel1.text = [NSString stringWithFormat:@"%d",b];
    
    while (b != 0) {
        number = a % b;
        a = b;
        b = number;
    }
    
    return a;

}

/* -- 最小公倍数の計算アルゴリズム -- */
// -- 数A × 数B ÷ 最大公約数
- (int)calculateLCM{
    
    leftNumber = [leftTextField.text intValue];
    rightNumber = [rightTextField.text intValue];
    
    int a = leftNumber;
    int b = rightNumber;
    int lcm;
    
    lcm = a * b / resultNumber;
    
    return lcm;

}
-(IBAction)shoukyo{
    leftNumber = 0;
    rightNumber = 0;
    resultNumber = 0;
    
    //TextFieldとLabelの初期状態の設定
    leftTextField.placeholder = [NSString stringWithFormat:@"%d", leftNumber];
    leftTextField.tag = 0;// -- TextFieldを区別するためのタグ
    rightTextField.placeholder = [NSString stringWithFormat:@"%d", rightNumber];
    rightTextField.tag = 1;// -- TextFieldを区別するためのタグ
    resultLabel.text = [NSString stringWithFormat:@"%d", resultNumber];
    resultLabel1.text = @"0";
    
    
    //TextFiled(キーボード)の設定
    leftTextField.delegate = self;
    rightTextField.delegate = self;
    
    keisanLabel.text = @"0";
    keisanLabel1.text = @"0";
    
}


@end
