//
//  saikouViewController.h
//  分数計算あまりの分かる計算
//
//  Created by 加藤 周 on 2014/06/22.
//  Copyright (c) 2014年 mycompany. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface saikouViewController : UIViewController<UITextFieldDelegate>
{
    //最大公約数、最小公倍数の選択セグメント
    IBOutlet UISegmentedControl *segment;
    
    //左右2つの数値入力用テキストフィールド
    IBOutlet UITextField *leftTextField;
    IBOutlet UITextField *rightTextField;
    IBOutlet UILabel*keisanLabel;
    IBOutlet UILabel*keisanLabel1;
    
    //最大公約数、最小公倍数の選択状態を表示するラベル
    IBOutlet UILabel *segmentLabel;
    
    //結果表示用ラベル
    IBOutlet UILabel *resultLabel;
    IBOutlet UILabel *resultLabel1;
    
    //左右の数値を入れる変数
    int leftNumber;
    int rightNumber;
    
    //結果(最大公約数:GCD)
    int resultNumber;
    
}

#pragma mark - プライベートメソッド
- (IBAction)segmentChange:(UISegmentedControl *)seg;

- (IBAction)showResult:(id)sender;

@end
