//
//  Team.m
//  KiwiSample
//
//  Created by suwa.yuki on 3/9/14.
//  Copyright (c) 2014 suwa.yuki. All rights reserved.
//

#import "Team.h"

@implementation Team

+(instancetype)teamWithName:(NSString*)aName;
{
    Team *team = [[self alloc] init];
    team.name = aName;
    return team;
}

@end
