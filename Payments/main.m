//
//  main.m
//  Payments
//
//  Created by Nicholas Fung on 2017-10-05.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "general_defines.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        
        double price = ((double)arc4random_uniform(100000))/100.00;
        
        NSLog(@"Cost: $%.2f", price);
        
        
        
        
    }
    return 0;
}
