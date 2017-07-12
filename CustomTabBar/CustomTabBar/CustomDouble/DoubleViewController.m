//
//  DoubleViewController.m
//  CustomTabBar
//
//  Created by yurong on 2017/7/12.
//  Copyright © 2017年 yurong. All rights reserved.
//

#import "DoubleViewController.h"

@interface DoubleViewController ()
{
    
    CGFloat  tabHeight;
    CGFloat tabWidth;
}
@end

@implementation DoubleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tabBarController.tabBar.hidden = YES;
    
    tabHeight = IPHONEHIGHT(80);
    tabWidth = IPHONEWIDTH(80);
    [self CreatUI];
}

-(void)CreatUI{
    
    _tabBar = [[UIView alloc] initWithFrame:CGRectMake(0, SCREEN_HEIGHT-tabHeight, SCREEN_WIDTH, tabHeight)];
    _tabBar.backgroundColor = whiteCo;
    [self.view addSubview:_tabBar];
    UIImageView * imagevi = [[UIImageView alloc] init];
    imagevi.frame = CGRectMake(0, 0, SCREEN_WIDTH, tabHeight);
    imagevi.image =ImageName(@"shenback.jpg");
    imagevi.userInteractionEnabled = YES;
    [_tabBar addSubview:imagevi];
    
    CGFloat widd = IPHONEWIDTH((SCREEN_WIDTH-60*3)/4);
    
    NSArray * image = @[@"fen.jpg",@"lan.jpg",@"ju.jpg"];
    NSArray * seleImg = @[@"fen2.jpg",@"lan2.jpg",@"ju2.jpg"];
    
    NSArray * text = @[@"小粉",@"大蓝",@"小橘"];
    for (int i=0; i<3; i++) {
        UD_Button *btnOne = [[UD_Button alloc]initWithFrame:CGRectMake(widd+i*(tabHeight+widd), 0, tabWidth, tabHeight) centerInset:IPHONEWIDTH(5) updownInset:IPHONEWIDTH(5) imageName:image[i]   labelString:text[i] labelFont:IPHONEWIDTH(25)];
        btnOne.tag = i;
        [btnOne addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
        
        [_tabBar addSubview:btnOne];
    }
    
    //线
    UIView *grayView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, IPHONEWIDTH(0.5))];
    grayView.backgroundColor = [UIColor lightGrayColor];
    [_tabBar addSubview:grayView];

}

-(void)buttonAction:(UIButton*)but{
    
    
    switch (but.tag) {
        case 0:
        {
            self.tabBarController.selectedIndex = 0;
            
        }
            break;
            
        case 1:{
            
            self.tabBarController.selectedIndex = 1;
            break;
        }
            
        case 2:{
            
            self.tabBarController.selectedIndex = 2;
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
