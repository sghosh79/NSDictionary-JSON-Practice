//
//  ViewController.m
//  NSDictionaryJSON
//
//  Created by shu ghosh on 4/15/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
 
    
    NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
    [dictionary setObject:@"dog" forKey:@"mammal"];
    [dictionary setObject:@"frog" forKey:@"amphibian"];
    [dictionary setObject:@"snake" forKey:@"reptile"];
    [dictionary setObject:@"shark" forKey:@"fish"];
    [dictionary setObject:@"parrot" forKey:@"bird"];
    
    
    //label to the left of the colon and argument to the right is getting passed
    
    //datawithJSONObject - is where I put the dictionary to convert to JSON
    
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dictionary options:NSJSONWritingPrettyPrinted error:&error];
    // Pass 0 if you don't care about the readability of the generated string
    

    
    if (! jsonData) {
        NSLog(@"Got an error: %@", error);
    } else {
        NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    
//        NSLog(@"%@s",jsonString);

        //converting a JSON string to NS Dictionary
        
        NSDictionary *dictionarytwo = [NSJSONSerialization JSONObjectWithData:jsonData options:kNilOptions error:&error];


//        NSDictionary *dictionary2 = [NSJSONSerialization JSONObjectWithData: [@"" dataUsingEncoding:NSUTF8StringEncoding]];
        
        
        NSLog(@"%@d",dictionarytwo);
        
        
    }

    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end