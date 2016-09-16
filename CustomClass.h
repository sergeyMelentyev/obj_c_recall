#import <Foundation/Foundation.h>


/* PRIVATE CLASS EXTENSION (NO SUBCLASS ACCESS) */
@interface CustomClass ()
{
	// instance variables
	NSMutableArray *_assets;
}
	@property (nonatomic) unsigned int anyName;
@end


/* GLOBAL CLASS INTERFACE USING INSTANCE VARIABLE */
@interface CustomClass : NSObject 
{
	// instance variables
	float _heightInMeters;
	int _weightInKilos;
}

	// instance methods (setters and getters)
	- (float) heightInMeters;
	- (void) setHeightInMeters:(float)height;
	- (int) weightInKilos;
	- (void) setWeightInKilos:(int)weight;

	- (float) bodyMassIndex;
@end


/* GLOBAL CLASS INTERFACE USING PROPERTIES */
@interface CustomClass : NSObject <NSURLConnectionDelegate, NSURLConnectionDataDelegate>
{
	// instance variables
	NSMutableArray *_assets;
	NSMutableData *_incomingData;
}
	// properties
	@property (nonatomic) float heightInMeters;	// compiler will create _heightInMeters
	@property (nonatomic, readonly) int weightInKilos;

	// instance methods
	- (float) bodyMassIndex;
@end
