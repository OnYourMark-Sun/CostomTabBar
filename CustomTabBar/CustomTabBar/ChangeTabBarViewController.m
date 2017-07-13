//
//  ChangeTabBarViewController.m
//  CustomTabBar
//
//  Created by yurong on 2017/7/12.
//  Copyright © 2017年 yurong. All rights reserved.
//

#import "ChangeTabBarViewController.h"
#import "AppDelegate.h"
@interface ChangeTabBarViewController ()

@end

@implementation ChangeTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSArray * img = @[@"qianback.jpg",@"shenback.jpg"];
    NSArray * text = @[@"CustomNormal",@"CustomDouble"];
    for (int i=0; i<2; i++) {
        
        UD_Button  * button = [[UD_Button alloc] initWithFrame:CGRectMake(30, 100+i*250, SCREEN_WIDTH-60, 200) centerInset:5 updownInset:5 imageName:img[i] labelString:text[i] labelFont:40];
        
        button.tag = i;
        [button addTarget:self action:@selector(backTab:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
        
    }
    
}

-(void)backTab:(UIButton*)but {
    
    AppDelegate * app = (AppDelegate*)[UIApplication sharedApplication].delegate;
    
    
    switch (but.tag) {
        case 0:
        {
            [app CustomNormal];
            
        }
            break;
        case 1:{
            
            [app CustomDouble];
            
        }
        default:
            break;
    }
    
    
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
