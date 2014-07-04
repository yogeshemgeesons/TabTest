//
//  AnimeViewController.h
//  TabTest
//
//  Created by Yogesh Suthar on 21/06/2014.
//  Copyright (c) 2014 Emgeesons. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BNHtmlPdfKit.h"

@interface AnimeViewController : UIViewController <BNHtmlPdfKitDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *layoutHS;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *layoutHeight;

@end
