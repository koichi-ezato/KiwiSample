//
//  TeamTests.m
//  KiwiSample
//
//  Created by suwa.yuki on 3/9/14.
//  Copyright (c) 2014 suwa.yuki. All rights reserved.
//

#import "Kiwi.h"
#import "Team.h"

SPEC_BEGIN(TeamSpec)

describe(@"NSUserDefaults", ^{
    describe(@"stringForKey:の場合", ^{
        it(@"nameは「Sample」であること", ^{
            NSArray *array = [NSArray arrayWithObject:@"foo"];
            [[[array should] have:1] items];
            
//            Car *car = [Car car];
//            [car setPassengers:[NSArray arrayWithObjects:@"Eric", "Stan", nil]];
//            [[[[car passengers] should] haveAtLeast:2] items];
//            [[[car should] haveAtLeast:2] passengers];
        });
    });
});

SPEC_END