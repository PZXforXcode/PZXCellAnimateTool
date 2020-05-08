//
//  ViewController.m
//  tableAnimationg
//
//  Created by quark123321 on 2020/5/8.
//  Copyright © 2020 pengzuxin. All rights reserved.
//

#import "ViewController.h"
#import "PZXCellAnimateTool.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (assign, nonatomic) int x;
@property (strong, nonatomic) NSMutableArray *cellHeightArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.cellHeightArr = [NSMutableArray array];
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 50;
    
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    cell.textLabel.text = @"动画cell";
    self.x = 100 + arc4random() % 400;
    [_cellHeightArr addObject:[NSNumber numberWithInt:self.x]];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
        
    return [_cellHeightArr[indexPath.row] floatValue];
}

//cell滑动动画
- (void)tableView:(UITableView *)tableView willDisplayCell:(nonnull UITableViewCell *)cell forRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
//    [PZXCellAnimateTool reloadAnimationRotaionTableView:tableView cell:cell indexPath:indexPath];
//    [PZXCellAnimateTool reloadAnimationPanTableView:tableView cell:cell indexPath:indexPath];
//    [PZXCellAnimateTool reloadAnimationleftScaleInTableView:tableView cell:cell indexPath:indexPath];
//    [PZXCellAnimateTool reloadAnimationLeftSmoothInTableView:tableView cell:cell indexPath:indexPath];
//    [PZXCellAnimateTool reloadAnimationRightScaleInTableView:tableView cell:cell indexPath:indexPath];
    [PZXCellAnimateTool reloadAnimationDownSmoothInTableView:tableView cell:cell indexPath:indexPath];
    
}
@end
