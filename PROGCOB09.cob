
          IDENTIFICATION DIVISION.
           PROGRAM-ID. PROGCOB09.
      ******************************
      ******** COMENTARIOS  - REMARKS
      *    AUTHOR= KAROLINE
      *    OBJETIVO: RECEBER PRODUTO E VALOR PARA CALCULO DE FRETE
      *    USO DE EVALUATE
      *    DATA= 26/08/21
      ******************************
           ENVIRONMENT DIVISION.
           CONFIGURATION SECTION.
           SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.
           DATA DIVISION.
           WORKING-STORAGE SECTION.
           77 WRK-PRODUTO PIC X(20) VALUE SPACES.
           77 WRK-UF     PIC X(02) VALUE SPACES.
           77 WRK-VALOR  PIC 9(06)V99 VALUE ZEROS.
           77 WRK-FRETE  PIC 9(04)V99 VALUE ZEROS.

           PROCEDURE DIVISION.
      **************RECEBE OS DADOS
               DISPLAY 'ENTRE COM O PRODUTO'.
               ACCEPT WRK-PRODUTO FROM CONSOLE.
               DISPLAY 'ENTRE COM O VALOR'.
               ACCEPT WRK-VALOR FROM CONSOLE.
               DISPLAY 'ENTRE COM O ESTADO DE ENTREGA'.
               ACCEPT WRK-UF FROM CONSOLE.


               EVALUATE WRK-UF
                   WHEN 'SP'
                    COMPUTE WRK-FRETE= WRK-VALOR*1,05
                   WHEN 'RJ'
                    COMPUTE WRK-FRETE= WRK-VALOR*1,10
                   WHEN 'MG'
                       COMPUTE WRK-FRETE= WRK-VALOR*1,15
                   WHEN 'PR'
                       COMPUTE WRK-FRETE = WRK-VALOR*1,20
                   WHEN OTHER
                       DISPLAY 'NAO HA ENTREGAS DISPONIVEIS NA UF'
               END-EVALUATE

      *******************************************
                  IF WRK-FRETE NOT EQUAL 0
                   DISPLAY 'VALOR DO FRETE+ PRODUTO ' WRK-FRETE
                  END-IF.

               STOP RUN.
