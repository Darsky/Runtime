//
//  ViewController.m
//  iOSDesignPattern
//
//  Created by Darsky on 2017/12/14.
//  Copyright © 2017年 Darsky. All rights reserved.
//

#import "ViewController.h"
#import "MessageForwardingViewController.h"


@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    __weak IBOutlet UITableView *_tableView;
    
    NSArray                     *_designPatterns;
}

@end

@implementation ViewController

static NSString *MainControllerCellIdentifier    = @"MainControllerCell";


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _designPatterns = @[@"MessageForwarding"];
}

#pragma mark - UITableViewDataSource Method

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _designPatterns.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 40;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MainControllerCellIdentifier];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:MainControllerCellIdentifier];
    }
    cell.textLabel.text = _designPatterns[indexPath.row];
    
    return cell;
}

#pragma mark - UITableViewDelegate Method

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath
                             animated:YES];
    if ([_designPatterns[indexPath.row] isEqualToString:@"MessageForwarding"])
    {
        MessageForwardingViewController *vController = nil;
        vController = [[MessageForwardingViewController alloc] initWithNibName:@"MessageForwardingViewController"
                                                              bundle:nil];
        [self.navigationController pushViewController:vController
                                             animated:YES];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
