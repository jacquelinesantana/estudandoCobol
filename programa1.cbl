      ******************************************************************
      * Author: Jacqueline Hernandes
      * Date: 2025/05/05
      * Purpose: aprendendo a programar em cobol, saída de dados
      * Tectonics: cobc
      *******https://gemini.google.com/app/b73cc3c2aebad19c***********************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa1.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77   N1    PIC 9(03) VALUES ZEROS.
       77   N2    PIC 9(03) VALUES ZEROS.
       77   RESUL PIC Z(03) VALUES ZEROS.
       77   NOME  PIC A(15).
       77   SINAL PIC S9(4) VALUES ZEROS.

      *>  NIVEIS DE DADOS
      *>  01 -> NIVEL MAIS ALTO - DADOS PRINCIPAIS - ACEITA SUBITENS
      *>  02 - 49 -> NIVEIS USADOS PARA SUBDIVISÕES DE UM GRUPO
      *>  66 -> RENOMEAR CAMPOS
      *>  77 -> DEFINIR VARIAVEIS SIMPLES NÃO PERTENCE A GRUPOS
      *>  88 -> DEFINIR NIVEIS CONDICIONAIS COMO VALORES DE CONDIÇÕES
       01 DADOS-CLIENTE.
           05  NOMECLIENTE   PIC X(30).
           05  CPF           PIC 9(11).



       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            MOVE "Jacqueline" TO NOMECLIENTE.
            DISPLAY NOMECLIENTE
            MOVE 1234567890 TO CPF.
            DISPLAY DADOS-CLIENTE

            MOVE 5 TO N1
      *>       ATRIBUIR VALOR A UMA VARIÁVEL N1
            MOVE 15 TO N2
            COMPUTE RESUL = N1 + N2
      *>       calculos devem estar com o compute
            MOVE "JACQUELINE" TO NOME
            DISPLAY "VALOR DA VARIAVEL EH: " N1

            DISPLAY "O RESULTADO DA SOMA DE N1 + N2 :" RESUL
            COMPUTE RESUL = N2 - N1
            DISPLAY "O RESULTADO DA SUBTRACAO N2 - N1: "RESUL
            DISPLAY NOME
            DISPLAY "NOME"
            STOP RUN.
       END PROGRAM programa1.
