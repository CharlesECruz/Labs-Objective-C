//
//  Pizza.m
//  Lab8
//
//  Created by happy on 2020-06-17.
//  Copyright © 2020 Carlos. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWitSize: (pizzaSize) size andToppics: (NSArray *) toppings{
    self = [super init];
        if (self) {
            _size = size;
            _toppings = toppings;
        }
    return self;
}
- (pizzaSize) getSize{
    return _size;
}
- (NSArray *) getToppings{
    return _toppings;
}
-(NSString *) toString{
    return [NSString stringWithFormat:@"Your pizza is:\nSize: %@ \nToppings:%@",[self pizzaSizeToString:_size],_toppings];
}
-(NSString *) pizzaSizeToString:(pizzaSize)size{
    switch (size) {
        case small: return @"small";
        case medium: return @"medium";
        case large: return @"large";
        default: return @"Unknow Size";
    }
}
-(pizzaSize) StringToPizzaSize:(NSString *)size{
    if ([[size lowercaseString] isEqualToString:@"small"]) {
        return small;
    }
    if ([[size lowercaseString] isEqualToString:@"medium"]) {
        return medium;
    }
    if ([[size lowercaseString] isEqualToString:@"large"]) {
        return large;
    }
    return unknow;
}

@end
