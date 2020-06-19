//
//  main.m
//  Lab8
//
//  Created by happy on 2020-06-18.
//  Copyright © 2020 Carlos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"
#import "MeanManager.h"
#import "GoodManager.h"
#import "DeliveryService.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Kitchen *restaurantKitchen = [Kitchen new];
        DeliveryService *deliver = [DeliveryService new];
        restaurantKitchen.deliveryDelegate = deliver;
        GoodManager * myGoodManager = [GoodManager new];
        MeanManager * myMeanManager = [MeanManager new];
        while(true){
            printf("please choose your manager(write number):\n1.Good\n2.Bad\n");
            char opt[100];
            fgets (opt, 100, stdin);
            NSString *inputString = [[NSString alloc] initWithUTF8String:opt];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            if ([inputString intValue] == 1) {
                restaurantKitchen.delegate = myGoodManager;
            }else{
                restaurantKitchen.delegate = myMeanManager;
            }
            printf("Please pick your pizza size and toppings:");
            char menu[100];
            fgets (menu, 100, stdin);
            NSString *userMenu = [[NSString alloc] initWithUTF8String:menu];
            NSArray *commandWords = [userMenu componentsSeparatedByString:@" "];
            Pizza *myPizza = [restaurantKitchen receibeOrder:commandWords];
            printf("We delivered your pizza.");
            [restaurantKitchen.deliveryDelegate deliverPizza:myPizza];
            
        }
    }
    return 0;
}
