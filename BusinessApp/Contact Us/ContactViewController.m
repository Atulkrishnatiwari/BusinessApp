//
//  ContactViewController.m
//  BusinessApp
//
//  Created by Celestial on 03/11/23.
//

#import "ContactViewController.h"
#import "MapPin.h"
@interface ContactViewController ()

@end

@implementation ContactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    
    span.latitudeDelta=0.005;
    span.longitudeDelta=0.005;
    
    CLLocationCoordinate2D location;
    location.latitude=28.588195;
    location.longitude=77.313783;
    
    region.span=span;
    region.center=location;
    
    [self.mapView setRegion:region animated:YES];
    
    MapPin *annotation=[[MapPin alloc]init];
    annotation.coordinate=location;
    [self.mapView addAnnotation:annotation];
    
    [[self navigationItem] setBackBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil]];
}


- (IBAction)socialLinksButton:(id)sender 
{
}

- (IBAction)emailUsButton:(id)sender 
{
}

- (IBAction)callUsButton:(id)sender 
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:12344"] options:@{} completionHandler:nil];
}

- (IBAction)directionButton:(id)sender 
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://maps.apple.com/maps?daddr=28.588195,77.313783"] options:@{} completionHandler:nil];
}
@end
