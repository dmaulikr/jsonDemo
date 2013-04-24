//
//  ViewController.h
//  TestTestJson
//
//  Created by jianxin on 13-4-24.
//  Copyright (c) 2013年 jianxin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Level.h"

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (retain, nonatomic) IBOutlet UITableView *table;
@property (retain, nonatomic) NSMutableArray *mArray;
@end
