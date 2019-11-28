//
//  mapPresenter.m
//  GeoTransportationGame
//
//  Created by Matthew Krager on 27/11/2019.
//  Copyright © 2019 Krager. All rights reserved.
//

#import "mapPresenter.h"

#import "mapViewInput.h"
#import "mapInteractorInput.h"
#import "mapRouterInput.h"

@implementation mapPresenter

#pragma mark - Методы mapModuleInput

- (void)configureModule {
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

#pragma mark - Методы mapViewOutput

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];
}

#pragma mark - Методы mapInteractorOutput

@end
