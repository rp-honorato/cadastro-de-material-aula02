*&---------------------------------------------------------------------*
*& Report ZCADMATERIAL_AULA02_A71
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zcadmaterial_aula02_a71.

*DEFINIÇÃO DE MATERIAL
DATA:

* Texto com tamanho fixo
  descricao     TYPE c LENGTH 40,
*atribuição de valor durante declaração
  categoria(10) TYPE c VALUE 'VERÃO',
*texto com tamanho infinito
  infoadicional TYPE string,
*alfanumérico - numero como texto
  codigo        TYPE n LENGTH 10 VALUE 32,
*numerico inteiro puro
  estoque       TYPE i VALUE 100,
*numerico com casas decimais
preco type p decimals 2 value '30.87',
*data
data_fabricacao type d value '20221203',
*hora
hora_fabricacao type t value '092805',
*booleano - true or false
marca_propria type abap_bool.

*operações aritméticas
data total type p decimals 2.
total = preco * estoque.

descricao = 'Camisa de Lycra'.
infoadicional = 'Produzido na zona franca de Manaus e exportado pela empresa catarinense Mormaii'.
marca_propria = abap_true.

WRITE:
/ 'Produto', 30 descricao,
/ 'Categoria', 30 categoria,
/ 'Informações Adicionais', 30 infoadicional,
/ 'Código', 30 codigo,
/ 'Estoque', 30 estoque,
/ 'Preço', 30 preco,
/ 'Data de Fabricação', 30 data_fabricacao,
/ 'Horário', 30 hora_fabricacao,
/ 'Marca Propria', 30 marca_propria,
/ 'Total', 30 total.
