//
//  NavSubViewController.m
//  viewtestdemo
//
//  Created by 磊 张 on 12-8-16.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "NavSubViewController.h"

@interface NavSubViewController ()

@end

@implementation NavSubViewController

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
    // Do any additional setup after loading the view from its nib.
    [self.navigationController  setToolbarHidden:NO animated:YES];
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd  target:self action:@selector(selectRightAction:)];  
    self.navigationItem.rightBarButtonItem = rightButton;
    
    
    NSArray *array = [NSArray arrayWithObjects:@"Item1",@"Item2", nil];
    UISegmentedControl *segmentedController = [[UISegmentedControl alloc] initWithItems:array];
    segmentedController.segmentedControlStyle = UISegmentedControlSegmentCenter;
    
    [segmentedController addTarget:self action:@selector(segmentAction:) forControlEvents:UIControlEventValueChanged];
    self.navigationItem.titleView = segmentedController;

    UIBarButtonItem *one = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:nil action:nil];
    UIBarButtonItem *two = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:nil action:nil];
    UIBarButtonItem *three = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:nil action:nil];
  
    UIBarButtonItem *flexItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    [self setToolbarItems:[NSArray arrayWithObjects:flexItem, one, flexItem, two, flexItem, three, flexItem, nil]];
    
}

-(void)segmentAction:(id)sender
{
    switch ([sender selectedSegmentIndex]) {
        case 0:
        {
            UIAlertView *alter = [[UIAlertView alloc] initWithTitle:@"提示" message:@"Item1" delegate:self  cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
            [alter show];
            
        }
            break;
        case 1:
        {
            UIAlertView *alter = [[UIAlertView alloc] initWithTitle:@"提示" message:@"Item2" delegate:self  cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
            [alter show];
        }
            break;
            
        default:
            break;
    }
}

-(void)selectRightAction:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Tip" message:@"you click right Nav Item" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
    [alert show];
    
}



- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)goTOBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
