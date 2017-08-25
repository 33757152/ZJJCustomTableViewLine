//
//  ViewController.m
//  ZJJCustomTableViewLine
//
//  Created by 张锦江 on 2017/8/24.
//  Copyright © 2017年 ZJJ. All rights reserved.
//

#import "ViewController.h"
#import "ZJJShowViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.title = @"首页";
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(100, 100, 200, 50);
    button.backgroundColor = [UIColor cyanColor];
    [button setTitle:@"Enter" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(enterClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

- (void)enterClick {
    ZJJShowViewController *vc = [[ZJJShowViewController alloc] init];
    vc.titleName = @"WELCOME";
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
