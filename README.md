# README


 Desafio Prosas - Criação de uma simples api para um crud chamado "proposta" com validação de campos.
 
- Ruby version: 2.5.1p57
- Rails version: 5.2.6.2

Dependencias:
Gem faker 

Instruções de execução:

1) baixar e descompactar o projeto 
2) se dirigir a pasta do projeto (cd desafio_prosas)
3) Rodar task dev:setup para popular o bd de 10 em 10 registros (rails dev:setup)
4) Subir o servidor (rails s -p "numero da porta desejada")

Urls:
1) recupera todos os registros da tabela "propostas" ==> http://localhost:3000/proposals  (GET)
2) recupera registro da tabela "propostas" pelo ID ==> http://localhost:3000/proposals/"id" (GET)
3) deleta registro especifico da tavela "propostas" pelo ID ==> http://localhost:3000/proposals/"id" (delete)
4) cria novo registro da tabela "propostas"  ==> http://localhost:3000/proposals (POST)

body
{
    "name":"Nome da proposta",
    "description":"Descrição da proposta",
    "start_date":"01-01-2022",
    "end_date":"01-02-2022",
    "value":"0.01"
}
