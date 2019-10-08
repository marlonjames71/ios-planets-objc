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
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    _plutoSwitch.on = [defaults valueForKey:@"shouldShowPluto"];
}

- (IBAction)doneTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)plutoSwitchValueChanged:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setBool:self.plutoSwitch forKey:@"shouldShowPluto"];
}
@end
