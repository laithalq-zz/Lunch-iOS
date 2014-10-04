//
//  User.m
//  Lunch
//
//  Created by Alexander on 10/4/14.
//  Copyright (c) 2014 CalHacks. All rights reserved.
//

#import "User.h"

@implementation User

/**
 *  Updates the User's preferences
 *
 *  @param key   Preference type
 *  @param value Preference
 */
- (void)updatePreference:(NSString *)key value:(NSString *)value {
    [self.preferences setObject:value forKey:key];
}

/**
 *  Removes a preference from this User
 *
 *  @param key Preference type
 */
- (void)removePreference:(NSString *)key {
    [self.preferences removeObjectForKey:key];
}
/**
 *  Adds a friend to the User's list of friends
 *
 *  @param friend User object
 */
- (void)addFriend:(NSString *)friend {
    // Find the Parse User associated with this username.
    // Pass this argument into the friends array.
    [self.friends addObject:friend];
}

/**
 *  Removes a friend from the User's list of friends
 *
 *  @param friend User object
 */
- (void)removeFriend:(NSString *)friend {
    // Find the Parse User associated with this username.
    // Pass this argument into the friends array.
    [self.friends removeObject:friend];
}

@end
