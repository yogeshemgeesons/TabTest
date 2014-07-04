//
//  ViewController.m
//  TabTest
//
//  Created by Yogesh Suthar on 24/06/2014.
//  Copyright (c) 2014 Emgeesons. All rights reserved.
//

#import "ViewController.h"
@import QuartzCore;

@implementation ViewController  {
    UIDynamicAnimator *animator;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    
    //[self addFallAnimationForLayer:self.vwBG.layer];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*-(void)addFallAnimationForLayer:(CALayer *)layer {
    // the keypath to animate
    NSString *keyPath = @"transform.translation.y";
    
    // Allocate a CAKeyFrameAnimation for the specified keyPath.
    CAKeyframeAnimation *translation = [CAKeyframeAnimation animationWithKeyPath:keyPath];
    
    // set animation duration and repeat
    translation.duration = 1.5f;
    translation.repeatCount = HUGE_VAL;
    translation.autoreverses = YES;
    
    // Allocate array to hold the values to interpolate
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    // Add the start value
    // the animation starts at a y offset of 0.0
    [array addObject:[NSNumber numberWithFloat:0.0f]];
    
    // Add end value
    // The animation finishes when the ball would contact the bottom of the screen
    // This point is calculated by finding the height of the applicationFrame
    // and subtracting the height of the ball.
    CGFloat height = [[UIScreen mainScreen] applicationFrame].size.height - layer.frame.size.height;
    [array addObject:[NSNumber numberWithFloat:height]];
    
    // set the values that should be interpolated during the animation
    translation.values = array;
    
    [layer addAnimation:translation forKey:keyPath];
    NSLog(@"here");
}*/

- (IBAction)btnClicked:(id)sender {
//    UISnapBehavior *snapBehaviour = [[UISnapBehavior alloc] initWithItem:self.vwBG snapToPoint:self.view.center];
//    snapBehaviour.damping = 0.65;
//    [animator addBehavior:snapBehaviour];
    
    /*UICollisionBehavior *collision = [[UICollisionBehavior alloc] initWithItems:@[self.vwBG]];
    [collision setTranslatesReferenceBoundsIntoBoundaryWithInsets:UIEdgeInsetsMake(0, 0, 0, -280)];
    [animator addBehavior:collision];
    
    UIGravityBehavior *gravity = [[UIGravityBehavior alloc] initWithItems:@[self.vwBG]];
    gravity.gravityDirection = CGVectorMake(-1.0f, 0.0f);
    [animator addBehavior:gravity];
    
    UIPushBehavior *push = [[UIPushBehavior alloc] initWithItems:@[self.vwBG] mode:UIPushBehaviorModeContinuous];
    push.magnitude = 0.0f;
    push.angle = 0.0f;
    [animator addBehavior:push];
    
    UIDynamicItemBehavior *itemBehaviour = [[UIDynamicItemBehavior alloc] initWithItems:@[self.vwBG]];
    itemBehaviour.elasticity = 0.35f;
    [animator addBehavior:itemBehaviour];*/
    
    /*UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    [self presentViewController:picker animated:YES completion:NULL];*/
}

#pragma mark - UIImagePicker Delegate methods

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    
    // save image locally
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    //NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *dataPath = [paths objectAtIndex:0];
    NSString *savedImagePath = [dataPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.png", @"image1"]];
    NSData *imageData = UIImagePNGRepresentation(chosenImage);
    [imageData writeToFile:savedImagePath atomically:NO];
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [picker dismissViewControllerAnimated:YES completion:NULL];
}

@end
