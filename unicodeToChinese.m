//
//  unicodeToChinese.m
//  shoudao2
//
//  Created by Richey on 15/5/28.
//  Copyright (c) 2015年 Richey. All rights reserved.
//

#import "unicodeToChinese.h"

@implementation unicodeToChinese
+ (NSString *)replaceUnicode:(NSString *)unicodeStr
{

    NSString *tempStr1 = [unicodeStr stringByReplacingOccurrencesOfString:@"\\u" withString:@"\\U"];
    NSString *tempStr2 = [tempStr1 stringByReplacingOccurrencesOfString:@"\"" withString:@"\\\""];
    NSString *tempStr3 = [[@"\"" stringByAppendingString:tempStr2]stringByAppendingString:@"\""];
    NSData *tempData = [tempStr3 dataUsingEncoding:NSUTF8StringEncoding];

    NSString *returnStr = [NSPropertyListSerialization propertyListWithData:tempData options:NSPropertyListImmutable format:NULL error:NULL];

    return [returnStr stringByReplacingOccurrencesOfString:@"\\r\\n"withString:@"\n"];


}

+(NSString*)dictionaryToJson:(NSDictionary *)dic

{
    NSError *parseError = nil;
    NSData  *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:&parseError];
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
}


@end
