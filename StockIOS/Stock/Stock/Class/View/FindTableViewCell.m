//
//  FindTableViewCell.m
//  Stock
//
//  Created by mac on 2017/9/9.
//  Copyright © 2017年 stock. All rights reserved.
//

#import "FindTableViewCell.h"

@interface FindTableViewCell()

@property (weak, nonatomic) IBOutlet UIView *viewOne;
@property (weak, nonatomic) IBOutlet UILabel *oneValue;
@property (weak, nonatomic) IBOutlet UIImageView *oneType;


@property (weak, nonatomic) IBOutlet UIView *viewTwo;
@property (weak, nonatomic) IBOutlet UILabel *towValue;
@property (weak, nonatomic) IBOutlet UIImageView *twoType;

@end

@implementation FindTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    _viewOne.layer.cornerRadius = 5;
    _viewOne.layer.borderWidth = 1;
    _viewOne.layer.borderColor = MAIN_COLOR.CGColor;
    
    _viewTwo.layer.cornerRadius = 5;
    _viewTwo.layer.borderWidth = 1;
    _viewTwo.layer.borderColor = MAIN_COLOR.CGColor;
    
}

/**
 更新cell
 @param dic 更新的内容
 */
- (void)updateCell:(NSArray *)dics {
    if (dics.count == 1) {
        _viewTwo.hidden = YES;
    }
    NSDictionary *dic = [dics firstObject];
    _oneValue.text = dic[@"rankModel"][@"title"];
    
    NSDictionary *dic2 = [dics lastObject];
    _towValue.text = dic2[@"rankModel"][@"title"];
}

- (IBAction)clickOneBtn:(UIButton *)sender {
    if (self.viewOneClickBlock) {
        self.viewOneClickBlock(self.indentationLevel);
    }
}

- (IBAction)clickTwoBtn:(UIButton *)sender {
    if (self.viewTwoClickBlock) {
        self.viewTwoClickBlock(self.indentationLevel);
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
