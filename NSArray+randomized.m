// 將輸入的array做亂數排列

@interface NSArray (randomized)
- (NSArray *) randomizedArray;
@end

@implementation NSArray (randomized)
- (NSArray *) randomizedArray {
    NSMutableArray *results = [NSMutableArray arrayWithArray:self];
    
    int i = [results count];
    while(--i > 0) {
        int j = rand() % (i+1);
        [results exchangeObjectAtIndex:i withObjectAtIndex:j];
    }
    
    return [NSArray arrayWithArray:results];
}
@end

//  執行方法
srand(time(NULL));
NSArray *array = [NSArray arrayWithObjects:@"str1" , @"str2" , @"str3", @"str4", nil];
NSLog(@"==> : %@", [array randomizedArray]);
