//
//  AdditionQuestion.m
//  Lab3
//
//  Created by Carlos Camacho on 2020-06-09.
//  Copyright © 2020 Carlos Camacho. All rights reserved.
//

#import "AdditionQuestion.h"
#import "QuestionManager.h"
@implementation AdditionQuestion{
    NSString *_Question;
    NSString *_Answer;
    NSDate *_startTime;
    NSDate *_endTime;
    
}
///MARK: Constructor
-(instancetype) initQuestion: (QuestionManager *) questions{
    self = [super init];
    if (self){
        int num1 = arc4random_uniform(90)+10;
        int num2 = arc4random_uniform(90)+10;
        _Question = [self creatQuestion:num1 andNum2:num2];
        _Answer = [@(num1 + num2) stringValue];
        _startTime=[NSDate date];
    }
    self.
    [questions addObject: @(self)];
    return self;
}
///MARK: Functions
-(NSString *)creatQuestion:(int)num1  andNum2: (int) num2{
    return [NSString stringWithFormat:@"%i + %i ?\n",num1,num2];
}
-(void) getInfo{
    printf("Question: %s\nAnswer: %s\n",[_Question UTF8String],[_Answer UTF8String]);
}
-(NSString *) getQuestion{
    return _Question;
}
-(NSString *) getAnswer{
    return _Answer;
}

-(Boolean) checkAnswer:(NSString *) userAnswer{
    if ([userAnswer integerValue] == [_Answer integerValue ]) {
        return true;
    }else{
        return false;
    }
}
-(void) setEndTime{
    _endTime=[NSDate date];
    NSInteger timeAdd = [_endTime timeIntervalSinceDate:_startTime];
}
-(int) getTimer{
    /*NSString *textReturn = [NSString stringWithFormat:@"Total time: %f Average time: %i\n",[_endTime timeIntervalSinceDate:_startTime],[self getAverageTime]];*/
    NSInteger time = [_endTime timeIntervalSinceDate:_startTime];
    return (int)time;
}
-(int)differenceTime{
    return [_endTime timeIntervalSinceDate:_startTime];
}
@end
