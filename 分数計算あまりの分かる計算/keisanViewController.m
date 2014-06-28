//
//  keisanViewController.m
//  分数計算あまりの分かる計算
//
//  Created by 加藤 周 on 2014/06/24.
//  Copyright (c) 2014年 mycompany. All rights reserved.
//

#import "keisanViewController.h"

@interface keisanViewController ()

@end

@implementation keisanViewController

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
    leftTextField0.placeholder = [NSString stringWithFormat:@"%d", leftNumber];
    leftTextField0.tag = 0;// -- TextFieldを区別するためのタグ
    rightTextField0.placeholder = [NSString stringWithFormat:@"%d", rightNumber];
    rightTextField0.tag = 1;// -- TextFieldを区別するためのタグ
    
    
    
    leftTextField1.placeholder = [NSString stringWithFormat:@"%d", leftNumber1];
    leftTextField1.tag = 0;// -- TextFieldを区別するためのタグ
    rightTextField1.placeholder = [NSString stringWithFormat:@"%d", rightNumber1];
    rightTextField1.tag = 1;// -- TextFieldを区別するためのタグ
    
    
    
    
    resultLabel.text = [NSString stringWithFormat:@"%d", resultNumber];
    resultLabel1.text = @"0";
    
    
    //TextFiled(キーボード)の設定
    leftTextField0.delegate = self;
    rightTextField0.delegate = self;
    leftTextField1.delegate = self;
    rightTextField1.delegate = self;
    
    
    
}


#pragma mark - デリゲートメソッド
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    //キーボードを閉じる
    [textField resignFirstResponder];
    return YES;
}



#pragma mark - プライベートメソッド

- (IBAction)showResult:(id)sender{
    
    
   
    
    leftNumber = [leftTextField0.text intValue];
    rightNumber = [rightTextField0.text intValue];
    leftNumber1 = [leftTextField1.text intValue];
    rightNumber1 = [rightTextField1.text intValue];
    
    //一度最大公約数を計算する
    resultNumber = [self calculateGCD];
    
    //最小公倍数(LCM)の計算
    int lcm = [self calculateLCM];
    resultLabel1.text = [NSString stringWithFormat:@"%d", lcm];
    kabunsusita.text = [NSString stringWithFormat:@"%d", lcm];
    leftNumber1=leftNumber1+rightNumber1;
    resultLabel.text = [NSString stringWithFormat:@"%d",leftNumber1];
 
    
    
    
    
    
    
    kotae0 = [resultLabel1.text intValue];
    koate1 =[resultLabel.text intValue];
    kabuusuu1 = [kabunsuoo.text intValue];
    kabuusuu2 = [kabunsusita.text intValue];
    kabuusuu3 = [kabunsuue.text intValue];

   
    if (koate1>kotae0) {
        float f = koate1/kotae0;
        NSLog(@"%0.f",f);
        kabunsuoo.text = [NSString stringWithFormat:@"%.0f",f];

        
    }else{
        kabunsuoo.text = @"";
        kabunsusita.text = @"";
        kabunsuue.text = @"";
    }
    if (kotae0==koate1) {
        kabunsuoo.text = @"1";
    }
  //ここに、textfiledがすべて埋まっていないときに警告
    if (leftTextField0.text&&leftTextField1.text&&rightTextField0.text&&[rightTextField1.text isEqualToString:@""]) {
        
    }
}
- (int)calculateGCD{
    
    leftNumber = [leftTextField0.text intValue];
    rightNumber = [rightTextField0.text intValue];
    leftNumber1 = [leftTextField1.text intValue];
    rightNumber1 = [rightTextField1.text intValue];
    int a = leftNumber;
    int b = rightNumber;
    int c = leftNumber1;
    int d = rightNumber1;
    

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
    
    leftNumber = [leftTextField0.text intValue];
    rightNumber = [rightTextField0.text intValue];
    
    int a = leftNumber;
    int b = rightNumber;
    int lcm;
    
    lcm = a * b / resultNumber;
    
    return lcm;
    
}



@end
