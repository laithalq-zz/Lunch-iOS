//
//  Search.m
//  Lunch
//
//  Created by Alexander on 10/4/14.
//  Copyright (c) 2014 CalHacks. All rights reserved.
//

#import "Search.h"

@implementation Search

/**
 *  Broadcasts to other Users to look for a match
 */
- (void)broadcast {
    int timer = 100;
    self.mainUser.status = YES;
    while (timer > 0) {
        for (User *friend in [self.mainUser.friends]) {
            
            PFQuery *query = [PFQuery queryWithClassName:@"_User"];
            if (friend.username) {
                [query whereKey:@"username" equalTo:friend.username];
            }
            
            [query getFirstObjectInBackgroundWithBlock:^(PFObject *object, NSError *error) {
                if (object[@"status"] == @"YES") {
                    NSLog(@"Successfully retrieved the object.");
                    [self.delegate matchFound:object.objectId];
                    self.mainUser.status = NO;
                    return;
                }
            }];
        }
        timer -= 1;
    }
    self.mainUser.status = NO;
    [self.delegate userSearchFailed];
    return;
}

/**
 *  Finds a restaurant for two Users to meet
 *
 */
- (void)findRestaurant {
    NSDictionary *filter = [[NSDictionary alloc] init];
    NSDictionary *mainPreferences = self.mainUser.preferences;
    NSDictionary *otherPreferences = self.otherUser.preferences;
    
    for (NSString *key in [mainPreferences allKeys]) {
        NSString *preference = [mainPreferences objectForKey:key];
        if ([otherPreferences objectForKey:key] == preference) {
            [filter setValue:preference forKey:key];
        }
    }
    
    // Perform a Yelp Query here.
    return true;
}

@end
