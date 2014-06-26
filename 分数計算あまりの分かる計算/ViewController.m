//
//  ViewController.m
//  分数計算あまりの分かる計算
//
//  Created by 加藤 周 on 2014/06/22.
//  Copyright (c) 2014年 mycompany. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    int number0;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    number=0;
    number2=0;
    number3=0;
    number4=0;
    number5=0;
    
    label.text=@"";
    label2.text=@"";
    label3.text=@"";
    label4.text=@"";
    label5.text=@"";
    label6.text=@"";
    label7.text=@"";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)ITI{
    label8.text = @"";
    label9.text=@"";
    label10.text=@"";
    label11.text=@"";
    label12.text=@"";
    number0=number0+1;

    if (ope == 0) {
        number=number*10+1;
        label.text = [NSString stringWithFormat:@"%d",number];
    }
    else{
        number2=number2*10+1;
        label2.text = [NSString stringWithFormat:@"%d",number2];
        
    }
    if (number0==3) {
        label8.text = @"";
        number0=0;
    }
    
    
}
-(IBAction)NI{
    label8.text = @"";
    label9.text=@"";
    label10.text=@"";
    label11.text=@"";
    label12.text=@"";

    
    if (ope == 0) {
        number=number*10+2;
        label.text = [NSString stringWithFormat:@"%d",number];
    }
    else{
        number2=number2*10+2;
        label2.text = [NSString stringWithFormat:@"%d",number2];
    }
    if (number0==3) {
        label8.text = @"";
        number0=0;
    }
    

}
-(IBAction)SAN{
    label8.text = @"";
    label9.text=@"";
    label10.text=@"";
    label11.text=@"";
    label12.text=@"";
    

    
    if (ope == 0) {
        number=number*10+3;
        label.text = [NSString stringWithFormat:@"%d",number];
    }
    else{
        number2=number2*10+3;
        label2.text = [NSString stringWithFormat:@"%d",number2];
    }
    if (number0==3) {
        label8.text = @"";
        number0=0;
    }
    

}
-(IBAction)YON{
    label8.text = @"";
    label9.text=@"";
    label10.text=@"";
    label11.text=@"";
    label12.text=@"";
    

    if (ope == 0) {
        number=number*10+4;
        label.text = [NSString stringWithFormat:@"%d",number];
    }
    else{
        number2=number2*10+4;
        label2.text = [NSString stringWithFormat:@"%d",number2];
    }
    if (number0==3) {
        label8.text = @"";
        number0=0;
    }
    

}
-(IBAction)GO{
    label8.text = @"";
    label9.text=@"";
    label10.text=@"";
    label11.text=@"";
    label12.text=@"";

    
    if (ope == 0) {
        number=number*10+5;
        label.text = [NSString stringWithFormat:@"%d",number];
    }
    else{
        number2=number2*10+5;
        label2.text = [NSString stringWithFormat:@"%d",number2];
    }
    if (number0==3) {
        label8.text = @"";
        number0=0;
    }
    

}
-(IBAction)ROKU{
    label8.text = @"";
    label9.text=@"";
    label10.text=@"";
    label11.text=@"";
    label12.text=@"";

    
    if (ope == 0) {
        number=number*10+6;
        label.text = [NSString stringWithFormat:@"%d",number];
    }
    else{
        number2=number2*10+6;
        label2.text = [NSString stringWithFormat:@"%d",number2];
    }
    if (number0==3) {
        label8.text = @"";
        number0=0;
    }
    

}
-(IBAction)SITI{
    label8.text = @"";
    label9.text=@"";
    label10.text=@"";
    label11.text=@"";
    label12.text=@"";
    

    
    if (ope == 0) {
        number=number*10+7;
        label.text = [NSString stringWithFormat:@"%d",number];
    }
    else{
        number2=number2*10+7;
        label2.text = [NSString stringWithFormat:@"%d",number2];
    }
    if (number0==3) {
        label8.text = @"";
        number0=0;
    }
    

}
-(IBAction)HATI{
    label8.text = @"";
    label9.text=@"";
    label10.text=@"";
    label11.text=@"";
    label12.text=@"";

    
    if (ope == 0) {
        number=number*10+8;
        label.text = [NSString stringWithFormat:@"%d",number];
    }
    else{
        number2=number2*10+8;
        label2.text = [NSString stringWithFormat:@"%d",number2];
    }
    if (number0==3) {
        label8.text = @"";
        number0=0;
    }
    

}
-(IBAction)KYU{
    label8.text = @"";
    label9.text=@"";
    label10.text=@"";
    label11.text=@"";
    label12.text=@"";
    

    
    if (ope == 0) {
        number=number*10+9;
        label.text = [NSString stringWithFormat:@"%d",number];
    }
    else{
        number2=number2*10+9;
        label2.text = [NSString stringWithFormat:@"%d",number2];
    }
    if (number0==3) {
        label8.text = @"";
        number0=0;
    }
    

}

-(IBAction)SERO{
    
    label8.text = @"";
    label9.text=@"";
    label10.text=@"";
    label11.text=@"";
    label12.text=@"";

    if (ope == 0) {
        number=number*10;
        label.text = [NSString stringWithFormat:@"%d",number];
    }
    else{
        number2=number2*10;
        label2.text = [NSString stringWithFormat:@"%d",number2];
    }
    if (number0==3) {
        label8.text = @"";
        number0=0;
    }
    

}
-(IBAction)waru{
    
    ope=4;
    label3.text=@"÷";
}
-(IBAction)ikoru{

    label4.text=@"=";
    label7.text=@"あまり";
    number3=number/number2;
    number4=number%number2;
    label5.text=[NSString stringWithFormat:@"%d",number3];
    switch (ope) {
        case 2:
            number3=number/number2;
            label5.text=[NSString stringWithFormat:@"%d",number3];
            break;
        case  1:
            number4=number%number2*number3;
            label6.text=[NSString stringWithFormat:@"%d",number4];
            break;
            
    }
    label6.text = [NSString stringWithFormat:@"%d",number4];
    if (number<number2&&number2<=1) {
        number=0;
        number2=0;
        number3=0;
        number4=0;
        number5=0;
        ope=0;
        label.text=@"";
        label2.text=@"";
        label3.text=@"";
        label4.text=@"";
        label5.text=@"";
        label6.text=@"";
        label7.text=@"";
        label8.text=@"計算できません。";
    }

}

-(IBAction)clear{
 
    number=0;
    number2=0;
    number3=0;
    number4=0;
    number5=0;
    ope=0;
    label.text=@"";
    label2.text=@"";
    label3.text=@"";
    label4.text=@"";
    label5.text=@"";
    label6.text=@"";
    label7.text=@"";
    label8.text=@"";
}
-(IBAction)migi{
    
    if (ope==0){
        number=number/10;
        label.text=[NSString stringWithFormat:@"%d",number];
        if (number==0) {
            label.text=@"";
        }
    }else{
        number2=number2/10;
        label2.text=[NSString stringWithFormat:@"%d",number2];
        if (number2==0) {
            label2.text=@"";
        }
        
    }}

@end
