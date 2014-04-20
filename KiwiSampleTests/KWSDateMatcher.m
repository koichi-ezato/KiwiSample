//
//  AnimalMatcher.m
//  KiwiSample
//
//  Created by suwa.yuki on 3/11/14.
//  Copyright (c) 2014 suwa.yuki. All rights reserved.
//

#import "KWSDateMatcher.h"

@implementation KWSDateMatcher

// マッチャーのメソッド名を登録する
+ (NSArray *)matcherStrings {
    return [NSArray arrayWithObjects:@"equalMonth:", nil];
}

// 評価の処理を実装する
- (BOOL)evaluate {
    NSCalendar* calendar = [NSCalendar currentCalendar];
    NSDateComponents* components = [calendar components:NSMonthCalendarUnit fromDate:self.subject];
    NSInteger expect = (int)components.month;
    return expect == self.otherSubject;
}

// shoudマクロの場合のテスト失敗時のメッセージ
- (NSString *)failureMessageForShould {
    return @"期待値と異なる";
}

// shoudNotマクロの場合のテスト失敗時のメッセージ
- (NSString *)failureMessageForShouldNot {
    return @"期待値と同一";
}

// マッチャーのメソッド
- (void)equalMonth:(NSInteger)anObject {
    self.otherSubject = anObject;
}

@end
