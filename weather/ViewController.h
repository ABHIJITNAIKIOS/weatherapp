//
//  ViewController.h
//  weather
//
//  Created by MAC on 28/02/17.
//  Copyright © 2017 MAC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController< CLLocationManagerDelegate>{
    
    CLLocationManager *manager;
    NSDictionary *dict, *maindict;
    NSDictionary *temp;
    
    
    
    
}


    

@property (weak, nonatomic) IBOutlet UIImageView *image;
- (IBAction)tempnext:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *date;

@end

