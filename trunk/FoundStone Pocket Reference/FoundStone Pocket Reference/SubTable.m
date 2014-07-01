//
//  SubTable.m
//  FoundStone Pocket Reference
//
//  Created by Consultant on 7/1/14.
//  Copyright (c) 2014 DiegoUrquiza. All rights reserved.
//

#import "SubTable.h"
#import "SubRefCell.h"
#import "DetailViewController.h"
@interface SubTable ()

@end

@implementation SubTable

-(instancetype)initWithReference:(NSString*)RefN SubReference:(NSArray*)SubRefN SubRefDesc:(NSArray*)SubRefND SubReferenceCommand:(NSArray*)SubRefC{
    
    self = [super init];
    
    if (self) {
        _SubRefDesc = SubRefND;
        _Reference = RefN;
        _SubReference = SubRefN;
        _SubRefCommand = SubRefC;
        
    }
    return self;
    
}


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return _Refs.SubReference.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SubRefCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableCell"forIndexPath:indexPath];
    
    int row = [indexPath row];
    
    cell.subRefLabel.text = _Refs.SubReference[row];
    cell.subRefDescLabel.text = _Refs.SubRefDesc[row];
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([[segue identifier] isEqualToString:@"Details"]){
        
        DetailViewController *detailController = [segue destinationViewController];
        
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow ];
        
        int row = [myIndexPath row];
        
        detailController.detailView = @[_Refs.SubReference[row],_Refs.SubRefDesc[row],_Refs.SubRefCommand[row]];
        
    }
    
}



@end
