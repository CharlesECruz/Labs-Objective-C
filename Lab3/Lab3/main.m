//
//  main.m
//  Lab3
//
//  Created by Carlos Camacho on 2020-06-09.
//  Copyright © 2020 Carlos Camacho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
NSString * getUserInput(int maxLenght,NSString *prompt);
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int right = 0;
        int wrong = 0;
        NSString *input = @"";
        while (![input.lowercaseString isEqualToString:@"quite\n"]) {
            AdditionQuestion *question= [[AdditionQuestion alloc] initQuestion];
            question.getQuestion;
            input = getUserInput(255, @"Enter your answer:\n");
            //User input
            //printf("input %s", [input UTF8String]);
            if([question checkAnswer:input]){
                printf("Right!\n");
                right++;
            }else if(![input.lowercaseString isEqualToString:@"quite\n"]){
                printf("Wrong!\n");
                wrong++;
            }
        }
        printf("Your final score is:\nRight:%i\nWrong:%i\n", right,wrong);
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
