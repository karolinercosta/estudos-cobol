           IDENTIFICATION DIVISION.
           PROGRAM-ID. PROGCOB05.
      ******************************
      ******** COMENTARIOS  - REMARKS
      *    AUTOHOR= KAROLINE
      *     USAR OPERADORES ARITIMETICOS
      *    DATA= 25/08/21
      ******************************
           ENVIRONMENT DIVISION.
           DATA DIVISION.
           WORKING-STORAGE SECTION.
           77 WRK-NUM1  PIC 9(02) VALUE ZEROS.
           77 WRK-NUM2  PIC 9(02) VALUE ZEROS.
           77 WRK-RESUL PIC 9(03) VALUE ZEROS.
           77 WRK-RESUL-ED PIC ZZ9 VALUE ZEROS.
           77 WRK-RESTO PIC 9(02) VALUE ZEROS.
           PROCEDURE DIVISION.
      ******** RECEBE DADOS
               ACCEPT WRK-NUM1 FROM CONSOLE.
               ACCEPT WRK-NUM2 FROM CONSOLE.
               DISPLAY '********************'.
      *********EXIBE DADOS
               DISPLAY 'NUMERO 1: ' WRK-NUM1.
               DISPLAY 'NUMERO 2: ' WRK-NUM2.
      ********OPERACAO DE SOMA
               ADD WRK-NUM1 WRK-NUM2 TO WRK-RESUL.
      ********MASCARA SENDO APLICADA
               MOVE WRK-RESUL TO WRK-RESUL-ED.
      ************ RESULTADO SOMA
               DISPLAY '********************'.
               DISPLAY 'SOMA:' WRK-RESUL-ED.
      **********************************
      ********OPERACAO DE SUBTRACAO
               SUBTRACT WRK-NUM1 FROM WRK-NUM2 GIVING WRK-RESUL.
      ********MASCARA SENDO APLICADA
               MOVE WRK-RESUL TO WRK-RESUL-ED.
      ************ RESULTADO SUBTRACAO SENDO EXIBIDO
               DISPLAY 'SUBTRACAO:' WRK-RESUL-ED.
      **********************************
      ********OPERACAO DE DIVISAO
               DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL
                 REMAINDER WRK-RESTO.
      ********MASCARA SENDO APLICADA
               MOVE WRK-RESUL TO WRK-RESUL-ED.
      ************ RESULTADO DIVISAO SENDO EXIBIDO
               DISPLAY 'DIVISAO:' WRK-RESUL-ED.
               DISPLAY 'RESTO:' WRK-RESTO.
      **********************************
      ********OPERACAO DE MULTIPICACAO
               MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL.
      ********MASCARA SENDO APLICADA
               MOVE WRK-RESUL TO WRK-RESUL-ED.
      ************ RESULTADO MULTIPLICACAO SENDO EXIBIDO
               DISPLAY 'MULTIPLICACAO:' WRK-RESUL-ED.
               STOP RUN.
