//
//  ServicesViewController.m
//  BusinessApp
//
//  Created by Celestial on 03/11/23.
//

#import "ServicesViewController.h"

@interface ServicesViewController ()

@end

@implementation ServicesViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self sendTheValueAndImageToServiceViewController];
}

-(void)sendTheValueAndImageToServiceViewController
{
    self.navigationItem.title=self.details;
    
    if([self.navigationItem.title isEqualToString:@"Service 1"])
    {
        self.detailImageView.image=[UIImage imageNamed:@"Image1.jpg"];
        
        self.detailtextView.text=@"This is service";
    }
////////////////////////////////////////

    if([self.navigationItem.title isEqualToString:@"Service 2"])
    {
        self.detailImageView.image=[UIImage imageNamed:@"Image2.jpg"];
        
        self.detailtextView.text=@"This is service";
    }
/////////////////////////////////////////////////////
    if([self.navigationItem.title isEqualToString:@"Service 3"])
    {
        self.detailImageView.image=[UIImage imageNamed:@"Image3.jpg"];
        
        self.detailtextView.text=@"This is service";
    }
///////////////////////
    if([self.navigationItem.title isEqualToString:@"Service 4"])
    {
        self.detailImageView.image=[UIImage imageNamed:@"Image4.jpg"];
        
        self.detailtextView.text=@"This is service";
    }
//////////////////////
    if([self.navigationItem.title isEqualToString:@"Service 5"])
    {
        self.detailImageView.image=[UIImage imageNamed:@"Image5.jpg"];
        
        self.detailtextView.text=@"This is service";
    }
}
@end
