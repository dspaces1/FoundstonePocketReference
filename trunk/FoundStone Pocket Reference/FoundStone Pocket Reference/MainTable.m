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
    
    _Ref = [[NSMutableArray alloc]init];
    _RefXML = [[TBXML alloc] initWithXMLFile:@"References.xml" error:nil];
    
    
    TBXMLElement * rootElement1 = _RefXML.rootXMLElement;
    TBXMLElement *reference = [TBXML childElementNamed:@"Reference" parentElement:rootElement1];
    
    
    //Go through all child elements of the main root in the xml file and store them in an array
    do{
        NSString *refName = [TBXML valueOfAttributeNamed:@"name" forElement:reference];
        NSLog(@"%@",refName);
        [_Ref addObject:refName];
        
    }while((reference=reference->nextSibling));
    
    
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



-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    
    NSString * targetRef = [[NSString alloc] init];

    
    if([[segue identifier] isEqualToString:@"ShowDetails"]){
        
        SubTable *SubViewController = [segue destinationViewController];
        
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow ];
        
        //check which row the user slected
        int row = [myIndexPath row];
        targetRef = _Ref[row];
        

        //Set up root element of xml file and its first chile
        TBXMLElement * rootElement1 = _RefXML.rootXMLElement;
        TBXMLElement *reference = [TBXML childElementNamed:@"Reference" parentElement:rootElement1];
       
        NSMutableArray *_SubRef = [[NSMutableArray alloc]init];
        NSMutableArray *_SubRefDes = [[NSMutableArray alloc]init];
        NSMutableArray *_refCommand = [[NSMutableArray alloc] init];
        
        do{ // go through every Reference child
            NSString *refName = [TBXML valueOfAttributeNamed:@"name" forElement:reference];
            
            //if the name the user picked is a Reference child in xml file, set it as a parent
            if ([targetRef isEqualToString:refName]) {
                
                TBXMLElement *subReference = [TBXML childElementNamed:@"SubReference" parentElement:reference];
                
                //go through elements of the user selected Reference and store them into arrays
                do{
                    NSString *subRefName = [TBXML valueOfAttributeNamed:@"name" forElement:subReference];
                    [_SubRef addObject:subRefName];
                   
                    
                    TBXMLElement *descriptions = [TBXML childElementNamed:@"Description" parentElement:subReference];
                    NSString *descriptionString = [TBXML textForElement:descriptions];
                    [_SubRefDes addObject:descriptionString];

                    
                    TBXMLElement *command = [TBXML childElementNamed:@"command" parentElement:subReference];
                    NSString * commandString = [TBXML textForElement:command];
                    [_refCommand addObject:commandString];
                  
                    
                }while((subReference = subReference->nextSibling));
                
                break;
            }
            
            
        }while((reference=reference->nextSibling));
        
        //Initialize a class object from SubTable in order to pass along data
        SubViewController.Refs = [[SubTable alloc]initWithReference:targetRef SubReference:_SubRef SubRefDesc:_SubRefDes SubReferenceCommand:_refCommand];
        
    }
}




@end
