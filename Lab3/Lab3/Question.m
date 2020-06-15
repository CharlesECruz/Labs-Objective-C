//
//  Question.m
//  Lab3
//
//  Created by happy on 2020-06-14.
//  Copyright © 2020 Carlos Camacho. All rights reserved.
//

#import "Question.h"

@implementation Question
-(NSTimeInterval) timeToAnswer{
    return [_endTime timeIntervalSinceDate:_startTime];
}
-(id)init{
    self = [super init];
    if (self) {
        _rightValue = arc4random_uniform(90)+10;
        _leftValue =arc4random_uniform(90)+10;
    }
    return self;
}
-(NSString *)generateQuestion{
    _Operator = arc4random_uniform(4);
    switch (_Operator) {
        case 1:{
            _question = [NSString stringWithFormat:@"%i + %i ?",(int) _leftValue,(int)_rightValue];
            _answer = _leftValue +_rightValue;
            break;
        }
        case 2:{
            _question = [NSString stringWithFormat:@"%i - %i ?",(int) _leftValue,(int)_rightValue];
            _answer = _leftValue -_rightValue;
            break;
        }
        case 3:{
            _question = [NSString stringWithFormat:@"%i * %i ?",(int) _leftValue,(int)_rightValue];
            _answer = _leftValue *_rightValue;
            break;
        }
        default:{
            _question = [NSString stringWithFormat:@"%i + %i ?",(int) _leftValue,(int)_rightValue];
            _answer = _leftValue +_rightValue;
            break;
        }
    }
    return _question;
}
-(void) checkAnswer: (int) userAnswer{
    switch (_Operator) {
        case 1:{
            if ((_leftValue+_rightValue)== userAnswer) {
                <#statements#>
            }
            break;
        }
            
        default:
            break;
    }
}
@end
