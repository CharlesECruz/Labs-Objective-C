//
//  AdditionQuestion.m
//  Lab3
//
//  Created by Carlos Camacho on 2020-06-09.
//  Copyright © 2020 Carlos Camacho. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion{
    NSString *_Question;
    NSString *_Answer;
}
///MARK: Constructor
-(instancetype) initQuestion{
    self = [super init];
    if (self){
        int num1 = arc4random_uniform(90)+10;
        int num2 = arc4random_uniform(90)+10;
        _Question = [self creatQuestion:num1 andNum2:num2];
        _Answer = [@(num1 + num2) stringValue];
    }
    return self;
}
///MARK: Functions
-(NSString *)creatQuestion:(int)num1  andNum2: (int) num2{
    return [NSString stringWithFormat:@"%i + %i ?\n",num1,num2];
}
-(void) getInfo{
    printf("Question: %s\nAnswer: %s\n",[_Question UTF8String],[_Answer UTF8String]);
}
-(void) getQuestion{
    printf("%s",[_Question UTF8String]);
}
-(void) getAnswer{
    printf("%s",[_Answer UTF8String]);
}

-(Boolean) checkAnswer:(NSString *) userAnswer{
    if ([userAnswer integerValue] == [_Answer integerValue ]) {
        return true;
    }else{
        return false;
    }
}
@end
