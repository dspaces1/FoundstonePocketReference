//
//  SubRefCell.m
//  FoundStone Pocket Reference
//
//  Created by Consultant on 7/1/14.
//  Copyright (c) 2014 DiegoUrquiza. All rights reserved.
//

#import "SubRefCell.h"

@implementation SubRefCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
