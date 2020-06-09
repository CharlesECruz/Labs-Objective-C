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
-(instancetype) initQuestion;
-(NSString *)creatQuestion:(int)num1  andNum2: (int) num2;
-(void) getInfo;
-(void) getQuestion;
-(Boolean) checkAnswer:(NSString *) userAnswer;
-(void) getAnswer;
@end

NS_ASSUME_NONNULL_END
