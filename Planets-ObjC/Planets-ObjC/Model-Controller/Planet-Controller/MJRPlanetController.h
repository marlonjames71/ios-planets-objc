//
//  MJRPlanetController.h
//  Planets-ObjC
//
//  Created by Marlon Raskin on 10/7/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MJRPlanetController : NSObject

@property (nonatomic) NSArray *planets;

- (instancetype)init;

@end

NS_ASSUME_NONNULL_END
