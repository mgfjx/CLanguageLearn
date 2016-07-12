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
        
        int count = 100;
        
        FILE *fp;
        if ((fp = fopen("/Users/xiexiaolong1/Desktop/cfile.txt", "r")) == NULL) {
            printf("文件打开失败");
            exit(0);
        }
        
        char ch[count];
        
        int i = 0;
        
        while (1){
            
            if(fgets(ch, count, fp) == NULL){
                rewind(fp);
                printf("\n");
                i++;
                fgets(ch, count, fp);
            }
            
            if (i == 10) {
                break;
            }
            
            printf("%s",ch);
        }
        
        
        fclose(fp);
    }
    return 0;
}
