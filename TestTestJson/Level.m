//
//  Level.m
//  TestTestJson
//
//  Created by jianxin on 13-4-24.
//  Copyright (c) 2013年 jianxin. All rights reserved.
//

#import "Level.h"

@implementation Level

- (id)initLevelWithDic:(NSDictionary*)dic
{
    self = [super init];
    if (self) {
        self.Id = [dic objectForKey:@"id"];
        self.sortFlag = [dic objectForKey:@"sortFlag"];
        self.text = [dic objectForKey:@"text"];
        self.channelType = [dic objectForKey:@"channelType"];
        self.level = [dic objectForKey:@"level"];
        self.channelIcon = [dic objectForKey:@"channelTcon"];
        
        NSArray *array = [dic objectForKey:@"sons"];
        if (array.count>0) {
            NSMutableArray *mArray = [[NSMutableArray alloc]init];
            for (NSDictionary *d in array) {
                Level *level = [[Level alloc]initLevelWithDic:d];
                [mArray addObject:level];
                [level release];
            }
            self.sons = mArray;
            [mArray release];
        }
    }
    return self;
}

//- (NSString *)description{
//    return [NSString stringWithFormat:@"%@,%@,%@",self.Id,self.text,self.sons];
//}

- (void)dealloc
{
    [_Id release];
    [_sortFlag release];
    [_text release];
    [_channelType release];
    [_level release];
    [_channelIcon release];
    [_sons release];
    [super dealloc];
}
@end
