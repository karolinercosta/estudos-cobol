
          IDENTIFICATION DIVISION.
           PROGRAM-ID. PROGCOB11.
      ******************************
      ******** COMENTARIOS  - REMARKS
      *    AUTHOR= KAROLINE
      *    OBJETIVO: CALCULAR AREA COM OS DADOS LARGURA E COMPRIMENTO
      *    DATA= 27/08/21
      ******************************
           ENVIRONMENT DIVISION.
           CONFIGURATION SECTION.
           SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.
           DATA DIVISION.
           WORKING-STORAGE SECTION.
           77 WRK-COMPRIMENTO  PIC 9(03)V99 VALUE ZEROS.
           77 WRK-LARGURA      PIC 9(03)V99 VALUE ZEROS.
           77 WRK-AREA         PIC 9(07)V99 VALUE ZEROS.
           77 WRK-AREA-ED      PIC ZZZZ9,99.
           PROCEDURE DIVISION.

      **************RECEBE OS DADOS
               DISPLAY 'ENTRE COM O ALTURA EM METROS'.
               ACCEPT WRK-COMPRIMENTO.
               DISPLAY 'ENTRE COM O LARGURA EM METROS'.
               ACCEPT WRK-LARGURA.

               IF WRK-LARGURA >0 AND WRK-COMPRIMENTO>0
                   COMPUTE WRK-AREA= (WRK-LARGURA * WRK-COMPRIMENTO)
                   MOVE WRK-AREA TO WRK-AREA-ED
                   DISPLAY 'AREA:' WRK-AREA-ED ' M'
               ELSE
                   DISPLAY 'NÃO FOI POSSIVEL CALCULAR, FALTAM DADOS!'
               END-IF.
      ***************VALIDACAO



               STOP RUN.
