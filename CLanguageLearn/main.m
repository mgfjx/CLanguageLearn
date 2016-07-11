//
//  main.m
//  CLanguageLearn
//
//  Created by 谢小龙 on 16/7/7.
//  Copyright © 2016年 XXL. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        int i = 31;
        
        char hex[6];
        
        sprintf(hex, "%x", i);
        
        printf("hex: %s\n",hex);
        
    }
    return 0;
}
