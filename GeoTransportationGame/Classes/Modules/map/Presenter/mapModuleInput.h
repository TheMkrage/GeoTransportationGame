//
//  mapModuleInput.h
//  GeoTransportationGame
//
//  Created by Matthew Krager on 27/11/2019.
//  Copyright © 2019 Krager. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ViperMcFlurry/ViperMcFlurry.h>

@protocol mapModuleInput <RamblerViperModuleInput>

/**
 @author Matthew Krager

 Метод инициирует стартовую конфигурацию текущего модуля
 */
- (void)configureModule;

@end
