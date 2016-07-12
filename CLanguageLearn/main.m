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
        
        int female = 5;
        int male = 3;
        CGFloat litter = 1;
        
        for (int x = 0; x <= 100/5; x++) {
            for (int y = 0; y <= 100/3; y++) {
                for (int z = 0; z <= 100/3; z++) {
                    
                    int price = female * x + male * y + z * litter;
                    int count = x + y + z * 3 ;
                    
                    if (price == 100 && count == 100) {
                        printf("x = %d, y = %d, z = %d\n", x, y, z);
                    }
                    
                }
            }
        }
        
    }
    return 0;
}
