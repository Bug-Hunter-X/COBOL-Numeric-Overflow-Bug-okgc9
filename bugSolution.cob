01  WS-DATA-AREA. 
    05  WS-AMOUNT         PIC 9(7)V99 VALUE 0. 
    05  WS-QUANTITY       PIC 9(5) VALUE 0. 
    05  WS-PRICE          PIC 9(5)V99 VALUE 0. 

PROCEDURE DIVISION.
    PERFORM 100-INPUT.
    PERFORM 200-CALCULATION.
    PERFORM 300-OUTPUT.
    STOP RUN.

100-INPUT SECTION.
    DISPLAY "Enter Quantity:".
    ACCEPT WS-QUANTITY.
    DISPLAY "Enter Price:".
    ACCEPT WS-PRICE.

200-CALCULATION SECTION.
    COMPUTE WS-AMOUNT = WS-QUANTITY * WS-PRICE.

300-OUTPUT SECTION.
    DISPLAY "Total Amount: " WS-AMOUNT.
END PROGRAM.