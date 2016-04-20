//
//  ViewController.m
//  TableViewDemo1
//
//  Created by 徐涛 on 4/17/16.
//  Copyright © 2016 徐涛. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,strong) NSArray *arrayData;

@end

@implementation ViewController
@synthesize arrayData;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    arrayData=[NSArray arrayWithObjects:@"1",@"2",@"3",nil];
    
}
#pragma mark - 表格1
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
    
}
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arrayData.count;
}
#pragma mark - 表格2
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    static NSString *indentifier=@"cell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:indentifier];
    if(!cell)
    {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:indentifier];
    }
    cell.textLabel.text=[arrayData objectAtIndex:indexPath.row];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
