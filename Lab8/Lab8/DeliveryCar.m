//
//  DeliveryCar.m
//  Lab8
//
//  Created by happy on 2020-06-18.
//  Copyright © 2020 Carlos. All rights reserved.
//

#import "DeliveryCar.h"
#import "Pizza.h"
@implementation DeliveryCar
-(void)deliverPizza:(Pizza *)pizza{
    printf("%s is delivered\n",[[pizza toString]UTF8String]);
}
@end
