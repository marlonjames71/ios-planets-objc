//
//  MJRPlanetController.m
//  Planets-ObjC
//
//  Created by Marlon Raskin on 10/7/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

#import "MJRPlanetController.h"
#import "MJRPlanet.h"

@interface MJRPlanetController () {

    NSArray *_planetsWithPluto;
    NSArray *_planetsWithoutPluto;
}

@end

@implementation MJRPlanetController

- (instancetype)init {
    if (self = [super init]) {

        _planetsWithoutPluto = [[NSArray alloc] initWithObjects:
                                [[MJRPlanet alloc] initWithName:@"earth"],
                                [[MJRPlanet alloc] initWithName:@"jupiter"],
                                [[MJRPlanet alloc] initWithName:@"mars"],
                                [[MJRPlanet alloc] initWithName:@"mercury"],
                                [[MJRPlanet alloc] initWithName:@"netpune"],
                                [[MJRPlanet alloc] initWithName:@"saturn"],
                                [[MJRPlanet alloc] initWithName:@"uranus"],
                                [[MJRPlanet alloc] initWithName:@"venus"],
                                nil];

        _planetsWithPluto = [[NSArray alloc] initWithObjects:
                             [[MJRPlanet alloc] initWithName:@"earth"],
                             [[MJRPlanet alloc] initWithName:@"jupiter"],
                             [[MJRPlanet alloc] initWithName:@"mars"],
                             [[MJRPlanet alloc] initWithName:@"mercury"],
                             [[MJRPlanet alloc] initWithName:@"netpune"],
                             [[MJRPlanet alloc] initWithName:@"saturn"],
                             [[MJRPlanet alloc] initWithName:@"uranus"],
                             [[MJRPlanet alloc] initWithName:@"venus"],
                             [[MJRPlanet alloc] initWithName:@"pluto"],
                             nil];

        
    }
    return self;
}

- (NSArray *)planets {
    BOOL shouldShowPluto = [[NSUserDefaults standardUserDefaults] boolForKey:@"shouldShowPluto"];
    if (shouldShowPluto) {
        return _planetsWithPluto;
    } else {
        return _planetsWithoutPluto;
    }
}

@end
