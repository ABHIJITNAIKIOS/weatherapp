//
//  secondViewController.m
//  weather
//
//  Created by MAC on 28/02/17.
//  Copyright © 2017 MAC. All rights reserved.
//

#import "secondViewController.h"
#import "thirdViewController.h"

@interface secondViewController ()

@end

@implementation secondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     [[self navigationController] setNavigationBarHidden:YES animated:YES];
    [self adjustTemperature];
    
    NSArray *array =[_secondmaindict objectForKey:@"weather"];
    NSDictionary *descdict =[array objectAtIndex:0];
    NSString *strdesc =[NSString stringWithFormat:@"%@", [descdict objectForKey:@"description"]];
    _DESCRIPTION.text =strdesc;
    [self.view addSubview:_DESCRIPTION];
    
    seconddict =[_secondmaindict objectForKey:@"main"];
    NSString *tempnumber =[NSString stringWithFormat:@"%f", degree];
                           _templabel.text = tempnumber;
                           
    [self.view addSubview:_templabel];
    
    //NSDictionary *placedict =[_secondmaindict objectForKey:@"sys"];
    
    NSString *placename =[NSString stringWithFormat:@"%@", [_secondmaindict objectForKey:@"name"]];
    _place.text = placename;
    [self.view addSubview:_place];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)adjustTemperature{
    
    NSDictionary *secondtemp =[_secondmaindict objectForKey:@"main"];
    NSString *strtmp =[NSString stringWithFormat:@"%@", [secondtemp objectForKey:@"temp"]];
    float kelvin =[strtmp floatValue];
    NSLog(@"%f", kelvin);
    float var = 273.15;
     degree = kelvin - var;
    
    NSLog(@"%f", degree);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)BACK:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)detailinfo:(id)sender {
    
    UIStoryboard *story =[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    thirdViewController *third =[story instantiateViewControllerWithIdentifier:@"thirdViewController"];
    
    third.thirddict =_secondmaindict;
    
    [self.navigationController pushViewController:third animated:YES];
    
}
@end
