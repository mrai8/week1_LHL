//
//  main.m
//  word_effects
//
//  Created by Mandeep on 2017-05-01.
//  Copyright © 2017 Mandeep. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        

        int loopp = 1;
        
        char inputChars[255];
        printf("Input string: ");
        fgets(inputChars, 255, stdin);
        printf("Your string is %s\n", inputChars);
        
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        
        NSLog(@"You entered: %@", inputString);
        
        while (loopp < 2){
            
        printf("what do you want to do to this string: \n 1: UPPERCASE \n 2: lowercase \n 3: Canadian \n 4:Numberizer \n 5: ? or ! \n 6: Replace Spaces \n 7: exit \n");
        
        int selected;
        
        printf("make a choice: ");
        scanf("%i", &selected);
        
        switch (selected) {
            case 1: {
                NSString *upperE = [inputString uppercaseString];
                NSLog(@"Result: %@", upperE);
                break;
            }
                
                
            case 2: {
                NSString *lowerE = [inputString lowercaseString];
                NSLog(@"Result: %@", lowerE);
                break;
            }
            
            case 3: {
                NSString *canadaE = [inputString stringByAppendingString:@" eh?"];
                NSLog(@"Result: %@", canadaE);
                break;
            }
                
            case 4: {
                NSInteger nummE = [inputString integerValue];
                NSInteger testnum = (nummE + 2);
                NSLog(@"Result: %li", nummE);
                NSLog(@"Result plus 2: %li", testnum);
                break;
            }
                
            case 5: {
                if([inputString containsString:@"?"]){NSLog(@"I dont know");}
                else if([inputString containsString:@"!"]){NSLog(@"whoa, calm down");}
                else {NSLog(@"bye");}
                break;
            }
                
            case 6: {
                NSString *spaceLess = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                NSLog(@"Result: %@", spaceLess);
                break;
            }
                
            case 7: {
                loopp = 3;
                NSLog(@"Take care");
                
            }
                
            default:
                break;
        }
        }
    
    }
    return 0;
}
