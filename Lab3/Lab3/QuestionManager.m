//
//  QuestionManager.m
//  Lab3
//
//  Created by Carlos Camacho on 2020-06-10.
//  Copyright © 2020 Carlos Camacho. All rights reserved.
//

#import "QuestionManager.h"
#import "AdditionQuestion.h"
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
-(void) addQuestion:(AdditionQuestion *) question{
    [questions addObject:question];
}
-(NSString *) timeOutput{
    int sum = 0;
    for (AdditionQuestion *question in questions) {
        sum += [question answerTime];
    }
    return [NSString stringWithFormat:@"total time: %is, average time:%lus\n",sum,sum/[questions count]];
}
@end
