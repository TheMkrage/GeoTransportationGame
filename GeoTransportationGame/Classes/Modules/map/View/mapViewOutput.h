//
//  mapViewOutput.h
//  GeoTransportationGame
//
//  Created by Matthew Krager on 27/11/2019.
//  Copyright © 2019 Krager. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol mapViewOutput <NSObject>

/**
 @author Matthew Krager

 Метод сообщает презентеру о том, что view готова к работе
 */
- (void)didTriggerViewReadyEvent;

@end
