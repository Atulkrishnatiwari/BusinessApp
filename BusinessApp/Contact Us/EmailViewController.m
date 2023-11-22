//
//  EmailViewController.m
//  BusinessApp
//
//  Created by Celestial on 06/11/23.
//

#import "EmailViewController.h"

@interface EmailViewController ()

@end

@implementation EmailViewController

- (void)viewDidLoad 
{
    [super viewDidLoad];
    
    self.button.layer.cornerRadius=5;
    self.messageField.layer.cornerRadius=5;
    
    self.messageField.delegate=self;
    
    self.navigationItem.title=@"Email Us";
}

- (IBAction)dissmissTheKeyWord:(id)sender 
{
    [self resignFirstResponder];
}

- (IBAction)email:(id)sender
{
    MFMailComposeViewController *composer=[[MFMailComposeViewController alloc]init];
    [composer setMailComposeDelegate:self];
    
    if([MFMailComposeViewController canSendMail])
    {
        [composer setToRecipients:@[@"123@abc.com"]];
        [composer setSubject:@"Message from my app"];
        
        [composer setMessageBody:[NSString stringWithFormat:@"Name %@\nEmail: %@\n\nMessage: %@",self.nameField.text,self.emailField.text,self.messageField.text] isHTML:NO];
        
        [self presentViewController:composer animated:YES completion:nil];
    }
    else
    {
        NSLog(@"can't send mail");
    }
}

-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if([text rangeOfCharacterFromSet:[NSCharacterSet newlineCharacterSet]].location==NSNotFound)
    {
        return  YES;;
    }
    [textView resignFirstResponder];
    return NO;
}
@end
