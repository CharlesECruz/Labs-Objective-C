//
//  Dice.h
//  Lab6
//
//  Created by happy on 2020-06-16.
//  Copyright © 2020 Carlos. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dice : NSObject
-(instancetype)init;
-(int) getValue;
-(void) setValue:(int)value;
-(void)printDice;
-(void)setValueTaken:(Boolean)isTaken;
-(Boolean) isTaken;
-(void)rollDice;
@end

NS_ASSUME_NONNULL_END
