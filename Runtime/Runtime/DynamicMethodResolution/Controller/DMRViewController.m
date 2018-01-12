//
//  DMRViewController.m
//  Runtime
//
//  Created by Darsky on 2018/1/12.
//  Copyright © 2018年 Darsky. All rights reserved.
//

#import "DMRViewController.h"
#import "DMRDemoObject.h"

@interface DMRViewController ()

@end

@implementation DMRViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


- (IBAction)didDemoButtonTouch:(id)sender
{
    DMRDemoObject *object = [[DMRDemoObject alloc] init];
    
    [object performSelector:@selector(showInstanceMethod)
                 withObject:nil];
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
