//
//  Search.h
//  Lunch
//
//  Created by Alexander on 10/4/14.
//  Copyright (c) 2014 CalHacks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@protocol ParseDelegate <NSObject>

- (void)matchFound:(NSString *)objectId;

- (void)userSearchFailed;

@end

@interface Search : NSObject

@property (weak) id <ParseDelegate> delegate;

@property (nonatomic, strong) User *mainUser;
@property (nonatomic, strong) User *otherUser;

- (void)broadcast;
- (void)findRestaurant;

@end
