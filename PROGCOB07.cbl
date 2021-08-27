          IDENTIFICATION DIVISION.
           PROGRAM-ID. PROGCOB07.
      ******************************
      ******** COMENTARIOS  - REMARKS
      *    AUTHOR= KAROLINE
      *    OBJETIVO: RECEBER DOIS VALORES E FAZER A MÉDIA
      *    USO DE IF/ELSE/ENDIF
      *    DATA= 26/08/21
      ******************************
           ENVIRONMENT DIVISION.
           DATA DIVISION.
           WORKING-STORAGE SECTION.
           77 WRK-NOTA1 PIC 9(02) VALUE ZEROS.
           77 WRK-NOTA2 PIC 9(02) VALUE ZEROS.
           77 WRK-MEDIA PIC 9(03)V9 VALUE ZEROS.
           77 WRK-MEDIA-ED PIC Z9.9 VALUE ZEROS.
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
      **************IF/ELSE
                IF WRK-MEDIA>= 6
                    DISPLAY 'O ALUNO FOI APROVADO!'
                ELSE
                    IF WRK-MEDIA >=2
                        DISPLAY 'E VAMOS DE RECUPERACAO...'
                    ELSE
                       DISPLAY 'O ALUNO FOI REPROVADO :('
                    END-IF.
               STOP RUN.
