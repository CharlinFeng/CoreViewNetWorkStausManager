//
//  ViewController.m
//  CoreViewNetWorkStausManager
//
//  Created by muxi on 15/3/12.
//  Copyright (c) 2015年 muxi. All rights reserved.
//

#import "ViewController.h"
#import "CoreViewNetWorkStausManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//
//    @"这是一个副标题这是一个副标题"
    

    
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [CoreViewNetWorkStausManager show:self.view type:CMTypeError msg:@"加载失败" subMsg:@"请检查网络设置" offsetY:-100 failClickBlock:^{
        
        
        [CoreViewNetWorkStausManager show:self.view type:CMTypeLoadingWithImage msg:@"正在加载" subMsg:@"请稍等。正在努力加载哦" offsetY:100 failClickBlock:nil];
        
    }];
}



- (IBAction)hideMsgView:(id)sender {
    
    [CoreViewNetWorkStausManager dismiss:self.view];
}

@end
