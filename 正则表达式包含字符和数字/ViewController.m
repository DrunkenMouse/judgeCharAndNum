//
//  ViewController.m
//  正则表达式包含字符和数字
//
//  Created by 王奥东 on 16/6/25.
//  Copyright © 2016年 王奥东. All rights reserved.
//

#import "ViewController.h"
#import "RegexKitLite/RegexKitLite.h"
//^(?![^a-zA-Z]+$)(?!\D+$).{8,16}$

@interface ViewController ()
@property(nonatomic,strong)UITextField * textFiled;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UITextField * testMessage = [[UITextField alloc]initWithFrame:CGRectMake(100, 100, 200, 44)];
    testMessage.secureTextEntry = YES;
    testMessage.borderStyle = UITextBorderStyleLine;
    self.textFiled = testMessage;
    
    [self.view addSubview:testMessage];
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 200, 80, 80)];
    [btn setTitle:@"--提交--" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
   
    
}
-(void)clickBtn{
    
    NSString *str = self.textFiled.text;

    
    
    NSString *Regex = @"^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,16}$";
    NSPredicate *RegexTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",Regex];
    if ([RegexTest evaluateWithObject:str]) {
        NSLog(@"判断为真");
    }else{
        NSLog(@"不满足");
    }
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
