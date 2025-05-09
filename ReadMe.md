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

### Divisão de procedimentos

Agora sim teremos o código executável do programa. Seguindo essas regras você poderá ainda ter um código muito mais simples de se fazer a leitura e entendimento já que sabe exatamente onde as coisas vão estar idependente de você ter sido a pessoa que desenvolveu o código ou estar fazendo manutenção em um sistema mais "antigo".

#### Componentes

Para o Cobol todo código vai estar dentro de sessões em forma de parágrafos, tal qual a escrita comum. 

Cada paragrafo vai ser iniciado com um VERBO do Cobol (MOVE, DISPLAY, ADD WRITE, COMPUTE, READ) que indica como o código deve ser executado.

## Variáveis

No Cobol temos uma forma diferente de tratar as variáveis, sim elas continuam com o mesmo conceito de ser um espaço reservado em memória onde vamos inputar dados, mas a forma como tratamos é um pouco diferente, vamos colocar a seguir a estrutura de como se declarar uma variável e vamos entender depois como essa estrutura se dá e como ela pode ser manipulada.
    77 N1 PIC 9(03) VALUES ZEROS.
    77 N2 PIC 9(03) VALUES ZEROS.
    77 RESUL PIC Z(03) VALUES ZEROS.
    77 NOME PIC A(15).
    77 SINAL PIC S9(4) VALUES ZEROS.

    01 DADOS-CLIENTE.
               05  NOMECLIENTE   PIC X(30).
               05  CPF           PIC 9(11).

Entendendo a estrutura:
