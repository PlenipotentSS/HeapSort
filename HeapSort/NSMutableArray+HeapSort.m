//
//  NSMutableArray+HeapSort.m
//  HeapSort
//
//  Created by Stevenson on 25/02/2014.
//  Copyright (c) 2014 Steven Stevenson. All rights reserved.
//

#import "NSMutableArray+HeapSort.h"
#import "IntegerNode.h"

@implementation NSMutableArray (HeapSort)

+(void)translatetoMaxHeapWithArray:(NSMutableArray*) theArray
{
    if ([theArray count] > 0) {
        for (int i = [theArray count]/2; i >= 0; i--) {
            [NSMutableArray maxHeapify:theArray forIndex:i forSize: [theArray count]];
        }
    }
}

+(void)maxHeapSortForArray:(NSMutableArray*) theArray
{
    
    [self translatetoMaxHeapWithArray:theArray];
    
    NSInteger arraySize = [theArray count];
    for (int i = (theArray.count -1); i >= 0; i--) {
        [theArray exchangeObjectAtIndex:0 withObjectAtIndex:i];
        arraySize--;
        [NSMutableArray maxHeapify:theArray forIndex:0 forSize: arraySize];
    }
}


+(void) maxHeapify:(NSMutableArray*) theArray forIndex:(NSInteger) i forSize:(NSInteger) size{
    IntegerNode *leftNode = (2*i < size) ? (IntegerNode*)theArray[2*i] : nil;
    IntegerNode *rightNode = ((2*i)+1 < size) ? (IntegerNode*)theArray[(2*i)+1] : nil;
    IntegerNode *largestNode = theArray[i];
    IntegerNode *largestNodeFound = [self getLargestNodeFromLeft:leftNode andRight:rightNode withLargestValue:largestNode.value];
    if ([theArray indexOfObject:largestNodeFound] != NSNotFound) {
        NSInteger largestIndex = [theArray indexOfObject:largestNodeFound];
        
        [theArray exchangeObjectAtIndex:i withObjectAtIndex:largestIndex];
        
        [self maxHeapify:theArray forIndex:largestIndex forSize: size];
    }
    
}

+(IntegerNode*) getLargestNodeFromLeft: (IntegerNode*) leftNode andRight: (IntegerNode*) rightNode withLargestValue:(NSInteger) value {
    IntegerNode *largestNodeFound = [IntegerNode new];
    largestNodeFound.value = value;
    if (leftNode.value > largestNodeFound.value) {
        largestNodeFound = leftNode;
    }
    if (rightNode.value > largestNodeFound.value) {
        largestNodeFound = rightNode;
    }
    return largestNodeFound;
}

+(void)printArray:(NSMutableArray*)theArray
{
    for (int i=0;i<theArray.count;i++) {
        NSLog(@"index %d: %d",i,[(IntegerNode*)[theArray objectAtIndex:i]  value]);
    }
}

@end
