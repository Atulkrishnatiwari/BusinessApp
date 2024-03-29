//
//  SocialTableViewController.m
//  BusinessApp
//
//  Created by Celestial on 06/11/23.
//

#import "SocialTableViewController.h"
#import "SocialViewController.h"

@interface SocialTableViewController ()

@end

@implementation SocialTableViewController

- (void)viewDidLoad 
{
    [super viewDidLoad];
    [[self navigationItem] setBackBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil]];
    
    
    
    title=@[@"Facebook",@"Twitter",@"Google",@"LinkedIn",@"YouTube",@"Website"];
    
    image=@[@"SocialIcon1.png",@"SocialIcon2.png",@"SocialIcon3.png",@"SocialIcon4.png",@"SocialIcon5.png",@"SocialIcon6.png"];
    
    self.navigationItem.title=@"Social Links";
    
//    self.tableView.backgroundView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Background.png"]];
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

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return  100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{
    SocialTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.cellImage.image=[UIImage imageNamed:image[indexPath.row]];
    cell.cellLabel.text=title[indexPath.row];
    
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender 
{
    if([[segue identifier] isEqualToString:@"showDetails"])
    {
        SocialViewController *detailView=[segue destinationViewController];
        
        NSIndexPath *myIndexPath=[self.tableView indexPathForSelectedRow];
        
        int row=(int)[myIndexPath row];
        
        detailView.detail=title[row];
    }
}

@end
