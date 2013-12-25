//
//  Item2ViewController.m
//  viewtestdemo
//
//  Created by 磊 张 on 12-7-23.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Item2ViewController.h"

@interface Item2ViewController ()

@end

@implementation Item2ViewController

@synthesize TLController;
@synthesize TV;
@synthesize Toolbar;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

//添加数据到列表
-(void)AddToTable:(id)sender
{
    [self.TLController enableTableEditing];
}

//删除数据到列表
-(void)DelToTable:(id)sender
{
    TV.editing=YES;
}

//移动列表数据
-(void)MoveTable:(id)sender
{
    [self.TLController enableTableEditing];
}



- (void)viewDidLoad
{
    TLController = [[TableListController alloc] 
                    initWithDataList:[
                        [NSMutableArray alloc] initWithObjects:@"美国", @"菲律宾",  
                                                        @"黄岩岛", @"中国", @"泰国", @"越南", @"老挝",  
                                                        @"日本" , nil]];

    
    TV.dataSource = TLController;
    TV.delegate = TLController;

    [super viewDidLoad];
 
    
    
    
    
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [self setTV:nil];
    [self setTLController:nil];
    [self setToolbar:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
