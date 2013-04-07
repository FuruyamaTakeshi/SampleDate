//
//  RCUtility.h
//  Shukatsutecho-App Network
//
//  Created by 古山 健司 on 12/12/28.
//  Copyright (c) 2012年 TF. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 * @brief Utilityクラス　(Static)
 * @author TF
 * 
 */
@interface RCUtility : NSObject
/**
 * @brief 転送フォーマット生成メソッド
 * @param [in] id object
 * @return (NSData*) NSDataに変換されたJSONデータ
 */
+ (NSData*)createFormatData:(id)object;
/**
 * @brief　NSDataのインスタンスをJSONに変換するメソッド
 * @param [in] (NSData*)data NSData
 * @return (id)JSONオブジェクト
 */

+ (id)JSONObject:(NSData*)data;
/**
 * @brief UUID生成メソッド
 * @return (NSString*) UUID
 */
+ (NSString*)uuid;

/**
 * @brief 送信用DateFormat変換
 * @param [in] date
 * @return Format整形データ
 */
+ (NSString*)exchangeDateFormatForServer:(NSDate*)date;
/**
 * @brief DateFormat変換yyyy/MM/ddで返す。
 * @param [in] (NSData*)date
 * @return Format整形データyyyy/MM/dd
 */
+ (NSString*)exchangeDateFormatForyyMMdd:(NSDate*)date;
/**
 * @brief DateFormat変換yyyy/MM/dd HH:mmで返す。
 * @param [in] (NSData*)date
 * @return Format整形データyyyy/MM/dd HH:mm
 */
+ (NSString*)exchangeDateFormatForyyMMddHHmm:(NSDate*)date;
/**
 * @brief DateFormat変換HH:mmで返す。
 * @param [in] (NSData*)date
 * @return Format整形データHH:mm
 */
+ (NSString*)exchangeDateFormatForyyHHmm:(NSDate*)date;
/**
 * @brief 引数で与えた日付から現在時間の残日数を返す。
 * @param [in] (NSData*)date
 * @return 残り日数
 */
+ (NSInteger)remainedTime:(NSDate *)aDate;
/**
 * @brief 引数で与えたdateと同じ日付で時間を00:00:00に設定したNSDate型のインスタンスを返す。
 * @param [in] (NSData*)date
 * @return 00:00:00に設定した　NSDate型のインスタンス
 */
+ (NSDate *)startDate:(NSDate *)date;
/**
 * @brief 引数で与えたdateと同じ日付で時間を23:59:59に設定したNSDate型のインスタンスを返す。
 * @param [in] (NSData*)date
 * @return 23:59:59に設定した　NSDate型のインスタンス
 */
+ (NSDate *)endDate:(NSDate *)date;
@end
