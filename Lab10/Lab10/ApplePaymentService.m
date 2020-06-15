//
//  ApplePaymentService.m
//  LabTest
//
//  Created by happy on 2020-06-13.
//  Copyright © 2020 Carlos. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService
- (void)processPaymentAmount:(nonnull NSInteger *) payment {
    printf("Apple processed amount: $ %i \n",(int)payment);
}
- (Boolean)canProcessPayment {
    return arc4random_uniform(2)==1?true:false;
}
@end
