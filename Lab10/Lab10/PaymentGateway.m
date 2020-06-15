//
//  PaymentGateway.m
//  LabTest
//
//  Created by happy on 2020-06-13.
//  Copyright © 2020 Carlos. All rights reserved.
//

#import "PaymentGateway.h"
@interface PaymentGateway()
@end
@implementation PaymentGateway
-(void) processPaymentAmount:(NSInteger *) payment{
    if ([self canProcessPayment]) {
        printf("Processing.\n");
        [self.paymentDelegate processPaymentAmount:payment];
    }else{
        printf("At this moment it's imposible process your payment.\n");
    }
    
}
-(Boolean) canProcessPayment{
    return [self.paymentDelegate canProcessPayment];
}
@end
