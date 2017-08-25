//
//  ZJJBaseTableViewCell.m
//  ZJJCustomTableViewLine
//
//  Created by 张锦江 on 2017/8/25.
//  Copyright © 2017年 ZJJ. All rights reserved.
//
#define   SCREEN_WIDTH    [UIScreen mainScreen].bounds.size.width
#define   SCREEN_HEIGHT   [UIScreen mainScreen].bounds.size.height

#import "ZJJBaseTableViewCell.h"

@interface ZJJBaseTableViewCell ()

@property (nonatomic, strong) UIView *lineView;

@end

@implementation ZJJBaseTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier withCellHeight:(float)cellHeight{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.frame = CGRectMake(0, 0, SCREEN_WIDTH, cellHeight);
        [self creatLine];
    }
    return self;
}

- (void)creatLine {
    self.lineView = [[UIView alloc] initWithFrame:CGRectMake(20, self.frame.size.height-0.5, SCREEN_WIDTH-20, 0.5)];
    self.lineView.backgroundColor = [UIColor lightGrayColor];
    [self addSubview:self.lineView];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
