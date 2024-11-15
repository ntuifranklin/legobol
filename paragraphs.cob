      *> Paragraphs
       IDENTIFICATION DIVISION.
           PROGRAM-ID. paragraphs.
           AUTHOR. Franklin Nkokam Ngongang
           DATE-WRITTEN.November 14TH 2024 8:08 PM
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       PROCEDURE DIVISION.
       SubOne.
           DISPLAY "In paragraph 1"
           PERFORM SubTwo
               DISPLAY "Returned to Paragraph 1"
               PERFORM SubFour 2 TIMES.
           STOP RUN.
           
       SubThree.
           DISPLAY "In Paragraph 3".

       SubTwo.
           DISPLAY "In Paragraph 2"
           PERFORM SubThree.
           DISPLAY "Returned to Paragraph 2".

       SubFour.
           DISPLAY "Repeat"

       STOP RUN.
           

