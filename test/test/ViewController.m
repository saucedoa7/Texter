//
//  ViewController.m
//  test
//
//  Created by Albert Saucedo on 9/13/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    char phoneNumber[12];
    char textMessage[200];

    NSLog(@"Please Enter Phone Number / email");
    scanf(" %[^\n]s", phoneNumber);

    NSLog(@"Enter your text message (Max Char. 200)");
    scanf(" %[^\n]s", textMessage);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
