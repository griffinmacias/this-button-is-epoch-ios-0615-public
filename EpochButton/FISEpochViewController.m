//
//  FISEpochViewController.m
//  EpochButton
//
//  Created by Mason Macias on 6/15/15.
//  Copyright (c) 2015 FIS. All rights reserved.
//

#import "FISEpochViewController.h"

@interface FISEpochViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)button:(id)sender;

@end

@implementation FISEpochViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(double)epochMethod
{
    NSTimeInterval numberOfSecondSince1970 = [[NSDate date] timeIntervalSince1970];
    
    return numberOfSecondSince1970;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)button:(id)sender {
    
    self.label.text = [NSString stringWithFormat:@"%f", [self epochMethod]];
}
@end
