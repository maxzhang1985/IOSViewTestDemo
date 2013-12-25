//
//  NavRootViewController.m
//  viewtestdemo
//
//  Created by 磊 张 on 12-8-16.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "NavRootViewController.h"
#import "NavSubViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface NavRootViewController ()

@end

@implementation NavRootViewController

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
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(selectLeftAction:)];  
    self.navigationItem.leftBarButtonItem = leftButton;  
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd  target:self action:@selector(selectRightAction:)];  
    self.navigationItem.rightBarButtonItem = rightButton;
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


-(void)selectLeftAction:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Tip" message:@"you click left Nav Item" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
    [alert show];
}


-(void)selectRightAction:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Tip" message:@"you click right Nav Item" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
    [alert show];
    
}




- (IBAction)goToSubView:(id)sender {
    NavSubViewController *subView = [[NavSubViewController alloc] init];
    
    
    CATransition *animation =[CATransition animation];  
    [animation setDuration:0.5f];  
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear]];  
    [animation setType:kCATransitionMoveIn];  
    [animation setSubtype:kCATransitionFromBottom];  
    [self.navigationController.view.layer addAnimation:animation forKey:@"1"];
    [self.navigationController pushViewController:subView animated:NO];
}
@end
