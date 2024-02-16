*&---------------------------------------------------------------------*
*& Report ZCADMATERIAL_AULA02_A71
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zcadmaterial_aula02_a71.

*DEFINIÇÃO DE MATERIAL

* CRIANDO/DEFININDO ESTRUTURAS
DATA: BEGIN OF produto,
        descricao TYPE c LENGTH 40,
        codigo    TYPE n LENGTH 10 VALUE 32,

      END OF produto.

*Definindo tabela LIKE a partir de uma estrutura
DATA: produtos LIKE TABLE OF produto.

*Criando Registro para a tabela produtos
produto-codigo = 31.
produto-descricao = 'azeitona verde'.

*inserindo os dados da estrutura na tabela produtos
INSERT produto INTO TABLE produtos.

produto-codigo = 32.
produto-descricao = 'café solúvel'.

INSERT produto INTO TABLE produtos.

produto-codigo = 33.
produto-descricao = 'pao integral'.

*Opção 2 - Comando Append
APPEND produto TO produtos.

*acessando e imprimindo os dados de uma tabela a partir do índice
WRITE:
/ 'Codigo:', produtos[ 1 ]-codigo,
/ 'Produto: ', produtos[ 1 ]-descricao.

WRITE:
/ 'Codigo:', produtos[ 2 ]-codigo,
/ 'Produto: ', produtos[ 2 ]-descricao.

WRITE:
/ 'Codigo:', produtos[ 3 ]-codigo,
/ 'Produto: ', produtos[ 3 ]-descricao.
