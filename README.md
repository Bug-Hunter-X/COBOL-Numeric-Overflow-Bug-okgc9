# COBOL Numeric Overflow Bug
This repository demonstrates a common error in COBOL programs: numeric overflow.  The `bug.cob` program calculates the total amount based on user input, but it can fail if the entered quantity and price exceed the field sizes defined in the data division, leading to incorrect results. The `bugSolution.cob` file shows the corrected code. 

## Bug Description
The program uses PIC 9(5)V99 for WS-AMOUNT, limiting the maximum value to 99999.99. If the calculation exceeds this value, an overflow occurs, and the result is incorrect.  The same issue applies to WS-QUANTITY and WS-PRICE. Incorrect values will result in erroneous output.  This is particularly noticeable with a user entering high values causing numeric overflow.

## Solution
The solution uses larger PIC clauses to accommodate larger values.  Proper error handling and input validation are also best practices to prevent unexpected errors.
