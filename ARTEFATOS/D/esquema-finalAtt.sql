-- *********************************************
-- * SQL PostgreSQL generation                 
-- *--------------------------------------------
-- * DB-MAIN version: 11.0.2              
-- * Generator date: Sep 14 2021              
-- * Generation date: Wed Nov 20 17:03:43 2024 
-- * LUN file: D:\Backup\USP\4° Semestre\ACH2004 - BD I\Trabalho\BD-Sistema-Gestao-Hotelaria.lun 
-- * Schema: Modelo Logico/1-1 
-- ********************************************* 


-- Database Section
-- ________________ 

create database Modelo Logico;


-- Tables Section
-- _____________ 

create table ACOMODACAO (
     id_acomodacao serial not null,
     tipo varchar(15) not null, -- Suite, Quarto, Pet-Friendly, Duplex, Triplex
     status boolean not null,
     limpeza boolean not null, 
     preco numeric(10, 2) not null,
     politica_uso varchar(300) not null, -- políticas de uso
     capacidade_max int not null,
     id_unidade int not null,
     constraint ID_ACOMODACAO_ID primary key (id_acomodacao));

create table AMENIDADE (
     id_amenidade serial not null,
     tipo varchar(50) not null, -- Lareira, Hidromassagem, Caixa de lenços, Roupões, Internet, TV a cabo, Streaming, videogame, Projetor, Cadeira de massagem, Umidificador de ar, Estação de coquetéis no quarto, Fruteira
     manutencao boolean not null,
     id_acomodacao int not null,
     constraint ID_AMENIDADE primary key (id_amenidade));

create table ATIVIDADE (
     id_atividade serial not null,
     nome varchar(30) not null,
     tipo varchar(30) not null, -- Radical, Piscina, Dança, Esporte, Ar livre, Culinária, Música, Teatro
     idade_min int not null,
     idade_max int not null,
     data_atv date not null, 
     sazonalidade varchar(12) not null, -- Calor, Frio, Chuva
     duracao int not null,
     capacidade_max int not null,
     id_parceiro int not null,
     id_unidade int not null,
     constraint ID_ATIVIDADE_ID primary key (id_atividade));

create table AVALIA (
     id_atividade int not null,
     id_hospede int not null,
     nota int not null,
     comentario varchar(300) not null,
     data_avaliacao timestamp not null,
     constraint ID_AVALIA primary key (id_hospede, id_atividade));

create table CARRO (
     id_carro serial not null,
     placa char(7) not null,
     entrada timestamp not null,
     saida timestamp not null,
     id_reserva int not null,
     constraint ID_CARRO_ID primary key (id_carro));

create table CLIENTE (
     id_cliente serial not null,
     cpf char(11) not null,
     nome varchar(50) not null,
     email varchar(50) not null,
     ponto_fidelidade int not null,
     visitas int not null,
     constraint ID_CLIENTE primary key (id_cliente));

create table CONDOMINIO (
     id_condominio serial not null,
     id_unidade int not null,
     qntd_lojas int not null,
     constraint ID_CONDOMINIO primary key (id_condominio),
     constraint FKESTABELECE_ID unique (id_unidade));

create table CONDUZ (
     id_atividade int not null,
     id_transporte int not null,
     constraint ID_CONDUZ primary key (id_atividade, id_transporte));

create table COZINHA (
     id_dependencia int not null,
     local varchar(30) not null,          -- Restaurante Principal, Restaurante Temático, Bar Central, Bar Piscina, Buffet Externo
     tipo_culinaria varchar(20) not null, -- Francesa, Jamaicana, Espanhola, Italiana, Brasileira, Chinesa, Japonesa, Mexicana, Indiana, Tailandesa
     constraint FKDEP_COZ_ID primary key (id_dependencia));

create table DEPENDENCIA (
     id_dependencia serial not null,
     manutencao boolean not null,
     tamanho int not null,
     hr__hr_inicio time not null,
     hr__hr_fim time not null,
     id_unidade int not null,
     constraint ID_DEPENDENCIA primary key (id_dependencia));

create table DIRIGE (
     id_motorista int not null,
     id_transporte int not null,
     constraint ID_DIRIGE primary key (id_motorista, id_transporte));

