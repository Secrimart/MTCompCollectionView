//
//  MTViewController.m
//  MTCompCollectionView
//
//  Created by rstx_reg@aliyun.com on 03/21/2018.
//  Copyright (c) 2018 rstx_reg@aliyun.com. All rights reserved.
//

#import "MTViewController.h"

@import MTComponent;

@interface MTViewController ()<MTComponentDataSource>
@property (nonatomic, strong) MTTComContainerVC *containerVC;

@end

@implementation MTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self addChildController:self.containerVC];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupLayoutConstraint {
    __weak typeof(self) weakSelf = self;
    [self.containerVC.view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(weakSelf.view);
    }];
}

- (NSArray<MTComponent *> *)componentLocalConfigData {
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    [dict setValue:@(YES) forKey:@"enableComponent"];
    [dict setValue:@"top" forKey:@"dataKey"];
    [dict setValue:@"comp0" forKey:@"componentName"];
    [dict setValue:@"MTCompCollectionViewVC" forKey:@"componentVCName"];
    [dict setValue:@(0) forKey:@"style"];
    [dict setValue:@(0) forKey:@"section"];
    [dict setValue:@(1) forKey:@"row"];
    
    MTComponent *comp0 = [MTComponent initWithDict:dict];
    
    [dict setValue:@"Middle" forKey:@"dataKey"];
    [dict setValue:@"comp1" forKey:@"componentName"];
    [dict setValue:@(0) forKey:@"row"];
    [dict setValue:@"MTOtherCompVC" forKey:@"componentVCName"];
    MTComponent *comp1 = [MTComponent initWithDict:dict];
    
    [dict setValue:@"Bottom" forKey:@"dataKey"];
    [dict setValue:@"comp2" forKey:@"componentName"];
    [dict setValue:@(1) forKey:@"section"];
    [dict setValue:@(0) forKey:@"row"];
    [dict setValue:@"MTOtherCompVC" forKey:@"componentVCName"];
    MTComponent *comp2 = [MTComponent initWithDict:dict];
    
    return @[comp0,comp1,comp2];
}

