//
//  MainTable.m
//  FoundStone Pocket Reference
//
//  Created by Consultant on 6/30/14.
//  Copyright (c) 2014 DiegoUrquiza. All rights reserved.
//

#import "MainTable.h"
#import "MainCell.h"
#import "SubTable.h"
#import "TBXML.h"

@interface MainTable ()

@end

@implementation MainTable


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
    
    /* Set up xml parser for Refs and sub Refs */
    
    
    _Ref = @[@"SubRefa",
             @"SubRefb",
             @"SubRefc",
             @"SubRefd",
             @"SubRefe",];
    
    TBXML *sourceXML = [[TBXML alloc] initWithXMLFile:@"movies.xml" error:nil];
    
    TBXMLElement *rootElement = sourceXML.rootXMLElement;
    TBXMLElement *videoElement = [TBXML childElementNamed:@"video" parentElement:rootElement];
    
    NSString *idAttribute = [TBXML valueOfAttributeNamed:@"id" forElement:videoElement];
    
    TBXMLElement *textElement = [TBXML childElementNamed:@"text" parentElement:videoElement];
    
    NSString *textElementString = [TBXML textForElement:textElement];
    
    NSLog(@"%@ %@",idAttribute,textElementString);
   
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _Ref.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MainCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableCell" forIndexPath:indexPath];
    
    int row = [indexPath row];
   
    cell.DescLabel.text = _Ref[row];
    
    return cell;
}


