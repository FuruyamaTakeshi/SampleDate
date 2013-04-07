//
//  FTViewController.h
//  SampleDateCheck
//
//  Created by 古山 健司 on 13/04/06.
//  Copyright (c) 2013年 TF. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FTViewController : UIViewController
@property (retain, nonatomic) IBOutlet UILabel *timeLabel;
@property (retain, nonatomic) IBOutlet UILabel *startDateLabel;

@property (retain, nonatomic) IBOutlet UIButton *dateCheckButton;
@property (retain, nonatomic) IBOutlet UILabel *endDateLabel;
- (IBAction)dateCheckButtonDidPush:(id)sender;

@end
