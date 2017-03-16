//
//  ViewController.m
//  SDCycleBannerView
//
//  Created by liwei on 17/3/16.
//  Copyright © 2017年 fanxiaobin. All rights reserved.
//

#import "ViewController.h"
#import "SDCycleBannerView.h"

static NSString *kUITableViewCell = @"UITableViewCell";

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>{

}

@property (nonatomic,strong) UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.title = @"轮播图";
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.tableFooterView = [UIView new];
    [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kUITableViewCell];
    
    [self.view addSubview:_tableView];
    
    SDCycleBannerView *bannerView = [[SDCycleBannerView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 200) placeholderImage:@"banner_default" imageViewTap:^(NSInteger index) {
        NSLog(@"--- index= %ld",index);
    }];
    
    bannerView.imageURLStringsGroup = @[
                               @"http://img06.tooopen.com/images/20160727/tooopen_sl_172703871932.jpg",
                               @"http://img06.tooopen.com/images/20161123/tooopen_sl_187628819897.jpg",
                               @"http://img07.tooopen.com/images/20170306/tooopen_sl_200775855137.jpg",
                               @"http://img07.tooopen.com/images/20170209/tooopen_sl_198253492349.jpg",
                                @"http://img06.tooopen.com/images/20160919/tooopen_sl_179298256299.jpg"];
    
    _tableView.tableHeaderView = bannerView;
}

#pragma mark --- UITableViewDelegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kUITableViewCell];
    
    
    
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