create table ENTRADA (
     id_transacao int not null,
     id_reserva int,
     emissor varchar(50) not null,
     valor_entrada float(10) not null,
     id_loja int,
     constraint FKTRA_ENT_ID primary key (id_transacao),
     constraint FKCHECKOUT_ID unique (id_reserva));

create table ENTREGA_ROBO (
     id_entrega serial not null,
     robo int not null,
     emissor varchar(50) not null,
     data date not null,
     hora time not null,
     id_acomodacao int not null,
     constraint ID_ENTREGA_ROBO primary key (id_entrega));

create table EQUIPAMENTO (
     id_equipamento serial not null,
     nome varchar(30) not null,
     quantidade int not null,
     desgaste varchar(15) not null, -- Novo, Moderado, Relevante, Comprometido, Inutilizável
     constraint ID_EQUIPAMENTO_ID primary key (id_equipamento));

create table ESTACIONA (
     id_carro int not null,
     data_inicio timestamp not null,
     diarias int not null,
     tipo_vaga varchar(15) not null, -- Coberta, Ar livre
     id_dependencia int not null,
     constraint FKEST_CAR_ID primary key (id_carro));

create table ESTACIONAMENTO (
     id_dependencia int not null,
     local varchar(30) not null,
     vaga_coberta int not null,
     vaga_ar_livre int not null,
     custo_coberta numeric(10, 2) not null CONSTRAINT PP_coberta check(custo_coberta >= 0),
     custo_ar_livre numeric(10, 2) not null CONSTRAINT PP_ar_livre check(custo_coberta >= 0),
     constraint FKDEP_EST_ID primary key (id_dependencia));

create table EVENTO (
     id_dependencia int not null,
     nome varchar(30) not null,
     tipo_uso varchar(15) not null, -- Festa, Reunião, Palestra, Workshop, Show, Exposição, Feira, Casamento, Aniversário, Formatura
     capacidade int not null,
     constraint FKDEP_EVE_ID primary key (id_dependencia));

create table EXTERNA (
     id_atividade int not null,
     local varchar(30) not null,
     distancia int not null,
     constraint FKATI_EXT_ID primary key (id_atividade));

create table FUNCIONARIO (
     id_funcionario serial not null,
     cpf char(11) not null,
     nome varchar(30) not null,
     contrato varchar(30) not null,
     cargo varchar(30) not null,
     salario numeric(10, 2) not null,
     va numeric(10, 2) not null,
     vr numeric(10, 2) not null,
     vt numeric(10, 2) not null,
     plano_saude varchar(30) not null, -- Unimed, Amil, Bradesco, Sulamérica, Hapvida, NotreDame, Prevent Senior, Porto Seguro, Sompo, Allianz
     id_unidade int not null,
     constraint ID_FUNCIONARIO primary key (id_funcionario));

create table GERAL (
     id_requisicao int not null,
     constraint FKREQ_GER_ID primary key (id_requisicao));

create table HOSPEDE (
     id_hospede serial not null,
     cpf char(11) not null,
     id_reserva int not null,
     constraint ID_HOSPEDE primary key (id_hospede));

create table LAVANDERIA (
     id_dependencia int not null,
     tipo_acesso varchar(15) not null, -- Público, Privado
     quantidade_maq int not null,
     constraint FKDEP_LAV_ID primary key (id_dependencia));

create table LOJA (
     id_loja serial not null,
     valor_aluguel numeric(10, 2) not null,
     tipo varchar(15) not null, -- Alimentação, Vestuário, Eletrônicos, Livraria, Farmácia, Papelaria, Conveniência, Beleza, Serviços
     id_condominio int not null,
     constraint ID_LOJA primary key (id_loja));

create table MONITOR (
     id_monitor serial not null,
     cpf char(11) not null,
     nome varchar(30) not null,
     idade int not null,
     sexo varchar(15) not null, -- Masculino, Feminino, Outro
     tipo varchar(15) not null, -- Piscina, Esporte, Jogos, Estudos, Dança, Música, Teatro, Artes, Culinária
     telefone char(13) not null,
     constraint ID_MONITOR_ID primary key (id_monitor));

create table MOTORISTA (
     id_motorista serial not null,
     cpf char(11) not null,
     nome varchar(30) not null,
     telefone char(13) not null,
     constraint ID_MOTORISTA_ID primary key (id_motorista));

