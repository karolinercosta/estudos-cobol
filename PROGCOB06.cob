          IDENTIFICATION DIVISION.
           PROGRAM-ID. PROGCOB06.
      ******************************
      ******** COMENTARIOS  - REMARKS
      *    AUTHOR= KAROLINE
      *     TRATAR NUMEROS NEGATIVOS
      *    DATA= 25/08/21
      ******************************
           ENVIRONMENT DIVISION.
           DATA DIVISION.
           WORKING-STORAGE SECTION.
           77 WRK-NUM1  PIC 9(02) VALUE ZEROS.
           77 WRK-NUM2  PIC 9(02) VALUE ZEROS.
           77 WRK-RESUL PIC S9(03) VALUE ZEROS.
           77 WRK-RESUL-ED PIC -ZZ9 VALUE ZEROS.
           PROCEDURE DIVISION.
      ******** RECEBE DADOS
               ACCEPT WRK-NUM1 FROM CONSOLE.
               ACCEPT WRK-NUM2 FROM CONSOLE.
               DISPLAY '********************'.
      *********EXIBE DADOS
               DISPLAY 'NUMERO 1: ' WRK-NUM1.
               DISPLAY 'NUMERO 2: ' WRK-NUM2.
      **********************************
      ********OPERACAO DE SUBTRACAO
               SUBTRACT WRK-NUM2 FROM WRK-NUM1 GIVING WRK-RESUL.
      ********MASCARA SENDO APLICADA
               MOVE WRK-RESUL TO WRK-RESUL-ED.
      ************ RESULTADO SUBTRACAO SENDO EXIBIDO
               DISPLAY 'SUBTRACAO SEM MASCARA:' WRK-RESUL
               DISPLAY 'SUBTRACAO:'WRK-RESUL-ED.
               STOP RUN.
