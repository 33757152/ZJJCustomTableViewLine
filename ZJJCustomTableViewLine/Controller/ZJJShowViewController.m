//
//  ZJJShowViewController.m
//  ZJJCustomTableViewLine
//
//  Created by 张锦江 on 2017/8/24.
//  Copyright © 2017年 ZJJ. All rights reserved.
//
#define  CELL_HEIGHT   60.0f
#import "ZJJShowViewController.h"
#import "ZJJCusTableViewCell.h"
#import "Header.h"

@interface ZJJShowViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *table;

@end

@implementation ZJJShowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = self.titleName;
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.table];
}

- (UITableView *)table {
    if (!_table) {
        _table = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, SCREEN_WIDTH, SCREEN_HEIGHT-64) style:UITableViewStylePlain];
        _table.backgroundColor = [UIColor whiteColor];
        _table.delegate = self;
        _table.dataSource = self;
        _table.rowHeight = CELL_HEIGHT;
        _table.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    return _table;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ZJJCusTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[ZJJCusTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell" withCellHeight:CELL_HEIGHT];
    }
    return cell;
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
