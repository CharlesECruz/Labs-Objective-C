//
//  main.m
//  Lab13
//
//  Created by Carlos Camacho on 2020-06-10.
//  Copyright © 2020 Carlos Camacho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+PigLatin.h"
NSString * getUserInput(int maxLenght,NSString *prompt);
///MARK: Main
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString * test = @"Kale Chips";
        printf("%s\n",[[test stringByPigLatin:test] UTF8String]);
        NSString *Userinput = getUserInput(255, @"Please enter the text to pass to Piglatin:\n");
        printf("pigLATIN:\n%s",[[Userinput stringByPigLatin:Userinput] UTF8String]);
    }
    return 0;
}
///MARK:Functions
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

