           IDENTIFICATION DIVISION.
           PROGRAM-ID. PROG01-CPF.
      ******************************
      ******** COMENTARIOS  - REMARKS
      *    AUTOHOR= KAROLINE
      *     MOSTRAR RECEBER CPF
      *    DATA= 25/08/21
      ******************************
           ENVIRONMENT DIVISION.
           CONFIGURATION SECTION.
           SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.
           DATA DIVISION.
           WORKING-STORAGE SECTION.
           77 WRK-CPF PIC X(11) VALUE ZEROS.
           77 WRK-CPF-ED PIC ZZZ.ZZZ.ZZZ/ZZ VALUE ZEROS.
           PROCEDURE DIVISION.
               DISPLAY 'DIGITE O CPF A SER FORMATADO: '.
               ACCEPT WRK-CPF FROM CONSOLE.
      **************************MOSTRA DADOS
               DISPLAY '********************'
               DISPLAY 'CPF ANTES ' WRK-CPF.
               MOVE WRK-CPF TO WRK-CPF-ED.
               DISPLAY 'CPF FORMATADO: ' WRK-CPF-ED.
               STOP RUN.
