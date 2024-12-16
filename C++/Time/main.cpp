// Fig. 9.3: fig09_03.cpp
// Program to test class Time.
// NOTE: This file must be compiled with Time.cpp.
#include <iostream>
#include <stdexcept> // for invalid_argument exception class
#include "Time.h" // include definitionof class Time from Time.h
using namespace std;

int main()
{
   Date t; // instantiate object t of class Time

   // output Time object t's initial values
   cout << "The initial universal Date is ";
   t.printUniversal(); // 00:00:00
   cout << "\nThe initial standard R.O.C. date is ";
   t.printROC(); // 12:00:00 AM

   t.setDate( 2003, 8, 3 ); // change time

   // output Time object t's new values
   cout << "\n\nUniversal date after setDate is ";
   t.printUniversal(); // 13:27:06
   cout << "\nStandard date after setDate is ";
   t.printROC(); // 1:27:06 PM

   // attempt to set the time with invalid values
   try
   {
      t.setDate( 4096, 99, 99 ); // all values out of range
   } // end try
   catch ( invalid_argument &e )
   {
      cout << "\n\nException: " << e.what() << endl;
   } // end catch

   // output t's values after specifying invalid values
   cout << "\nAfter attempting invalid settings:"
      << "\nUniversal time: ";
   t.printUniversal(); // 13:27:06
   cout << "\nStandard time: ";
   t.printROC(); // 1:27:06 PM
   cout << endl;
} // end main
