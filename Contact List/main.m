//
//  main.m
//  Contact List
//
//  Created by Yilei Huang on 2019-01-08.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Boolean gameOn = YES;
        InputCollector * collect =[[InputCollector alloc]init];
        ContactList *contactList =[[ContactList alloc]init];
        NSMutableArray *muteArray = [contactList storeContact];
        while(gameOn){
            NSString * input = [collect inputForPrompt:@"The menu: What would you like do next?\n new - Create a new contact\n list - List all contacts\n show \n phone \n history \n quit - Exit Application > _"];
            [[collect history] addObject:input];
            if([input isEqual: @"quit"]){
                break;
            }
            else if([input isEqual: @"new"]){
                NSString *name =[collect inputForPrompt:@"please enter your name"];
                NSString *email =[collect inputForPrompt:@"please enter your email"];
                //save it
                Contact *contact = [[Contact alloc]initWithName:name Email:email];
                Boolean repete = NO;
                for(Contact *item in muteArray){
                    //NSLog(@"%@ has email of %@", [item user],[item email]);
                    if([[item user] isEqual: name] || [[item email] isEqual: email]){
                        NSLog(@"name/email already exist");
                        repete =YES;
                        break;
                    }
                }
                if(repete){
                    break;
                }else{
                    [contactList addContact:contact];
                }
                
            }else if([input isEqual:@"list"]){
                
                
                for(Contact *item in muteArray){
                    NSLog(@"%@ has email of %@", [item user],[item email]);
                }
               
            }else if([input isEqual:@"show"]){
                NSString *whichOne =[collect inputForPrompt:@"please enter your info index"];
                whichOne = [whichOne stringByReplacingOccurrencesOfString:@"\n" withString:@""];
                NSInteger index = [whichOne integerValue];
                if(muteArray.count-1 > index){
                    Contact *contact = [contactList storeContact][index];
                    NSNumber *index1 = @(index);
                    NSLog(@"name:%@  \n  email:%@   index: %@", [contact user],[contact email],index1);

//                    NSLog(@"name:%@ \n email:%@ \n and id: %@",[muteArray[whichOne integerValue] user],[muteArray[whichOne integerValue] email],[muteArray[whichOne integerValue] index]);
                }else{
                    NSLog(@"Your id doesn't exist");
                }
                
            }else if([input isEqual:@"phone"]){
                NSString *whichOne =[collect inputForPrompt:@"please enter your info index"];
                whichOne = [whichOne stringByReplacingOccurrencesOfString:@"\n" withString:@""];
                NSInteger index = [whichOne integerValue];
                if(muteArray.count-1 > index){
                    Contact *contact = [contactList storeContact][index];
                    NSString *whichPhoneNum =[collect inputForPrompt:@"please enter your phone number"];
                    [contact addPhone:whichPhoneNum];
                }else{
                    NSLog(@"you need to enter email and name first");
                }
            }else if([input isEqual:@"history"]){
                for(int i=0;i<2;i++){
                    NSMutableArray * historyPrint =[collect history];
                    NSLog(@"%@",historyPrint[historyPrint.count-1-i]);
                }
            }
        }
    }
            
            
           

            
            
        
        
    return 0;
}
