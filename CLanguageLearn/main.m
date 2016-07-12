//
//  main.m
//  CLanguageLearn
//
//  Created by 谢小龙 on 16/7/7.
//  Copyright © 2016年 XXL. All rights reserved.
//

#import <Foundation/Foundation.h>

int IsLeapYear(int year){
    
    if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) {
        return 1;
    }else{
        return 0;
    }
}

int CountDay(int year, int month, int day){
    
    int leapMonth[] = {31,28,31,30,31,30,31,31,30,31,30,31};
    int normalMonth[] = {31,29,31,30,31,30,31,31,30,31,30,31};
    
    int sum = 0;
    if (IsLeapYear(year) == 1) {
        for (int i = 0; i < month - 1; i++) {
            sum += leapMonth[i];
        }
    }else{
        for (int i = 0; i < month - 1; i++) {
            sum += normalMonth[i];
        }
    }
    
    sum += day;
    
    return sum;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int year, month, day;
        printf("输入年月日:");
        scanf("%d%d%d",&year, &month, &day);
        printf("是该年的第%d天\n", CountDay(year, month, day));
        
    }
    return 0;
}
