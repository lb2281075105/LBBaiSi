//
//  LBBSTabBarController.m
//  LBBaiSi
//
//  Created by liubo on 2017/9/10.
//  Copyright © 2017年 liubo. All rights reserved.
//

#import "LBBSTabBarController.h"
#import "LBBSEssenceController.h"
#import "LBBSNewController.h"
#import "LBBSMineController.h"
#import "LBBSPublishController.h"
#import "LBBSFollowController.h"
#import "LBBSNavController.h"
@interface LBBSTabBarController ()

@end

@implementation LBBSTabBarController
/// 只加载一次
//+(void)load{
//}
/// 不要轻易用下面这个方法
//-(void)loadView{
//}
+(void)initialize{
    
    UITabBarItem *item = [UITabBarItem appearanceWhenContainedIn:self, nil];
    /// 正常
    [item setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:13],NSForegroundColorAttributeName:[UIColor grayColor]} forState:UIControlStateNormal];
    /// 选中
    [item setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor]} forState:UIControlStateSelected];
}
- (void)viewDidLoad {
    [super viewDidLoad];

    [self addChildViewControllers];
}

- (void)addChildViewControllers{
    /// 精选
    [self addChildViewController:[[LBBSEssenceController alloc]init] withNormalImage:@"tabBar_essence_icon" withSelectImage:@"tabBar_essence_click_icon" withTitle:@"精选"];
    /// 新帖
    [self addChildViewController:[[LBBSNewController alloc]init] withNormalImage:@"tabBar_new_icon" withSelectImage:@"tabBar_new_click_icon" withTitle:@"新帖"];
    /// 发布
    [self addChildViewController:[[LBBSPublishController alloc]init] withNormalImage:@"tabBar_publish_icon" withSelectImage:@"tabBar_publish_icon" withTitle:@""];
    /// 关注
    [self addChildViewController:[[LBBSFollowController alloc]init] withNormalImage:@"tabBar_friendTrends_icon" withSelectImage:@"tabBar_friendTrends_click_icon" withTitle:@"关注"];
    /// 我
    [self addChildViewController:[[LBBSMineController alloc]init] withNormalImage:@"tabBar_me_icon" withSelectImage:@"tabBar_me_click_icon" withTitle:@"我"];
}
/// 添加子控制器
- (void)addChildViewController:(UIViewController *)childController withNormalImage:(NSString *)normalImage withSelectImage:(NSString *)selectImage withTitle:(NSString *)title{
    
    childController.tabBarItem.image = [UIImage imageNamed:normalImage];
    childController.tabBarItem.selectedImage = [UIImage imageNamed:selectImage];
    childController.title = title;
    
    if ([title isEqualToString:@""]) {
        childController.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);
    }
    LBBSNavController *nav = [[LBBSNavController alloc]initWithRootViewController:childController];
    [self addChildViewController:nav];
}
@end
