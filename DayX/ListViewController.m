//
//  ViewController.m
//  DayX
//
//  Created by Caleb Hicks on 4/10/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ListViewController.h"
#import "EntryController.h"
#import "ListTableViewDataSource.h"
#import "DetailViewController.h"
@interface ListViewController ()
@property (strong) EntryController *entryController;
@property (strong, nonatomic) IBOutlet ListTableViewDataSource *dataSource;
@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.entryController = [EntryController new];
    
    Entry *entry = [Entry new];
    entry.title = @"Testing 1,2,3";
    
    [self.entryController createEntry:entry];
    
    self.dataSource.entries = self.entryController.entries;
}

-(void)viewDidAppear:(BOOL)animated{
    self.dataSource.entries = self.entryController.entries;
    [self.tableView reloadData];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([segue.identifier isEqualToString:@"addEntry"]){
        //create a new entry
        Entry *entry = [Entry new];
        //save it into the list of entries
        [self.entryController createEntry:entry];
        //give it to the detailviewcontroller
        DetailViewController *controller = (DetailViewController *)segue.destinationViewController;
        controller.entry = entry;
        
    }else if([segue.identifier isEqualToString:@"viewEntry"]){
        //find the indexpath of the selected row (hint: uitableview has a method for this)
        //use indexpath.row to grab the correct entry object from entrycontroller.entries
        //give it to the detailviewcontroller
    }
    
}
@end
