//
//  Item2ViewController.h
//  viewtestdemo
//
//  Created by 磊 张 on 12-7-23.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableListController.h"


@interface Item2ViewController : UIViewController<UIApplicationDelegate>

@property (retain,nonatomic)TableListController *TLController;
@property (retain, nonatomic) IBOutlet UITableView *TV;
@property (strong, nonatomic) IBOutlet UIToolbar *Toolbar;

-(IBAction)AddToTable:(id)sender;

-(IBAction)DelToTable:(id)sender;

-(IBAction)MoveTable:(id)sender;


@end