create table OCORRENCIA (
     id_ocorrencia serial not null,
     categoria varchar(15) not null, -- Assassinato, Roubo, Furto, Acidente, Incêndio, Inundação, Desaparecimento, Vandalismo, Assédio, Discriminação
     descricao varchar(300) not null,
     gravidade int not null, -- 1, 2, 3, 4, 5
     status varchar(15) not null, -- Aberto, Andamento, Fechado
     atendente varchar(15) not null,
     id_atividade int not null,
     constraint ID_OCORRENCIA primary key (id_ocorrencia));

create table PRODUTO_FRIGOBAR (
     id_produto_frigobar serial not null,
     nome char(30) not null,
     valor numeric(10, 2) not null,
     estoque int not null,
     id_acomodacao int not null,
     constraint ID_PRODUTO_FRIGOBAR primary key (id_produto_frigobar));

create table PARCEIRO (
     id_parceiro serial not null,
     nome varchar(30) not null,
     ramo varchar(30) not null, -- Esporte, Teatro, Música, Dança, Culinária, Artes, Piscina, Jogos, Estudos
     constraint ID_PARCEIRO_ID primary key (id_parceiro));

create table PARTICULAR (
     id_requisicao serial not null,
     cpf_autor char(11) not null,
     constraint FKREQ_PAR_ID primary key (id_requisicao));

create table PISCINA (
     id_dependencia int not null,
     capacidade int not null,
     profundidade int not null,
     data_ult_limpeza date not null,
     constraint FKDEP_PIS_ID primary key (id_dependencia));

create table PRODUTO (
     id_produto serial not null,
     nome varchar(30) not null,
     valor numeric(10, 2) not null,
     estoque int not null,
     id_dependencia int not null,
     constraint ID_PRODUTO primary key (id_produto));

create table CONSOME (
     id_produto_frigobar int not null,
     id_reserva int not null,
     data timestamp not null,
     quantidade int not null,
     constraint ID_CONSOME primary key (id_reserva, id_produto_frigobar, data));

create table REQUISICAO (
     id_requisicao serial not null,
     status varchar(15) not null, -- Aberto, Andamento, Fechado
     tipo varchar(15) not null, -- Dúvida, Reclamação, Sugestão, Elogio, Solicitação
     atendente varchar(30) not null,
     texto_requisicao varchar(300) not null,
     data_abertura timestamp not null,
     data_fechamento timestamp not null,
     id_cliente int not null,
     constraint ID_REQUISICAO primary key (id_requisicao));

create table RESERVA (
     id_reserva serial not null,
     valor numeric(10, 2) not null,
     per_dt_inicio date not null,
     per_dt_fim date not null,
     id_cliente int not null,
     id_acomodacao int not null,
     constraint ID_RESERVA_ID primary key (id_reserva));

create table SAIDA (
     id_transacao serial not null,
     id_parceiro int,
     receptor varchar(30) not null,
     valor_saida numeric(10, 2) not null,
     id_funcionario int,
     constraint FKTRA_SAI_ID primary key (id_transacao));

create table SOLICITA (
     id_produto int not null,
     id_reserva int not null,
     quantidade int not null,
     constraint ID_SOLICITA primary key (id_reserva, id_produto));

create table SUPERVISIONA (
     id_atividade int not null,
     id_monitor int not null,
     constraint ID_SUPERVISIONA primary key (id_atividade, id_monitor));

create table TRANSACAO (
     id_transacao serial not null,
     data timestamp not null,
     motivo varchar(50) not null,
     id_nota_fiscal numeric(44) not null,
     constraint ID_TRANSACAO primary key (id_transacao));

create table TRANSACAO_EXTORNO (
     id_transacao int not null,
     data_extorno timestamp not null,
     motivo_extorno varchar(50) not null,
     constraint ID_TRANSACAO_EXTORNO primary key (id_transacao, data_extorno),
     constraint FKRETORNA_ID unique (id_transacao));

create table TRANSPORTE (
     id_transporte serial not null,
     placa varchar(7) not null,
     modelo varchar(10) not null,
     capacidade int not null,
     constraint ID_TRANSPORTE_ID primary key (id_transporte));

