//
//  EntryController.m
//  DayX
//
//  Created by Sarah Henrie on 7/2/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "EntryController.h"

static NSString *const AllEntriesKey = @"allEntries";

@interface EntryController ()
@property (strong, nonatomic) NSArray *entries;
@end

@implementation EntryController

+(EntryController *)sharedInstance{
    static EntryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [EntryController new];
        
        [sharedInstance loadFromPersistentStorage];
    });
    return sharedInstance;
}




-(instancetype)init{
    self = [super init];
    if (self) {
        self.entries = [NSArray new];
    }
    return self;
}
-(void)addEntry:(Entry *)entry{
   //saving to hard disk? Icloud? This is where you would do it. For now we'll just store them in our entries array (Memory)
    self.entries = [self.entries arrayByAddingObject:entry];
}
-(void)removeEntry:(Entry *)entry{
    self.entries = [self.entries remo
}



@end
