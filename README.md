# PZXCellAnimateTool
tableviewCell滑动的动画小封装，方便使用的小工具

## 用法  
```
#import "PZXCellAnimateTool/PZXCellAnimateTool.h"   

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
```
