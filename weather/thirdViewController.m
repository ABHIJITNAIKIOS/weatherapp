//
//  thirdViewController.m
//  weather
//
//  Created by MAC on 28/02/17.
//  Copyright © 2017 MAC. All rights reserved.
//

#import "thirdViewController.h"

@interface thirdViewController ()

@end

@implementation thirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[self navigationController] setNavigationBarHidden:YES animated:YES];
    
    NSDictionary *thirddicta =[_thirddict objectForKey:@"main"];
    
    NSString *pressurenumber =[NSString stringWithFormat:@"%@", [thirddicta objectForKey:@"pressure"]];
    _PRESSURE.text = pressurenumber;
    
    NSString *humiditynumber =[NSString stringWithFormat:@"%@", [thirddicta objectForKey:@"humidity"]];
    _HUMIDITY.text = humiditynumber;
    
    NSDictionary *winddict =[_thirddict objectForKey:@"wind"];
    
    NSString *windspeednumber =[NSString stringWithFormat:@"%@", [winddict objectForKey:@"speed"]];
    _WINDSPEED.text = windspeednumber;
    [self.view addSubview:_PRESSURE];
    [self.view addSubview:_HUMIDITY];
    [self.view addSubview:_WINDSPEED];
    


    
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)BACKTOMAIN:(id)sender {
    
    [self.navigationController popToRootViewControllerAnimated:YES];
}
@end
