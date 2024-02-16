*&---------------------------------------------------------------------*
*& Report ZCADMATERIAL_AULA02_A71
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zcadmaterial_aula02_a71.

*DEFINIÇÃO DE MATERIAL

* CRIANDO/DEFININDO ESTRUTURAS
DATA: begin of produto,
  descricao       TYPE c LENGTH 40,
  codigo          TYPE n LENGTH 10 VALUE 32,

  END OF produto.

*Definindo tabela LIKE a partir de uma estrutura
DATA: produtos LIKE TABLE OF produto.

*Criando Registro para a tabela produtos
produto-codigo = 31.
produto-descricao = 'azeitona verde'.

*inserindo os dados da estrutura na tabela produtos
insert produto into table produtos.

produto-codigo = 32.
produto-descricao = 'café solúvel'.

insert produto into table produtos.

*acessando e imprimindo os dados de uma tabela a partir do índice
WRITE:
/ 'Codigo:', produtos[ 1 ]-codigo,
/ 'Produto: ', produtos[ 1 ]-descricao.

WRITE:
/ 'Codigo:', produtos[ 2 ]-codigo,
/ 'Produto: ', produtos[ 2 ]-descricao.
