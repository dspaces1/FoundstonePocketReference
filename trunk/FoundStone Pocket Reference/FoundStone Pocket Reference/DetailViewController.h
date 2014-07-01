//
//  DetailViewController.h
//  FoundStone Pocket Reference
//
//  Created by Consultant on 7/1/14.
//  Copyright (c) 2014 DiegoUrquiza. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property(nonatomic,strong) IBOutlet UILabel * titleLabel;
@property(nonatomic,strong) IBOutlet UILabel * descriptionLabel;
@property(nonatomic,strong) IBOutlet UILabel * commandLabel;

@property(nonatomic,strong) NSArray * detailView;

@end
