      *> Cobol tuturial on youtube
       IDENTIFICATION DIVISION.
       PROGRAM-ID. data_classification.
       AUTHOR. Franklin Ngkokam Ngongang.
       DATE-WRITTEN.November 14th, 2024 5:33 PM.
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
           IF Score IS PassingScore THEN
               DISPLAY " You Passed"
           ELSE
               DISPLAY "You Failed"
           END-IF
           *> Built In Classifications
           *> NUMERIC ALPHABETIC ALPHABETIC-LOWER ALPHABETIC-UPPER
           IF Score IS NUMERIC THEN
               DISPLAY "Score Is A Number"
           ELSE
               DISPLAY "Score Is Not A Number"
           END-IF
           
           IF Grade IS NUMERIC THEN
               DISPLAY "Grade is a numeric value."
           END-IF

           IF Age > 18 THEN 
               SET CanVote TO TRUE
           ELSE
               SET CantVote TO TRUE
           END-IF

           DISPLAY "Vote " CanVoteFlag

           DISPLAY "Enter Single Number or X to Exit: "
           ACCEPT TestNumber
           PERFORM UNTIL NOT ANumber
               EVALUATE TRUE
                   WHEN IsPrime DISPLAY "Prime"
                   WHEN IsOdd DISPLAY "Odd"
                   WHEN IsEven DISPLAY "Even"
                   WHEN LessThan5 DISPLAY "Less than 5"
                   WHEN OTHER DISPLAY "Default Action"
                END-EVALUATE
                ACCEPT TestNumber

           END-PERFORM
           
           STOP RUN.
