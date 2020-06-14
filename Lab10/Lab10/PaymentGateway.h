//
//  PaymentGateway.h
//  Lab10
//
//  Created by happy on 2020-06-13.
//  Copyright © 2020 Carlos. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@protocol PaymentDelegate <NSObject>

- (void)processPaymentAmount:(NSInteger *)payment;

@end
@interface PaymentGateway : NSObject
@property (nonatomic, weak) id<PaymentDelegate> delegate;
- (void)processPaymentAmount:(NSInteger *)payment;
@end

NS_ASSUME_NONNULL_END
