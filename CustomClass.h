#import <Foundation/Foundation.h>


/* USE INSTANCE VARIABLE */
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


/* USE PROPERTIES */
@interface CustomClass : NSObject 

	// properties
	@property (nonatomic) float heightInMeters;	// compiler will create _heightInMeters
	@property (nonatomic, readonly) int weightInKilos;

	// instance methods
	- (float) bodyMassIndex;

@end
