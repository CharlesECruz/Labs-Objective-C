//
//  main.m
//  Lab6
//
//  Created by happy on 2020-06-16.
//  Copyright © 2020 Carlos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Game.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Game * myGame = [[Game alloc] init];
        [myGame init:5 maxReRoll:5];
        [myGame start];
    
    }
    return 0;
}
