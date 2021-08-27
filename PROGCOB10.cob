
          IDENTIFICATION DIVISION.
           PROGRAM-ID. PROGCOB10.
      ******************************
      ******** COMENTARIOS  - REMARKS
      *    AUTHOR= KAROLINE
      *    OBJETIVO: RECEBER USUARIO E NIVEL
      *    USO DE VARIAVEL NIVEL 88 (TIPO LOGICA)
      *    DATA= 27/08/21
      ******************************
           ENVIRONMENT DIVISION.
           CONFIGURATION SECTION.
           SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.
           DATA DIVISION.
           WORKING-STORAGE SECTION.
           77 WRK-USUARIO PIC X(20) VALUE SPACES.
           77 WRK-NIVEL  PIC 9(02) VALUE ZEROS.
               88 ADM  VALUE 01.
               88 USUARIO VALUE 02.

           PROCEDURE DIVISION.

      **************RECEBE OS DADOS
               DISPLAY 'ENTRE COM O USUARIO'.
               ACCEPT WRK-USUARIO.
               DISPLAY 'ENTRE COM O USUARIO'.
               ACCEPT WRK-NIVEL.

      ***************VALIDACAO
               IF ADM
                   DISPLAY 'NIVEL- ADMINISTRADOR'
               ELSE
                   IF USUARIO
                       DISPLAY 'NIVEL- USUARIO COMUM'
               ELSE
                   DISPLAY 'USUARIO BARRADO :('
               END-IF.


               STOP RUN.
