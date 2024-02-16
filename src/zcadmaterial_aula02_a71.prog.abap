*&---------------------------------------------------------------------*
*& Report ZCADMATERIAL_AULA02_A71
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zcadmaterial_aula02_a71.

*DEFINIÇÃO DE MATERIAL

*DEFININDO ESTRUTURAS
DATA: begin of produto,
  descricao       TYPE c LENGTH 40,
  categoria(10)   TYPE c VALUE 'VERÃO',
  infoadicional   TYPE string,
  codigo          TYPE n LENGTH 10 VALUE 32,
  estoque         TYPE i VALUE 100,
  preco           TYPE p DECIMALS 2 VALUE '30.87',
  data_fabricacao TYPE d VALUE '20221203',
  hora_fabricacao TYPE t VALUE '092805',
  marca_propria   TYPE abap_bool,
  END OF produto.

*operações aritméticas
DATA total TYPE p DECIMALS 2.
total = produto-preco * produto-estoque.

produto-descricao = 'Camisa de Lycra'.
produto-infoadicional = 'Produzido na zona franca de Manaus e exportado pela empresa catarinense Mormaii'.
produto-marca_propria = abap_true.

WRITE:
/ 'Produto', 30 produto-descricao,
/ 'Categoria', 30 produto-categoria,
/ 'Informações Adicionais', 30 produto-infoadicional,
/ 'Código', 30 produto-codigo,
/ 'Estoque', 30 produto-estoque,
/ 'Preço', 30 produto-preco,
/ 'Data de Fabricação', 30 produto-data_fabricacao,
/ 'Horário', 30 produto-hora_fabricacao,
/ 'Marca Propria', 30 produto-marca_propria,
/ 'Total', 30 total.
