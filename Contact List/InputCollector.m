//
//  InputCollector.m
//  Contact List
//
//  Created by Yilei Huang on 2019-01-08.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector


- (instancetype)init
{
    self = [super init];
    if (self) {
        _history = [NSMutableArray new];
    }
    return self;
}
-(NSString *)inputForPrompt:(NSString *)promptString{
    NSLog(@"%@", promptString);
    char inputChar[255];
    fgets(inputChar,255,stdin);
    NSString*input = [NSString stringWithUTF8String:inputChar];
    return [input stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    
    
    
}
@end
