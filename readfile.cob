       IDENTIFICATION DIVISION.
       PROGRAM-ID. readfile.
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
           02 IDNum                   PIC 9(5).
           02 CustName.
               03 FirstName           PIC X(15).
               03 LastName            PIC X(15).

       WORKING-STORAGE SECTION.
       01 WSCustomerRecord.
           02 WSIDNum                 PIC 9(5).
           02 WSCustName.
               03 WSFirstName         PIC X(15).
               03 WSLastName          PIC X(15).
       01 END_OF_FILE_TOKEN           PIC x(1) VALUe 'Y'.

       01 WSEOF PIC A(1).

       PROCEDURE DIVISION.
       OPEN INPUT CustomerFile.
           PERFORM UNTIL WSEOF='Y'
               READ CustomerFile INTO WSCustomerRecord
                   AT END MOVE END_OF_FILE_TOKEN TO WSEOF
                   NOT AT END DISPLAY WSCustomerRecord
               END-READ
           END-PERFORM
       CLOSE CustomerFile.
       STOP RUN.
