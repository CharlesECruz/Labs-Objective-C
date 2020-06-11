//
//  AdditionQuestion.h
//  Lab3
//
//  Created by Carlos Camacho on 2020-06-09.
//  Copyright © 2020 Carlos Camacho. All rights reserved.
//

#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN

@interface AdditionQuestion : NSObject
-(id) init;
-(NSString *)creatQuestion:(int)num1  andNum2: (int) num2;
-(void) getInfo;
-(NSString *) getQuestion;
-(Boolean) checkAnswer:(NSString *) userAnswer;
-(NSString *) getAnswer;
-(void) setEndTime;
-(int) getTimer;
-(int)answerTime;
@end

NS_ASSUME_NONNULL_END
