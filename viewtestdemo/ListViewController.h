//
//  ListViewController.h
//  viewtestdemo
//
//  Created by 磊 张 on 12-7-23.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListViewController : UITableViewController
{
    NSMutableArray *list;
}
@property (nonatomic,retain) NSMutableArray *list;

@end
