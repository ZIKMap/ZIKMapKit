//
//  ZIKMapTextViewController.m
//  ZIKMapKit_Example
//
//  Created by ZIKong on 2018/1/10.
//  Copyright © 2018年 811528603@qq.com. All rights reserved.
//

#import "ZIKMapTextViewController.h"

static NSString *cellid = @"cellid";

@interface ZIKMapTextViewController ()<UITableViewDelegate , UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation ZIKMapTextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title  = @"地图-文字";
    [self.view addSubview:self.tableView];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellid forIndexPath:indexPath];
    cell.textLabel.text = @"地图信息";
    return cell;
}

-(UITableView *)tableView {
    if (_tableView == nil) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellid];
        _tableView.tableFooterView = [UIView new];
    }
    return _tableView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
