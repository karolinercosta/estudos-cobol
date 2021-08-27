          IDENTIFICATION DIVISION.
           PROGRAM-ID. PROGCOB08.
      ******************************
      ******** COMENTARIOS  - REMARKS
      *    AUTHOR= KAROLINE
      *    OBJETIVO: RECEBER DOIS VALORES E FAZER A MÉDIA
      *    USO DE EVALUATE
      *    DATA= 26/08/21
      ******************************
           ENVIRONMENT DIVISION.
           CONFIGURATION SECTION.
           SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.
           DATA DIVISION.
           WORKING-STORAGE SECTION.
           77 WRK-NOTA1 PIC 9(02) VALUE ZEROS.
           77 WRK-NOTA2 PIC 9(02) VALUE ZEROS.
           77 WRK-MEDIA PIC 9(03)V9 VALUE ZEROS.
           77 WRK-MEDIA-ED PIC Z9,9 VALUE ZEROS.
           PROCEDURE DIVISION.
      **************RECEBE OS DADOS
               DISPLAY 'INSIRA A PRIMEIRA NOTA'.
               ACCEPT WRK-NOTA1 FROM CONSOLE.
               DISPLAY 'INSIRA A SEGUNDA NOTA'.
               ACCEPT WRK-NOTA2 FROM CONSOLE.
      ***************CALCULO DA MÉDIA
               COMPUTE WRK-MEDIA= (WRK-NOTA1+WRK-NOTA2)/2 .
               MOVE WRK-MEDIA TO WRK-MEDIA-ED.
               DISPLAY '*******************'
               DISPLAY 'A MEDIA DO ALUNO E:' WRK-MEDIA-ED.
      **************EVALUATE
                EVALUATE WRK-MEDIA
                   WHEN 6 THRU 10
                       DISPLAY 'O ALUNO FOI APROVADO!'
                   WHEN 2 THRU 5,9
                       DISPLAY 'E VAMOS DE RECUPERACAO...'
                    WHEN OTHER
                       DISPLAY 'O ALUNO FOI REPROVADO :('
                END-EVALUATE.
               STOP RUN.
