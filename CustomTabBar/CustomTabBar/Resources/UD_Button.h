//
//  UD_Button.h
//  数组排序
//
//  Created by yurong on 2017/7/11.
//  Copyright © 2017年 yurong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UD_Button : UIControl
@property(nonatomic,strong)UIImageView *contentImageView;
@property(nonatomic,strong)UILabel *contentLabel;

- (instancetype)initWithFrame:(CGRect)frame centerInset:(CGFloat)centerInset updownInset:(CGFloat)updownInset imageName:(NSString *)imageName labelString:(NSString *)labelString labelFont:(CGFloat)font;
@end
