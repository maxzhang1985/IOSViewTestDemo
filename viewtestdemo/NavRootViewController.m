//
//  NavRootViewController.m
//  viewtestdemo
//
//  Created by 磊 张 on 12-8-16.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "NavRootViewController.h"
#import "NavSubViewController.h"

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

- (IBAction)goToSubView:(id)sender {
    
    NavSubViewController * subView = [[NavSubViewController alloc] init];
    [self pushViewController:subView animated:true];
    
}
@end
