//
//  Level.h
//  TestTestJson
//
//  Created by jianxin on 13-4-24.
//  Copyright (c) 2013年 jianxin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Level : NSObject
@property (retain, nonatomic) NSNumber *Id;
@property (retain, nonatomic) NSNumber *sortFlag;
@property (retain, nonatomic) NSString *text;
@property (retain, nonatomic) NSNumber *channelType;
@property (retain, nonatomic) NSNumber *level;
@property (retain, nonatomic) NSString *channelIcon;
@property (retain, nonatomic) NSMutableArray *sons;
- (id)initLevelWithDic:(NSDictionary*)dic;
@end
