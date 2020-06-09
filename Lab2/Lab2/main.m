//
//  main.m
//  Lab2
//
//  Created by Carlos Camacho on 2020-06-09.
//  Copyright © 2020 Carlos Camacho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Box *myBox = [[Box alloc] initBox: 5.0 andWidth: 2.0 andLenght: 7.0];
        printf("The volumen of the Box1 is: %f \n", myBox.getVolumen);
        Box *myOtherBox = [[Box alloc] initBox: 5.0 andWidth: 2.0 andLenght: 1.0];
        printf("The volumen of the Box2 is: %f \n", myOtherBox.getVolumen);
        printf("and the box1 can contains %f times the box2 \n",[myBox timesInBox:myOtherBox]);
    }
    return 0;
}
