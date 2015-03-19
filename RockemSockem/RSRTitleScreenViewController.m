//
//  TitleScreenViewController.m
//  RockemSockem
//
//  Created by Kit Cischke on 3/18/15.
//  Copyright (c) 2015 d4r3llo5. All rights reserved.
//

#import "RSRTitleScreenViewController.h"
#import "RSRBattleScreenViewController.h"

@interface RSRTitleScreenViewController()

@property (nonatomic, weak) IBOutlet UIButton* gotoGame;

@end

@implementation RSRTitleScreenViewController

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    return self;
}

- (IBAction) startNewGame: (id) sender
{
    RSRBattleScreenViewController *startGame = [[RSRBattleScreenViewController alloc] initWithNibName:@"RSRBattleScreenViewController" bundle:nil];
    [self presentViewController:startGame animated:YES completion:nil];
}
@end
