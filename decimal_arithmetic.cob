       *> Decimal Arithmetic
       IDENTIFICATION DIVISION.
       PROGRAM-ID. decimal_arithmetic.
       AUTHOR. Franklin Nkokam Ngongang.
       DATE-WRITTEN. November 15th 2024 @ 10:52 AM.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       FILE SECTION.

       WORKING-STORAGE SECTION.
       01 Price PIC 9(4)V99.
       01 TaxRate PIC V999 VALUe .075.
       01 FullPrice PIC 9(4)V99.

       PROCEDURE DIVISION.
           DISPLAY "Enter the Price : " WITH NO ADVANCING
           ACCEPT Price
           COMPUTE FullPrice ROUNDED = Price * (1.0 + TaxRate)
           DISPLAY "Price + Tax: " FullPrice
           STOP RUN.
