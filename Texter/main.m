//
//  main.m
//  Texter
//
//  Created by Albert Saucedo on 9/13/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        // https://rest.nexmo.com/sms/json?api_key=2772306a&api_secret=c80e2d4c&from=12165045273&to=%@&text=%@

        char phoneNumber[11];
        char textMessage[200];
        
        NSLog(@"Please Enter Phone Number / email");
        scanf(" %[^\n]s", phoneNumber);

        NSLog(@"Enter your text message (Max Char. 200)");
        scanf(" %[^\n]s", textMessage);

        NSString *number;
        NSString *message;

        number = [NSString stringWithCString:phoneNumber encoding:NSUTF8StringEncoding];
        message = [NSString stringWithCString:textMessage encoding:NSUTF8StringEncoding];

        if (([number length] < 9)) {

            NSLog(@"ERROR: Phone number must be 11 numbers long");

        } else {

            NSLog(@"Number!!! %@", number);
            NSLog(@"Message!! %@", message);

            NSString *urlString = [NSString stringWithFormat:@"https://rest.nexmo.com/sms/json?api_key=2772306a&api_secret=c80e2d4c&from=12165045273&to=%@&text=%@", number, message];

            // If there are spaces inside the url this will replace that with %20
           urlString = [urlString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];

            NSURL *url = [NSURL URLWithString:urlString];
            NSURLRequest *request = [NSURLRequest requestWithURL:url];

             NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];

            NSString *dataString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];

            NSLog(@"%@", dataString);
        }

    }
    return 0;
}

