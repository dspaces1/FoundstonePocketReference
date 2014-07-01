//
//  DetailViewController.m
//  FoundStone Pocket Reference
//
//  Created by Consultant on 7/1/14.
//  Copyright (c) 2014 DiegoUrquiza. All rights reserved.
//

#import "DetailViewController.h"
#import "SubTable.h"
@interface DetailViewController ()

@end

@implementation DetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _titleLabel.text = _detailView[0];
    _descriptionLabel.text =_detailView[1];
    _commandLabel.text = _detailView[2];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
