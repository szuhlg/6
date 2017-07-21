//
//  main.m
//  Hello Object-C
//
//  Created by 黄立光 on 16/4/7.
//  Copyright © 2016年 黄立光. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    //@autoreleasepool{
        // insert code here...
        //if(argc==1){
           // NSLog(@"you need to provide a file name");
            //return (1);
      //  }
        FILE *wordFile = fopen("/tmp/word.txt","r");
        char word[100];
    
        while (fgets(word, 100, wordFile)) {
            word[strlen(word)-1]='\0';
            
            NSLog(@"%s is %d characters long", word, strlen(word));
        }
    fclose(wordFile);
    NSString *string1;
    string1=[NSString stringWithFormat:@"Hello%d",5];
    return 0;
    //}
}