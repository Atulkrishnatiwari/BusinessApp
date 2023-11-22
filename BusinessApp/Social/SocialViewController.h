//
//  SocialViewController.h
//  BusinessApp
//
//  Created by Celestial on 06/11/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SocialViewController : UIViewController
{
    NSTimer *timer;
}

@property(nonatomic,strong)NSString *detail;

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@end

NS_ASSUME_NONNULL_END
