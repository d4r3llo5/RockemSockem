//
//  RSRBattleScreenViewController.m
//  RockemSockem
//
//  Created by Kit Cischke on 3/19/15.
//  Copyright (c) 2015 d4r3llo5. All rights reserved.
//

#import "RSRBattleScreenViewController.h"
#import "RSRBattleAreaView.h"

@interface RSRBattleScreenViewController ()
@property (weak, nonatomic) IBOutlet RSRBattleAreaView* battleArea;

@end

@implementation RSRBattleScreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [_battleArea setNeedsDisplay];
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

@end
