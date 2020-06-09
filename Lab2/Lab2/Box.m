//
//  Box.m
//  Lab2
//
//  Created by Carlos Camacho on 2020-06-09.
//  Copyright © 2020 Carlos Camacho. All rights reserved.
//

#import "Box.h"
///MARK: VARIABLES
@implementation Box{
    float _height;
    float _width;
    float _lenght;
}
///MARK: CONSTRUCTORS
- (instancetype) init{
    self = [super init];
    if(self){
        _height = 0;
        _width = 0;
        _lenght = 0;
    }
    return self;
}
- (instancetype) initBox: (float) height andWidth: (float) width andLenght: (float) lenght{
    self = [super init];
    if(self){
        _height = height;
        _width = width;
        _lenght = lenght;
    }
    return self;
}
///MARK: FUNCTION
-(float) getVolumen{
    return _height * _width * _lenght;
}
-(float) timesInBox:(Box*) newBox{
    int times = self.getVolumen/newBox.getVolumen;
    return times;
}

@end
