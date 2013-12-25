//
//  TableListController.h
//  viewtestdemo
//
//  Created by 磊 张 on 12-7-26.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableListController : UITableViewController

@property (strong,nonatomic) NSMutableArray *list;

-(id)initWithDataList:(NSMutableArray *) array;

-(void)enableTableEditing;

@end
