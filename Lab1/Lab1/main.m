//
//  main.m
//  Lab1-ObjctC
//
//  Created by Carlos Camacho on 2020-06-08.
//  Copyright © 2020 Carlos Camacho. All rights reserved.
//

#import <Foundation/Foundation.h>
/// MARK:FUNCTIONS HEADS

int showMenu(void);
void Uppercase(void);
void Lowercase(void);
void Numberize(void);
void Canadianize(void);
void Respond(void);
void DoSpaceIt(void);

///MARK:MAIN
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int option = 10;
        while (option != 0) {
            option = showMenu();
            switch (option) {
                case 1:
                    Uppercase();
                    break;
                case 2:
                    Lowercase();
                    break;
                case 3:
                    Numberize();
                    break;
                case 4:
                    Canadianize();
                    break;
                case 5:
                    Respond();
                    break;
                case 6:
                    DoSpaceIt();
                    break;
                default:
                    option = 0;
            }
        }
        
    }
    return 0;
}

///MARK: FUNCTIONS
int showMenu(){
    int option = 0;
    printf("Welcome to the lab 1\n1. Uppercase\n2. Lowercase\n3. Numberize\n4. Canadianize\n5. Respond\n6. De-Space-it\n Please enter the number of your choice (press 0 to exit)");
    scanf("%i",&option);
    return option;
}
///MARK: Uppercase
void Uppercase(){
    char input[255];
    NSString *text;
    printf("Please enter the text (max 255 characters)");
    scanf("%s",input);
    text = [NSString stringWithCString:input encoding:NSUTF8StringEncoding];
    printf("Your text with uppercase is:\n%s\n",[text.uppercaseString UTF8String]);
}
///MARK: LowerCase
void Lowercase(){
    char input[255];
    NSString *text;
    printf("Please enter the text (max 255 characters)");
    scanf("%s",input);
    text = [NSString stringWithCString:input encoding:NSUTF8StringEncoding];
    printf("Your text with lowercase is:\n%s\n",[text.lowercaseString UTF8String]);
}
///MARK: Numerize
void Numberize(){
    char input[255];
    NSString *text;
    printf("Please enter the numer:");
    scanf("%s",input);
    text = [NSString stringWithCString:input encoding:NSUTF8StringEncoding];
    printf("The integer is:\n%i\n",[text intValue]);
}
///MARK: Canadianize
void Canadianize(){
    char input[255];
    NSString *text;
    printf("Please enter the numer:");
    scanf("%s",input);
    text = [NSString stringWithCString:input encoding:NSUTF8StringEncoding];
    NSMutableString *textChanged = [text mutableCopy];
    [textChanged appendString:@", eh?"];
    printf("Your text canadianized is: \n%s\n",[textChanged UTF8String]);
}
///MARK: Respond
void Respond(){
    char input[255];
    NSString *text;
    printf("Please enter the text (max 255 characters)");
    scanf("%s",input);
    text = [NSString stringWithCString:input encoding:NSUTF8StringEncoding];
    if ([text hasSuffix:@"?"]) {
        printf("I don't know\n");
    }else if ([text hasSuffix:@"!"]) {
        printf("Whoa, calm down!\n");
    }else{
        printf("Try again!\n");
    }
}
///MARK: Do Space it
void DoSpaceIt(){
    char input[255];
    printf("Please enter the text (max 255 characters)");
    fgets(input, 255, stdin);
    char *text =fgets(input, 255, stdin);
    NSString *text2 = [NSString stringWithCString:text encoding:NSUTF8StringEncoding];
    printf("%s", [[text2 stringByReplacingOccurrencesOfString:@" " withString:@"-"] UTF8String]);
}
