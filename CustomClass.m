#import "CustomClass.h"

@implementation CustomClass

	+(void)anyNewName {
		// any logic goes here
	}
	
	-(float)heightInMeters {
		return _heightInMeters;
	}

	-(void)setHeightInMeters:(float)height {
		_heightInMeters = height;
	}

	-(int)weightInKilos {
		return _weightInKilos;
	}

	-(void)setWeightInKilos:(int)weight {
		_weightInKilos = weight;
	}

	-(float)bodyMassIndex {
		float h = [self heightInMeters];
		float m = [super bodyMassIndex];			// call super method from root class
		return [self weightInKilos] / (h * h);
	}

	// Protocol implementation. Call each time a chunk of fata arrives
	-(void)connection:(NSURLConnection *)connectionDidReceiveData:(NSData *)data {
		if (!_incomingData)
			_incomingData = [[NSMutableData alloc] init];
		[_incomingData appendData:data];
	}

	// Protocol implementation. Called when the last chunk has been processed
	-(void)connectionDidFinishedLoading:(NSURLConnection *)connection {
		NSString *string = [[NSString alloc] initWithData: _incomingData
												 encoding:NSUTF8StringEncoding];
		_incomingData = nil;
	}

	// Protocol implementation. Called if the fetch fails
	-(void)connection:(NSURLConnection *)connectionDidFailWithError:(NSError *)error {
		_incomingData = nil;
	}

	// NSNotificationCenter method
	-(void)zoneChange:(NSNotification *)note {
		// put logic here
	}

@end
