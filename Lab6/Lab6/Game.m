//
//  Game.m
//  Lab6
//
//  Created by happy on 2020-06-16.
//  Copyright © 2020 Carlos. All rights reserved.
//

#import "Game.h"
#import "Dice.h"
@implementation Game{
    NSMutableArray *_dices;
    int _reRoll;
    int _maxReRoll;
    int _score;
    
}
-(instancetype)init:(int)dices maxReRoll:(int) maxRoll{
    self = [super init];
    if (self){
        _dices = [[NSMutableArray alloc] init];
        _reRoll = maxRoll;
        _maxReRoll = maxRoll;
        _score = 0;
        [self setDices:dices];
    }
    return self;
}
-(void)setDices:(int) numDices{
    for (int i = 0; i < numDices; i++) {
       Dice * dice = [[Dice alloc] init];
        [_dices addObject:dice];
    }
}
-(void)setScore{
    int score = 0;
    for(Dice *myDice in _dices){
        if ([myDice isTaken]) {
            score += [myDice getValue];
        }
    }
    _score = score;
    printf("Your scores is: %i \n",_score);
}
-(void)printDices{
    for(Dice *myDice in _dices){
        [myDice printDice];
    }
    printf("\n");
}
-(void)hold{
    int indexDice;
    printf("Write the index od the dice:");
    scanf("%i",&indexDice);
    printf("%d", indexDice);
    [[_dices objectAtIndex:indexDice-1] setValueTaken:true];
}
-(void)un_hold{
    int indexDice;
    printf("Write the index od the dice:");
    scanf("%i",&indexDice);
    printf("%d", indexDice);
    [[_dices objectAtIndex:indexDice-1] setValueTaken:false];
}
-(void)reset{
    NSLog(@"\nGAME RESET\n");
    int numDice = (int)[_dices count];
    _dices = [[NSMutableArray alloc] init];
    _reRoll = 0;
    [self setDices:numDice];
}
-(void)reRoll{
    for(Dice *myDice in _dices){
        [myDice rollDice];
    }
    _reRoll--;
}
-(void)rolll{
    for(Dice *myDice in _dices){
        [myDice setValue:1];
        [myDice setValueTaken:true];
        _reRoll = -1;
    }
}
-(void)start{
    int option;
    
    while (_reRoll > 0) {
        printf("Number of time to re-roll: %d \n",_reRoll);
        [self setScore];
        [self printDices];
        printf("Write the number:\n1.hold : keep the value of the dice\n2.un-hold : turn a dice hold to un-hold\n3.roll: Roll the dices\n4.reset : reset all dices\nWhat do you want to do? cof cof press 5 to win");
        scanf("%i",&option);
        switch (option) {
            case 1:
                [self hold];
                break;
            case 2:
                [self un_hold];
                break;
            case 3:
                [self reRoll];
                break;
            case 4:
                [self reset];
                break;
            case 5:
                [self rolll];
                break;
            default:
                break;
        }
    }
    printf("\n\nGAME OVER\n\n");
    for(Dice *myDice in _dices){
        [myDice setValueTaken:true];
    }
    [self printDices];
    [self setScore];
}

NSString * getUserInput(int maxLenght){
    if(maxLenght < 1){
        maxLenght = 255;
    }
    char inputChars[maxLenght];
    char *result = fgets(inputChars, maxLenght, stdin);
    if(result != NULL){
        return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    }
    return NULL;
}
@end
