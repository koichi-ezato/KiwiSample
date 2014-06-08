//
//  KWSViewController.m
//  KiwiSample
//
//  Created by suwa.yuki on 3/6/14.
//  Copyright (c) 2014 suwa.yuki. All rights reserved.
//

#import "KWSViewController.h"

@interface KWSViewController ()

@end

@implementation KWSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [TestFlight passCheckpoint:@"チェックポイント"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)exception:(id)sender {
    [NSException raise:@"TestException" format:@"テスト"];
}
- (IBAction)feedback:(id)sender {
    NSString *feedback = @"フィードバックテスト";
    [TestFlight submitFeedback:feedback];
}

@end
