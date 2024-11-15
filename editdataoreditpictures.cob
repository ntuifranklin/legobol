       *> Editting data, or editting picutres
       IDENTIFICATION DIVISION.
           PROGRAM-ID. edittingdataoreditpictures.
           AUTHOR. Franklin Nkokam Ngongang
           DATE-WRITTEN. November 15th 2024 @ 10:37 am.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 StartNum PIC 9(8)V99 VALUE 00001123.55.
       01 NoZero PIC ZZZZZZZZ9.99.
       01 NoZPlusC PIC ZZ,ZZZ,ZZ9.99.
       01 Dollar PIC $$,$$$,$$9.99.
       01 BDay PIC 9(8) VALUE 12211974.
       01 ADate PIC 99/99/9999.
           
       PROCEDURE DIVISION.
           MOVE StartNum TO NoZero
           DISPLAY NoZero
           MOVE StartNum TO NoZPlusC
           DISPLAY NoZPlusC
           MOVE StartNum TO Dollar
           DISPLAY Dollar
           MOVE StartNum TO BDay
           DISPLAY BDay
           MOVE StartNum TO ADate
           DISPLAY ADate
           STOP RUN.
