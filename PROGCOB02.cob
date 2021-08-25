           IDENTIFICATION DIVISION.
           PROGRAM-ID. PROGCOB02.
      ******************************
      ******** COMENTARIOS  - REMARKS
      *    AUTOHOR= KAROLINE
      *     MOSTRAR RECEBER E IMPRIMIR UMA STRING
      *    DATA= 25/08/21
      ******************************
           ENVIRONMENT DIVISION.
           DATA DIVISION.
           WORKING-STORAGE SECTION.
           77 WRK-NOME PIC X(20) VALUE SPACES.
           PROCEDURE DIVISION.
               ACCEPT WRK-NOME FROM CONSOLE.
               DISPLAY 'NOME:' WRK-NOME(1:10).
               STOP RUN.
