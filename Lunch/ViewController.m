//
//  ViewController.m
//  Lunch
//
//  Created by Laith Alqaisi on 10/4/14.
//  Copyright (c) 2014 CalHacks. All rights reserved.
//

#import "ViewController.h"
#import "DraggableViewBackground.h"


@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    DraggableViewBackground *draggableBackground = [[DraggableViewBackground alloc]initWithFrame:self.view.frame];
    [self.view addSubview:draggableBackground];
     
}

@end
