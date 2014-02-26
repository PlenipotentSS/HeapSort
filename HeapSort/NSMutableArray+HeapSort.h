//
//  NSMutableArray+HeapSort.h
//  HeapSort
//
//  Created by Stevenson on 25/02/2014.
//  Copyright (c) 2014 Steven Stevenson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (HeapSort)

/**
 *
 * Translates the input to a maxHeap
 * @param NSMutableArray theArray
 *
**/
+(void)translatetoMaxHeapWithArray:(NSMutableArray*) theArray;

/**
 *
 * Sorts the input array from smallest to largest
 * @see translatetoMaxHeapWithArray:
 * @param NSMutableArray the Array
 *
 **/
+(void)maxHeapSortForArray:(NSMutableArray*) theArray;

/**
 *
 * Prints Log of an array of objects with key name value
 * @param NSMutableArray theArray
 *
 **/
+(void)printArray:(NSMutableArray*)theArray;

@end