//CLEAN out memory here?
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    NSArray *_SubRefa = [[NSArray alloc]init];
    _SubRefa = @[@"SubRefa1",
                @"SubRefa2",
                @"SubRefa3",
                @"SubRefa4",
                @"SubRefa5",];
    
    NSArray *_SubRefaDesc = [[NSArray alloc]init];
    _SubRefaDesc = @[@"SubRefa1, this function does nothing. This is just a test test test test",
                     @"SubRefa2, this function does nothing. This is just a test test test test",
                     @"SubRefa3, this function does nothing. This is just a test test test test",
                     @"SubRefa4, this function does nothing. This is just a test test test test",
                     @"SubRefa5, this function does nothing. This is just a test test test test",];
    
    
    NSArray *_refCommanda = [[NSArray alloc] init];
    _refCommanda = @[@"/SubRefa1 -f [arg] [arg]",
                    @"/SubRefa2 -d [arg]",
                    @"/SubRefa3 -help",
                    @"/SubRefa4 -vxc [arg]",
                    @"/SubRefa5 -fd [arg]",];
    
    
    NSArray *_SubRefb = [[NSArray alloc]init];
    _SubRefb = @[@"SubRefb1",
                 @"SubRefb2",
                 @"SubRefb3",
                 @"SubRefb4",
                 @"SubRefb5",];
   
    NSArray *_SubRefbDesc = [[NSArray alloc]init];
    _SubRefbDesc = @[@"SubRefb1, this function does nothing. This is just a test test test test",
                     @"SubRefb2, this function does nothing. This is just a test test test test",
                     @"SubRefb3, this function does nothing. This is just a test test test test",
                     @"SubRefb4, this function does nothing. This is just a test test test test",
                     @"SubRefb5, this function does nothing. This is just a test test test test",];
    
    
    NSArray *_refCommandb = [[NSArray alloc] init];
    _refCommandb = @[@"/SubRefb1 -f [arg] [arg]",
                     @"/SubRefb2 -d [arg]",
                     @"/SubRefb3 -help",
                     @"/SubRefb4 -vxc [arg]",
                     @"/SubRefb5 -fd [arg]",];
    
    NSArray *_SubRefc = [[NSArray alloc]init];
    _SubRefc = @[@"SubRefc1",
                 @"SubRefc2",
                 @"SubRefc3",
                 @"SubRefc4",
                 @"SubRefc5",];
    
    NSArray *_SubRefcDesc = [[NSArray alloc]init];
    _SubRefcDesc = @[@"SubRefc1, this function does nothing. This is just a test test test test",
                     @"SubRefc2, this function does nothing. This is just a test test test test",
                     @"SubRefc3, this function does nothing. This is just a test test test test",
                     @"SubRefc4, this function does nothing. This is just a test test test test",
                     @"SubRefc5, this function does nothing. This is just a test test test test",];
    
    
    NSArray *_refCommandc = [[NSArray alloc] init];
    _refCommandc = @[@"/SubRefc1 -f [arg] [arg]",
                     @"/SubRefc2 -d [arg]",
                     @"/SubRefc3 -help",
                     @"/SubRefc4 -vxc [arg]",
                     @"/SubRefc5 -fd [arg]",];
    
    
    NSArray *_SubRefd = [[NSArray alloc]init];
    _SubRefd = @[@"SubRefd1",
                 @"SubRefd2",
                 @"SubRefd3",
                 @"SubRefd4",
                 @"SubRefd5",];
    
    NSArray *_SubRefdDesc = [[NSArray alloc]init];
    _SubRefdDesc = @[@"SubRefd1, this function does nothing. This is just a test test test test",
                     @"SubRefd2, this function does nothing. This is just a test test test test",
                     @"SubRefd3, this function does nothing. This is just a test test test test",
                     @"SubRefd4, this function does nothing. This is just a test test test test",
                     @"SubRefd5, this function does nothing. This is just a test test test test",];
    
    
    NSArray *_refCommandd = [[NSArray alloc] init];
    _refCommandd = @[@"/SubRefd1 -f [arg] [arg]",
                     @"/SubRefd2 -d [arg]",
                     @"/SubRefd3 -help",
                     @"/SubRefd4 -vxc [arg]",
                     @"/SubRefd5 -fd [arg]",];
    
    
    NSArray *_SubRefe = [[NSArray alloc]init];
    _SubRefe = @[@"SubRefe1",
                 @"SubRefe2",
                 @"SubRefe3",
                 @"SubRefe4",
                 @"SubRefe5",];
    
    NSArray *_SubRefeDesc = [[NSArray alloc]init];
    _SubRefeDesc = @[@"SubRefe1, this function does nothing. This is just a test test test test",
                     @"SubRefe2, this function does nothing. This is just a test test test test",
                     @"SubRefe3, this function does nothing. This is just a test test test test",
                     @"SubRefe4, this function does nothing. This is just a test test test test",
                     @"SubRefe5, this function does nothing. This is just a test test test test",];

    
    NSArray *_refCommande = [[NSArray alloc] init];
    _refCommande = @[@"/SubRefe1 -f [arg] [arg]",
                     @"/SubRefe2 -d [arg]",
                     @"/SubRefe3 -help",
                     @"/SubRefe4 -vxc [arg]",
                     @"/SubRefe5 -fd [arg]",];
    
    NSString * targetRef = [[NSString alloc] init];
    NSArray * targetSubArray = [[NSArray alloc] init];
    NSArray * targetSubArraydesc = [[NSArray alloc] init];
    NSArray * targetSubArrayCommand = [[NSArray alloc] init];
    
    if([[segue identifier] isEqualToString:@"ShowDetails"]){
        
        SubTable *SubViewController = [segue destinationViewController];
        
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow ];
        
        int row = [myIndexPath row];
        targetRef = _Ref[row];
        
        if ([targetRef isEqualToString:@"SubRefa"]) {
            targetSubArray =_SubRefa;
            targetSubArraydesc = _SubRefaDesc;
            targetSubArrayCommand = _refCommanda;
            SubViewController.Refs = [[SubTable alloc]initWithReference:targetRef SubReference:targetSubArray SubRefDesc:targetSubArraydesc SubReferenceCommand:targetSubArrayCommand];
        }
        
        if ([targetRef isEqualToString:@"SubRefb"]) {
            targetSubArray =_SubRefb;
            targetSubArraydesc = _SubRefbDesc;
            targetSubArrayCommand = _refCommandb;
            SubViewController.Refs = [[SubTable alloc]initWithReference:targetRef SubReference:targetSubArray SubRefDesc:targetSubArraydesc SubReferenceCommand:targetSubArrayCommand];
        }
        
        if ([targetRef isEqualToString:@"SubRefc"]) {
            targetSubArray =_SubRefc;
            targetSubArraydesc = _SubRefcDesc;
            targetSubArrayCommand = _refCommandc;
            SubViewController.Refs = [[SubTable alloc]initWithReference:targetRef SubReference:targetSubArray SubRefDesc:targetSubArraydesc SubReferenceCommand:targetSubArrayCommand];
        }
        
        if ([targetRef isEqualToString:@"SubRefd"]) {
            targetSubArray =_SubRefd;
            targetSubArraydesc = _SubRefdDesc;
            targetSubArrayCommand = _refCommandd;
            SubViewController.Refs = [[SubTable alloc]initWithReference:targetRef SubReference:targetSubArray SubRefDesc:targetSubArraydesc SubReferenceCommand:targetSubArrayCommand];
        }
        
        if ([targetRef isEqualToString:@"SubRefe"]) {
            targetSubArray =_SubRefe;
            targetSubArraydesc = _SubRefeDesc;
            targetSubArrayCommand = _refCommande;
            SubViewController.Refs = [[SubTable alloc]initWithReference:targetRef SubReference:targetSubArray SubRefDesc:targetSubArraydesc SubReferenceCommand:targetSubArrayCommand];
        }
        
    }
}




@end
