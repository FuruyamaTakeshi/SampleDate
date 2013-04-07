//
//  FTViewController.m
//  SampleDateCheck
//
//  Created by 古山 健司 on 13/04/06.
//  Copyright (c) 2013年 TF. All rights reserved.
//

#import "FTViewController.h"
#import "RCUtility.h"
@interface FTViewController ()

@end

@implementation FTViewController

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

- (void)dealloc {
    [_dateCheckButton release];
    [_timeLabel release];
    [_endDateLabel release];
    [_startDateLabel release];
    [super dealloc];
}
- (IBAction)dateCheckButtonDidPush:(id)sender {
    LOG_METHOD;
//    NSTimeZone* zone = [[NSTimeZone alloc] initWithName:@"Asia/Tokyo"];
//    [NSTimeZone setDefaultTimeZone:zone];
    
    NSDate* now = [NSDate date];
    NSDate* start = [RCUtility startDate:now];
    NSDate* end = [RCUtility endDate:now];

    NSLog(@"now  =%@", now);
    NSLog(@"start=%@", start);
    NSLog(@"end  =%@", end);
    self.timeLabel.text = [NSString stringWithFormat:@"%@", [RCUtility exchangeDateFormatForServer:now]];
    self.startDateLabel.text = [NSString stringWithFormat:@"%@", [RCUtility exchangeDateFormatForServer:start]];
    self.endDateLabel.text = [NSString stringWithFormat:@"%@", [RCUtility exchangeDateFormatForServer:end]];
}
@end
