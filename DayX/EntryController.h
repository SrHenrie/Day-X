//
//  EntryController.h
//  DayX
//
//  Created by Sarah Henrie on 7/2/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"
//the job of the entry controller is to hide the complexity of
//where our entry objects are actually stored. (eg.g memory,
//cloud, hard drive, etc.)
//Specifically, it allows us to perform the CRUD actions
//C-Create
//R-Read
//U-Update
//D-Destroy

@interface EntryController : NSObject

+(EntryController *)sharedInstance;

-(void)addEntry:(Entry *)entry;

-(void)removeEntry:(Entry *)entry;

@property (strong, readonly) NSArray *entries;



@end
