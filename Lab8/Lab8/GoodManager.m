//
//  GoodManager.m
//  Lab8
//
//  Created by happy on 2020-06-18.
//  Copyright © 2020 Carlos. All rights reserved.
//

#import "GoodManager.h"
#import "Kitchen.h"
@implementation GoodManager 

- (BOOL)kitchen:(nonnull Kitchen *)kitchen shouldMakePizzaOfSize:(pizzaSize)size andToppings:(nonnull NSArray *)toppings {
    return true;
}

- (void)kitchenDidMakePizza:(nonnull Pizza *)pizza {
    printf("Congratulation, your order has been upgraded.BRAVO!!\n");
}

- (BOOL)kitchenShouldUpgradeOrder:(nonnull Kitchen *)kitchen {
    return true;
}

@end
