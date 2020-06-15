//
//  SubtractionQuestion.m
//  Lab3
//
//  Created by happy on 2020-06-14.
//  Copyright © 2020 Carlos Camacho. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion
-(instancetype)init{
    if(self =[super init]){
        [self generateQuestion];
    }
    return self;
}
@end
