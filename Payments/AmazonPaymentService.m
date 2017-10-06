//
//  AmazonPaymentService.m
//  Payments
//
//  Created by Nicholas Fung on 2017-10-06.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

-(void)processPaymentAmount:(NSInteger)amount{
    NSLog(@"You should have bought this on Amazon, it would have been cheaper than $%.2ld", amount);
}

-(BOOL)canProcessPayment{
    return arc4random_uniform(2);
}

@end
