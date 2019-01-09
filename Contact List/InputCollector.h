//
//  InputCollector.h
//  Contact List
//
//  Created by Yilei Huang on 2019-01-08.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputCollector : NSObject
-(NSString *)inputForPrompt:(NSString *)promptString;
@property NSMutableArray* history;
@end

NS_ASSUME_NONNULL_END
