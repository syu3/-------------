//
//  saidai,saishouViewController.m
//  分数計算あまりの分かる計算
//
//  Created by 加藤 周 on 2014/06/22.
//  Copyright (c) 2014年 mycompany. All rights reserved.
//

#import "saidai,saishouViewController.h"

@interface saidai_saishouViewController ()

@end

@implementation saidai_saishouViewController

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
    a=18;
    b=12;
}
-(IBAction)letsgo{
    a*1/12;
    label.text = [NSString stringWithFormat:@"%d",a];
}
@end