create table UNIDADE (
     id_unidade serial not null,
     nome_fantasia varchar(30) not null,
     tipo varchar(30) not null, -- Pousada, Tradicional, Resort, Chalés, Hotel Fazenda, Camping, 
     setor varchar(30) not null, -- Trabalho, Familia, Adultos, Pet-frendly, Negócios, Luxo, Beira-Mar
     cep char(15) not null,
     numero int not null,
     constraint ID_UNIDADE_ID primary key (id_unidade));

create table UTILIZA (
     id_atividade int not null,
     id_equipamento int not null,
     obrigatoriedade boolean not null,
     constraint ID_UTILIZA primary key (id_equipamento, id_atividade));

-- Constraints Section
-- ___________________ 
alter table ACOMODACAO add constraint EQU_ACOMO_UNIDA_FK
     foreign key (id_unidade)
     references UNIDADE;

alter table AMENIDADE add constraint REF_AMENI_ACOMO_FK
     foreign key (id_acomodacao)
     references ACOMODACAO;

--Not implemented
--alter table ATIVIDADE add constraint ID_ATIVIDADE_CHK
--     check(exists(select * from SUPERVISIONA
--                  where SUPERVISIONA.id_atividade = id_atividade)); 

alter table ATIVIDADE add constraint EQU_ATIVI_PARCE_FK
     foreign key (id_parceiro)
     references PARCEIRO;

alter table ATIVIDADE add constraint REF_ATIVI_UNIDA_FK
     foreign key (id_unidade)
     references UNIDADE;

alter table AVALIA add constraint REF_AVALI_HOSPE
     foreign key (id_hospede)
     references HOSPEDE;

alter table AVALIA add constraint REF_AVALI_ATIVI_FK
     foreign key (id_atividade)
     references ATIVIDADE;

--Not implemented
--alter table CARRO add constraint ID_CARRO_CHK
--     check(exists(select * from ESTACIONA
--                  where ESTACIONA.id_carro = id_carro)); 

alter table CARRO add constraint REF_CARRO_RESER_FK
     foreign key (id_reserva)
     references RESERVA;

alter table CONDOMINIO add constraint SID_CONDO_UNIDA_FK
     foreign key (id_unidade)
     references UNIDADE;

alter table CONDUZ add constraint EQU_CONDU_TRANS_FK
     foreign key (id_transporte)
     references TRANSPORTE;

alter table CONDUZ add constraint EQU_CONDU_EXTER
     foreign key (id_atividade)
     references EXTERNA;

alter table COZINHA add constraint ID_COZIN_DEPEN_FK
     foreign key (id_dependencia)
     references DEPENDENCIA;

alter table DEPENDENCIA add constraint EQU_DEPEN_UNIDA_FK
     foreign key (id_unidade)
     references UNIDADE;

alter table DIRIGE add constraint EQU_DIRIG_TRANS_FK
     foreign key (id_transporte)
     references TRANSPORTE;

alter table DIRIGE add constraint EQU_DIRIG_MOTOR
     foreign key (id_motorista)
     references MOTORISTA;

alter table ENTRADA add constraint ID_ENTRA_TRANS_FK
     foreign key (id_transacao)
     references TRANSACAO;

alter table ENTRADA add constraint REF_ENTRA_LOJA_FK
     foreign key (id_loja)
     references LOJA;

alter table ENTRADA add constraint SID_ENTRA_RESER_FK
     foreign key (id_reserva)
     references RESERVA;

alter table ENTREGA_ROBO add constraint REF_ENTRE_ACOMO_FK
     foreign key (id_acomodacao)
     references ACOMODACAO;

--Not implemented
--alter table EQUIPAMENTO add constraint ID_EQUIPAMENTO_CHK
--     check(exists(select * from UTILIZA
--                  where UTILIZA.id_equipamento = id_equipamento)); 

alter table ESTACIONA add constraint ID_ESTAC_CARRO_FK
     foreign key (id_carro)
     references CARRO;

alter table ESTACIONA add constraint REF_ESTAC_ESTAC_FK
     foreign key (id_dependencia)
     references ESTACIONAMENTO;

alter table ESTACIONAMENTO add constraint ID_ESTAC_DEPEN_FK
     foreign key (id_dependencia)
     references DEPENDENCIA;

