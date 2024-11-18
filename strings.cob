        *> String manipulation
       IDENTIFICATION DIVISION.
       PROGRAM-ID. strings.
       AUTHOR Franklin Nkokam Ngongang.
       DATE-WRITTEN. ovember 15th 2024 @ 11:15 am.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 SampStr     PIC X(18) VALUE 'eerie beef sneezed'.
       01 NumChars    PIC 99 VALUE 0.
       01 NumEs       PIC 99 VALUE 0.
       01 FName       PIC X(6) VALUE 'Martin'.
       01 MName       PIC X(11) VALUE 'Luther King'.
       01 LName       PIC X(4) VALUE 'King'.
       01 FLName      PIC X(11).
       01 FMLName     PIC X(18).
       01 SStr1       PIC X(7) VALUE "The egg".
       01 SStr2       PIC X(9) VALUE "is #1 and".
       01 Dest        PIC X(33) VALUE "is the big chicken".
       01 Ptr         PIC 9 VALUe 1.
       01 SStr3       PIC X(3).
       01 SStr4       PIC X(3).
       01 SStr5       PIC X(3).
       01 SStr6       PIC X(3).
       PROCEDURE DIVISION.
       INSPECT SampStr TALLYING Numchars FOR CHARACTERS.
       DISPLAY "Number of Characters: " NumChars.
       INSPECT SampStr TALLYING NumEs FOr ALL 'e'.
       DISPlAY "Number of Es : " NumEs.
       DISPLAY FUNCTION UPPER-CASE(SampStr)
       DISPLAY FUNCTION LOWER-CASE(SampStr)

       STRING FName DELIMITED BY SIZE
       SPACE
       LNAME DELIMITED BY SIZE
       INTO FLName.
       DISPLAY FLName.

       STRING FLName DELIMITED By SPACES
       SPACE
       MName DELIMITED BY SIZE
       SPACE
       LName DELIMITED BY SIZE
       INTO FMLName
       ON OVERFLOW DISPLAY 'Overflowed'.
       DISPLAY FMLName.

       STRING SStr1 DELIMITED BY SIZE
       SPACE
       SStr2 DELIMITED BY "#"
       INTO Dest
       WITH POINTER Ptr
       ON OVERFLOW DISPLAY 'Overflowed'.
       DISPLAY Dest.
       
       UNSTRING Dest DELIMITED BY SPACE
       INTO SStr3, SStr4, SStr5, SStr6
       END-UNSTRING.
       

       DISPLAY "SStr3: " SStr3.
       DISPLAY "SStr4: " SStr4.
       DISPLAY "SStr5: " SStr5.
       DISPLAY "SStr6: " SStr6.


       STOP RUN.
