// Fig. 9.2: Time.cpp
// Time class member-function definitions.
#include <iostream>
#include <iomanip>
#include <stdexcept> // for illegal_argument exception class
#include "Time.h" // include definition of class Time from Time.h

using namespace std;

// Time constructor initializes each data member to zero.
Date::Date() 
   
{ year=0;
month=0;
day=0;
} // end Time constructor

// set new Time value using universal time
void Date::setDate( int h, int m, int s )
{
   // validate hour, minute and second
   if ( ( h >= 0 && h < 3000 ) && ( m >= 0 && m <= 12 ) && 
      ( s >= 0 && s <= 31 ) ) 
   {
      year = h;
      month = m;
      day = s;
   } // end if
   else
      throw invalid_argument( 
         "year, month and/or day was out of range" );
} // end function setTime

// print Time in universal-time format (HH:MM:SS)
void Date::printUniversal() const  //印出西元 
{
   cout << setfill( '0' ) << setw( 4 ) << year << "/" 
      << setw( 2 ) << month << "/" << setw( 2 ) << day <<" 西元" <<endl;
} // end function printUniversal

// print Time in standard-time format (HH:MM:SS AM or PM)
void Date::printROC() const   //印出民國 
{
   cout << ( ( year < 200 ) ? year : year - 1911 ) << "/" 
      << setfill( '0' ) << setw( 2 ) << month << "/" << setw( 2 )
      << day <<" 民國" << endl;
} // end function printStandard
