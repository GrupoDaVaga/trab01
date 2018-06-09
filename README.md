# TRABALHO 01:  estacIonA.
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>

David Moura: mouradavid8@gmail.com<br>
Leonardo Arpini: leonardoarpini@gmail.com<br>
Luciano Ananias: luciano.ananias.42@gmail.com <br>
Thiago Alves: thiagofelicio@hotmail.com<br>
<br>
<b>Grupo de Análise</b><br>
Integrantes: Andreângelo, Anne, Caicke e Emanuel<br>
Foi feito um clone desse projeto pois os dois grupos estão desenvolvendo o mesmo projeto, que pode ser acessado no link
[Casa Inteligente](https://github.com/CasaInteligenteBD1/trab01gv).<br>


### 2.INTRODUÇÃO E MOTIVAÇAO<br>

> A empresa "OriginsIA Soluções Tecnologicas" visa colaborar com desenvolvimento de projetos para uma sociedade melhor. Sabendo-se dos desafios para se encontrar vagas em em grandes cidades e grandes centros, ficamos motivados com o desenvolvimento deste sistema "estacIonA". O Sistema "estacIonA" tem como objetivo trazer facilidade e agilizade daqueles que precisam estacionar seus carros em locais cuja as vagas são escassas. Para realizar suas operações adequadamente e empresa necessita que sistema que armazene informações relativas aos estacionamentos, além de também armazenar dados sobre as vagas e as informações dos usuarios. 

> O sistema irá utilizar sensores de presença para saber onde uma vaga está disponível e com a ajuda de câmeras verificará se o carro na vaga é a da pessoa que a reservou. Todo o sistema de reserva e pagamento será feito por um aplicativo que utilizando o sensor de gps mostrará um mapa em tempo real do local onde se encontra o carro e o guiará até a vaga correta. O banco de dados consistirá em dados do cliente como nome, email, cpf/cnpj, número da placa, número do cartão de crédito, além dos dados do estabelecimento e dos dados coletados pelos sensores. <br>
 

### 3.MINI-MUNDO Novo<br>

> 
O Sistema proposto ao usuário apresenta as seguintes informações .Do cliente serão armazenados o nome,senha,e-mail,CPF,numero de telefone e placa do veiculo.Das formas de pagamentos serão armazenados numero de cartão de crédito, data de vencimento, nome impresso no cartão, além dos créditos depositados. O usuário cadastrado no aplicativo pode de qualquer lugar efetuar a reserva de vaga em um estacionamento caso esta já não tenha sido reservado, escolhendo assim o método de pagamento mais apropriado e fetuando o pagamento do valor referente aquele estacionamento informado pelo próprio aplicativo.
O sistema proposto ao administrador apresenta as seguintes informações: Da empresa será armazenada o nome,e-mail, senha e CNPJ, Dos estacionamentos serão armazenados o Local e código das vagas, o administrador poderá adicionar o remover qualquer estacionamento e alterar o numero de vagas a qualquer momento.
<br>

[Mockup App](https://github.com/GrupoDaVaga/trab01/blob/david/mockups/ESTACIONA%20APP.pdf)  
[Mockup Web](https://github.com/GrupoDaVaga/trab01/blob/david/mockups/ESTACIONA%20WEB.pdf)  

#### 4.1 TABELA DE DADOS DO SISTEMA:
[Tabela_de_dados_estacIonA](https://drive.google.com/open?id=1wyr_sFZ0AyqciscpmG4qH-GHCdzUoFPeD8juoA5IZ3M)
    
    
#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?<br>
   > O sistema fornecerá relatórios sobre a vaga que foi reservada e as informações do cliente, da empresa responsável pela vaga, da reserva (preço, data) e do veículo do cliente. Os principais relatórios obtidos são: <br><br>
   - Vagas disponíveis;<br>
   - Relatório sobre determinada vaga;<br>
   - Relatório sobre a reserva da vaga;<br>
   - Relatório sobre determinado cliente;<br>
   - Histórico de reservas de determinado cliente;<br>
   - Créditos restantes de um determinado cliente;<br>
   - Relatório da empresa responsável pela vaga;<br>
   - Relatório do administrador da empresa responsável;<br>
   - Relatório sobre o veículo de determinada reserva;<br>
   - Histórico de veículos estacionados em determinada vaga.
    
>## Marco de Entrega 01 em: (02/04/2018)<br>

### 5.MODELO CONCEITUAL<br>
       
![Modelo conceitual - PNG](https://github.com/GrupoDaVaga/trab01/blob/david/Modelo%20Normalizado/Imagens/Conceitual.png)

[Modelo Conceitual - Formato BrModelo](https://github.com/GrupoDaVaga/trab01/blob/david/Modelo%20Normalizado/Conceitual.brM3)    

    
#### 5.1 Validação do Modelo Conceitual
    [Grupo do Blackcard]: Matheus Pinto, Pedro Cruz, Andre Phelipe, Herbert Wander, Jack Johnson.
    [Grupo EstacIonA (Analise)]: Caicke Pinheiro, Andreangelo Patuzzo, Emanuel Gloria, Anne Caroline.

#### 5.2 DECISÕES DE PROJETO
    Campo CNPJ: em nosso projeto optamos por uma pessoa Juridica cadastrar o CPNJ da empresa e pessoa fisica
    cadastrar o CPF para uso pessoal.
    Pois utilizando essa decisão podemos poupar de criar uma nova tabela para outro problema.
    
    Campo preço_vaga: em nosso projeto decidimos o preço da vaga por hora estacionada, assim o aplicativo calcula quanto tempo
    o cliente ficou com o preço de cada vaga.
    Pois esse método é mais utilizado em estacionamentos privados.
    
    Campo Tipo Sensor: em nosso projeto optamos também por RETIRAR o atributo tipo sensor e criamos uma tabela tipo sensor
    Pois com esse método resolveriamos o problema de adicionar novos tipos de sensores.
    

>## Marco de Entrega 02 em: (11/05/2018)<br>
#### 5.3 DESCRIÇÃO DOS DADOS 
    vaga : Tabela que armazena informações referente as vagas.
    id_vaga: Campo que contem o ID de armazenamento da vaga.
    secao_vaga : Campo que contem codigo de seção onde a vaga está localizada.
    andar_vaga : Campo com o numero do andar referente a vaga.
    estado_vaga :Campo que contem o estado onde a vaga está localizada.
    cidade_vaga: Campo que contem a cidade onde a vaga está localizada.
    cep_vaga:Campo que contem o numero do CEP referente a localização da vaga.
    horario_reserva:Campo que contem o horario exato do momento que foi reservado a vaga.
    preco_vaga:Campo com o preço a ser pago por reserva da vaga.
    Empresa : Tabela que armazena as informações da empresa que é responsavel por uma vaga.
    cnpj_empresa: Campo que contem o numero de cadastro nacional de pessoa juridica para cada empresa.
    empresa_resp: Campo que contem o nome da empresa responsável por fornecimento da vaga.
    Administrador: Tabela que armazena dados referentes ao administrador.
    nome: Campo onde armazena o nome do administrador.
    email: Campo que armazena o email do administrador.
    id_administrador: Campo onde armazena o id referente ao administrador.
    Pagamento: Tabela que armazena os dados referentes aos pagamentos.
    metodo: Campo onde armazena a forma de pagamento escolhida.
    valor: Campo onde armazena o valor pago referente a vaga.
    Condutor: Tabela onde armazena dados referentes ao condutor.
    nome_condutor: Campo onde está armazenado o nome referente ao condutor.
    cpf_condutor: Campo onde fica armazenado o Cadastro de Pessoa Fisica de cada condutor.
    email_condutor: Campo onde é armazenado o email de cada condutor.
    tel_condutor: Campo onde fica armazenado o telefone do condutor.
    Sensor: Tabela onde se armazena dados referentes a utilização dos sensores.
    idSensor: Codigo de cadastro do sensor.
    situação: Campo que armazena a situação do sensor, sendo ela desligada ou ligada.
    tipo: Campo onde fica armazenada as caracteriscas do sensor.
    veiculo: Tabela onde fica armazenado dados referentes aos veiculos dos condutores.
    placa_veiculo: Campo onde armazena o numero da placa de cada veiculo.
    categ_veiculo: Campo onde armazena a categoria do veiculo com base em suas caracteristicas.
    id_veiculo: Campo onde fica armazenado o codigo do veiculo.
    tipo_sensor: Tabela onde fica armazenado dados referentes aos sensores.
    id_tipo: Campo onde se armazena o codigo referente a cada tipo de sensor.
    descrição: Campo onde descreve o sensor com base no seu Id.
    Pessoa: Tabela onde se armazena dados de todas as pessoas.
    nome: Campo onde se armazena o nome de cada pessoa do sistema.
    email: Campo onde se armazena o email  de cada pessoa.
    id: Campo onde armazena o Id referente a cada pessoa no sistema.
    credito: Campo onde armazena o valor de credito na conta de cada pessoa.


### 6	MODELO LÓGICO<br>
[Modelo Lógico - BrModelo](https://github.com/GrupoDaVaga/trab01/blob/david/Modelo%20Normalizado/Logico.brM3)

![Modelo Lógico - PNG](https://github.com/GrupoDaVaga/trab01/blob/david/Modelo%20Normalizado/Imagens/Logico.png)

### 7	MODELO FÍSICO<br>
[Modelo Físico - SQL](https://github.com/GrupoDaVaga/trab01/blob/david/Modelo%20Normalizado/Fisico.sql)

        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
[Script de inserção - SQL](https://github.com/GrupoDaVaga/trab01/blob/master/INSERT-TABLES.sql)

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELAS E INSERÇÃO DOS DADOS
[Script de criação e inserção - SQL](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/inserts/Jun%C3%A7%C3%A3o%20Create%20e%20Insert.sql)
        
#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
[Script de criação e inserção e drop de tabelas - SQL](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/Jun%C3%A7%C3%A3o%20Create%20e%20Insert%20e%20Drop.sql)
Foi usado o comando DROP nas tabelas gerencia e paga.

>## Marco de Entrega 03 em: (adiada)<br>

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
[Consulta cartao - SQL](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/cart%C3%A3o.sql)
![Consulta cartao  - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/cart%C3%A3o.png)

[Consulta catergotia_veiculo - SQL](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/categoria_veiculo.sql)
![Consulta catergotia_veiculo - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/categoria_veiculo.png)

[Consulta gerencia - SQL](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/gerencia.sql)
![Consulta gerencia - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/gerencia.png)

[Consulta paga - SQL](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/paga.sql)
![Consulta paga - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/paga.png)

[Consulta pessoa - SQL](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/pessoa.sql)
![Consulta pessoa - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/pessoa.png)

[Consulta reserva_vaga - SQL](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/reserva_vaga.sql)
![Consulta reserva_vaga - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/reserva_vaga.png)

[Consulta sensor - SQL](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/sensor.sql)
![Consulta sensor - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/sensor.png)

[Consulta tipo_sensor - SQL](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/tipo_sensor.sql)
![Consulta tipo_sensor - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/tipo_sensor.png)

[Consulta vaga - SQL](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/vaga.sql)
![Consulta vaga - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/vaga.png)

[Consulta veiculo - SQL](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/veiculo.sql)
![Consulta veiculo - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/veiculo.png)

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>

>## Marco de Entrega 04 em: (08/06/2017)<br>

#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>

### 11 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.

### 12	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        a) Outros grupos deverão ser capazes de restaurar o banco 
        b) executar todas as consultas presentes no trabalho
        c) executar códigos que tenham sido construídos para o trabalho 
        d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho
        
### 13   DIFICULDADES ENCONTRADAS PELO GRUPO<br>
>## Marco de Entrega Final em: (25/06/2018)<br>
        
### 14  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/



    

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://sis4.com/brModelo/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


