//
//  NSObject+PigLatin.m
//  Lab13
//
//  Created by Carlos Camacho on 2020-06-10.
//  Copyright © 2020 Carlos Camacho. All rights reserved.
//

#import "NSObject+PigLatin.h"


@implementation NSString (PigLatin)
-(Boolean) startWithPig:(NSString*) word{
    NSArray *cluster = @[@"a",@"e",@"i",@"o",@"u",@"A",@"E",@"I",@"O",@"U"];
    for (NSString *comparison in cluster) {
        if (![word hasPrefix:comparison]) {
            return true;
        }
    }
    return false;
}
-(NSString *) stringByPigLatin:(NSString *) text{
    NSString *pigLatin = @"";
    NSArray *tokens = [text componentsSeparatedByString:@" "];
    for(NSString *token in tokens){
        
        if ([self startWithPig:token.lowercaseString]) {
            NSString * pigWord = [NSString stringWithFormat:@"%@%@ay",[token substringWithRange:NSMakeRange([self IndexVowel:token],[token length]-[self IndexVowel:token])],[token substringToIndex:[self IndexVowel:token]]];
            pigLatin = [NSString stringWithFormat:@"%@%@ ",pigLatin,pigWord.lowercaseString];
            //printf("%s ---%lu", [token UTF8String],(unsigned long)IndexVowel(token));
        }else{
            pigLatin = [NSString stringWithFormat:@"%@%@ ",pigLatin,token.lowercaseString];
        }
    }
    
    return pigLatin;
}

-(NSUInteger) IndexVowel:(NSString *) word{
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
@end
