       *> Looping
       IDENTIFICATION DIVISION.
           PROGRAM-ID. looping.
           AUTHOR. Franklin Nkokam Ngongang.
           DATE-WRITTEN. November 15th 2024 @ 10:16 am.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Ind PIC 9(1) VALUE 0.
       01 MAXIMUM PIC 9(1) VALUE 8.
       01 TAB-CHAR PIC X(2) VALUE X'05'. 

       PROCEDURE DIVISION.
           DISPLAY "Running OutPutdata"
           PERFORM OUtPutData WITH TEST AFTER UNTIL  Ind > MAXIMUM
           DISPLAY "Running ForLoop"
           GO TO ForLoop.
    
       OutPutData.
           DISPLAY TAB-CHAR "Inside OutPutdata"
           DISPLAY Ind.
           ADD 1 TO Ind.

       ForLoop.
           DISPLAY TAB-CHAR "Inside ForLoop"
           PERFORM OutPutData2 VARYING Ind FROM 0 BY 
           1 UNTIL Ind=MAXIMUM

           STOP RUN.

       OutPutData2.
           DISPLAY TAB-CHAR "Inside OutPutdata2"
           DISPLAY Ind.