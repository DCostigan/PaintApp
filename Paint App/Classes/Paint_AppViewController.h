//
//  Paint_AppViewController.h
//  Paint App
//
//  Created by albert renshaw on 4/12/10.
//  Copyright providence 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"
@class SecondViewController;
@interface Paint_AppViewController : UIViewController {
	UIImageView *drawImage;
	int mouseMoved;
	BOOL mouseSwiped;
	CGPoint lastPoint;
	IBOutlet UILabel *colorMessage;
	NSString *colorType;
	NSString *sliderLabel;
	IBOutlet UILabel *brushSize;
	NSString *brushType;
	IBOutlet UILabel *brushMessage;
}
@property (nonatomic, retain) IBOutlet UILabel *colorMessage;
@property (nonatomic,retain) NSString *colorType;
@property (nonatomic,retain) NSString *sliderLabel;
@property (nonatomic,retain) IBOutlet UILabel *brushSize;
@property (nonatomic,retain) NSString *brushType;
@property (nonatomic,retain) IBOutlet UILabel *brushMessage;
-(IBAction)switchViews;
@end


