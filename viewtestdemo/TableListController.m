//
//  TableListController.m
//  viewtestdemo
//
//  Created by 磊 张 on 12-7-26.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "TableListController.h"
#import <QuartzCore/QuartzCore.h>
@interface TableListController ()

@end

@implementation TableListController

@synthesize list;


-(void)enableTableEditing
{
    [self.tableView setEditing:YES];
}

-(id)initWithDataList:(NSMutableArray *) array
{
    self = [super init];
    self.list = array;
    return self;
    
}


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    list = [[NSMutableArray alloc] initWithObjects:@"美国", @"菲律宾",  
            @"黄岩岛", @"中国", @"泰国", @"越南", @"老挝",  
            @"日本" , nil];
    
    [self enableTableEditing];
        
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    self.list = nil;
    
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

//要显示的分组数，最小为1
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

//在每个分组中要显示的数据条数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return self.list.count;
}

//行内模板数据绑定
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    cell.textLabel.text = [self.list objectAtIndex:indexPath.row];
    return cell;
}

//显示分组标题函数
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
   return @"Section1";
}

//添加组索引标题
-(NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView
{
    
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:35];
    for (NSString *str in self.list) {
        [array addObject:str];
    }
    return array;
}



// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [self.list removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* cell =  [tableView cellForRowAtIndexPath:indexPath];
    if(cell.accessoryType == UITableViewCellAccessoryNone)
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    else
        cell.accessoryType = UITableViewCellAccessoryNone;
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    //Core Animation
    CATransition *animation =[CATransition animation];  
    [animation setDuration:0.3f];  
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear]];  
    [animation setType:kCATransitionFade];  
//    [animation setSubtype:kCATransitionFromRight];  
    [cell.layer addAnimation:animation forKey:@"1"];
    
    //UI Animation
//    CGRect frame = cell.frame;
//    frame.size = CGSizeMake(frame.size.width, frame.size.height - 5);  
//    [UIView beginAnimations:@"Curl"context:nil];//动画开始     
//    [UIView setAnimationDuration:0.30];     
//    [UIView setAnimationDelegate:cell];    
//    [cell setFrame:frame];    
//    frame.size = CGSizeMake(frame.size.width, frame.size.height + 5);  
//    [cell setFrame:frame]; 
//    [UIView commitAnimations];  
    
    
   
    
    //[tableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionMiddle animated:YES];  
    
}

@end
