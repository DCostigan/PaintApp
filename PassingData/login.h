//
//  login.h
//  PassingData
//
//  Created by Krzysiek on 09-05-02.
//  Copyright 2009 www.chris-software.com. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "account.h"
@class account;
@interface login : UIViewController <UITextFieldDelegate> {
	IBOutlet UITextField *nickname;
}
-(IBAction)submit;
@end
