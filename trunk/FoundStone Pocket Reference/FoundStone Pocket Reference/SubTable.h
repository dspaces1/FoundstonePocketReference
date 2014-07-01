//
//  SubTable.h
//  FoundStone Pocket Reference
//
//  Created by Consultant on 7/1/14.
//  Copyright (c) 2014 DiegoUrquiza. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SubTable : UITableViewController

@property(nonatomic,strong) NSArray * SubReference;
@property(nonatomic,strong) NSArray * SubRefDesc;
@property(nonatomic,strong) NSArray * SubRefCommand;
@property(nonatomic,strong) NSString * Reference;

@property(nonatomic,strong) SubTable * Refs;

-(instancetype)initWithReference:(NSString*)RefN SubReference:(NSArray*)SubRefN SubRefDesc:(NSArray*)SubRefND SubReferenceCommand:(NSArray*)SubRefC;

@end
