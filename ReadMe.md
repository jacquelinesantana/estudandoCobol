# Cobol

Linguagem criada em 1959 - 1960 pela IBM, inicialmente atendia ao paradigma estrutural e depois se atualizou para Programação Orientada a objetos. Seu nome Cobol(COmand Business ORiented Language)  foi amplamente utilizada para sistemas de grande porte em mainframe. É uma linguagem de alto nível escrita de fácil leitura em inglês, mas com alguma particularidades quando comparada a outras linguagens mais utilizadas na atualidade.

## Plataformas para desenvolvimento(IDE)

- [ ] Podemos usar a ferramenta da IBM Open Cobol IDE - não é uma ferramenta paga [OpenCobolIDE · PyPI](https://pypi.org/project/OpenCobolIDE/)

- [ ] Podemos usar o VS Code - ferramenta de uso gratuíto https://code.visualstudio.com

As duas ferramentas funcionam para o Cobol inicialmente eu escolhi usar o OpenCobol para conhecer a ferramenta também. Dentro do VS Code você pode utilizar extensões para te ajudar no desenvolvimento com essa linguagem.

## Ambiente mais profissional

Topaz, mainframe express - ferramentas pagas

TN 3270 via hercules (um emulador de mainframe) ou via tk4

## Divisões do Cobol

A Linguagem Cobol possui uma estrutura a qual devemos respeitar e manter para que as coisas funcionem, essa estrutura envolve divisões destinadas a um fim ou uma parte do código e também sessões.

As quatro divisões do Cobol são:

### Divisão de identificação

Parte do código que se dedica a apresentar as informações de identificação do código e da pessoa que o desenvolveu:

```
PROGRAM-ID. YourProgramName
AUTOR. Seu nome
DATE-WRITTEN. AAAAMMDD
COMENTÁRIO. "Breve descrição do programa"
```

### Divisão de ambiente

Divisão de tempo de execução, pode conter informações de sistema, recursos do computador e do compilador e esta divisão vem se tornando obsoleta nos sistemas Cobol moderno que podem se adaptar automaticamente ao ambiente.

### Divisão de dados

A divisão que abriga todas as variáveis, arquivos e definições de constantes do seu programa.

Ela possui as sessões organizadas para que arquivos e variáveis sejam informadas de forma organizada e separada dentro dessa divisão.

```
DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77   N1    PIC 9(03) VALUES ZEROS.
       77   N2    PIC 9(03) VALUES ZEROS.
       77   RESUL PIC Z(03) VALUES ZEROS.
       77   NOME  PIC A(15).
       77   SINAL PIC S9(4) VALUES ZEROS.

       01 DADOS-CLIENTE.
           05  NOMECLIENTE   PIC X(30).
           05  CPF           PIC 9(11).
```

### Divisão de procedimentos

Agora sim teremos o código executável do programa. Seguindo essas regras você poderá ainda ter um código muito mais simples de se fazer a leitura e entendimento já que sabe exatamente onde as coisas vão estar idependente de você ter sido a pessoa que desenvolveu o código ou estar fazendo manutenção em um sistema mais "antigo".

```
PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            MOVE 5 TO N1
            MOVE 15 TO N2
            COMPUTE RESUL = N1 + N2
            MOVE "JACQUELINE" TO NOME
            DISPLAY "VALOR DA VARIAVEL EH: " N1
            DISPLAY "O RESULTADO DA SOMA DE N1 + N2 :" RESUL
            COMPUTE RESUL = N2 - N1
            DISPLAY "O RESULTADO DA SUBTRACAO N2 - N1: "RESUL
            DISPLAY NOME
            DISPLAY "NOME"
            STOP RUN.
```

#### Componentes

Para o Cobol todo código vai estar dentro de sessões em forma de parágrafos, tal qual a escrita comum. 

Cada paragrafo vai ser iniciado com um VERBO do Cobol (MOVE, DISPLAY, ADD WRITE, COMPUTE, READ) que indica como o código deve ser executado.

## Variáveis

No Cobol temos uma forma diferente de tratar as variáveis, sim elas continuam com o mesmo conceito de ser um espaço reservado em memória onde vamos inputar dados, mas a forma como tratamos é um pouco diferente, vamos colocar a seguir a estrutura de como se declarar uma variável e vamos entender depois como essa estrutura se dá e como ela pode ser manipulada.

```

    77 N1 PIC 9(03) VALUES ZEROS.
    77 N2 PIC 9(03) VALUES ZEROS.
    77 RESUL PIC Z(03) VALUES ZEROS.
    77 NOME PIC A(15).
    77 SINAL PIC S9(4) VALUES ZEROS.

    01 DADOS-CLIENTE.
               05  NOMECLIENTE   PIC X(30).
               05  CPF           PIC 9(11).
```

Entendendo a estrutura:

`77 N1 PIC 9(03) VALUES ZEROS.` 

77 -> nível ou indicador de nível, no caso o 77 é um item independente , não possui subitem.

N1 ->  nome da variável

PIC -> Nomenclatura que deriva de PICTURE e aqui nos indica uma variável 

9 -> Indica o tipo de dado que vamos armazenar na variável, no caso aqui trata-se de dados numéricos

(03) -> Indica o tamanho da variável, quantos digitos ela consegue receber, no caso 3 digitos de números.

Values -> Ajuda a gente a iniciar o valor da variável.

Zeros -> Indica que a variável será iniciada com zeros.

### Indicador de Níveis

| Nível | Descrição                                                                                                                                                                                                                                                                                                                                                                                                                       |
| ----- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 01    | Normalmente utilizado para definir itens de grupo, esse nível é comumente visto em estruturas de dados que requer subitens ou itens dependentes desse. Exemplo dados-cliente é uma estrutura de dados que requer dados subitens para especificar quem é o cliente (nome), qual os contatos desse cliente(telefone, email). Então assim dados-cliente pode ser um dado de nível 01 e ter o nome, telefone e email como subitens. |
| 02-49 | Define itens de um grupo, no exemplo do dados-cliente os subitens nome, telefone e email podem receber o nível de 02 a  49                                                                                                                                                                                                                                                                                                      |
| 77    | Item independente, não possue subitem                                                                                                                                                                                                                                                                                                                                                                                           |
| 88    | Especifica condições que devem ser associadas a valores particulares, exemplo uma idade deve ser um numero entre 0 - 110 então podemos passar o VALUE  0 THRU 110. <br/>Um código de produto deve ser 1010, 1011 ou 1013 então podemos pasar o VALUE 1010, 1011, 1013.                                                                                                                                                          |

### Indicador de tipo de dado

| Tipo              | Descrição                                                                                 |
| ----------------- | ----------------------------------------------------------------------------------------- |
| 9                 | Indica tipo de dado numérico 0-9                                                          |
| Z                 | Tratamento de saída do dado que permite suprimir os zeros a esquerda de um valor numérico |
| A                 | Indica tipo de dados alfabético A-Z                                                       |
| S                 | Indica tipo de dados com sinais + -                                                       |
| X                 | Indica tipo de dado alfanumérico, aceita letras e números                                 |
| S9                | Valor numérico com sinal positivo e negativo                                              |
| S9(13) V99 COMP-3 | Decimal compactado, não ocupa 13 caracteres quando o valor for de menor número de dígitos |
| 999.999.999,99    | Mascara para entrada em formato                               |
| zzz.zzz.zz9,99    |                                                                                           |
| ---.---.--9,99    |                                                                                           |
| $$$.$$$.$$9,99$   |                                                                                           |
| asteriscos        |                                                                                           |
|                   |                                                                                           |


