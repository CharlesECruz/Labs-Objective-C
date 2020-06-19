//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"
@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings{
    Pizza *myPizza;
    NSlog(@"topping: %@",[toppings objectAtIndex: 0]);
    if([[toppings objectAtIndex: 0]isEqualToString: @"peperonni"]){
        myPizza = [[[Pizza alloc] init] init:size andToppings:@[@"peperonni"]];
    }else if ([[toppings objectAtIndex: 0]isEqualToString:@"meatlovers"]){
        myPizza = [[[Pizza alloc] init] init:size andToppings:@[@"cheese", @"bacon", @"ham", @"pepperoni"]];
    }else{
        myPizza = [[[Pizza alloc] init] init:size andToppings:toppings];
    }
    return myPizza;
}
-(PizzaSize)getPizzaSize:(NSString *) size{
    Pizza *myPizza = [[Pizza alloc] init];
    return [myPizza stringToPizzaSize:size];
}
-(NSString *)infoPizza:(Pizza*)pizza{
    return [pizza toSring];
}

@end
