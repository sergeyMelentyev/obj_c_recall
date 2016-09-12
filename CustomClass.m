#import "CustomClass.h"

@implementation CustomClass

	+ (void) anyNewName {
		// any logic goes here
	}
	
	- (float) heightInMeters {
		return _heightInMeters;
	}

	- (void) setHeightInMeters:(float)height {
		_heightInMeters = height;
	}

	- (int) weightInKilos {
		return _weightInKilos;
	}

	- (void) setWeightInKilos:(int)weight {
		_weightInKilos = weight;
	}

	- (float) bodyMassIndex {
		float h = [self heightInMeters];
		float m = [super bodyMassIndex];			// call super method from root class
		return [self weightInKilos] / (h * h);
	}

@end
