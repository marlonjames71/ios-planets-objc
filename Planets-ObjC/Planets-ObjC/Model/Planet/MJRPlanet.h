//
//  MJRPlanet.h
//  Planets-ObjC
//
//  Created by Marlon Raskin on 10/7/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MJRPlanet : NSObject

@property NSString *name;
@property (nonatomic, strong) UIImage *image;

- (instancetype)initWithName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
