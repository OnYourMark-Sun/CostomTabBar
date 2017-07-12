//
//  UD_Button.m
//  数组排序
//
//  Created by yurong on 2017/7/11.
//  Copyright © 2017年 yurong. All rights reserved.
//

#import "UD_Button.h"

@implementation UD_Button

//centerInset 图片与文字上下间距
//updownset 图片文字整体距上距下高

- (instancetype)initWithFrame:(CGRect)frame centerInset:(CGFloat)centerInset updownInset:(CGFloat)updownInset imageName:(NSString *)imageName labelString:(NSString *)labelString labelFont:(CGFloat)font
{
    self = [super initWithFrame:frame];
    if (self) {
        CGFloat imageEquelheight = frame.size.height-updownInset*2-font-centerInset;
        CGFloat imageLeft = (frame.size.width-imageEquelheight)/2;
        _contentImageView = [[UIImageView alloc]initWithFrame:CGRectMake(imageLeft, updownInset, imageEquelheight, imageEquelheight)];
        _contentImageView.contentMode = UIViewContentModeScaleAspectFit;
        _contentImageView.image = [UIImage imageNamed:imageName];
        [self addSubview:_contentImageView];
        
        _contentLabel = [[UILabel alloc]initWithFrame:CGRectMake(5, _contentImageView.MaxY+centerInset, frame.size.width-10,font )];
        _contentLabel.font = [UIFont systemFontOfSize:font];
        _contentLabel.textColor = [UIColor blackColor];
        _contentLabel.text = labelString;
        _contentLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:_contentLabel];
        
    }
    return self;
}

@end
