//
//  ViewController.m
//  TestTestJson
//
//  Created by jianxin on 13-4-24.
//  Copyright (c) 2013年 jianxin. All rights reserved.
//

#import "ViewController.h"
#import "JSONKit.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *string = @"[{\"id\":281,\"sortFlag\":1,\"text\":\"宏观\",\"channelType\":1,\"level\":1,\"sons\":[{\"id\":288,\"sortFlag\":1,\"text\":\"国际财经\",\"channelType\":1,\"level\":2,\"channelIcon\":\"http://202.84.17.194:80/cm/vipapi/getChannelIcon/288\"},{\"id\":289,\"sortFlag\":2,\"text\":\"国内财经\",\"channelType\":1,\"level\":2,\"channelIcon\":\"http://202.84.17.194:80/cm/vipapi/getChannelIcon/289\"},{\"id\":290,\"sortFlag\":3,\"text\":\"产业动态\",\"channelType\":1,\"level\":2,\"channelIcon\":\"http://202.84.17.194:80/cm/vipapi/getChannelIcon/290\"},{\"id\":291,\"sortFlag\":4,\"text\":\"财经声音\",\"channelType\":1,\"level\":2,\"channelIcon\":\"http://202.84.17.194:80/cm/vipapi/getChannelIcon/291\"}],\"channelIcon\":\"http://202.84.17.194:80/cm/vipapi/getChannelIcon/281\"},{\"id\":282,\"sortFlag\":2,\"text\":\"行业\",\"channelType\":1,\"level\":1,\"sons\":[{\"id\":292,\"sortFlag\":1,\"text\":\"行业动态\",\"channelType\":1,\"level\":2,\"channelIcon\":\"http://202.84.17.194:80/cm/vipapi/getChannelIcon/292\"},{\"id\":293,\"sortFlag\":2,\"text\":\"行业透视\",\"channelType\":1,\"level\":2,\"channelIcon\":\"http://202.84.17.194:80/cm/vipapi/getChannelIcon/293\"},{\"id\":294,\"sortFlag\":3,\"text\":\"政策法规\",\"channelType\":1,\"level\":2,\"channelIcon\":\"http://202.84.17.194:80/cm/vipapi/getChannelIcon/294\"},{\"id\":295,\"sortFlag\":4,\"text\":\"银行同业\",\"channelType\":1,\"level\":2,\"channelIcon\":\"http://202.84.17.194:80/cm/vipapi/getChannelIcon/295\"},{\"id\":296,\"sortFlag\":5,\"text\":\"相关行业\",\"channelType\":1,\"level\":2,\"channelIcon\":\"http://202.84.17.194:80/cm/vipapi/getChannelIcon/296\"}],\"channelIcon\":\"http://202.84.17.194:80/cm/vipapi/getChannelIcon/282\"},{\"id\":283,\"sortFlag\":3,\"text\":\"专题\",\"channelType\":1,\"level\":1,\"sons\":[{\"id\":297,\"sortFlag\":1,\"text\":\"专题\",\"channelType\":1,\"level\":2,\"channelIcon\":\"http://202.84.17.194:80/cm/vipapi/getChannelIcon/297\"}],\"channelIcon\":\"http://202.84.17.194:80/cm/vipapi/getChannelIcon/283\"},{\"id\":284,\"sortFlag\":4,\"text\":\"视点\",\"channelType\":1,\"level\":1,\"sons\":[{\"id\":285,\"sortFlag\":1,\"text\":\"国际观察\",\"channelType\":1,\"level\":2,\"channelIcon\":\"http://202.84.17.194:80/cm/vipapi/getChannelIcon/285\"},{\"id\":299,\"sortFlag\":2,\"text\":\"财经分析\",\"channelType\":1,\"level\":2,\"channelIcon\":\"http://202.84.17.194:80/cm/vipapi/getChannelIcon/299\"},{\"id\":300,\"sortFlag\":3,\"text\":\"新华时评\",\"channelType\":1,\"level\":2,\"channelIcon\":\"http://202.84.17.194:80/cm/vipapi/getChannelIcon/300\"}],\"channelIcon\":\"http://202.84.17.194:80/cm/vipapi/getChannelIcon/284\"},{\"id\":286,\"sortFlag\":5,\"text\":\"内讯\",\"channelType\":1,\"level\":1,\"sons\":[{\"id\":301,\"sortFlag\":1,\"text\":\"行内动态\",\"channelType\":1,\"level\":2,\"channelIcon\":\"http://202.84.17.194:80/cm/vipapi/getChannelIcon/301\"},{\"id\":302,\"sortFlag\":2,\"text\":\"业务交流\",\"channelType\":1,\"level\":2,\"channelIcon\":\"http://202.84.17.194:80/cm/vipapi/getChannelIcon/302\"},{\"id\":303,\"sortFlag\":3,\"text\":\"行内公告\",\"channelType\":1,\"level\":2,\"channelIcon\":\"http://202.84.17.194:80/cm/vipapi/getChannelIcon/303\"}],\"channelIcon\":\"http://202.84.17.194:80/cm/vipapi/getChannelIcon/286\"},{\"id\":287,\"sortFlag\":6,\"text\":\"其他\",\"channelType\":1,\"level\":1,\"sons\":[{\"id\":304,\"sortFlag\":1,\"text\":\"职场\",\"channelType\":1,\"level\":2,\"channelIcon\":\"http://202.84.17.194:80/cm/vipapi/getChannelIcon/304\"},{\"id\":305,\"sortFlag\":2,\"text\":\"读书\",\"channelType\":1,\"level\":2,\"channelIcon\":\"http://202.84.17.194:80/cm/vipapi/getChannelIcon/305\"},{\"id\":306,\"sortFlag\":3,\"text\":\"健康\",\"channelType\":1,\"level\":2,\"channelIcon\":\"http://202.84.17.194:80/cm/vipapi/getChannelIcon/306\"},{\"id\":307,\"sortFlag\":4,\"text\":\"教育\",\"channelType\":1,\"level\":2,\"channelIcon\":\"http://202.84.17.194:80/cm/vipapi/getChannelIcon/307\"}],\"channelIcon\":\"http://202.84.17.194:80/cm/vipapi/getChannelIcon/287\"},{\"id\":321,\"sortFlag\":7,\"text\":\"新华快讯\",\"channelType\":3,\"level\":1,\"channelIcon\":null}]";
    
    if (self.mArray) {
        
    } else {
        NSMutableArray *a = [[NSMutableArray alloc]init];
        self.mArray = a;
        [a release];
        
        NSArray *array = [string objectFromJSONString];
        
        for (NSDictionary *dic in array) {
            Level *level = [[Level alloc]initLevelWithDic:dic];
            [self.mArray addObject:level];
            [level release];
        }
        
        NSLog(@"%@",self.mArray);
        [self.table reloadData];
    }
}




#pragma mark TableView
//首页有多少个Section
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //return self.oneSortInfoArray?[self.oneSortInfoArray count]:0;
    return 1;
}
//每个Section有多少个Cell
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.mArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    [cell.textLabel setText:((Level*)[self.mArray objectAtIndex:indexPath.row]).text];
    return cell;
}


//点击Cell
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    ViewController *vc = [[ViewController alloc]initWithNibName:@"ViewController" bundle:nil];
    vc.mArray = ((Level*)[self.mArray objectAtIndex:indexPath.row]).sons;
    [self presentViewController:vc animated:YES completion:nil];
}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [_mArray release];
    [_table release];
    [super dealloc];
}
@end
