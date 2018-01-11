//
//  MessageForwardingViewController.m
//  Runtime
//
//  Created by Darsky on 2018/1/11.
//  Copyright © 2018年 Darsky. All rights reserved.
//

#import "MessageForwardingViewController.h"
#import "Warrior.h"

@interface MessageForwardingViewController ()

@end

@implementation MessageForwardingViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


- (IBAction)didDemoButtonTouch:(id)sender
{
    Warrior *warrior = [[Warrior alloc] init];
    [warrior negotiate];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
