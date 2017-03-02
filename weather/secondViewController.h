//
//  secondViewController.h
//  weather
//
//  Created by MAC on 28/02/17.
//  Copyright © 2017 MAC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface secondViewController : UIViewController{
    
    NSDictionary *seconddict;
    double degree;
    
}
@property (weak, nonatomic) IBOutlet UIImageView *imageone;
@property (weak, nonatomic) IBOutlet UILabel *templabel;
@property (weak, nonatomic) NSDictionary *seconddicta, *secondmaindict;
- (IBAction)BACK:(id)sender;
- (IBAction)detailinfo:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *place;
@property (weak, nonatomic) IBOutlet UILabel *DESCRIPTION;
@property (weak, nonatomic) IBOutlet UILabel *date;


@end
