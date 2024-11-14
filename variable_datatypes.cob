      *> Cobol tuturial on youtube
       IDENTIFICATION DIVISION.
       PROGRAM-ID. variable_datatypes.
       AUTHOR. Franklin Ngkokam Ngongang.
       DATE-WRITTEN. November 14th, 2024.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      *> ZERO, ZEROS, ZEROES,
      *> SPACE SPACES
      *> HIGH-VALUE, HIGH-VALUES
      *> LOW-VALUE, LOW-VALUES
       01 SampleData PIC X(10) Value "Stuff".
       01 JustLetters PIC AAA VALUE "ABC".

       *> 9 stands for numbers, integers or decimals
       *> Placing a number within parenthesis infront of the type.
       *> specifies how many placeholders for that variable type.
       01 JustNums PIC 9(4) VALUE 1234.

       *> S stands for signed in front of 9
       01 SignedInt PIC S9(4) VALUE -1234.
       *> V stands for decimal places after
       01 PayCheck PIC 9(4)V99 VALUE ZEROS. 
       01 Customer. 
           02 Ident PIC 9(3).
           02 CustName PIC X(20).
           02 DateOfBirth.
             03 MOB PIC 99.
             03 DOB PIC 99.
             03 YOB PIC 9(4).
       01 Num1 PIC 9 VALUE 5.
       01 Num2 PIC 9 VALUE 4.
       01 Num3 PIC 9 VALUE 3.

       *> Could also do
       *> 01 ANS PIC S9(2)V9(2) VALUE 0.
       01 Ans PIC S99V99 VALUE 0.
       01 Rem PIC 9V99.
       
       PROCEDURE DIVISION.
           MOVE "More Stuff" TO SampleData.
           Move 123 To SampleData
           DISPLAY SampleData
           DISPLAY PayCheck
           MOVE "123Bob Smith           12211974" TO Customer
           DISPLAY Customer
           DISPLAY CustName
           DISPLAY MOB "/" DOB "/" YOB
           MOVE ZERO TO SampleData
           DISPLAY "Displaying SampleData after Move ZERO"
           DISPLAY SampleData
           MOVE SPACE TO SampleData
           DISPLAY "Displaying SampleData after Move SPACE"
           DISPLAY SampleData
           MOVE HIGH-VALUE TO SampleData
           DISPLAY "Displaying SampleData after Move HIGH-VALUE"
           DISPLAY SampleData
           MOVE LOW-VALUE TO SampleData
           DISPLAY "Displaying SampleData after Move LOW-VALUE"
           DISPLAY SampleData
           MOVE QUOTE TO SampleData
           DISPLAY "Displaying SampleData after Move QUOTE"
           DISPLAY SampleData
           MOVE ALL "2" TO SampleData
           DISPLAY 'Displaying SampleData after Move "2" TO SampleData'
           DISPLAY SampleData
           DISPLAY "Num1: " Num1 ", Num2: " Num2
           ADD Num1 To Num2 GIVING Ans
           DISPLAY "Result: 'ADD Num1 To Num2 GIVING Ans': " Ans
           SUBTRACT Num1 FROM Num2 GIVING Ans
           DISPLAY "Result: 'SUBTRACT Num1 FROM Num2 GIVING Ans': " Ans
           MULTIPLY Num1 BY Num2 GIVING Ans
           DISPLAY "Result: 'MULTIPLY Num1 BY Num2 GIVING Ans': " Ans
           DIVIDE Num1 INTO Num2 GIVING Ans
           DISPLAY "Result: 'DIVIDE Num1 INTO Num2 GIVING Ans': " Ans
           DIVIDE Num1 INTO Num2 GIVING Ans REMAINDER Rem
           DISPLAY "Result: 'DIVIDE Num1 INTO Num2 " NO ADVANCING
           DISPLAY "GIVING Ans REMAINDER Rem': " Rem
           DISPLAY "Remainder: " Rem

           STOP RUN.
