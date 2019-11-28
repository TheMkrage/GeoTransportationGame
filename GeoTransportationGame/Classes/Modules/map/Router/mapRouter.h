//
//  mapRouter.h
//  GeoTransportationGame
//
//  Created by Matthew Krager on 27/11/2019.
//  Copyright © 2019 Krager. All rights reserved.
//

#import "mapRouterInput.h"

@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface mapRouter : NSObject <mapRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end
