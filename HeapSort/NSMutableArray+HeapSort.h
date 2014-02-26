//
//  NSMutableArray+HeapSort.h
//  HeapSort
//
//  Created by Stevenson on 25/02/2014.
//  Copyright (c) 2014 Steven Stevenson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (HeapSort)

+(void)translatetoMaxHeapWithArray:(NSMutableArray*) theArray;

+(void)maxHeapSortForArray:(NSMutableArray*) theArray;

+(void)printArray:(NSMutableArray*)theArray;

@end
