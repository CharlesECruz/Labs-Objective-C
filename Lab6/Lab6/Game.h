//
//  Game.h
//  Lab6
//
//  Created by happy on 2020-06-16.
//  Copyright © 2020 Carlos. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Game : NSObject
-(instancetype)init:(int)dices maxReRoll:(int) maxRoll;
-(void)setDices:(int) numDices;
-(void)printDices;
-(void)start;

@end

NS_ASSUME_NONNULL_END
