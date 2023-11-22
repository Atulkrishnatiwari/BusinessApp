//
//  SocialViewController.m
//  BusinessApp
//
//  Created by Celestial on 06/11/23.
//

#import "SocialViewController.h"

@interface SocialViewController ()

@end

@implementation SocialViewController

- (void)viewDidLoad 
{
    [super viewDidLoad];
    
    [self openSocialLinksConfigure];
    
    self.navigationItem.title=self.detail;
    
    timer=[NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(loading) userInfo:nil repeats:YES];
}


-(void)openSocialLinksConfigure
{
//    \\Facebook",@"Twitter",@"Google",@"LinkedIn",@"YouTube",@"Website
    if([self.navigationItem.title isEqualToString:@"Facebook"])
    {
        [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.google.com"]]];
    }
    
    if([self.navigationItem.title isEqualToString:@"Twitter"])
    {
        [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.google.com"]]];
    }
    
    if([self.navigationItem.title isEqualToString:@"Google"])
    {
        [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.google.com"]]];
    }
    
    if([self.navigationItem.title isEqualToString:@"LinkedIn"])
    {
        [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.google.com"]]];
    }
    
    if([self.navigationItem.title isEqualToString:@"YouTube"])
    {
        [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.google.com"]]];
    }
    if([self.navigationItem.title isEqualToString:@"Website"])
    {
        [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.google.com"]]];
    }
}

-(void)loading
{
    if(self.webView.loading)
    {
        [self.activityIndicator startAnimating];
    }
    else
    {
        [self.activityIndicator stopAnimating];
    }
}
@end
