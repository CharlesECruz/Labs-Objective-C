//
//  DeliveryService.h
//  Lab8
//
//  Created by happy on 2020-06-18.
//  Copyright © 2020 Carlos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DeliveryCar.h"
#import "DeliveryDelegate.h"
NS_ASSUME_NONNULL_BEGIN

@interface DeliveryService : NSObject<DeliveryDelegate>


@property NSMutableArray * pizzasDone;
-(void)deliverPizza:(Pizza *)pizza;
-(NSArray *) pizzaDescription;
@end

NS_ASSUME_NONNULL_END
