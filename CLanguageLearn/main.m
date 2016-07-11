//
//  main.m
//  CLanguageLearn
//
//  Created by 谢小龙 on 16/7/7.
//  Copyright © 2016年 XXL. All rights reserved.
//

#import <Foundation/Foundation.h>

struct Student{
    
    char cName[20];
    int iNumber;
    struct Student *pNext;
    
};

int iCount;

struct Student* Create(){
    
    struct Student *pHead = NULL;
    struct Student *pEnd, *pNew;
    iCount = 0;
    
    pEnd = pNew = malloc(sizeof(struct Student));
    
    printf("first enter Name, then Number\n");
    scanf("%s", &pNew->cName);
    scanf("%d", &pNew->iNumber);
    
    while (pNew->iNumber != 0) {
        
        iCount ++;
        if (iCount == 1) {
            pNew->pNext = pHead;
            pEnd = pNew;
            pHead = pNew;
        }else{
            
            pNew->pNext = NULL;
            pEnd->pNext = pNew;
            pEnd = pNew;
            
        }
        
        pNew = malloc(sizeof(struct Student));
        
        scanf("%s", &pNew->cName);
        scanf("%d", &pNew->iNumber);
    }
    
    free(pNew);
    
    return pHead;
}


void Print(struct Student *pHead){
    
    struct Student *pTemp;
    int index = 1;
    
    printf("----------这个链表有%d个成员----------\n",iCount);
    
    pTemp = pHead;
    
    while (pTemp != NULL) {
        
        printf("成员%d是: \n",index);
        printf("姓名是: %s\n",pTemp->cName);
        printf("学号是: %d\n",pTemp->iNumber);
        printf("-------------------------\n");
        pTemp = pTemp->pNext;
        index++;
        
    }
    
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        struct Student *p = Create();
        
        Print(p);
        
    }
    return 0;
}
