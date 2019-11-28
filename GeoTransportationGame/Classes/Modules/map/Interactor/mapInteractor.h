//
//  mapInteractor.h
//  GeoTransportationGame
//
//  Created by Matthew Krager on 27/11/2019.
//  Copyright © 2019 Krager. All rights reserved.
//

#import "mapInteractorInput.h"

@protocol mapInteractorOutput;

@interface mapInteractor : NSObject <mapInteractorInput>

@property (nonatomic, weak) id<mapInteractorOutput> output;

@end
