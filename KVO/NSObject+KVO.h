//
//  NSObject+KVO.h
//  Test
//
//  Created by Jason on 26/03/2018.
//  Copyright © 2018 Jason. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^PGObservingBlock)(id observedObject,NSString *observedKey,id oldValue,id newValue);

@interface NSObject (KVO)

- (void)PG_addObserver:(NSObject *)observer
                forKey:(NSString *)key
             withBlock:(PGObservingBlock)block;
- (void)PG_removeObserver:(NSObject *)observer forKey:(NSString *)key;
@end
