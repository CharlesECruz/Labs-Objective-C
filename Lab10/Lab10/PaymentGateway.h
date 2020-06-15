//
//  PaymentGateway.h
//  LabTest
//
//  Created by happy on 2020-06-13.
//  Copyright © 2020 Carlos. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class PaymentGateway;
@protocol PaymentDelegate <NSObject>

-(void) processPaymentAmount:(NSInteger *) payment;
-(Boolean) canProcessPayment;

@end



@interface PaymentGateway : NSObject
@property (nonatomic,weak)id<PaymentDelegate> paymentDelegate;
-(void) processPaymentAmount:(NSInteger *) payment;
-(Boolean) canProcessPayment;
@end
NS_ASSUME_NONNULL_END
