//
//  MJRPlanetsCollectionViewCell.m
//  Planets-ObjC
//
//  Created by Marlon Raskin on 10/7/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

#import "MJRPlanetsCollectionViewCell.h"



@implementation MJRPlanetsCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    _container.layer.cornerRadius = 10;
}

@end
