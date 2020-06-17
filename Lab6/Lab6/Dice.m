//
//  Dice.m
//  Lab6
//
//  Created by happy on 2020-06-16.
//  Copyright © 2020 Carlos. All rights reserved.
//

#import "Dice.h"

@implementation Dice{
    int _value;
    Boolean _taken;
}
-(instancetype)init{
    self= [super init];
    if (self) {
        _value = arc4random_uniform(6)+1;
        _taken = false;
    }
    return self;
}
-(void)setValueTaken:(Boolean)isTaken{
    _taken = isTaken;
}
-(Boolean) isTaken{
    return _taken;
}
-(int) getValue{
    return _value;
}
-(void) setValue:(int)value{
    _value = value;
}
-(void)printDice{
    if (_taken) {
        switch (_value) {
            case 1:
                printf("[⚀-1] ");
                break;
            case 2:
                printf("[⚁-2] ");
                break;
            case 3:
                printf("[⚂-3] ");
                break;
            case 4:
                printf("[⚃-4] ");
                break;
            case 5:
                printf("[⚄-5]");
                break;
            case 6:
                printf("[⚅-6]");
                break;
            default:
                printf("[%i]",_value);
                break;
        }
    }else{
        switch (_value) {
            case 1:
                printf("⚀-1 ");
                break;
            case 2:
                printf("⚁-2 ");
                break;
            case 3:
                printf("⚂-3 ");
                break;
            case 4:
                printf("⚃-4 ");
                break;
            case 5:
                printf("⚄-5 ");
                break;
            case 6:
                printf("⚅-6 ");
                break;
            default:
                printf("%i",_value);
                break;
        }
    }
}
-(void)rollDice{
    if (!_taken) {
        _value = arc4random_uniform(6)+1;
    }
}
@end
