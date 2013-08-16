//
//  ViewController.m
//  XFNavBarBtn
//
//  Created by Soft on 13-8-16.
//  Copyright (c) 2013年 eShell -- 新风作浪. All rights reserved.
//

#import "ViewController.h"
#import "NavViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushVC:(id)sender {
    NavViewController *navVC = (NavViewController *)[self.storyboard instantiateViewControllerWithIdentifier:@"NavViewController"];
    navVC.title = NSLocalizedString(@"设置", nil);
    [self.navigationController pushViewController:navVC animated:YES];
}

@end
