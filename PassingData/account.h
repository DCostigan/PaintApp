//
//  account.h
//  PassingData
//
//  Created by Krzysiek on 09-05-02.
//  Copyright 2009 www.chris-software.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface account : UIViewController {
	IBOutlet UILabel *loginLabel;
	NSString *nickname;
}
@property (nonatomic, retain) NSString *nickname;

@end
