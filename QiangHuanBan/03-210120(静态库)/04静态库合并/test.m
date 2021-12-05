#import <Foundation/Foundation.h>

#import "CustomLib.h"
#import "CustomLib2.h"

int main(){
     
    CustomLib *lib = [CustomLib new];
    [lib yj_print:@"CustomLib 输出 aaaa"];
    
    CustomLib2 *lib2 = [CustomLib2 new];
    [lib2 yj_print:@"CustomLib2 输出 bbbb"];
    
    return 0;
}




