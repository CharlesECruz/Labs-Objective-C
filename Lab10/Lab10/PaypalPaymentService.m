//
//  PaypalPaymentService.m
//  LabTest
//
//  Created by happy on 2020-06-13.
//  Copyright © 2020 Carlos. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (void)processPaymentAmount:(nonnull NSInteger *) payment {
    printf("PAYPAL processed amount: $ %i \n",(int)payment);
}
- (Boolean)canProcessPayment {
    return arc4random_uniform(2)==1?true:false;
}
@end
