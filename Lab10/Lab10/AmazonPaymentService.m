//
//  AmazonPaymentService.m
//  LabTest
//
//  Created by happy on 2020-06-13.
//  Copyright © 2020 Carlos. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

- (void)processPaymentAmount:(nonnull NSInteger *) payment {
    printf("AMAZON processed amount: $ %i \n",(int)payment);
}
- (Boolean)canProcessPayment {
    return arc4random_uniform(2)==1?true:false;
}
@end
