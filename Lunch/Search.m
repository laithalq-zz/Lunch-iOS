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
    int timer = 300;
    while (!self.otherUser || timer == 0) {
        User *user = [self findUser];
        self.otherUser = user;
        [NSThread sleepForTimeInterval:1.0f];
        timer -= 1;
    }
    if (self.otherUser) {
        [self makeConnection];
    } else {
        // Notify that the broadcast failed
    }
}

/**
 *  Finds a restaurant for two Users to meet
 *
 *  @return True if a restaurant is found
 */
- (BOOL)findRestaurant {
    NSDictionary *filter = [[NSDictionary alloc] init];
    NSDictionary *mainPreferences = self.mainUser.preferences;
    NSDictionary *otherPreferences = self.otherUser.preferences;
    
    for (NSString *key in [mainPreferences allKeys]) {
        NSString *preference = [mainPreferences objectForKey:key];
        if ([otherPreferences objectForKey:key] == preference) {
            [filter setValue:preference forKey:key];
        }
    }
    
    return true;
}

/**
 *  Create the connection between the Search's two Users.
 */
- (void)makeConnection {
    // Connect
    [self findRestaurant];
}

/**
 *  Finds a user from the broadcasts
 *
 *  @return The matched user.
 */
- (User *)findUser {
    return nil;
}

@end
