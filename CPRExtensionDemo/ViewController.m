//
//  ViewController.m
//  CPRExtensionDemo
//
//  Created by zte's iMac on 2018/4/27.
//  Copyright © 2018年 zte's iMac. All rights reserved.
//

#import "ViewController.h"

#import "NSDictionary+CPRAddition.h"
#import "UIView+CPRAddition.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *dict = @{@"name": @"name value",
                           @"age" : @16,
                           @"height" : @180,
                           @"weight" : @50,
                           };
    NSString *json = [NSDictionary cpr_JSONStringFromDictionary:dict];
    NSLog(@"json:%@", json);
    
    NSDictionary *newDict = [NSDictionary cpr_dictionaryFromJSONString:json];
    NSLog(@"newDict:%@", newDict);
    
    UIButton *testView = [[UIButton alloc] initWithFrame:CGRectMake(30, 30, 100, 100)];
    [testView setTitle:@"Button" forState:UIControlStateNormal];
    testView.backgroundColor = [UIColor blackColor];
    // [testView cpr_setBoderColor:[UIColor yellowColor] borderWidth:10];
    // [testView cpr_setCornerRadius:50];
    [testView cpr_setCornerRadius:50 boderColor:[UIColor yellowColor] borderWidth:10];
    [self.view addSubview:testView];
    NSLog(@"size: %.2f, %.2f", testView.size.width, testView.size.height);
    NSLog(@"originX: %.2f", testView.originX);
    NSLog(@"originY: %.2f", testView.originY);
    NSLog(@"centerX: %.2f", testView.centerX);
    NSLog(@"centerY: %.2f", testView.centerY);
    NSLog(@"width: %.2f", testView.width);
    NSLog(@"height: %.2f", testView.height);
    NSLog(@"origin: %.2f, %.2f", testView.origin.x, testView.origin.y);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
