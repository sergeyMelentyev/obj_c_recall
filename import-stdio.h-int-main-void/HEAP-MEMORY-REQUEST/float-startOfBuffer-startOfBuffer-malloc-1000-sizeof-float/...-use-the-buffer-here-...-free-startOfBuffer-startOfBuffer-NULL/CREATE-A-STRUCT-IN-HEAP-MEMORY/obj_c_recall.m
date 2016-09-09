#import <stdio.h>
 
int main(void) {
    /* HEAP MEMORY REQUEST*/
    float *startOfBuffer;
    startOfBuffer = malloc(1000 * sizeof(float));
    // ... use the buffer here ...
    free(startOfBuffer);
    startOfBuffer = NULL;


    /* CREATE A STRUCT IN HEAP MEMORY*/
    typedef struct {
    	float heightInMeters;
    	int weightInKilos;
    } Person;
    Person *mikey = (Person *)malloc(sizeof(Person));
    mikey->weightInKilos = 96;
    mikey->heightInMeters = 1.7;
    free(mikey);
    mikey = NULL;


    return 0;
}
