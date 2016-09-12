#import <stdio.h>
#import <Foundation/Foundation.h>
#import "CustomClass.h"
 
int main(void) {

	/* NSArray immutable list of pointers */
	NSArray *initEmptyArray = [[NSArray alloc] init];
	NSArray *initNotEmptyArray = @[objOne, objTwo, objThree];
	for (NSDate *d in initNotEmptyArray) {
		NSLog(@"Text %@", d);
	}


	/* NSMutableArray mutable list of pointers */
	NSMutableArray *createAnEmptyArray = [NSMutableArray array];
	[createAnEmptyArray addObject: objName];
	[createAnEmptyArray insertObject: objName atIndex: 0];


	/* STRING DYNAMIC CREATION */
	NSString *stringName = [NSString stringWithFormate: @"Text %@", objName];


    /* HEAP MEMORY REQUEST */
    float *startOfBuffer;
    startOfBuffer = malloc(1000 * sizeof(float));
    // ... use the buffer here ...
    free(startOfBuffer);
    startOfBuffer = NULL;


    /* CREATE A STRUCT IN HEAP MEMORY */
    typedef struct {
    	float heightInMeters;
    	int weightInKilos;
    } Person;
    Person *mikey = (Person *)malloc(sizeof(Person));
    mikey->weightInKilos = 96;
    mikey->heightInMeters = 1.7;
    // ... use the buffer here ...
    free(mikey);
    mikey = NULL;


    /* CREATE AN INSTANCE OF CLASS */
    CustomClass *mikey = [[CustomClass alloc] init];
    [mikey setWeightInKilos: 96];	// set instance variable
    mikey.heightInMeters = 1.7;		// set property attribute



    return 0;
}
