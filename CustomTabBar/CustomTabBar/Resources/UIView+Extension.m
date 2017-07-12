//
//  UIView+Extension.m
//  数组排序
//
//  Created by yurong on 2017/7/11.
//  Copyright © 2017年 yurong. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)

-(void)setX:(CGFloat)x{
    CGRect frame = self.frame;
    frame.origin.x  = x;
    self.frame = frame;
}
-(CGFloat)x{
    return self.frame.origin.x;
}

-(void)setY:(CGFloat)y{
    CGRect frame = self.frame;
    frame.origin.y  = y;
    self.frame = frame;
}
-(CGFloat)y{
    return self.frame.origin.y;
}

-(void)setMaxX:(CGFloat)MaxX{
    CGRect frame = self.frame;
    frame.origin.x  = MaxX-frame.size.width;
    self.frame = frame;
}
-(CGFloat)MaxX{
    return self.x+self.width;
}
-(void)setMaxY:(CGFloat)MaxY{
    CGRect frame = self.frame;
    frame.origin.y  = MaxY-frame.size.height;
    self.frame = frame;
}
-(CGFloat)MaxY{
    return self.y+self.height;
}

-(void)setSize:(CGSize)size{
    CGRect frame = self.frame;
    frame.size  = size;
    self.frame = frame;
}
-(CGSize)size{
    return self.frame.size;
}

-(void)setWidth:(CGFloat)width{
    CGRect frame = self.frame;
    frame.size.width  = width;
    self.frame = frame;
}
-(CGFloat)width{
    return self.frame.size.width;
}

-(void)setHeight:(CGFloat)height{
    CGRect frame = self.frame;
    frame.size.height  = height;
    self.frame = frame;
}
-(CGFloat)height{
    return self.frame.size.height;
}
@end
