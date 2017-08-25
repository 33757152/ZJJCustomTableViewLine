//
//  ZJJCusTableViewCell.m
//  ZJJCustomTableViewLine
//
//  Created by 张锦江 on 2017/8/25.
//  Copyright © 2017年 ZJJ. All rights reserved.
//

#import "ZJJCusTableViewCell.h"

@interface ZJJCusTableViewCell ()

@property (nonatomic, strong) UILabel *nameLabel;

@end

@implementation ZJJCusTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier withCellHeight:(float)cellHeight {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier withCellHeight:cellHeight];
    if (self) {
        self.nameLabel = [[UILabel alloc] init];
        self.nameLabel.frame = CGRectMake(20, 5, 100, cellHeight-10);
        self.nameLabel.backgroundColor = [UIColor whiteColor];
        self.nameLabel.text = @"hello world!";
        self.nameLabel.textColor = [UIColor redColor];
        [self addSubview:self.nameLabel];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
