//
//  PortFolioViewController.h
//  BusinessApp
//
//  Created by Celestial on 03/11/23.
//

#import <UIKit/UIKit.h>


@interface PortFolioViewController : UIViewController
{
    int imageInt;
}
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)nextButton:(id)sender;
- (IBAction)backButton:(id)sender;

@end

