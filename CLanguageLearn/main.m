//
//  main.m
//  CLanguageLearn
//
//  Created by 谢小龙 on 16/7/7.
//  Copyright © 2016年 XXL. All rights reserved.
//

#import <Foundation/Foundation.h>

long factorial(int num){
    
    if (num == 1) return 1;
    
    long result;
    result = num * factorial(num - 1);
    
    return result;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        printf("%ld\n",factorial(12));
        
    }
    return 0;
}
