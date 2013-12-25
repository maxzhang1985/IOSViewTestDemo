//
//  TabBarViewController.m
//  viewtestdemo
//
//  Created by 磊 张 on 12-7-23.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//
#import <QuartzCore/QuartzCore.h>
#import "TabBarViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

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

-(void) tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
{
    CATransition *animation =[CATransition animation];  
    [animation setDuration:0.25f];  
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];  
    [animation setType:kCATransitionMoveIn];  
    [animation setSubtype:kCATransitionFromRight];  
    [self.view.layer addAnimation:animation forKey:@"1"];
    
}
   
@end
