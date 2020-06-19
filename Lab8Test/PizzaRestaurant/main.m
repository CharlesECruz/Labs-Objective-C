//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
       
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            NSLog(@"Please pick your pizza size and toppings:");
                   
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            //NSLog(@"Input was %@", inputString);
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            NSMutableArray *myInstructions = [commandWords mutableCopy];
            PizzaSize sizePizza = [restaurantKitchen getPizzaSize:[myInstructions objectAtIndex:0]];
            [myInstructions removeObjectAtIndex:0];
            Pizza *newPizza = [[Pizza alloc]init:sizePizza andToppings:myInstructions];
            printf("%s",[[restaurantKitchen infoPizza:newPizza] UTF8String]);
            // And then send some%uessage to the kitchen...
        }

    }
    return 0;
}

