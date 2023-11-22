//
//  PortFolioViewController.m
//  BusinessApp
//
//  Created by Celestial on 03/11/23.
//

#import "PortFolioViewController.h"

@interface PortFolioViewController ()

@end

@implementation PortFolioViewController

- (void)viewDidLoad 
{
    [super viewDidLoad];
    imageInt=1;
    
    self.button1.layer.cornerRadius=5;
    self.button2.layer.cornerRadius=5;
}



- (IBAction)backButton:(id)sender
{
    if(imageInt>1)
    {
        imageInt--;
        [self imageGalleryFunction];
    }
}

- (IBAction)nextButton:(id)sender
{
    if(imageInt<5)
    {
        imageInt++;
        [self imageGalleryFunction];
    }
}

-(void)imageGalleryFunction
{
    self.label.text=[NSString stringWithFormat:@"%i/5",imageInt];
    
    self.imageView.image=[UIImage imageNamed:[NSString stringWithFormat:@"Image%i.jpg",imageInt]];
    
    if(imageInt==1)
    {
        self.button1.enabled=NO;
        self.button1.alpha=0.5;
    }
    else if(imageInt==5)
    {
        self.button2.enabled=NO;
        self.button2.alpha=0.5;
    }
    else
    {
        self.button1.enabled=YES;
        self.button2.enabled=YES;
        
        self.button1.alpha=1.0;
        self.button2.alpha=1.0;
    }
}
@end
