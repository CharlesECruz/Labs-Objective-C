//
//  Question.h
//  Lab3
//
//  Created by happy on 2020-06-14.
//  Copyright © 2020 Carlos Camacho. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject

@property (nonatomic, strong) NSString * question;
@property (nonatomic) NSInteger answer;
@property (nonatomic, strong) NSDate * startTime;
@property (nonatomic, strong) NSDate * endTime;
@property (nonatomic) NSInteger rightValue;
@property (nonatomic) NSInteger leftValue;
@property (nonatomic) int Operator;
@property (nonatomic) float score;
@property (nonatomic) int totalTime;

-(NSTimeInterval) timeToAnswer;
-(NSString *)generateQuestion;
-(void) checkAnswer: (int) userAnswer;

@end

NS_ASSUME_NONNULL_END
