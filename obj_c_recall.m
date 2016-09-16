#import <Foundation/Foundation.h>
#import "CustomClass.h"
 
int main(void) {

    /* --== PRIMITIVES ==--*/
    // Int : NSNumber : NSValue
    NSMutableArray *addNSNumberToList = [[NSMutableArray alloc] init];
    [addNSNumberToList addObject: @2];
    [addNSNumberToList addObject: @4.5];

    NSPoint *somePoint = NSMakePoint(100, 100);
    NSValue *pointValue = [NSValue valueWithPoint: somePoint];



    /* --== NSNull ==-- */
    // We cannot add nil to any of the collection classes
    NSMutableArray *addNSNillToList = [[NSMutableArray alloc] init];
    [addNSNillToList addObject: anyObjName];
    [addNSNillToList addObject: [NSNull null]];



    /* --== NS_ENUM ==-- */
    // use for constants declaration
    typedef NS_ENUM(int, BlenderSpeed) {
        BlenderSpeedStir,
        BlenderSpeedChop,
        BlenderSpeedPulse
    };



	/* --== NSSet NSMutableSet ==-- */
	// can hold only one particular object at a time, unordered collection



	/* --== NSDictionary NSMutableDictionary ==-- */
	NSDictionary *outerMoonCout = [[NSMutableDictionary alloc] init];
    [outerMoonCout setObject: objName forKey: @"Mercury"];
    NSMutableDictionary *innerMoonCount = @{
        @"Mercury": @[],
        @"Venus": @[],
        @"Earth": @[@"Luna"]
    };



	/* --== NSArray immutable list of pointers ==-- */
	NSArray *initNotEmptyArray = @[objOne, objTwo, objThree];
	for (NSDate *d in initNotEmptyArray) {
		// fast enumiration
	}



	/* --== NSMutableArray list of pointers ==-- */
    NSMutableArray *initEmptyArray = [[NSMutableArray alloc] init];
	NSMutableArray *emptyArrayName = [NSMutableArray array];
	[emptyArrayName addObject: objName];
	[emptyArrayName insertObject: objName atIndex: 0];



    /* --== BLOCKS ==-- */
    NSArray *originalStrings = @[@"One", @"Two", @"Three"];
    NSMutableArray *devowelizedString = [NSMutableArray array]; // init an empty mutable array
    NSArray *vowel = @[@"n", @"w", @"r"];
    void (^anyBlockNameHere)(id, NSUInteger, BOOL *);    // Declare the block variable with arguments
    anyBlockNameHere = ^(id string, NSUInteger i, BOOL *stop){  //Compose a block and assign it to the var
        NSMutableString *newString = [NSMutableString stringWithString:string];
        for (NSString *s in vowel) {
            NSRange fullRange = NSMakeRange(0, [newString length]);
            [newString replaceOccurencesOfString: s 
                                      withString:@"" 
                                         options:NSCaseInsensitiveSearch
                                           range:fullRange];
        }
        [devowelizedString addObject:newString];
    };  // block end
    [originalStrings enumerateObjectUsingBlock:anyBlockNameHere];   // execure the code in block for each object

    // SIMPLE EXAMPLE OF BLOCKS
    double (^blockName)(double, double);    // Declare variable named blockName
    blockName = ^(double devidend, double divisor) {    // Assign block to variable
        double quotient = devidend / divisor;
        return quotient;
    }
    double myQuotion = blockName(42.0, 12.5);   // Call block

    // INCREMENT THE EXTERNAL VAR
    __block int counter = 0;
    void (^counterBlock)() = ^{ counter++; };
    counterBlock(); // increments counter to 1;
    counterBlock(); // increments counter to 2;



    /* --== SORTING ==-- */
    NSSortDescriptor *lastAsc = [NSSortDescriptor sortDescriptorWithKey: @"lastName" ascending:YES];
    [emptyArrayName sortUsingDescriptors: @[lastAsc]];



    /* --== FILTERING ==-- */
    -(void)filterUsingPredicate:(NSPredicate *)predicate; // NSMutableArray
    -(NSArray *)filteredArrayUsingPredicate(NSPredicate *)predicate; // NSArray
    NSPredicate *predicate = [NSPredicate predicateWithFormat: @"holder.valueOfAssets > 70"];
    NSArray *anyName = [emptyArrayName filteredArrayUsingPredicate: predicate];



	/* --== DYNAMIC STRING CREATION ==-- */
	NSString *stringName = [NSString stringWithFormate: @"Text %@", objName];



    /* --== HEAP MEMORY REQUEST ==-- */
    float *startOfBuffer;
    startOfBuffer = malloc(1000 * sizeof(float));
    // ... use the buffer here ...
    free(startOfBuffer);
    startOfBuffer = NULL;



    /* --== CREATE A STRUCT IN HEAP MEMORY ==-- */
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



    /* --== CREATE AN INSTANCE OF CLASS ==-- */
    CustomClass *mikey = [[CustomClass alloc] init];
    [mikey setWeightInKilos: 96];	// set instance variable
    mikey.heightInMeters = 1.7;		// set property attribute



    /* --== CALLBACK TARGET-ACTION ==-- */
    CustomClass *className = [[CustomClass alloc] init];
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0 
                                                      target:className 
                                                    selector:@selector(bodyMassIndex:)
                                                    userInfo:nil
                                                     repeats:YES];
    [[NSRunLoop currentRunLoop] run];



    /* --== CALLBACK HELPER OBJECTS. NEED PROTOCOL IMPLEMENTATION ==-- */
    CustomClass *className = [[CustomClass alloc] init];
    NSURL *url = [NSURL URLWithString:@"http://"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSURLConnection *fetchConn = [[NSURLConnection alloc] initWithRequest:request 
                                                                 delegate:className 
                                                         startImmediately:YES];
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0 
                                                      target:className
                                                    selector:@selector(bodyMassIndex:)
                                                    userInfo:nil
                                                     repeats:YES];
    [[NSRunLoop currentRunLoop] run];



    /* --== CALLBACK NOTIFICATION. NEED SELECTOR IMPLEMENTATION ==-- */
    CustomClass *className = [[CustomClass alloc] init];
    [[NSNotificationCenter defaultCenter] addObserver: className 
                                             selector:@selector(zoneChange:) 
                                                 name:NSSystemTimeZoneDidChangeNotification
                                                 object:nil];
    NSURL *url = [NSURL URLWithString:@"http://"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSURLConnection *fetchConn = [[NSURLConnection alloc] initWithRequest:request 
                                                                 delegate:className
                                                                 startImmediately:YES];
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0 
                                                      target:className
                                                    selector:@selector(bodyMassIndex:)
                                                    userInfo:nil
                                                     repeats:YES];
    [[NSRunLoop currentRunLoop] run];



    /* --== WRITING TO A FILE ==-- */
    NSMutableString *str = [[NSMutableString alloc] init];
    for (int i = 0; i < 10; i++)
        [str appendString: @"Text"];
    [str writeToFile:@"/tmp/file.txt" 
          atomically:YES 
            encoding:NSUTF8StringEncoding 
               error:NULL ];



    /* --== NSURL AND WRITING NSDATA TO A FILE ==-- */
    NSURL *url = [NSURL URLWithString: @"http://www.google.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL: url];
    NSError *error = nil;
    NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:NULL error:&error];
    if (!data)
        // error logic here
    BOOL written = [data writeToFile:@"/tmp/img.png" options:0 error:&error];
    if (!written)
        // error logic here



    /* --== NSError ==-- */
    NSMutableString *strError = [[NSMutableString alloc] init];
    for (int i = 0; i < 10; i++)
        [strError appendString: @"Text"];
    NSError *error; // declare a pointer without init
    BOOL success = [strError writeToFile:@"/tmp/file.txt" 
                              atomically:YES 
                                encoding:NSUTF8StringEncoding 
                                   error:&error];
    if (success)
        //logic here
        else
            // logic here


    return 0;
}



// use accumulators for fast looping
float combine4(float a[], long size) {
    long i, limit = size-3;
    float acc0 = 1;
    float acc1 = 1;
    float acc2 = 1;
    float acc3 = 1;

    for (i = 0; i < limit; i+=4) {
        acc0 *= a[i];
        acc1 *= a[i+1];
        acc2 *= a[i+2];
        acc3 *= a[i+3];
    }
    while (i < size) acc0 *= a[i++];
    return acc0 * acc1 * acc2 * acc3;
}


// use braces for basic operations
for (long i = 0; i < limit; i+=3) {
        float x = a[i], y = a[i+1], z = a[i+2];
        acc = acc * ((x * y) * z);
}


// use ternary operator instead of conditional statement
void minmax2(int a[], int b[], int n) {
    for (int i = 0; i < n; i++) {
        int min = a[i] < b[i] ? a[i] : b[i];
        int max = a[i] < b[i] ? b[i] : a[i];
        a[i] = min;
        b[i] = max;
    }
}
