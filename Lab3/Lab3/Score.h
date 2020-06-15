//
//  Score.h
//  Lab3
//
//  Created by happy on 2020-06-14.
//  Copyright © 2020 Carlos Camacho. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Score : NSObject

@property(nonatomic) int amountRight;
@property(nonatomic) int amountWrong;
-(instancetype) init{
    self = [self init];
    
}
@end

NS_ASSUME_NONNULL_END
