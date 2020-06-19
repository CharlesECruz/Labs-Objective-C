//
//  Pizza.h
//  Lab8
//
//  Created by happy on 2020-06-17.
//  Copyright © 2020 Carlos. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(unsigned char, pizzaSize){
    small,
    medium,
    large,
    unknow
};

@interface Pizza : NSObject

    @property(nonatomic) pizzaSize size;
    @property(nonatomic) NSArray *toppings;

    - (instancetype)initWitSize: (pizzaSize) size andToppics: (NSArray *) toppings;
    - (pizzaSize) getSize;
    - (NSArray *) getToppings;
    - (NSString *) toString;
    -(pizzaSize) StringToPizzaSize:(NSString *)size;
@end

NS_ASSUME_NONNULL_END
