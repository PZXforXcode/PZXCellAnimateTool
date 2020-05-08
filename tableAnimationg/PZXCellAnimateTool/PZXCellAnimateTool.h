//
//  PZXCellAnimateTool.h
//  tableAnimationg
//
//  Created by quark123321 on 2020/5/8.
//  Copyright © 2020 pengzuxin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PZXCellAnimateTool : NSObject

#pragma mark tableview 滑动动画
//旋转放入
+ (void)reloadAnimationRotaionTableView:(UITableView *_Nullable)tableView cell:(nonnull UITableViewCell *)cell indexPath:(nonnull NSIndexPath *)indexPath;
//扇形滑入
+ (void)reloadAnimationPanTableView:(UITableView *_Nullable)tableView cell:(nonnull UITableViewCell *)cell indexPath:(nonnull NSIndexPath *)indexPath;
//左边平移放大滑入
+ (void)reloadAnimationleftScaleInTableView:(UITableView *_Nullable)tableView cell:(nonnull UITableViewCell *)cell indexPath:(nonnull NSIndexPath *)indexPath;
//左边平滑滑入
+ (void)reloadAnimationLeftSmoothInTableView:(UITableView *_Nullable)tableView cell:(nonnull UITableViewCell *)cell indexPath:(nonnull NSIndexPath *)indexPath;
//右边放大滑入
+ (void)reloadAnimationRightScaleInTableView:(UITableView *_Nullable)tableView cell:(nonnull UITableViewCell *)cell indexPath:(nonnull NSIndexPath *)indexPath;
//从下方滑入
+ (void)reloadAnimationDownSmoothInTableView:(UITableView *_Nullable)tableView cell:(nonnull UITableViewCell *)cell indexPath:(nonnull NSIndexPath *)indexPath;
@end

NS_ASSUME_NONNULL_END
