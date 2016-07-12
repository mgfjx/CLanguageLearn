//
//  main.m
//  CLanguageLearn
//
//  Created by 谢小龙 on 16/7/7.
//  Copyright © 2016年 XXL. All rights reserved.
//

#import <Foundation/Foundation.h>

double BuyApple(int limitNumer, double price){
    
    int apples = 2;
    int day = 1;
    while (true) {
        
        int lastDay = apples;
        apples += apples*2;
        if (apples > limitNumer) {
            apples = lastDay;
            break;
        }
        day++;
    }
    
    return apples * price / day;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        printf("%lf\n",BuyApple(100, 0.8));
        
    }
    return 0;
}
