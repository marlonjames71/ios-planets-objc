//
//  MJRSettingsViewController.h
//  Planets-ObjC
//
//  Created by Marlon Raskin on 10/7/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MJRSettingsViewController : UIViewController


@property (weak, nonatomic) IBOutlet UIButton *doneButton;
@property (weak, nonatomic) IBOutlet UISwitch *plutoSwitch;

- (IBAction)doneTapped:(id)sender;
- (IBAction)plutoSwitchValueChanged:(id)sender;

@end

NS_ASSUME_NONNULL_END
