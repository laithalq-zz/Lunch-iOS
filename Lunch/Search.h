//
//  Search.h
//  Lunch
//
//  Created by Alexander on 10/4/14.
//  Copyright (c) 2014 CalHacks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface Search : NSObject

@property (nonatomic, strong) User *mainUser;
@property (nonatomic, strong) User *otherUser;

- (void)broadcast;
- (BOOL)findRestaurant;

@end
