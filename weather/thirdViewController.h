//
//  thirdViewController.h
//  weather
//
//  Created by MAC on 28/02/17.
//  Copyright © 2017 MAC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface thirdViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *PRESSURE;
@property (weak, nonatomic) IBOutlet UILabel *HUMIDITY;
@property (weak, nonatomic) IBOutlet UILabel *WINDSPEED;
@property (weak, nonatomic) IBOutlet UIImageView *IMAGETWO;
- (IBAction)BACKTOMAIN:(id)sender;
@property (weak, nonatomic) NSDictionary *thirddict;


@end
