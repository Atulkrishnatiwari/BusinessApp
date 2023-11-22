//
//  ViewController.h
//  BusinessApp
//
//  Created by Celestial on 03/11/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *serviceButton;
@property (weak, nonatomic) IBOutlet UIButton *portfolioButton;
@property (weak, nonatomic) IBOutlet UIButton *aboutUsButton;

@property (weak, nonatomic) IBOutlet UIButton *contactUsButton;
@property (weak, nonatomic) IBOutlet UIButton *socialLinksButton;


- (IBAction)serviceButton:(id)sender;
- (IBAction)portFolioButton:(id)sender;

- (IBAction)aboutUsButton:(id)sender;
- (IBAction)contactUsButton:(id)sender;
@end

