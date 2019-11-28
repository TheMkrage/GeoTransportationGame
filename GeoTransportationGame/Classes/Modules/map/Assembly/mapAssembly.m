//
//  mapAssembly.m
//  GeoTransportationGame
//
//  Created by Matthew Krager on 27/11/2019.
//  Copyright © 2019 Krager. All rights reserved.
//

#import "mapAssembly.h"

#import "mapViewController.h"
#import "mapInteractor.h"
#import "mapPresenter.h"
#import "mapRouter.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation mapAssembly

- (mapViewController *)viewmap {
    return [TyphoonDefinition withClass:[mapViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presentermap]];
                              [definition injectProperty:@selector(moduleInput)
                                                    with:[self presentermap]];
                          }];
}

- (mapInteractor *)interactormap {
    return [TyphoonDefinition withClass:[mapInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presentermap]];
                          }];
}

- (mapPresenter *)presentermap{
    return [TyphoonDefinition withClass:[mapPresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self viewmap]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactormap]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routermap]];
                          }];
}

- (mapRouter *)routermap{
    return [TyphoonDefinition withClass:[mapRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(transitionHandler)
                                                    with:[self viewmap]];
                          }];
}

@end
