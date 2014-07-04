//
//  ViewController.h
//  TabTest
//
//  Created by Yogesh Suthar on 24/06/2014.
//  Copyright (c) 2014 Emgeesons. All rights reserved.
//

#import <UIKit/UIKit.h>
@import MapKit;

@interface ViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIView *vwBG;
@property (strong, nonatomic) IBOutlet UIAlertView *alertView;
- (IBAction)btnClicked:(id)sender;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end
