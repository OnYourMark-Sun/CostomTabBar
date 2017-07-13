//
//  NormalViewController.m
//  CustomTabBar
//
//  Created by yurong on 2017/7/12.
//  Copyright © 2017年 yurong. All rights reserved.
//

#import "NormalViewController.h"
#import "AppDelegate.h"
@interface NormalViewController ()
{
    
    CGFloat  tabHeight;
    CGFloat tabWidth;
    
    NSArray * image;
    NSArray * seleImg;
}
@end

@implementation NormalViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tabBarController.tabBar.hidden = YES;
    
    tabHeight = 60;
    tabWidth = 60;
    [self CreatUI];
}

-(void)CreatUI{
    
    _tabBar = [[UIView alloc] initWithFrame:CGRectMake(0, SCREEN_HEIGHT-tabHeight, SCREEN_WIDTH, tabHeight)];
    _tabBar.backgroundColor = whiteCo;
    [self.view addSubview:_tabBar];
    UIImageView * imagevi = [[UIImageView alloc] init];
    imagevi.frame = CGRectMake(0, 0, SCREEN_WIDTH, tabHeight);
    imagevi.image =ImageName(@"qianse.jpg");
    imagevi.userInteractionEnabled = YES;
    [_tabBar addSubview:imagevi];
    
    CGFloat widd = (SCREEN_WIDTH-60*5)/4;
    
    image   = @[@"fen2.jpg",@"lan2.jpg",@"ju2.jpg",@"lv2.jpg",@"shandian.jpg"];
    seleImg = @[@"fen2.jpg",@"lan2.jpg",@"ju2.jpg"];
    
    NSArray * text = @[@"樱花",@"禾宝",@"蛇仔",@"DHK"];
    for (int i=0; i<5; i++) {
        
        
        if (i ==4) {
            
            UIButton * but = [[UIButton alloc] initWithFrame:CGRectMake(SCREEN_WIDTH-60, 0, 60, 60)];
            [but setImage:ImageName(image[i]) forState:UIControlStateNormal];
            but.layer.cornerRadius = 30;
            but.layer.masksToBounds = YES;
            [but addTarget:self action:@selector(fanhui) forControlEvents:UIControlEventTouchUpInside];
            [_tabBar addSubview:but];
            
            break;
        }
        
        UD_Button *btnOne = [[UD_Button alloc]initWithFrame:CGRectMake(widd+i*(tabHeight+widd), 0, tabWidth, tabHeight) centerInset:0 updownInset:0 imageName:image[i]   labelString:text[i] labelFont:10];
        btnOne.tag = i;
        [btnOne addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
        
        [_tabBar addSubview:btnOne];
    }
    //线
    UIView *grayView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 0.5)];
    grayView.backgroundColor = [UIColor lightGrayColor];
    [_tabBar addSubview:grayView];
    
    
    
    
    
    
    _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT-60)];
    [self.view addSubview:_imageView];
    
}
-(void)fanhui{
    
    
    AppDelegate * app = (AppDelegate*)[UIApplication sharedApplication].delegate;
    
      [app CustomDouble];
    
}
-(void)buttonAction:(UD_Button *)but{
    
    
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
