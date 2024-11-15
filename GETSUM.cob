       *> Sub routines example
       IDENTIFICATION DIVISION.
           PROGRAM-ID. GETSUM.
           AUTHOR. Franklin Nkokam Ngongang
           DATE-WRITTEN.     nOVEMBER 14TH 2024 8:42 PM
       DATA DIVISION.
       LINKAGE SECTION.
        01 LNum1 PIC 9 VALUE 5.
        01 LNum2 PIC 9 VALUE 4.
        01 LSum1 PIC 99.
       PROCEDURE DIVISION USING LNum1, LNum2, LSum1.
           COMPUTE LSum1 = LNum1 + LNum2.
           DISPLAY LSum1 " = " LNum1 " + " LNum2.
       EXIT PROGRAM.