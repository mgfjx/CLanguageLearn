//
//  main.m
//  CLanguageLearn
//
//  Created by 谢小龙 on 16/7/7.
//  Copyright © 2016年 XXL. All rights reserved.
//

#import <Foundation/Foundation.h>

int MonkeyPeach(int day){
    
    int allPeachs = 1;
    while (day-1) {
        
        allPeachs = (allPeachs + 1) * 2;
        day --;
    }
    
    return allPeachs;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        printf("%d\n",MonkeyPeach(10));
        
    }
    return 0;
}
