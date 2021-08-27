         IDENTIFICATION DIVISION.
           PROGRAM-ID. PROGCOB12.
      ******************************
      ******** COMENTARIOS  - REMARKS
      *    AUTHOR= KAROLINE
      *    OBJETIVO: ORGANIZAÇÃO DE CÓDIGO UTILIZANDO O PROGCOB07
      *    ENTENDER CONTROLE DE BLOCOS
      *    DATA= 27/08/21
      ******************************
           ENVIRONMENT DIVISION.
           DATA DIVISION.
           WORKING-STORAGE SECTION.
           77 WRK-NOTA1 PIC 9(02) VALUE ZEROS.
           77 WRK-NOTA2 PIC 9(02) VALUE ZEROS.
           77 WRK-MEDIA PIC 9(03)V9 VALUE ZEROS.
           77 WRK-MEDIA-ED PIC Z9.9 VALUE ZEROS.
           PROCEDURE DIVISION.
           0001-PRINCIPAL.
               PERFORM 0100-INICIALIZAR.
               IF WRK-NOTA1>0 AND WRK-NOTA2>0
                  PERFORM 0200-PROCESSAR
               END-IF.
               PERFORM 0300-FINALIZAR.
               STOP RUN.
           0100-INICIALIZAR.
      **************RECEBE OS DADOS
               DISPLAY 'INSIRA A PRIMEIRA NOTA'.
               ACCEPT WRK-NOTA1 FROM CONSOLE.
               DISPLAY 'INSIRA A SEGUNDA NOTA'.
               ACCEPT WRK-NOTA2 FROM CONSOLE.

           0200-PROCESSAR.
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

           0300-FINALIZAR.
                DISPLAY ' '.
                DISPLAY '********* BYE **********'.
