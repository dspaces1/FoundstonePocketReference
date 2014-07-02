//
//  MainTable.h
//  FoundStone Pocket Reference
//
//  Created by Consultant on 6/30/14.
//  Copyright (c) 2014 DiegoUrquiza. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TBXML.h"
@interface MainTable : UITableViewController

@property(nonatomic,strong) NSMutableArray * Ref;
@property(nonatomic,strong) TBXML *RefXML;

@end
