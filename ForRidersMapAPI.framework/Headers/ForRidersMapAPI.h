#import <Foundation/Foundation.h>

@protocol RI4MapDelegate

- (void) didHide;

@end

@interface RI4MapAPI : NSObject

+ (RI4MapAPI*) instance;

- (void) setDelegate:(id <RI4MapDelegate>) delegate;

- (void) showMap;

@end
