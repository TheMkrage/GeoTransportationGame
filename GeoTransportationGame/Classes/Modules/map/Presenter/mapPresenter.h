//
//  mapPresenter.h
//  GeoTransportationGame
//
//  Created by Matthew Krager on 27/11/2019.
//  Copyright © 2019 Krager. All rights reserved.
//

#import "mapViewOutput.h"
#import "mapInteractorOutput.h"
#import "mapModuleInput.h"

@protocol mapViewInput;
@protocol mapInteractorInput;
@protocol mapRouterInput;

@interface mapPresenter : NSObject <mapModuleInput, mapViewOutput, mapInteractorOutput>

@property (nonatomic, weak) id<mapViewInput> view;
@property (nonatomic, strong) id<mapInteractorInput> interactor;
@property (nonatomic, strong) id<mapRouterInput> router;

@end
