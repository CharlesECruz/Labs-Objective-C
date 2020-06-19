//
//  Kitchen.m
//  Lab8
//
//  Created by happy on 2020-06-17.
//  Copyright © 2020 Carlos. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)receibeOrder: (NSArray *) instructions{
    NSMutableArray *mutableInstruccions = [instructions mutableCopy];
    if([[mutableInstruccions objectAtIndex:0] isEqualToString:@"peperonni\n"]){
        return [self makePizzaWithSize:large toppings:@[@"peperonni"]];
    }else if ([[mutableInstruccions objectAtIndex:0] isEqualToString:@"meatlovers\n"]){
        return [self makePizzaWithSize:large toppings:@[@"cheese", @"bacon", @"ham", @"pepperoni"]];
    }else{
        pizzaSize size = [self checkPizzaSize:[mutableInstruccions objectAtIndex:0]];
        [mutableInstruccions removeObjectAtIndex:0];
        return [self makePizzaWithSize:size toppings:mutableInstruccions];
    }
}


-(Pizza *)makePizzaWithSize: (pizzaSize)size toppings:(NSArray *)toppings{
    Pizza *myPizza;
    if (![_delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
        printf("Order not confirmed");
        return NULL;
    }else if ([_delegate kitchenShouldUpgradeOrder:self]){
        //if answer it's possitive I must change the size
        myPizza = [[Pizza alloc] initWitSize:large andToppics:toppings];
        if ([_delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
            [_delegate kitchenDidMakePizza:myPizza];
        }
        printf("%s",[[myPizza toString] UTF8String]);
        return myPizza;
    }else{
        //otherwise I do the same pizza
        myPizza = [[Pizza alloc] initWitSize:size andToppics:toppings];
        if ([_delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
            [_delegate kitchenDidMakePizza:myPizza];
        }
        printf("%s",[[myPizza toString] UTF8String]);
        return myPizza;
    }
    
}

-(NSString *) pizzaSizeToString:(pizzaSize)size{
    switch (size) {
        case small: return @"small";
        case medium: return @"medium";
        case large: return @"large";
        default: return @"Unknow Size";
    }
}
-(pizzaSize) checkPizzaSize:(NSString *) sizeString{
    if([[sizeString lowercaseString] isEqualToString:@"small"]){
        return small;
    }else if ([[sizeString lowercaseString] isEqualToString:@"medium"]){
        return medium;
    }else if ([[sizeString lowercaseString] isEqualToString:@"large"]){
        return large;
    }else{
        return unknow;
    }
        
}
@end
