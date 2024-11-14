      *> Cobol tuturial on youtube
       IDENTIFICATION DIVISION.
       PROGRAM-ID. data_classification.
       AUTHOR. Franklin Ngkokam Ngongang.
       DATE-WRITTEN.November 14th, 2024.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           CLASS PassingScore IS "A" THRU "C", "D".    

       DATA DIVISION.

       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 Age PIC 99 VALUE 0.
       01 Grade PIC 99 VALUE 0.
       01 Score PIC X(1) Value "B".
       01 CanVoteFlag PIC 9 VALUE 0.
           88 CanVote VALUE 1.
           88 CantVote VALUE 0.
       01 TestNumber PIC X.
           88 IsPrime VALUE "1", "3", "5", "7".
           88 IsOdd VALUE "1", "3", "5", "7", "9".
           88 IsEven VALUE "2", "4", "6", "8".
           88 LessThan5 VALUE "1" THRU "4".
           88 ANumber VALUE "0" THRU "9".
       
       PROCEDURE DIVISION.
           DISPLAY "Enter Age: " WITH NO ADVANCING.
           ACCEPT Age.
           IF Age > 18 THEN
               DISPLAY "You Can Vote"
           ELSE
               DISPLAY "You can't vote"
           END-IF
           
           STOP RUN.