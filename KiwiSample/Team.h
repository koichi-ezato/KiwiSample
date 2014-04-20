//
//  Team.h
//  KiwiSample
//
//  Created by suwa.yuki on 3/9/14.
//  Copyright (c) 2014 suwa.yuki. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Team : NSObject

+(instancetype)teamWithName:(NSString*)name;

@property (nonatomic, assign) NSString *name;
@property (nonatomic, assign) NSArray *players;

@end
