//
//  User.h
//  Lunch
//
//  Created by Alexander on 10/4/14.
//  Copyright (c) 2014 CalHacks. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (nonatomic, strong) NSString *username;
@property (nonatomic, strong) NSMutableArray *friends;
@property (nonatomic, strong) NSMutableDictionary *preferences;

- (void)updatePreference:(NSString *)key value:(NSString *)value;
- (void)removePreference:(NSString *)key;

- (void)addFriend:(NSString *)friend;
- (void)removeFriend:(NSString *)friend;

@end
