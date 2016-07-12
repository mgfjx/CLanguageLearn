//
//  main.m
//  CLanguageLearn
//
//  Created by 谢小龙 on 16/7/7.
//  Copyright © 2016年 XXL. All rights reserved.
//

#import <Foundation/Foundation.h>

int AnyPowerLastThreeNumber(){
    
    int x, y;
    printf("输入x的y次幂x^y(e.g:x y):");
    scanf("%d %d", &x, &y);
    
    int r = (int)pow(x, y);
    
    return r > 100 ? r % 1000 : r;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        printf("%d\n",AnyPowerLastThreeNumber());
        
    }
    return 0;
}
