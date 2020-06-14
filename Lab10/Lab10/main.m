//
//  main.m
//  Lab10
//
//  Created by happy on 2020-06-13.
//  Copyright © 2020 Carlos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "StripePaymentService.h"




NSInteger Payment(void);
NSString * getUserInput(int maxLenght,NSString *prompt);



///MARK: Main
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSInteger value = Payment();
        NSInteger input = [getUserInput(255, @"") integerValue];
        PaymentGateway *payment = [[PaymentGateway alloc] init];
        [payment processPaymentAmount:&value];
        switch (input) {
            case 1:
                
                break;
            case 2:
                StripePaymentService stripePayment = [[StripePaymentService alloc] init];
                stripePayment;
                break;
            case 3:
                
                break;
            default:
                break;
        }
    }
    return 0;
}


///MARK: Functions
NSInteger Payment(void){
    int payValue = arc4random_uniform(900)+100;
    printf("Thank you for shopping at Acme.com Your total today is $ %i Please select your payment method (write the number):\n1:Paypal\n2:Stripe\n3:Amazon\n", payValue);
    return payValue;
}
NSString * getUserInput(int maxLenght,NSString *prompt){
    if(maxLenght < 1){
        maxLenght = 255;
    }
    printf("%s",[prompt UTF8String]);
    char inputChars[maxLenght];
    char *result = fgets(inputChars, maxLenght, stdin);
    if(result != NULL){
        return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    }
    return NULL;
}
