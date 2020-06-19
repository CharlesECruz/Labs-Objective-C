//
//  MeanManager.m
//  Lab8
//
//  Created by happy on 2020-06-18.
//  Copyright © 2020 Carlos. All rights reserved.
//

#import "MeanManager.h"

@implementation MeanManager

- (BOOL)kitchen:(nonnull Kitchen *)kitchen shouldMakePizzaOfSize:(pizzaSize)size andToppings:(nonnull NSArray *)toppings {
    return ([toppings containsObject:@"anchovies"])?false:true;
}

- (void)kitchenDidMakePizza:(nonnull Pizza *)pizza {
    printf("I' mad, your order is the same\n");
}

- (BOOL)kitchenShouldUpgradeOrder:(nonnull Kitchen *)kitchen {
    return false;
}

@end
