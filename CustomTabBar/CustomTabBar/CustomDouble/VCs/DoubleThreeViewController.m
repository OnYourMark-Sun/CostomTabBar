//
//  DoubleThreeViewController.m
//  CustomTabBar
//
//  Created by yurong on 2017/7/12.
//  Copyright © 2017年 yurong. All rights reserved.
//

#import "DoubleThreeViewController.h"

@interface DoubleThreeViewController ()

@end

@implementation DoubleThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
    self.imageView.image = ImageName(@"dajiao.jpg");
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
