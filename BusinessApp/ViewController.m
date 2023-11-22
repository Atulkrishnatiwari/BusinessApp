//
//  ViewController.m
//  BusinessApp
//
//  Created by Celestial on 03/11/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad 
{
    [super viewDidLoad];
    
    [self setConfigurationOfOutlets];
    
    [[self navigationItem] setBackBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil]];
}

- (IBAction)contactUsButton:(id)sender 
{
    [(UITabBarController*) self.tabBarController setSelectedIndex:1];
}

- (IBAction)aboutUsButton:(id)sender
{
    [(UITabBarController*) self.tabBarController setSelectedIndex:4];
}

- (IBAction)portFolioButton:(id)sender 
{
    [(UITabBarController*) self.tabBarController setSelectedIndex:3];
}

- (IBAction)serviceButton:(id)sender 
{
    [(UITabBarController*) self.tabBarController setSelectedIndex:2];
}

-(void)setConfigurationOfOutlets
{
    self.serviceButton.layer.cornerRadius=5;
    self.portfolioButton.layer.cornerRadius=5;
    self.aboutUsButton.layer.cornerRadius=5;
    self.contactUsButton.layer.cornerRadius=5;
    self.socialLinksButton.layer.cornerRadius=5;
}
@end
