//
//  main.m
//  LabTest
//
//  Created by happy on 2020-06-13.
//  Copyright © 2020 Carlos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "StripePaymentService.h"
#import "PaypalPaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"


NSInteger *Payment(void);
NSString * getUserInput(int maxLenght);

///MARK: Main
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while (1) {
            NSInteger *value = Payment();
            NSInteger userInput = [getUserInput(255) integerValue];
            PaymentGateway * payment = [[PaymentGateway alloc] init];
            switch (userInput) {
                case 1:
                {
                    PaypalPaymentService * paypal = [[PaypalPaymentService alloc] init];
                    payment.paymentDelegate = paypal;
                    [payment processPaymentAmount:value];
                    break;
                }
                case 2:
                {
                    StripePaymentService * stripe = [[StripePaymentService alloc] init];
                    payment.paymentDelegate = stripe;
                    [payment processPaymentAmount:value];
                    break;
                }
                case 3:
                {
                    AmazonPaymentService * amazon = [[AmazonPaymentService alloc] init];
                    payment.paymentDelegate = amazon;
                    [payment processPaymentAmount:value];
                    
                    break;
                }
                case 4:
                {
                    ApplePaymentService * apple = [[ApplePaymentService alloc] init];
                    payment.paymentDelegate = apple;
                    [payment processPaymentAmount:value];
                    
                    break;
                }
                default:
                {
                    
                    break;
                }
                    
            }
        }
    }
    // end of the program
    return 0;
}

///MARK: Function
NSInteger * Payment(void){
    int payValue = arc4random_uniform(900)+100;
    printf("Thank you for shopping at Acme.com\nYour total is $ %i \nPlease select your payment method(write the number):\n1.Paypal\n2.Stripe\n3.Amazon\n4.Apple\n",payValue);
    return payValue;
}
NSString * getUserInput(int maxLenght){
    if(maxLenght < 1){
        maxLenght = 255;
    }
    char inputChars[maxLenght];
    char *result = fgets(inputChars, maxLenght, stdin);
    if(result != NULL){
        return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    }
    return NULL;
}
