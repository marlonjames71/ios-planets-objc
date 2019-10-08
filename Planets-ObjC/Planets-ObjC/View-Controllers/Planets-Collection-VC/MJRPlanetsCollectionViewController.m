//
//  MJRPlanetsCollectionViewController.m
//  Planets-ObjC
//
//  Created by Marlon Raskin on 10/7/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

#import "MJRPlanetsCollectionViewController.h"
#import "MJRPlanetsCollectionViewCell.h"
#import "MJRPlanetController.h"
#import "MJRPlanet.h"

@interface MJRPlanetsCollectionViewController ()

@end

@implementation MJRPlanetsCollectionViewController

static NSString * const reuseIdentifier = @"PlanetCell";

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];

    if (self) {
        _planetController = [[MJRPlanetController alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

//    [self.collectionView registerClass:[MJRPlanetsCollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.collectionView reloadData];
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [[self.planetController planets] count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    MJRPlanetsCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];

    MJRPlanet *planet = self.planetController.planets[indexPath.row];

    cell.nameLabel.text = planet.name;
    cell.imageView.image = [UIImage imageNamed:planet.name];
    
    return cell;
}

@end
