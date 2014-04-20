//
//  AnimalMatcher.h
//  KiwiSample
//
//  Created by suwa.yuki on 3/11/14.
//  Copyright (c) 2014 suwa.yuki. All rights reserved.
//

#import "KWMatcher.h"

@interface KWSDateMatcher : KWMatcher

@property (nonatomic, readwrite) NSInteger otherSubject;

- (void)equalMonth:(NSInteger)anObject;

@end
