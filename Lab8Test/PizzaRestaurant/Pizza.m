//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by happy on 2020-06-17.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza
-(instancetype)init:(PizzaSize) size andToppings:(NSArray *)toppings{
    self= [super init];
    if (self) {
        _size = size;
        _topping = toppings;
    }
    return self;
}

-(PizzaSize)getSize{
    return _size;
}

-(NSArray *)getToppings{
    return _topping;
}
-(PizzaSize)stringToPizzaSize:(NSString *)size{
    [size lowercaseString];
    if([size isEqualToString:@"small"]){
        return small;
    }else if ([size isEqualToString:@"medium"]){
        return medium;
    }else if ([size isEqualToString:@"large"]){
        return large;
    }else {
        return unknow;
    }
}
-(NSString *)toSring{
    return [NSString stringWithFormat:@"Your pizza is:\nSize: %@ \nToppings: %@ \n",[self enumSizeToString: _size],_topping];
}



- (NSString*) enumSizeToString:(PizzaSize) size {
    switch(size) {
        case small:  return @"small";  break;
        case medium: return @"medium"; break;
        case large:  return @"large";  break;
        default:     return @"wrong size";
    }
}
@end