- (NSArray<NSDictionary *> *)componentServiceData {
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:0];
    NSMutableDictionary *busData = [NSMutableDictionary dictionaryWithCapacity:0];
    [busData setObject:@"page1" forKey:@"itemTitle"];
    [busData setObject:@"" forKey:@"itemImageName"];
    [busData setObject:@"https://mobile.shenzhenair.com/image/lbt/20180312.jpg" forKey:@"itemImageURL"];
    [busData setObject:@(0) forKey:@"index"];
    [busData setObject:@"https://www.apple.com" forKey:@"landingURL"];
    [busData setObject:@(NO) forKey:@"isNativeLanding"];
    [busData setObject:@"MTOtherCompVC" forKey:@"landingVCName"];
    [busData setObject:@(0) forKey:@"style"];
    [array addObject:busData];
    
    NSMutableDictionary *busData1 = [NSMutableDictionary dictionaryWithDictionary:busData];
    [busData1 setObject:@"page2" forKey:@"itemTitle"];
    [busData1 setObject:@"https://mobile.shenzhenair.com/image/lbt/20180301.jpg" forKey:@"itemImageURL"];
    [busData1 setObject:@(1) forKey:@"index"];
    [array addObject:busData1];
    
    NSMutableDictionary *busData2 = [NSMutableDictionary dictionaryWithDictionary:busData];
    [busData2 setObject:@"page3" forKey:@"itemTitle"];
    [busData2 setObject:@"https://mobile.shenzhenair.com/image/lbt/20180302.jpg" forKey:@"itemImageURL"];
    [busData2 setObject:@(YES) forKey:@"isNativeLanding"];
    [busData2 setObject:@(2) forKey:@"index"];
    [array addObject:busData2];
    
    NSMutableDictionary *busData3 = [NSMutableDictionary dictionaryWithDictionary:busData];
    [busData3 setObject:@"page4" forKey:@"itemTitle"];
    [busData3 setObject:@"https://mobile.shenzhenair.com/image/lbt/20180302.jpg" forKey:@"itemImageURL"];
    [busData3 setObject:@(YES) forKey:@"isNativeLanding"];
    [busData3 setObject:@(3) forKey:@"index"];
    [array addObject:busData3];
    
    NSMutableDictionary *busData4 = [NSMutableDictionary dictionaryWithDictionary:busData];
    [busData4 setObject:@"page5" forKey:@"itemTitle"];
    [busData4 setObject:@"https://mobile.shenzhenair.com/image/lbt/20180302.jpg" forKey:@"itemImageURL"];
    [busData4 setObject:@(YES) forKey:@"isNativeLanding"];
    [busData4 setObject:@(4) forKey:@"index"];
    [array addObject:busData4];
    
    NSMutableDictionary *busData5 = [NSMutableDictionary dictionaryWithDictionary:busData];
    [busData5 setObject:@"page6" forKey:@"itemTitle"];
    [busData5 setObject:@"https://mobile.shenzhenair.com/image/lbt/20180302.jpg" forKey:@"itemImageURL"];
    [busData5 setObject:@(YES) forKey:@"isNativeLanding"];
    [busData5 setObject:@(5) forKey:@"index"];
    [array addObject:busData5];

    NSMutableDictionary *busData6 = [NSMutableDictionary dictionaryWithDictionary:busData];
    [busData6 setObject:@"page7" forKey:@"itemTitle"];
    [busData6 setObject:@"https://mobile.shenzhenair.com/image/lbt/20180302.jpg" forKey:@"itemImageURL"];
    [busData6 setObject:@(YES) forKey:@"isNativeLanding"];
    [busData6 setObject:@(6) forKey:@"index"];
    [array addObject:busData6];
    
    NSMutableDictionary *busData7 = [NSMutableDictionary dictionaryWithDictionary:busData];
    [busData7 setObject:@"page8" forKey:@"itemTitle"];
    [busData7 setObject:@"https://mobile.shenzhenair.com/image/lbt/20180302.jpg" forKey:@"itemImageURL"];
    [busData7 setObject:@(YES) forKey:@"isNativeLanding"];
    [busData7 setObject:@(7) forKey:@"index"];
    [array addObject:busData7];
    
    NSMutableDictionary *busData8 = [NSMutableDictionary dictionaryWithDictionary:busData];
    [busData8 setObject:@"page9" forKey:@"itemTitle"];
    [busData8 setObject:@"https://mobile.shenzhenair.com/image/lbt/20180302.jpg" forKey:@"itemImageURL"];
    [busData8 setObject:@(YES) forKey:@"isNativeLanding"];
    [busData8 setObject:@(8) forKey:@"index"];
    [array addObject:busData8];

    NSMutableDictionary *busData9 = [NSMutableDictionary dictionaryWithDictionary:busData];
    [busData9 setObject:@"page10" forKey:@"itemTitle"];
    [busData9 setObject:@"https://mobile.shenzhenair.com/image/lbt/20180302.jpg" forKey:@"itemImageURL"];
    [busData9 setObject:@(YES) forKey:@"isNativeLanding"];
    [busData9 setObject:@(9) forKey:@"index"];
    [array addObject:busData9];

    NSMutableDictionary *busData10 = [NSMutableDictionary dictionaryWithDictionary:busData];
    [busData10 setObject:@"page11" forKey:@"itemTitle"];
    [busData10 setObject:@"https://mobile.shenzhenair.com/image/lbt/20180302.jpg" forKey:@"itemImageURL"];
    [busData10 setObject:@(YES) forKey:@"isNativeLanding"];
    [busData10 setObject:@(10) forKey:@"index"];
    [array addObject:busData10];
    
    
    return @[@{@"top":array,
               @"Middle":@[@"1",@"2",@"3"],
               @"Bottom":@[@"1",@"2",@"3"]}];
}

//MARK: - Getter And Setter
- (MTTComContainerVC *)containerVC {
    if (_containerVC) return _containerVC;
    _containerVC = [[MTTComContainerVC alloc] initWithStyle:UITableViewStyleGrouped];
    _containerVC.dataSource = self;
    
    return _containerVC;
}

@end
