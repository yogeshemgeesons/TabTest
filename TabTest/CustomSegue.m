//
//  CustomSegue.m
//  TabTest
//
//  Created by Yogesh Suthar on 24/06/2014.
//  Copyright (c) 2014 Emgeesons. All rights reserved.
//

#import "CustomSegue.h"
@import QuartzCore;

@implementation CustomSegue

-(void)perform {
    UIViewController *sourceViewController = (UIViewController*)[self sourceViewController];
    UIViewController *destinationController = (UIViewController*)[self destinationViewController];
    
//    CATransition *animation = [CATransition animation];
//    [animation setDelegate:self];
//    [animation setDuration:1.0f];
//    animation.startProgress = 0;
//    animation.endProgress   = 1;
//    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
//    animation.type = @"cameraIris";
//    animation.subtype=@"fromRight";
//    animation.fillMode = kCAFillModeForwards;
//    
//    [animation setRemovedOnCompletion:NO];
//    [animation setFillMode: @"extended"];
//    [animation setRemovedOnCompletion: NO];
    
    CATransition* transition = [CATransition animation];
    transition.duration = 0.3;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
    transition.type = kCATransitionReveal; //kCATransitionMoveIn; //, kCATransitionPush, kCATransitionReveal, kCATransitionFade
    transition.subtype = kCATransitionFromTop; //kCATransitionFromLeft, kCATransitionFromRight, kCATransitionFromTop, kCATransitionFromBottom
    
    
    
    [sourceViewController.navigationController.view.layer addAnimation:transition forKey:kCATransition];
    
    [sourceViewController.navigationController pushViewController:destinationController animated:NO];
}

@end