alter table EVENTO add constraint ID_EVENT_DEPEN_FK
     foreign key (id_dependencia)
     references DEPENDENCIA;

--Not implemented
--alter table EXTERNA add constraint ID_EXTER_ATIVI_CHK
--     check(exists(select * from CONDUZ
--                  where CONDUZ.id_atividade = id_atividade)); 

alter table EXTERNA add constraint ID_EXTER_ATIVI_FK
     foreign key (id_atividade)
     references ATIVIDADE;

alter table FUNCIONARIO add constraint EQU_FUNCI_UNIDA_FK
     foreign key (id_unidade)
     references UNIDADE;

alter table GERAL add constraint ID_GERAL_REQUI_FK
     foreign key (id_requisicao)
     references REQUISICAO;

alter table HOSPEDE add constraint EQU_HOSPE_RESER_FK
     foreign key (id_reserva)
     references RESERVA;

alter table LAVANDERIA add constraint ID_LAVAN_DEPEN_FK
     foreign key (id_dependencia)
     references DEPENDENCIA;

alter table LOJA add constraint REF_LOJA_CONDO_FK
     foreign key (id_condominio)
     references CONDOMINIO;

--Not implemented
--alter table MONITOR add constraint ID_MONITOR_CHK
--     check(exists(select * from SUPERVISIONA
--                  where SUPERVISIONA.id_monitor = id_monitor)); 

--Not implemented
--alter table MOTORISTA add constraint ID_MOTORISTA_CHK
--     check(exists(select * from DIRIGE
--                  where DIRIGE.id_motorista = id_motorista)); 

alter table OCORRENCIA add constraint REF_OCORR_ATIVI
     foreign key (id_atividade)
     references ATIVIDADE;

alter table PRODUTO_FRIGOBAR add constraint FKGUARDA_FK
     foreign key (id_acomodacao)
     references ACOMODACAO;

--Not implemented
--alter table PARCEIRO add constraint ID_PARCEIRO_CHK
--     check(exists(select * from SAIDA
--                  where SAIDA.id_parceiro = id_parceiro)); 

--Not implemented
--alter table PARCEIRO add constraint ID_PARCEIRO_CHK
--     check(exists(select * from ATIVIDADE
--                  where ATIVIDADE.id_parceiro = id_parceiro)); 

alter table PARTICULAR add constraint ID_PARTI_REQUI_FK
     foreign key (id_requisicao)
     references REQUISICAO;

alter table PISCINA add constraint ID_PISCI_DEPEN_FK
     foreign key (id_dependencia)
     references DEPENDENCIA;

alter table PRODUTO add constraint REF_PRODU_COZIN_FK
     foreign key (id_dependencia)
     references COZINHA;

alter table CONSOME add constraint FKCON_RES
     foreign key (id_reserva)
     references RESERVA;

alter table CONSOME add constraint FKCON_PRO_FK
     foreign key (id_produto_frigobar)
     references PRODUTO_FRIGOBAR;

alter table REQUISICAO add constraint REF_REQUI_CLIEN_FK
     foreign key (id_cliente)
     references CLIENTE;

--Not implemented
--alter table RESERVA add constraint ID_RESERVA_CHK
--     check(exists(select * from HOSPEDE
--                  where HOSPEDE.id_reserva = id_reserva)); 

alter table RESERVA add constraint REF_RESER_CLIEN_FK
     foreign key (id_cliente)
     references CLIENTE;

alter table RESERVA add constraint REF_RESER_ACOMO_FK
     foreign key (id_acomodacao)
     references ACOMODACAO;

alter table SAIDA add constraint ID_SAIDA_TRANS_FK
     foreign key (id_transacao)
     references TRANSACAO;

alter table SAIDA add constraint REF_SAIDA_FUNCI_FK
     foreign key (id_funcionario)
     references FUNCIONARIO;

alter table SAIDA add constraint SID_SAIDA_PARCE_FK
     foreign key (id_parceiro)
     references PARCEIRO;

alter table SOLICITA add constraint REF_SOLIC_RESER
     foreign key (id_reserva)
     references RESERVA;

alter table SOLICITA add constraint REF_SOLIC_PRODU_FK
     foreign key (id_produto)
     references PRODUTO;

