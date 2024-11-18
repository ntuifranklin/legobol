       IDENTIFICATION DIVISION.
       PROGRAM-ID. writefile.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CustomerFile ASSIGN TO "Customer.dat"
               ORGANIZATION IS LINE SEQUENTIAL
               ACCESS IS SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       *> File Description( file Descriptor as in C)
       FD CustomerFile.
       01 CustomerRecord.
           02 IDNum                 PIC 9(5).
           02 CustName.
               03 FirstName         PIC X(15).
               03 LastName          PIC X(15).

       WORKING-STORAGE SECTION.
       01 WSCustomer.
           02 WSIDNum                 PIC 9(5).
           02 WSCustName.
               03 WSFirstName         PIC X(15).
               03 WSLastName          PIC X(15).

       PROCEDURE DIVISION.
       OPEN OUTPUT CustomerFile.
           MOVE 00001 TO IDNum.
           MOVE 'DOUG' TO FirstName.
           MOVE 'Thomas' TO LastName.
           WRITE CustomerRecord
           END-WRITE.
       CLOSE CustomerFile.
       STOP RUN.
