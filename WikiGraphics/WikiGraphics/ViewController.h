//
//  ViewController.h
//  WikiGraphics
//
//  Created by Henry O Mound on 2/23/15.
//  Copyright (c) 2015 Henry Mound. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    IBOutlet UIButton *NewGraphButton;
    IBOutlet UIButton *AddWidget;
    
    IBOutlet UITextField *NewGraphTitle;

}

@property (strong, nonatomic) IBOutlet UIButton *NewGraphButton;
@property (strong, nonatomic) IBOutlet UIButton *AddWidget;

@property (strong, nonatomic) IBOutlet UITextField *NewGraphTitle;


@end

