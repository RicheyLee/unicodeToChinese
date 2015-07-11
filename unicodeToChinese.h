//
//  unicodeToChinese.h
//  shoudao2
//
//  Created by Richey on 15/5/28.
//  Copyright (c) 2015年 Richey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface unicodeToChinese : NSObject
//unicode转成中文
+ (NSString *)replaceUnicode:(NSString *)unicodeStr;


//字典转成json
+ (NSString*)dictionaryToJson:(NSDictionary *)dic;


@end
