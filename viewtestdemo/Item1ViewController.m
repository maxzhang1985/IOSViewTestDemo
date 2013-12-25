//
//  Item1ViewController.m
//  viewtestdemo
//
//  Created by 磊 张 on 12-7-23.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//
#import <QuartzCore/QuartzCore.h>
#import "Item1ViewController.h"

@interface Item1ViewController ()

@end

@implementation Item1ViewController


-(IBAction)clickGoFor:(id)sender{
    
    CATransition *animation =[CATransition animation];  
    [animation setDuration:0.65f];  
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];  
    [animation setType:kCATransitionMoveIn];  
    [animation setSubtype:kCATransitionFromRight];  
    [self.tabBarController.view.layer addAnimation:animation forKey:@"1"];  
    [self.tabBarController setSelectedIndex:3];
}

-(IBAction)clickShowActionSheet:(id)sender
{
    
    
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"first action sheet" delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:@"确定" otherButtonTitles:@"action1",@"action2", nil];
    actionSheet.actionSheetStyle = UIActionSheetStyleBlackOpaque;
    [actionSheet showInView: [UIApplication sharedApplication].keyWindow];
    
    
}

-(void)showAlert:(NSString *)msg{

    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"提示" message:msg delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    
    [alert show];
}


-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    switch (buttonIndex) {
        case 0:
            [self showAlert:@"确定"];
            break;
        case 1:
            [self showAlert:@"action1"];
            break;
        case 2:
            [self showAlert:@"action2"];
            break;
        case 3:
            [self showAlert:@"取消"];
            break;
        default:
            break;
    }
    
    
}



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
