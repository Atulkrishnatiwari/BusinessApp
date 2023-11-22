//
//  ContactViewController.h
//  BusinessApp
//
//  Created by Celestial on 03/11/23.
//

#import <UIKit/UIKit.h>
#import "MapKit/MapKit.h"


@interface ContactViewController : UIViewController
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) IBOutlet UIStackView *contactLabel;
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UIButton *button4;
- (IBAction)directionButton:(id)sender;
- (IBAction)callUsButton:(id)sender;
- (IBAction)emailUsButton:(id)sender;
- (IBAction)socialLinksButton:(id)sender;

@end


