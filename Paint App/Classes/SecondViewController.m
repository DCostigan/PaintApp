//
//  SecondViewController.m
//  Paint App
//
//  Created by Derek on 5/22/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"
#import "Paint_AppViewController.h"


@implementation SecondViewController
@synthesize colorType;
@synthesize sliderLabel;
@synthesize brushType;

-(IBAction)switchViews {
	Paint_AppViewController *firstView =[[Paint_AppViewController alloc] initWithNibName:@"Paint_AppViewController" bundle:[NSBundle mainBundle]];
	firstView.sliderLabel = sliderLabel.text;
	firstView.brushType = brushType.text;
	firstView.colorType = colorType.text;
	[self.view addSubview:firstView.view];
	[SecondViewController release];
}

-(IBAction)sliderFunction: (id) sender{
	UISlider *s = (UISlider *) sender;
	int value = (int) s.value;
	NSString *newLabel = [[NSString alloc] initWithFormat: @"%i", value];
	sliderLabel.text = newLabel;
	[newLabel release];
}


- (void)viewDidLoad {
    [super viewDidLoad];
	colorType.text = @"black";
	brushType.text = @"round?";
}

-(void)changeRed {
	colorType.text = @"RED?";
}

-(void)changeBlue {
	colorType.text = @"blue";
}

-(void)changeGreen {
	colorType.text = @"green";
}

-(void)changeRound {
	brushType.text = @"round?";
}

-(void)changeSquare {
	brushType.text = @"Square";
}

-(void)changeChoppy {
	brushType.text = @"Butt";
}


//Default Stuff that doesnt matter
- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
	[sliderLabel release];
	[colorType release];
}


@end
