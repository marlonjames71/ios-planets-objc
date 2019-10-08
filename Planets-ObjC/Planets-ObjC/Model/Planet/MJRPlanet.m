//
//  MJRPlanet.m
//  Planets-ObjC
//
//  Created by Marlon Raskin on 10/7/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

#import "MJRPlanet.h"

@implementation MJRPlanet

- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        _name = name;
        _image = [UIImage imageNamed:name];
    }
    return self;
}

@end
