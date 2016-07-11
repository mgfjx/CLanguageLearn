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
        
        FILE *fp, *fp2;
        
        fp = fopen("/Users/xiexiaolong1/Desktop/sdxl.txt", "r+");
        fp2 = fopen("/Users/xiexiaolong1/Desktop/cfile.txt", "r+");
        
        if (fp == NULL && fp2 == NULL) {
            printf("打开文件失败");
            return 0;
        }
        
        char ch[100];
        
        fgets(ch, 100, fp);
        
        while (fgets(ch, 100, fp) != NULL) {
//            puts(ch);
            fputs(ch, fp2);
        }
        
        fclose(fp);
        fclose(fp2);
    }
    return 0;
}
