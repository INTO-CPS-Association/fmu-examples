/**********************************************************
 * This file is generated by 20-sim ANSI-C Code Generator
 *
 *  file:  src\xxfuncs.c
 *  model: sensorAndTrivialController-02
 *  expmt: sensorAndTrivialController-02
 *  date:  March 29, 2016
 *  time:  10:01:21 AM
 *  user:  INTO-CPS
 *  from:  20-sim 4.6 Professional Single
 *  build: 4.6.0.6684
 **********************************************************/

/* This file contains support functions for several SIDOPS functions

   For flexibility, ANSI-C is created, and typedefs are used
   for integers and doubles, see the xxfuncs.h file for more
   information on these types.

   This means that all used functions follow the ANSI definition.

   Please check the math.h file of your particular compiler
   to see if this is indeed the case. Otherwise, you might have
   to adapt the used functions below to obtain the same behavior.

*/

/* The system include files */
#include <stdlib.h>
#include <math.h>

/* Our own include files */
#include "xxfuncs.h"

/* Constants that are used in our functions below */
XXDouble xx_logarithm_2 =  0.6931471805599453;

typedef union
{
	double m_double;
	const char* m_char;
}str2dbl;

XXDouble XXString2Double(const char* argument)
{
	str2dbl myConversion;
	myConversion.m_char = argument;
	return myConversion.m_double;

}

const char* XXDouble2String(XXDouble argument)
{
	str2dbl myConversion;
	myConversion.m_double = argument;
	return myConversion.m_char;
}

/* The 20-sim SIDOPS functions */
XXDouble XXExponent2 (XXDouble argument)
{
	return (XXDouble) exp (argument * xx_logarithm_2);
}

XXDouble XXIntegerModulo (XXDouble argument1, XXDouble argument2)
{
	XXInteger value;

	value = (XXInteger) (argument1 / argument2);
	return (XXDouble) argument1 - (value * argument2);
}

XXDouble XXPow2 (XXDouble argument)
{
	return argument * argument;
}

XXDouble XXPower (XXDouble argument1, XXDouble argument2)
{
	return (XXDouble) pow (argument1, argument2);
}

XXDouble XXRandom (XXDouble argument)
{
	XXDouble value;

	value = (XXDouble) rand() / (XXDouble) RAND_MAX - 0.5;
	return argument * 2.0 * value;
}

/* 20-sim stubs. Implement them yourself if needed */
XXBoolean XXStopSimulation (XXString message, XXInteger id)
{
	xx_stop_simulation = XXTRUE;
	return 0;
}


