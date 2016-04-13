/**********************************************************
 * This file is generated by 20-sim ANSI-C Code Generator
 *
 *  file:  src\xxtypes.h
 *  model: R2G2P_Body_Only
 *  expmt: R2G2P_Body_Only
 *  date:  April 5, 2016
 *  time:  10:29:15 AM
 *  user:  INTO-CPS
 *  from:  20-sim 4.6 Professional Single
 *  build: 4.6.0.6684
 **********************************************************/

/* This file describes the typedefs that are used for integers and
   doubles. All the generated code uses these typedefs to enhance
   flexibility (in case the compiler is not Visual C++ 6 or the destination
   platform is not Windows 2000 on a Pentium 4).
   
   The user should be aware of the precision of these types, when
   these types are changed! For instance, when the destination platform 
   is a particular 8051 that does not support any doubles at all,
   one might change the XXDouble type into some float of 4 bytes.
   The results may then differ from the 20-sim results. It is advised
   to check these differences by running the code with both settings
   on the PC first (as far as this is possible).
   
   In 20-sim the following definitions are used:
   
    typedef XXDouble double;
    typedef XXInteger int;
   
   so that 
   
    XXDouble is 8 bytes (64 bits) with a range of [-1.7E+308, 1.7E+308]
    XXInteger is 4 bytes (32 bits) with a range of [-2147483648, 2147483647]
    XXCharacter is 1 byte (8 bits) with a value of [0, 255]
    XXBoolean is 1 byte (8 bits) with a value of 0 or 1
*/ 

#ifndef XX_TYPES_H
#define XX_TYPES_H
#include "fmi2FunctionTypes.h"

/* The mentioned typedefs */
typedef fmi2Real XXDouble;
typedef fmi2Integer XXInteger;
typedef fmi2Integer XXCharacter;
typedef fmi2Boolean XXBoolean;
typedef fmi2String XXString;

/* the matrix declaration */
typedef struct
{
	XXDouble *mat;
	XXInteger rows;
	XXInteger columns;
} XXMatrix;


/* Defines */
#define XXTRUE  fmi2True
#define XXFALSE fmi2False

#endif

