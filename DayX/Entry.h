//
//  Entry.h
//  DayX
//
//  Created by Sarah Henrie on 7/2/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Entry : NSObject
@property (nonatomic, strong)NSString *title;
@property (nonatomic, strong)NSString *entryText;
@property (nonatomic, strong)NSDate *timeStamp;

@end
