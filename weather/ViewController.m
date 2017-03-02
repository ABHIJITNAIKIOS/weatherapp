//
//  ViewController.m
//  weather
//
//  Created by MAC on 28/02/17.
//  Copyright © 2017 MAC. All rights reserved.
//

#import "ViewController.h"
#import "secondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(dateUpdate) userInfo:nil repeats:YES];
    manager =[[CLLocationManager alloc]init];
    manager.delegate =self;
    manager.desiredAccuracy =kCLLocationAccuracyBest;
    [manager requestAlwaysAuthorization];
    NSLog(@"%f", manager.location.coordinate.longitude);
    NSLog(@"%f", manager.location.coordinate.latitude);
    
    [self dateUpdate];
    [self weatherMethod];
    
    
}



-(void)weatherMethod{
    
    NSString *str =[NSString stringWithFormat:@"http://api.openweathermap.org/data/2.5/weather?lat=%f&lon=%f&appid=77502014e4e94f9dbbd851ac87fbd31a" ,manager.location.coordinate.latitude, manager.location.coordinate.longitude];
    
    NSURL *url =[NSURL URLWithString:str];
    NSError *error;
    
    NSData *data =[NSData dataWithContentsOfURL:url];
    
    NSLog(@"%@", data);
    if (data == nil) {
        NSLog(@"%@", error.localizedDescription);
        
    }
    else{
        dict =[NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
        
        maindict =[dict objectForKey:@"main"];
        
        NSLog(@"%@", maindict);
        
        
        
    }
    
}

-(void)dateUpdate{
    
    
    NSDate *date =[NSDate date];
    NSDateFormatter* formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"dd MM yyyy HH:mm:ss"];
    NSString* formattedDate = [formatter stringFromDate:date];
    _date.text =formattedDate;
   

}





- (IBAction)tempnext:(id)sender {
    
    UIStoryboard *story =[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    secondViewController *second =[story instantiateViewControllerWithIdentifier:@"secondViewController"];
    
   // second.seconddicta = maindict;
    second.secondmaindict =dict;
    
    
    [self.navigationController pushViewController:second animated:YES];
}
@end
