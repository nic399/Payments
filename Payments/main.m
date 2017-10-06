//
//  main.m
//  Payments
//
//  Created by Nicholas Fung on 2017-10-05.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "general_defines.h"
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector *myInputCollector = [[InputCollector alloc] init];
        
        double price = ((double)arc4random_uniform(900))+101;
        NSLog(@"Thank you for shopping at LiteShackLabs.ca");
        NSLog(@"Your total today is $%.2f", price);
        NSLog(@"Please select your payment method:");
        NSLog(@"1: Paypal, 2: Stripe, 3: Amazon");
        NSString *userInput = [myInputCollector inputForPrompt:@">"];
        NSLog(@"%@",userInput);

    }
    return 0;
}