alter table SUPERVISIONA add constraint EQU_SUPER_MONIT_FK
     foreign key (id_monitor)
     references MONITOR;

alter table SUPERVISIONA add constraint EQU_SUPER_ATIVI
     foreign key (id_atividade)
     references ATIVIDADE;

alter table TRANSACAO_EXTORNO add constraint SID_TRANS_ENTRA_FK
     foreign key (id_transacao)
     references ENTRADA;

--Not implemented
--alter table TRANSPORTE add constraint ID_TRANSPORTE_CHK
--     check(exists(select * from CONDUZ
--                  where CONDUZ.id_transporte = id_transporte)); 

--Not implemented
--alter table TRANSPORTE add constraint ID_TRANSPORTE_CHK
--     check(exists(select * from DIRIGE
--                  where DIRIGE.id_transporte = id_transporte)); 

--Not implemented
--alter table UNIDADE add constraint ID_UNIDADE_CHK
--     check(exists(select * from ACOMODACAO
--                  where ACOMODACAO.id_unidade = id_unidade)); 

--Not implemented
--alter table UNIDADE add constraint ID_UNIDADE_CHK
--     check(exists(select * from FUNCIONARIO
--                  where FUNCIONARIO.id_unidade = id_unidade)); 

--Not implemented
--alter table UNIDADE add constraint ID_UNIDADE_CHK
--     check(exists(select * from CONDOMINIO
--                  where CONDOMINIO.id_unidade = id_unidade)); 

--Not implemented
--alter table UNIDADE add constraint ID_UNIDADE_CHK
--     check(exists(select * from DEPENDENCIA
--                  where DEPENDENCIA.id_unidade = id_unidade)); 

alter table UTILIZA add constraint EQU_UTILI_EQUIP
     foreign key (id_equipamento)
     references EQUIPAMENTO;

alter table UTILIZA add constraint REF_UTILI_ATIVI_FK
     foreign key (id_atividade)
     references ATIVIDADE;


-- Index Section
-- _____________ 

create index EQU_ACOMO_UNIDA_IND
     on ACOMODACAO (id_unidade);

create index REF_AMENI_ACOMO_IND
     on AMENIDADE (id_acomodacao);

create index EQU_ATIVI_PARCE_IND
     on ATIVIDADE (id_parceiro);

create index REF_ATIVI_UNIDA_IND
     on ATIVIDADE (id_unidade);

create index REF_AVALI_ATIVI_IND
     on AVALIA (id_atividade);

create index REF_CARRO_RESER_IND
     on CARRO (id_reserva);

create index EQU_CONDU_TRANS_IND
     on CONDUZ (id_transporte);

create index EQU_DEPEN_UNIDA_IND
     on DEPENDENCIA (id_unidade);

create index EQU_DIRIG_TRANS_IND
     on DIRIGE (id_transporte);

create index REF_ENTRA_LOJA_IND
     on ENTRADA (id_loja);

create index REF_ENTRE_ACOMO_IND
     on ENTREGA_ROBO (id_acomodacao);

create index REF_ESTAC_ESTAC_IND
     on ESTACIONA (id_dependencia);

create index EQU_FUNCI_UNIDA_IND
     on FUNCIONARIO (id_unidade);

create index EQU_HOSPE_RESER_IND
     on HOSPEDE (id_reserva);

create index REF_LOJA_CONDO_IND
     on LOJA (id_condominio);

create index FKGUARDA_IND
     on PRODUTO_FRIGOBAR (id_acomodacao);

create index REF_PRODU_COZIN_IND
     on PRODUTO (id_dependencia);

create index FKCON_PRO_IND
     on CONSOME (id_produto_frigobar);

create index REF_REQUI_CLIEN_IND
     on REQUISICAO (id_cliente);

create index REF_RESER_CLIEN_IND
     on RESERVA (id_cliente);

create index REF_RESER_ACOMO_IND
     on RESERVA (id_acomodacao);

create index REF_SAIDA_FUNCI_IND
     on SAIDA (id_funcionario);

create index REF_SOLIC_PRODU_IND
     on SOLICITA (id_produto);

create index EQU_SUPER_MONIT_IND
     on SUPERVISIONA (id_monitor);

create index REF_UTILI_ATIVI_IND
     on UTILIZA (id_atividade);

