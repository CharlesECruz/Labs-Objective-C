//
//  QuestionManager.m
//  Lab3
//
//  Created by Carlos Camacho on 2020-06-10.
//  Copyright © 2020 Carlos Camacho. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager{
    NSMutableArray *questions;
}
-(id)init{
    self = [super init];
    if (self) {
        questions = [NSMutableArray array];
    }
    return self;
}
@end
