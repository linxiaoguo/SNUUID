//
//  ViewController.m
//  SNUUID
//
//  Created by 林小果 on 15/4/22.
//  Copyright (c) 2015年 林小果. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *uuid = [SNUUID uuid];
    lb_uuid.text = uuid;
    tf_uuid.text = uuid;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
