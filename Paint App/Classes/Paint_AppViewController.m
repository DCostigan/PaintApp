//
//  Paint_AppViewController.m
//  Paint App
//
//  Created by albert renshaw on 4/12/10.
//  Copyright providence 2010. All rights reserved.
//

#import "Paint_AppViewController.h"
#import "SecondViewController.h"

@implementation Paint_AppViewController
@synthesize colorMessage;
@synthesize colorType;
@synthesize sliderLabel;
@synthesize brushSize;
@synthesize brushType;
@synthesize brushMessage;




-(IBAction)switchViews {
	SecondViewController *secondView =[[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:[NSBundle mainBundle]];
	[self.view addSubview:secondView.view];
	[Paint_AppViewController release];
}

- (void)viewDidLoad {
    [super viewDidLoad];
	drawImage = [[UIImageView alloc] initWithImage:nil];
	drawImage.frame = self.view.frame;
	brushSize.text = sliderLabel;
	colorMessage.text = colorType;
	brushMessage.text = brushType;
	[self.view addSubview:drawImage];
	mouseMoved = 0;
	
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	
	mouseSwiped = NO;
	UITouch *touch = [touches anyObject];
	
	if ([touch tapCount] == 2) {
		drawImage.image = nil;
		return;
	}
	
	lastPoint = [touch locationInView:self.view];
	lastPoint.y -= 20;
	
}


- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
	mouseSwiped = YES;
	UITouch *touch = [touches anyObject];	
	CGPoint currentPoint = [touch locationInView:self.view];
	currentPoint.y -= 20; // only for 'kCGLineCapRound'
	UIGraphicsBeginImageContext(self.view.frame.size);
	[drawImage.image drawInRect:CGRectMake(0, 0, drawImage.frame.size.width, drawImage.frame.size.height)]; //originally self.frame.size.width, self.frame.size.height)];
	if(brushMessage.text == nil){
		CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapRound); //kCGLineCapSquare, kCGLineCapButt, kCGLineCapRound
	}
	if(brushMessage.text == @"round?"){
		CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapRound); //kCGLineCapSquare, kCGLineCapButt, kCGLineCapRound
	}
	if(brushMessage.text == @"Butt"){
		CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapButt); //kCGLineCapSquare, kCGLineCapButt, kCGLineCapRound
	}
	if(brushMessage.text == @"Square"){
		CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapSquare); //kCGLineCapSquare, kCGLineCapButt, kCGLineCapRound
	}
	if(brushSize.text == nil){
		CGContextSetLineWidth(UIGraphicsGetCurrentContext(), 10.0); // for size
	}else{
	CGContextSetLineWidth(UIGraphicsGetCurrentContext(), [brushSize.text intValue]); // for size
	}
	if(colorMessage.text == @"RED?"){
	CGContextSetRGBStrokeColor(UIGraphicsGetCurrentContext(), 1.0, 0.0, 0.0, 1.0); //values for R, G, B, and Alpha
	}
	if(colorMessage.text == @"blue"){
	CGContextSetRGBStrokeColor(UIGraphicsGetCurrentContext(), 0.0, 0.0, 1.0, 1.0); //values for R, G, B, and Alpha		
	}
	if(colorMessage.text == @"green"){
	CGContextSetRGBStrokeColor(UIGraphicsGetCurrentContext(), 0.0, 1.0, 0.0, 1.0); //values for R, G, B, and Alpha
	}
	CGContextBeginPath(UIGraphicsGetCurrentContext());
	CGContextMoveToPoint(UIGraphicsGetCurrentContext(), lastPoint.x, lastPoint.y);
	CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), currentPoint.x, currentPoint.y);
	CGContextStrokePath(UIGraphicsGetCurrentContext());
	drawImage.image = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	
	lastPoint = currentPoint;
	
	mouseMoved++;
	
	if (mouseMoved == 10) {
		mouseMoved = 0;
	}
	
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
	
	UITouch *touch = [touches anyObject];
	
	if ([touch tapCount] == 2) {
		drawImage.image = nil;
		return;
	}
	if(!mouseSwiped) {
		//if color == green
		UIGraphicsBeginImageContext(self.view.frame.size);
		[drawImage.image drawInRect:CGRectMake(0, 0, drawImage.frame.size.width, drawImage.frame.size.height)]; //originally self.frame.size.width, self.frame.size.height)];
		if(brushMessage.text == nil){
			CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapRound); //kCGLineCapSquare, kCGLineCapButt, kCGLineCapRound
		}
		if(brushMessage.text == @"Butt"){
			CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapButt); //kCGLineCapSquare, kCGLineCapButt, kCGLineCapRound
		}
		if(brushMessage.text == @"Square"){
			CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapSquare); //kCGLineCapSquare, kCGLineCapButt, kCGLineCapRound
		}
		if(brushMessage.text == @"Round"){
			CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapRound); //kCGLineCapSquare, kCGLineCapButt, kCGLineCapRound
		}
		if(brushSize.text == nil){
			CGContextSetLineWidth(UIGraphicsGetCurrentContext(), 10.0); // for size
		}else{
			CGContextSetLineWidth(UIGraphicsGetCurrentContext(), [brushSize.text intValue]); // for size
		}
		if(colorMessage.text == @"RED?"){
			CGContextSetRGBStrokeColor(UIGraphicsGetCurrentContext(), 1.0, 0.0, 0.0, 1.0); //values for R, G, B, and Alpha
		}
		if(colorMessage.text == @"blue"){
			CGContextSetRGBStrokeColor(UIGraphicsGetCurrentContext(), 0.0, 0.0, 1.0, 1.0); //values for R, G, B, and Alpha		
		}
		if(colorMessage.text == @"green"){
			CGContextSetRGBStrokeColor(UIGraphicsGetCurrentContext(), 0.0, 1.0, 0.0, 1.0); //values for R, G, B, and Alpha
		}
		CGContextMoveToPoint(UIGraphicsGetCurrentContext(), lastPoint.x, lastPoint.y);
		CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), lastPoint.x, lastPoint.y);
		CGContextStrokePath(UIGraphicsGetCurrentContext());
		CGContextFlush(UIGraphicsGetCurrentContext());
		drawImage.image = UIGraphicsGetImageFromCurrentImageContext();
		UIGraphicsEndImageContext();
	}
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
	[colorMessage release];
	[brushMessage release];
	[brushSize release];
    [super dealloc];	
}

@end

 

