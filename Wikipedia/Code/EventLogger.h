extern NSString *const WMFLoggingEndpoint;

@interface EventLogger : NSObject

/**
 * Most code should not call this directly -- use an EventLoggingFunnel subclass.
 */
- (instancetype)initAndLogEvent:(NSDictionary *)event
                      forSchema:(NSString *)schema
                       revision:(int)revision
                           wiki:(NSString *)wiki;

@end
