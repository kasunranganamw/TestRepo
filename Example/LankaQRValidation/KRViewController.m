//
//  KRViewController.m
//  LankaQRValidation
//
//  Created by kasunranganamw@gmail.com on 09/04/2020.
//  Copyright (c) 2020 kasunranganamw@gmail.com. All rights reserved.
//

#import "KRViewController.h"
#import <LankaQRValidation/ValidatorUtil.h>

@interface KRViewController ()

@end

@implementation KRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    ValidatorUtil *vu = [ValidatorUtil new];
    NSDictionary *dict = [vu parseQRCode:@""];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
