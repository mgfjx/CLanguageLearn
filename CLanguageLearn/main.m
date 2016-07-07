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
        
        int charLength = sizeof(char);
        int intLength = sizeof(int);
        int shortIntLength = sizeof(short int);
        int longLength = sizeof(long);
        int floatLength = sizeof(float);
        int doubleLength = sizeof(double);
        
        printf("%d\n",charLength);
    }
    return 0;
}
