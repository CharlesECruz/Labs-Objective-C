//
//  Box.h
//  Lab2
//
//  Created by Carlos Camacho on 2020-06-09.
//  Copyright © 2020 Carlos Camacho. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Box : NSObject
- (instancetype) init;
- (instancetype) initBox: (float) height andWidth: (float) width andLenght: (float) lenght;
-(float) getVolumen;
-(float) timesInBox:(Box*) newBox;
@end

NS_ASSUME_NONNULL_END
