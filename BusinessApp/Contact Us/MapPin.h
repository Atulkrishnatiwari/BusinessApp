//
//  MapPin.h
//  BusinessApp
//
//  Created by Celestial on 03/11/23.
//

#import <Foundation/Foundation.h>
#import "MapKit/MapKit.h"

@interface MapPin : NSObject
{
    CLLocationCoordinate2D coordinate;
}
@property(nonatomic,assign)CLLocationCoordinate2D coordinate;
@end

