//
//  DMRViewController.m
//  Runtime
//
//  Created by Darsky on 2018/1/12.
//  Copyright © 2018年 Darsky. All rights reserved.
//

#import "AssociatedObjectViewController.h"
#import "AssociatedObject+Category.h"
#import "AssociatedObject.h"

@interface AssociatedObjectViewController ()

@end

@implementation AssociatedObjectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


- (IBAction)didDemoButtonTouch:(id)sender
{
    AssociatedObject *model = [[AssociatedObject alloc] init];
    model.associatedValue = @"Hello";
    NSLog(@"%@",model.associatedValue);
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
