//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by happy on 2020-06-17.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef enum {
    small,
    medium,
    large,
    unknow
}PizzaSize;

@interface Pizza : NSObject
    @property(nonatomic)PizzaSize size;
    @property(nonatomic)NSArray *topping;


-(instancetype)init:(PizzaSize) size andToppings:(NSArray *)toppings;
-(PizzaSize)getSize;
-(NSArray *)getToppings;
-(NSString *)toSring;
-(PizzaSize)stringToPizzaSize:(NSString *)size;
@end

NS_ASSUME_NONNULL_END
