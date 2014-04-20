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

describe(@"teamWithName:", ^{
    context(@"引数がある場合", ^{
        it(@"nameが「テストチーム」であること", ^{
            Team *team = [Team teamWithName:@"テストチーム"];
            [[team.name should] equal:@"テストチーム"];
        });
        it(@"nameが空ではないこと", ^{
            Team *team = [Team teamWithName:@"テストチーム"];
            [[team.name shouldNot] beNil];
        });
    });
    context(@"引数がない場合", ^{
        it(@"nameが空であること", ^{
            Team *team = [Team teamWithName:nil];
            [[team.name should] beNil];
        });
    });
});

SPEC_END