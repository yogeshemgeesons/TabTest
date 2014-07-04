//
//  AnimeViewController.m
//  TabTest
//
//  Created by Yogesh Suthar on 21/06/2014.
//  Copyright (c) 2014 Emgeesons. All rights reserved.
//

#import "AnimeViewController.h"

@interface AnimeViewController ()

@end

@implementation AnimeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated {
//    CGRect frame = self.image.frame;
//    frame.size.height = 300;
//    frame.size.width = 300;
    
    self.layoutHS.constant = 200;
    self.layoutHeight.constant = 200;
    [self.image setNeedsUpdateConstraints];
    
    [UIView animateWithDuration:1 delay:2 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
//        self.image.frame = frame;
        
        [self.image layoutIfNeeded];
    } completion:^(BOOL finished) {
        
    }];
}

@end
