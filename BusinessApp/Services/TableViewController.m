//
//  TableViewController.m
//  BusinessApp
//
//  Created by Celestial on 03/11/23.
//

#import "TableViewController.h"

#import "TableViewCell.h"

#import "ServicesViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad 
{
    [super viewDidLoad];
    
    title=@[@"Service 1",@"Service 2",@"Service 3",@"Service 4",@"Service 5"];
    
//    self.tableView.backgroundView=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Background.png"]];
    
    [[self navigationItem] setBackBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil]];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView 
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return title.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.cellLabel.text=title[indexPath.row];
    
    return cell;
}




#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender 
{
   if([[segue identifier] isEqualToString:@"showDetail"])
   {
       ServicesViewController *detailService=[segue destinationViewController];
       NSIndexPath *indexPath=[self.tableView indexPathForSelectedRow];
       
       int row=(int)[indexPath row];
       
       detailService.details=title[row];
   }
}

@end
