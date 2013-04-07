//
//  RCUtility.m
//  Shukatsutecho-App Network
//
//  Created by 古山 健司 on 12/12/28.
//  Copyright (c) 2012年 TF. All rights reserved.
//

#import "RCUtility.h"

@implementation RCUtility

+ (NSData*)createFormatData:(id)object
{
    LOG_METHOD;
    NSError *error;
    NSData *data = [NSJSONSerialization dataWithJSONObject:object options:NSJSONWritingPrettyPrinted error:&error];
    return data;
}

+ (NSString*)uuid
{
    LOG_METHOD;
    CFUUIDRef uuid;
    NSString *identifier;
    uuid = CFUUIDCreate(NULL);
    identifier = (NSString*)CFBridgingRelease(CFUUIDCreateString(NULL, uuid));
    CFRelease(uuid);
    return identifier;
}

+ (id)JSONObject:(NSData*)data
{
    LOG_METHOD;
    NSError *error;
    id json =  [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:&error];
    return json;
}

+ (NSString*)exchangeDateFormatForServer:(NSDate*)date
{
    LOG_METHOD;
    NSDateFormatter* formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    return [formatter stringFromDate:date];
}
+ (NSString*)exchangeDateFormatForyyMMdd:(NSDate*)date
{
    NSDateFormatter *outputFormatter = [[NSDateFormatter alloc] init];
    [outputFormatter setDateFormat:@"yyyy/MM/dd"];
    NSString *dateString = [outputFormatter stringFromDate:date];
    return dateString;
}

+ (NSString*)exchangeDateFormatForyyMMddHHmm:(NSDate*)date
{
    NSDateFormatter *outputFormatter = [[NSDateFormatter alloc] init];
    [outputFormatter setDateFormat:@"yyyy/MM/dd HH:mm"];
    NSString *dateString = [outputFormatter stringFromDate:date];
    return dateString;
}

+ (NSString*)exchangeDateFormatForyyHHmm:(NSDate*)date
{
    NSDateFormatter *outputFormatter = [[NSDateFormatter alloc] init];
    [outputFormatter setDateFormat:@"HH:mm"];
    NSString *dateString = [outputFormatter stringFromDate:date];
    return dateString;
}

+ (NSInteger)remainedTime:(NSDate *)aDate
{
    LOG_METHOD;
    NSTimeInterval secondsPerDay = 24 * 60 * 60;
    NSTimeInterval since = [aDate timeIntervalSinceDate:[NSDate date]];
    return since/secondsPerDay;
}

+ (NSDate *)startDate:(NSDate *)date
{
    LOG_METHOD;
    NSCalendar* gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents* component = [gregorian components:NSUIntegerMax fromDate:date];
    LOG(@"%d-%d-%d %d:%d:%d", [component year], [component month], [component day], [component hour], [component minute], [component second]);
    [component setSecond:0];
    [component setMinute:0];
    [component setHour:0];
    LOG(@"%d-%d-%d %d:%d:%d", [component year], [component month], [component day], [component hour], [component minute], [component second]);

    NSDate* result = [gregorian dateFromComponents:component];
    return result;
}

+ (NSDate *)endDate:(NSDate *)date
{
    LOG_METHOD;
    NSCalendar* gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents* component = [gregorian components:NSUIntegerMax fromDate:date];
    [component setSecond:59];
    [component setMinute:59];
    [component setHour:23];
    LOG(@"%d-%d-%d %d:%d:%d", [component year], [component month], [component day], [component hour], [component minute], [component second]);

    NSDate* result = [gregorian dateFromComponents:component];
    return result;
}

@end
