//
//  NSObject+PigLatin.h
//  Lab13
//
//  Created by Carlos Camacho on 2020-06-10.
//  Copyright © 2020 Carlos Camacho. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (PigLatin)
-(NSString *) stringByPigLatin:(NSString *) text;
-(Boolean) startWithPig:(NSString*) word;
-(NSUInteger) IndexVowel:(NSString *) word;
@end

NS_ASSUME_NONNULL_END
