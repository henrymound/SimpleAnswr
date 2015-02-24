//
//  ViewController.m
//  WikiGraphics
//
//  Created by Henry O Mound on 2/23/15.
//  Copyright (c) 2015 Henry Mound. All rights reserved.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>

@interface ViewController ()

@end

@implementation ViewController

@synthesize NewGraphButton = _NewGraphButton, NewGraphTitle = _NewGraphTitle, AddWidget = _AddWidget;

CGRect screenBound;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Basic application information variables
    screenBound = [[UIScreen mainScreen] bounds];
    
    //Create NewGraphicButton
    _NewGraphButton.center = CGPointMake(screenBound.size.width/2, screenBound.size.height/2);
    NSLog(@"%f, %f", screenBound.size.width, screenBound.size.height);
    _NewGraphButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_NewGraphButton addTarget:self action:@selector(NewGraphButton:)
     forControlEvents:UIControlEventTouchUpInside];
    [_NewGraphButton setTitle:@"New Graph" forState:UIControlStateNormal];
    _NewGraphButton.frame = CGRectMake(screenBound.size.width/2 - 50, screenBound.size.height/2 - 25, 100, 50.0);
    
    //Add elements to screen
    [self.view addSubview:_NewGraphButton];
}

- (IBAction)NewGraphButton:(id)sender {
    [_NewGraphButton removeFromSuperview];
    
    _NewGraphTitle = [[UITextField alloc] initWithFrame: CGRectMake(screenBound.size.width/2 - 50, 25, 100, 50.0)];
    [_NewGraphTitle setSelected:true];
    [self.view addSubview:_NewGraphTitle];
    [_NewGraphTitle setText:@"Graph Title"];
    [_NewGraphTitle becomeFirstResponder];
    
    _AddWidget = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _AddWidget.frame = CGRectMake(_NewGraphButton.frame.origin.x, _NewGraphButton.frame.origin.y - 200, 100, 50.0);
    [_AddWidget addTarget:self action:@selector(AddWidget:)
              forControlEvents:UIControlEventTouchUpInside];
    [_AddWidget setTitle:@"Add Widget" forState:UIControlStateNormal];
    [self.view addSubview:_AddWidget];
    
    JBBarChartView *barChartView = [[JBBarChartView alloc] init];
    barChartView.dataSource = self;
    barChartView.delegate = self;
    barChartView.frame = CGRectMake(_NewGraphButton.frame.origin.x, _NewGraphButton.frame.origin.y - 400, 100, 50.0);
    [barChartView reloadData];
    [self.view addSubview:barChartView];
    
    
}

- (NSUInteger)numberOfBarsInBarChartView:(JBBarChartView *)barChartView
{
    return 3; // number of bars in chart
}


- (CGFloat)barChartView:(JBBarChartView *)barChartView heightForBarViewAtIndex:(NSUInteger)index
{
    return 7; // height of bar at index
}


- (IBAction)AddWidget:(id)sender{

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
