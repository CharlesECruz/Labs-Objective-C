//
//  DeliveryDelegate.h
//  Lab8
//
//  Created by happy on 2020-06-18.
//  Copyright © 2020 Carlos. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DeliveryDelegate <NSObject>
    -(void)deliverPizza:(Pizza *)pizza;
@optional
-(NSArray *)pizzaDescription;
@end

NS_ASSUME_NONNULL_END
