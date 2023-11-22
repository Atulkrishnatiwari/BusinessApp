//
//  EmailViewController.h
//  BusinessApp
//
//  Created by Celestial on 06/11/23.
//

#import <UIKit/UIKit.h>
#import "Accounts/Accounts.h"
#import "MessageUI/MessageUI.h"

@interface EmailViewController : UIViewController<UITextViewDelegate,MFMailComposeViewControllerDelegate>
{
    
}

@property (weak, nonatomic) IBOutlet UITextField *nameField;

@property (weak, nonatomic) IBOutlet UITextField *emailField;

@property (weak, nonatomic) IBOutlet UITextView *messageField;

@property (weak, nonatomic) IBOutlet UIButton *button;

- (IBAction)email:(id)sender;

- (IBAction)dissmissTheKeyWord:(id)sender;
@end
