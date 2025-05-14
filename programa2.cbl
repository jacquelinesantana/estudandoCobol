      ******************************************************************
      * Author:Jacqueline Hernandes
      * Date:2025-05-12
      * Purpose:aprender a usar os níveis de dados na prática
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa2.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01  DADOS-CLIENTES.
               03  NOME-CLIENTE          PIC X(35).
               03  CPF                   PIC 9(11).

           01 TAXA-ICMS                  PIC 99.
              88   ICMS                         VALUE 1 THRU 25.

           01 TAXA-IOF                   PIC 99.
              88   IOF                          VALUE 1,3,4,5,7.

       PROCEDURE DIVISION.
           MAIN-PROCEDURE.
           MOVE "JACQUELINE HERNANDES" TO NOME-CLIENTE
           MOVE 1234567890             TO CPF
           MOVE 35                     TO TAXA-ICMS
           MOVE 3                      TO TAXA-IOF


           DISPLAY NOME-CLIENTE
           DISPLAY CPF


           DISPLAY " ---------------- -----------------"
           DISPLAY DADOS-CLIENTES

           DISPLAY " ------------- +++++ --------------"
           IF ICMS
               DISPLAY "TAXA ICMS ESTA DENTRO DO ACEITAVEL "
           ELSE
               DISPLAY "TAXA ESTA ACIMA DO VALOR PERMITIDO PARA O ICMS"


           DISPLAY" ******************************************"

           IF IOF
               DISPLAY "IOF ESTA INFORMADO CORRETAMENTE"

           MOVE 12            TO TAXA-IOF

           DISPLAY "COMPARANDO DOIS VALORES"

           IF ICMS AND IOF
               DISPLAY "AS TAXAS ESTAO TODAS DENTRO DO ESPERADO"
           ELSE
               DISPLAY "UMA DAS TAXAS, ESTA INCORRETA"


            STOP RUN.
       END PROGRAM programa2.
