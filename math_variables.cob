      *> Cobol tuturial on youtube
       IDENTIFICATION DIVISION.
       PROGRAM-ID. math_variables.
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
           ADD Num1, Num2, TO Num3 GIVING Ans
           ADD Num1, Num2, Num3 GIVING Ans
           DISPLAY Ans
           COMPUTE Ans = Num1 + Num2
           COMPUTE Ans = Num1 - Num2
           COMPUTE Ans = Num1 * Num2
           COMPUTE Ans = Num1 / Num2
           DISPLAY ANS
           COMPUTE ANS = Num1 ** 2
           DISPLAY Ans 
           COMPUTE Ans = (3 + 5) * 5
           DISPLAY Ans 
           COMPUTE Ans = 3 + 5 * 5
           DISPLAY Ans 
           COMPUTE Ans ROUNDED = 3.0 + 2.005
           DISPLAY Ans 
           
           STOP RUN.
