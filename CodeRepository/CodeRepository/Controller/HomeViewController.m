//
//  HomeViewController.m
//  CodeRepository
//
//  Created by lhy on 2017/10/26.
//  Copyright © 2017年 GZCP1897. All rights reserved.
//

#import "HomeViewController.h"
#import "DeviceInfo.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

#pragma mark - Lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@", [DeviceInfo deviceNameString]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}
@end
