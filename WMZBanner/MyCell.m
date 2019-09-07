



//
//  MyCell.m
//  WMZBanner
//
//  Created by wmz on 2019/9/6.
//  Copyright © 2019 wmz. All rights reserved.
//

#import "MyCell.h"

@implementation MyCell
-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self){
        self.icon = [UIImageView new];
        self.icon.contentMode = UIViewContentModeScaleAspectFill;
        self.icon.layer.masksToBounds = YES;
        [self.contentView addSubview:self.icon];
        [self.icon mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(0);
        }];
        
        self.leftText = [UILabel new];
        self.leftText.backgroundColor = [UIColor lightGrayColor];
        self.leftText.alpha = 0.8;
        self.leftText.textColor = [UIColor whiteColor];
        self.leftText.numberOfLines = 1;
        self.leftText.textAlignment = NSTextAlignmentCenter;
        [self.icon addSubview:self.leftText];
        
        [self.leftText mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.bottom.mas_equalTo(0);
        }];
        self.contentView.layer.masksToBounds = YES;
        self.contentView.layer.cornerRadius = 8;
        
    }
    return self;
}
@end
