//
//  Kitchen.h
//  Lab8
//
//  Created by happy on 2020-06-17.
//  Copyright © 2020 Carlos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"
#import "DeliveryDelegate.h"
NS_ASSUME_NONNULL_BEGIN


@class Kitchen;
@protocol KitchenDelegate <NSObject>
    - (BOOL) kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(pizzaSize)size andToppings:(NSArray *)toppings;
    - (BOOL) kitchenShouldUpgradeOrder:(Kitchen *)kitchen;
    - (void) kitchenDidMakePizza: (Pizza *) pizza;
@end


@interface Kitchen : NSObject
    @property (nonatomic, weak) id<KitchenDelegate> delegate;
    @property (nonatomic, weak) id<DeliveryDelegate> deliveryDelegate;
    - (Pizza *)receibeOrder: (NSArray *) instructions;
@end

NS_ASSUME_NONNULL_END
