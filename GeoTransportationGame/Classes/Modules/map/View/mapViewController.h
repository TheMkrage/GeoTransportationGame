//
//  mapViewController.h
//  GeoTransportationGame
//
//  Created by Matthew Krager on 27/11/2019.
//  Copyright © 2019 Krager. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "mapViewInput.h"

@protocol mapViewOutput;

@interface mapViewController : UIViewController <mapViewInput>

@property (nonatomic, strong) id<mapViewOutput> output;

@end
