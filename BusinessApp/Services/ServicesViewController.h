//
//  ServicesViewController.h
//  BusinessApp
//
//  Created by Celestial on 03/11/23.
//

#import <UIKit/UIKit.h>


@interface ServicesViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *detailImageView;
@property (weak, nonatomic) IBOutlet UITextView *detailtextView;

@property (nonatomic,strong)NSString* details;

@end

