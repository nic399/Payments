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
#import "PaymentGateway.h"
#import "AmazonPaymentService.h"
#import "StripePaymentService.h"
#import "PaypalPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector *myInputCollector = [[InputCollector alloc] init];
        PaymentGateway *myPaymentGateway = [[PaymentGateway alloc] init];
        
        
        NSInteger price = arc4random_uniform(900) + 101;
        NSLog(@"Thank you for shopping at LiteShackLabs.ca");
        NSLog(@"Your total today is $%.2ld", (long)price);
        NSLog(@"Please select your payment method:");
        NSLog(@"1: Paypal, 2: Stripe, 3: Amazon, 4: ApplePay");
        NSString *userInput = [myInputCollector inputForPrompt:@">"];
        NSLog(@"%@",userInput);
        id<PaymentDelegate> myPaymentDelegate;
        switch ([userInput intValue]) {
            case 1: {
                myPaymentDelegate = [[PaypalPaymentService alloc] init];
                break;
            }
               
            case 2:{
                myPaymentDelegate = [[StripePaymentService alloc] init];
                break;
            }
                
            case 3:{
                myPaymentDelegate = [[AmazonPaymentService alloc] init];
                break;
            }
            case 4:{
                myPaymentDelegate = [[ApplePaymentService alloc] init];
                break;
            }
            default:
                break;
        }
        
        myPaymentGateway.paymentDelegate = myPaymentDelegate;
        [myPaymentGateway processPaymentAmount:price];

    }
    return 0;
}
