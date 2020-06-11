//
//  main.m
//  Lab13
//
//  Created by Carlos Camacho on 2020-06-10.
//  Copyright © 2020 Carlos Camacho. All rights reserved.
//

#import <Foundation/Foundation.h>
NSString * getUserInput(int maxLenght,NSString *prompt);
NSString * stringByPigLatin(NSString * text);
Boolean startWithPig(NSString* word);
NSUInteger IndexVowel(NSString * word);
///MARK: Main
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        printf("%s\n",[stringByPigLatin(@"Kale Chips") UTF8String]);
        NSString *Userinput = getUserInput(255, @"Please enter the text to pass to Piglatin:\n");
        printf("pigLATIN:\n%s",[stringByPigLatin(Userinput) UTF8String]);
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
NSString * stringByPigLatin(NSString * text){
    NSString *pigLatin = @"";
    NSArray *tokens = [text componentsSeparatedByString:@" "];
    for(NSString *token in tokens){
        if (startWithPig(token.lowercaseString)) {
            NSString * pigWord = [NSString stringWithFormat:@"%@%@ay",[token substringWithRange:NSMakeRange((unsigned long)IndexVowel(token),[token length]-(unsigned long)IndexVowel(token))],[token substringToIndex:(unsigned long)IndexVowel(token)]];
            pigLatin = [NSString stringWithFormat:@"%@%@ ",pigLatin,pigWord.lowercaseString];
            //printf("%s ---%lu", [token UTF8String],(unsigned long)IndexVowel(token));
        }else{
            pigLatin = [NSString stringWithFormat:@"%@%@ ",pigLatin,token.lowercaseString];
        }
    }
    
    return pigLatin;
}
Boolean startWithPig(NSString* word){
    NSArray *cluster = @[@"a",@"e",@"i",@"o",@"u",@"A",@"E",@"I",@"O",@"U"];
    for (NSString *comparison in cluster) {
        if (![word hasPrefix:comparison]) {
            return true;
        }
    }
    return false;
}
NSUInteger IndexVowel(NSString * word){
    NSArray *cluster = @[@"a",@"e",@"i",@"o",@"u",@"A",@"E",@"I",@"O",@"U"];
    NSRange range;
    for (NSString *comparison in cluster) {
        range = [word rangeOfString:comparison];
        if (range.location != NSNotFound) {
            return range.location;
        }
    }
    return range.location;
}
