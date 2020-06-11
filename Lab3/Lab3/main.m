//
//  main.m
//  Lab3
//
//  Created by Carlos Camacho on 2020-06-09.
//  Copyright © 2020 Carlos Camacho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "QuestionManager.h"

extern int right = 0;
extern int wrong = 0;
void score(void);
NSString * getUserInput(int maxLenght,NSString *prompt);
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        QuestionManager *questions = [[QuestionManager alloc] init];
        NSString *input = @"";
        while (![input.lowercaseString isEqualToString:@"quite\n"]) {
            AdditionQuestion *newQuestion= [[AdditionQuestion alloc] init];
            printf("%s", [[newQuestion getQuestion] UTF8String]);
            input = getUserInput(255, @"Enter your answer:\n");
            [newQuestion setEndTime];
            [questions addQuestion:newQuestion];
            if([newQuestion checkAnswer:input]){
                printf("Right!\n");
                right++;
            }else if(![input.lowercaseString isEqualToString:@"quite\n"]){
                printf("Wrong!\n");
                wrong++;
            }
            printf("%s\n", [[questions timeOutput] UTF8String]);
            score();
        }
        
    }
    return 0;
}


//MARK: functions
NSString * getUserInput(int maxLenght,NSString *prompt){
    if(maxLenght < 1){
        maxLenght = 255;
    }
    printf("%s",[prompt UTF8String]);
    char inputChars[maxLenght];
    char *result = fgets(inputChars, maxLenght, stdin);
    if(result != NULL){
        return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    }
    return NULL;
}
void score(void){
    printf("Your final score is:\nRight:%i Wrong:%i ---%i\n", right,wrong,(right*100)/(right+wrong));
    
}
