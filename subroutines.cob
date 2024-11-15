       *> Sub routines example
       IDENTIFICATION DIVISION.
           PROGRAM-ID. subroutines.
           AUTHOR. Franklin Nkokam Ngongang
           DATE-WRITTEN.     nOVEMBER 14TH 2024 8:42 PM
       DATA DIVISION.
       WORKING-STORAGE SECTION.
        01 Num1 PIC 9 VALUE 5.
        01 Num2 PIC 9 VALUE 4.
        01 Sum1 PIC 99.
       PROCEDURE DIVISION.
           CALL 'GETSUM' USING Num1, Num2 , Sum1.
           DISPLAY Num1 " + " Num2 " = " Sum1

           STOP RUN.