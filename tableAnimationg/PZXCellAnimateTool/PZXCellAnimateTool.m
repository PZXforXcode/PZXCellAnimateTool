//
//  PZXCellAnimateTool.m
//  tableAnimationg
//
//  Created by quark123321 on 2020/5/8.
//  Copyright © 2020 pengzuxin. All rights reserved.
//

#import "PZXCellAnimateTool.h"

@implementation PZXCellAnimateTool

+ (void)reloadAnimationRotaionTableView:(UITableView *_Nullable)tableView cell:(nonnull UITableViewCell *)cell indexPath:(nonnull NSIndexPath *)indexPath
{
    NSArray *array =  tableView.indexPathsForVisibleRows;
    NSIndexPath *firstIndexPath = array[0];
    //设置anchorPoint
    cell.layer.anchorPoint =CGPointMake(0,0.5);
    //为了防止cell视图移动，重新把cell放回原来的位置
    cell.layer.position =CGPointMake(0, cell.layer.position.y);
    //设置cell按照z轴旋转90度，注意是弧度
    if (firstIndexPath.row < indexPath.row) {
        cell.layer.transform =CATransform3DMakeRotation(M_PI_2,0,0,1.0);
    }else{
        cell.layer.transform =CATransform3DMakeRotation(-M_PI_2,0,0,1.0);
    }
    cell.alpha =0.0;
    [UIView animateWithDuration:1 animations:^{
        cell.layer.transform =CATransform3DIdentity;
        cell.alpha =1.0;
    }];
}
+ (void)reloadAnimationPanTableView:(UITableView *_Nullable)tableView cell:(nonnull UITableViewCell *)cell indexPath:(nonnull NSIndexPath *)indexPath{
    
    CATransform3D rotation;
    rotation = CATransform3DMakeRotation((90.0*M_PI/180), 0.0, 0.7, 0.4);
    rotation.m44 = 1.0/-600;
    //阴影
    cell.layer.shadowColor = [[UIColor blackColor]CGColor];
    //阴影偏移
    cell.layer.shadowOffset = CGSizeMake(10, 10);
    //透明度
    cell.alpha = 0;
    cell.layer.transform = rotation;
    //锚点
    cell.layer.anchorPoint = CGPointMake(0.5, 0.5);
//    [UIView beginAnimations:@"rotaion" context:NULL];
//    [UIView setAnimationDuration:0.8];
//    cell.layer.transform = CATransform3DIdentity;
//    cell.alpha = 1;
//    cell.layer.shadowOffset = CGSizeMake(0, 0);
//    [UIView commitAnimations];
    
    [UIView animateWithDuration:0.8 animations:^{
        cell.layer.transform = CATransform3DIdentity;
        cell.alpha = 1;
        cell.layer.shadowOffset = CGSizeMake(0, 0);
    }];
}

+ (void)reloadAnimationleftScaleInTableView:(UITableView *_Nullable)tableView cell:(nonnull UITableViewCell *)cell indexPath:(nonnull NSIndexPath *)indexPath{
    cell.contentView.alpha = 0.1;
    CGAffineTransform transformScale = CGAffineTransformMakeScale(2,2);
    CGAffineTransform transformTranslate = CGAffineTransformMakeTranslation(0, 0);
    cell.contentView.transform = CGAffineTransformConcat(transformScale, transformTranslate);
    [tableView bringSubviewToFront:cell.contentView];
    [UIView animateWithDuration:1 animations:^{
        cell.contentView.alpha = 1;
        cell.contentView.transform = CGAffineTransformIdentity;
    } completion:nil];
}


+ (void)reloadAnimationLeftSmoothInTableView:(UITableView *_Nullable)tableView cell:(nonnull UITableViewCell *)cell indexPath:(nonnull NSIndexPath *)indexPath{
    CGFloat rotationAngleDegrees = 0;
    CGFloat rotationAngleRadians = rotationAngleDegrees * (M_PI/180);
    CGPoint offsetPositioning = CGPointMake(-200, -20);
    CATransform3D transform = CATransform3DIdentity;
    transform = CATransform3DRotate(transform, rotationAngleRadians, 0.0, 0.0, 1.0);
    transform = CATransform3DTranslate(transform, offsetPositioning.x, offsetPositioning.y, 0.0);
    UIView *card = [cell contentView];
    card.layer.transform = transform;
    card.layer.opacity = 0.1;
    [UIView animateWithDuration:0.5f animations:^{
        card.layer.transform = CATransform3DIdentity;
        card.layer.opacity = 1;
    }];
}

+ (void)reloadAnimationRightScaleInTableView:(UITableView *_Nullable)tableView cell:(nonnull UITableViewCell *)cell indexPath:(nonnull NSIndexPath *)indexPath{
    cell.alpha = 0.5;
    CGAffineTransform transformScale = CGAffineTransformMakeScale(0.3,0.8);
    CGAffineTransform transformTranslate = CGAffineTransformMakeTranslation(0.5, 0.6);
    cell.transform = CGAffineTransformConcat(transformScale, transformTranslate);
    [tableView bringSubviewToFront:cell];
    [UIView animateWithDuration:1.0f
                          delay:0
                        options:UIViewAnimationOptionAllowUserInteraction
                     animations:^{
                         cell.alpha = 1;
                         //清空 transform
                         cell.transform = CGAffineTransformIdentity;
                     } completion:nil];
}



+ (void)reloadAnimationDownSmoothInTableView:(UITableView *_Nullable)tableView cell:(nonnull UITableViewCell *)cell indexPath:(nonnull NSIndexPath *)indexPath{
    CGFloat rotationAngleDegrees = 0;
    CGFloat rotationAngleRadians = rotationAngleDegrees * (M_PI/180);
    CGPoint offsetPositioning = CGPointMake(0, -200);
    CATransform3D transform = CATransform3DIdentity;
    transform = CATransform3DRotate(transform, rotationAngleRadians, 0.0, 0.0, 1.0);
    transform = CATransform3DTranslate(transform, offsetPositioning.x, offsetPositioning.y, 0.0);
    UIView *card = [cell contentView];
    card.layer.transform = transform;
    card.layer.opacity = 0.1;
    [UIView animateWithDuration:0.3f animations:^{
        card.layer.transform = CATransform3DIdentity;
        card.layer.opacity = 1;
    }];
}

@end
