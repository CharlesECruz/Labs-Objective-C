//
//  QuestionManager.h
//  Lab3
//
//  Created by Carlos Camacho on 2020-06-10.
//  Copyright © 2020 Carlos Camacho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
NS_ASSUME_NONNULL_BEGIN

@interface QuestionManager : NSObject
-(id)init;
-(void) addQuestion:(AdditionQuestion *) question;
-(NSString *) timeOutput;
@end

NS_ASSUME_NONNULL_END
