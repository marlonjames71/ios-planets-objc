//
//  MJRSettingsViewController.m
//  Planets-ObjC
//
//  Created by Marlon Raskin on 10/7/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

#import "MJRSettingsViewController.h"

@interface MJRSettingsViewController ()

@end

@implementation MJRSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    BOOL shouldShowPluto = [defaults boolForKey:@"shouldShowPluto"];
    [[self plutoSwitch] setOn:shouldShowPluto];
}

- (IBAction)doneTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)plutoSwitchValueChanged:(UISwitch *)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([sender isOn]) {
        [defaults setBool:YES forKey:@"shouldShowPluto"];
    } else {
        [defaults setBool:NO forKey:@"shouldShowPluto"];
    }
}
@end
