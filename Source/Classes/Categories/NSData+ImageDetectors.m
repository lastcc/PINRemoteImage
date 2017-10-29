//
//  NSData+ImageDetectors.m
//  Pods
//
//  Created by Garrett Moon on 11/19/14.
//
//

#import "NSData+ImageDetectors.h"


@implementation NSData (PINImageDetectors)

- (BOOL)pin_isGIF
{
    const NSInteger length = 3;
    Byte firstBytes[length];
    if ([self length] >= length) {
        [self getBytes:&firstBytes length:length];
        //G, I, F
        if (firstBytes[0] == 0x47 && firstBytes[1] == 0x49 && firstBytes[2] == 0x46) {
            return YES;
        }
    }
    return NO;
}

@end
