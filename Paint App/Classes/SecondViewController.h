//
//  SecondViewController.h
//  Paint App
//
//  Created by Derek on 5/22/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Paint_AppViewController.h"

@class Paint_AppViewController;
@interface SecondViewController : UIViewController <UITextFieldDelegate> {
	IBOutlet UILabel *colorType;
	IBOutlet UILabel *sliderLabel;
	IBOutlet UILabel *brushType;
}
@property(nonatomic, retain) IBOutlet UILabel *colorType;
@property(nonatomic,retain) IBOutlet UILabel *sliderLabel;
@property(nonatomic, retain) IBOutlet UILabel *brushType;

-(IBAction)sliderFunction: (id) sender;
-(IBAction)changeRound;
-(IBAction)changeSquare;
-(IBAction)changeChoppy;
-(IBAction)switchViews;
-(IBAction)changeRed;
-(IBAction)changeBlue;
-(IBAction)changeGreen;
@end
