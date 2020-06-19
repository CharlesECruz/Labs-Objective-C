//
//  DeliveryService.m
//  Lab8
//
//  Created by happy on 2020-06-18.
//  Copyright © 2020 Carlos. All rights reserved.
//

#import "DeliveryService.h"
#import "DeliveryCar.h"
#import "Pizza.h"
@implementation DeliveryService{
    DeliveryCar * _restaurantCar;
}
- (instancetype)init{
    self = [super init];
    if (self) {
        _restaurantCar = [DeliveryCar new];
        _pizzasDone = [NSMutableArray new];
    }
    return self;
}

- (void) deliverPizza:(Pizza *)pizza {
    [_pizzasDone addObject:pizza];
    [_restaurantCar deliverPizza:pizza];
}

- (NSArray *)pizzaDescription{
    return _pizzasDone;
}

@end
