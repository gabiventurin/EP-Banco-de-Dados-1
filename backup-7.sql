--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- Started on 2024-11-27 22:50:59

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 218 (class 1259 OID 40294)
-- Name: acomodacao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.acomodacao (
    id_acomodacao integer NOT NULL,
    tipo character varying(15) NOT NULL,
    status boolean NOT NULL,
    limpeza boolean NOT NULL,
    preco numeric(10,2) NOT NULL,
    politica_uso character varying(300) NOT NULL,
    capacidade_max integer NOT NULL,
    id_unidade integer NOT NULL
);


ALTER TABLE public.acomodacao OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 40293)
-- Name: acomodacao_id_acomodacao_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.acomodacao_id_acomodacao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.acomodacao_id_acomodacao_seq OWNER TO postgres;

--
-- TOC entry 5236 (class 0 OID 0)
-- Dependencies: 217
-- Name: acomodacao_id_acomodacao_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.acomodacao_id_acomodacao_seq OWNED BY public.acomodacao.id_acomodacao;


--
-- TOC entry 220 (class 1259 OID 40301)
-- Name: amenidade; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.amenidade (
    id_amenidade integer NOT NULL,
    tipo character varying(50) NOT NULL,
    manutencao boolean NOT NULL,
    id_acomodacao integer NOT NULL
);


ALTER TABLE public.amenidade OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 40300)
-- Name: amenidade_id_amenidade_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.amenidade_id_amenidade_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.amenidade_id_amenidade_seq OWNER TO postgres;

--
-- TOC entry 5237 (class 0 OID 0)
-- Dependencies: 219
-- Name: amenidade_id_amenidade_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.amenidade_id_amenidade_seq OWNED BY public.amenidade.id_amenidade;


--
-- TOC entry 222 (class 1259 OID 40308)
-- Name: atividade; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.atividade (
    id_atividade integer NOT NULL,
    nome character varying(30) NOT NULL,
    tipo character varying(30) NOT NULL,
    idade_min integer NOT NULL,
    idade_max integer NOT NULL,
    data_atv date NOT NULL,
    sazonalidade character varying(12) NOT NULL,
    duracao integer NOT NULL,
    capacidade_max integer NOT NULL,
    id_parceiro integer NOT NULL,
    id_unidade integer NOT NULL
);


ALTER TABLE public.atividade OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 40307)
-- Name: atividade_id_atividade_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.atividade_id_atividade_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.atividade_id_atividade_seq OWNER TO postgres;

--
-- TOC entry 5238 (class 0 OID 0)
-- Dependencies: 221
-- Name: atividade_id_atividade_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.atividade_id_atividade_seq OWNED BY public.atividade.id_atividade;


--
-- TOC entry 223 (class 1259 OID 40314)
-- Name: avalia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.avalia (
    id_atividade integer NOT NULL,
    id_hospede integer NOT NULL,
    nota integer NOT NULL,
    comentario character varying(300) NOT NULL,
    data_avaliacao timestamp without time zone NOT NULL
);


ALTER TABLE public.avalia OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 40320)
-- Name: carro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carro (
    id_carro integer NOT NULL,
    placa character(7) NOT NULL,
    entrada timestamp without time zone NOT NULL,
    saida timestamp without time zone NOT NULL,
    id_reserva integer NOT NULL
);


ALTER TABLE public.carro OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 40319)
-- Name: carro_id_carro_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.carro_id_carro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.carro_id_carro_seq OWNER TO postgres;

--
-- TOC entry 5239 (class 0 OID 0)
-- Dependencies: 224
-- Name: carro_id_carro_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.carro_id_carro_seq OWNED BY public.carro.id_carro;


--
-- TOC entry 227 (class 1259 OID 40327)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    cpf character(11) NOT NULL,
    nome character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    ponto_fidelidade integer NOT NULL,
    visitas integer NOT NULL
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 40326)
-- Name: cliente_id_cliente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cliente_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cliente_id_cliente_seq OWNER TO postgres;

--
-- TOC entry 5240 (class 0 OID 0)
-- Dependencies: 226
-- Name: cliente_id_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cliente_id_cliente_seq OWNED BY public.cliente.id_cliente;


--
-- TOC entry 229 (class 1259 OID 40334)
-- Name: condominio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.condominio (
    id_condominio integer NOT NULL,
    id_unidade integer NOT NULL,
    qntd_lojas integer NOT NULL
);


ALTER TABLE public.condominio OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 40333)
-- Name: condominio_id_condominio_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.condominio_id_condominio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.condominio_id_condominio_seq OWNER TO postgres;

--
-- TOC entry 5241 (class 0 OID 0)
-- Dependencies: 228
-- Name: condominio_id_condominio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.condominio_id_condominio_seq OWNED BY public.condominio.id_condominio;


--
-- TOC entry 230 (class 1259 OID 40342)
-- Name: conduz; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.conduz (
    id_atividade integer NOT NULL,
    id_transporte integer NOT NULL
);


ALTER TABLE public.conduz OWNER TO postgres;

--
-- TOC entry 267 (class 1259 OID 40492)
-- Name: consome; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.consome (
    id_produto_frigobar integer NOT NULL,
    id_reserva integer NOT NULL,
    data timestamp without time zone NOT NULL,
    quantidade integer NOT NULL
);


ALTER TABLE public.consome OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 40347)
-- Name: cozinha; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cozinha (
    id_dependencia integer NOT NULL,
    local character varying(30) NOT NULL,
    tipo_culinaria character varying(20) NOT NULL
);


ALTER TABLE public.cozinha OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 40353)
-- Name: dependencia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dependencia (
    id_dependencia integer NOT NULL,
    manutencao boolean NOT NULL,
    tamanho integer NOT NULL,
    hr__hr_inicio time without time zone NOT NULL,
    hr__hr_fim time without time zone NOT NULL,
    id_unidade integer NOT NULL
);


ALTER TABLE public.dependencia OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 40352)
-- Name: dependencia_id_dependencia_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dependencia_id_dependencia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dependencia_id_dependencia_seq OWNER TO postgres;

--
-- TOC entry 5242 (class 0 OID 0)
-- Dependencies: 232
-- Name: dependencia_id_dependencia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dependencia_id_dependencia_seq OWNED BY public.dependencia.id_dependencia;


--
-- TOC entry 234 (class 1259 OID 40359)
-- Name: dirige; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dirige (
    id_motorista integer NOT NULL,
    id_transporte integer NOT NULL
);


ALTER TABLE public.dirige OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 40364)
-- Name: entrada; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.entrada (
    id_transacao integer NOT NULL,
    id_reserva integer,
    emissor character varying(50) NOT NULL,
    valor_entrada real NOT NULL,
    id_loja integer
);


ALTER TABLE public.entrada OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 40372)
-- Name: entrega_robo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.entrega_robo (
    id_entrega integer NOT NULL,
    robo integer NOT NULL,
    emissor character varying(50) NOT NULL,
    data date NOT NULL,
    hora time without time zone NOT NULL,
    id_acomodacao integer NOT NULL
);


ALTER TABLE public.entrega_robo OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 40371)
-- Name: entrega_robo_id_entrega_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.entrega_robo_id_entrega_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.entrega_robo_id_entrega_seq OWNER TO postgres;

--
-- TOC entry 5243 (class 0 OID 0)
-- Dependencies: 236
-- Name: entrega_robo_id_entrega_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.entrega_robo_id_entrega_seq OWNED BY public.entrega_robo.id_entrega;


--
-- TOC entry 239 (class 1259 OID 40379)
-- Name: equipamento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.equipamento (
    id_equipamento integer NOT NULL,
    nome character varying(30) NOT NULL,
    quantidade integer NOT NULL,
    desgaste character varying(15) NOT NULL
);


ALTER TABLE public.equipamento OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 40378)
-- Name: equipamento_id_equipamento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.equipamento_id_equipamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.equipamento_id_equipamento_seq OWNER TO postgres;

--
-- TOC entry 5244 (class 0 OID 0)
-- Dependencies: 238
-- Name: equipamento_id_equipamento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.equipamento_id_equipamento_seq OWNED BY public.equipamento.id_equipamento;


--
-- TOC entry 240 (class 1259 OID 40385)
-- Name: estaciona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estaciona (
    id_carro integer NOT NULL,
    data_inicio timestamp without time zone NOT NULL,
    diarias integer NOT NULL,
    tipo_vaga character varying(15) NOT NULL,
    id_dependencia integer NOT NULL
);


ALTER TABLE public.estaciona OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 40390)
-- Name: estacionamento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estacionamento (
    id_dependencia integer NOT NULL,
    local character varying(30) NOT NULL,
    vaga_coberta integer NOT NULL,
    vaga_ar_livre integer NOT NULL,
    custo_coberta numeric(10,2) NOT NULL,
    custo_ar_livre numeric(10,2) NOT NULL,
    CONSTRAINT pp_ar_livre CHECK ((custo_coberta >= (0)::numeric)),
    CONSTRAINT pp_coberta CHECK ((custo_coberta >= (0)::numeric))
);


ALTER TABLE public.estacionamento OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 40397)
-- Name: evento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.evento (
    id_dependencia integer NOT NULL,
    nome character varying(30) NOT NULL,
    tipo_uso character varying(15) NOT NULL,
    capacidade integer NOT NULL
);


ALTER TABLE public.evento OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 40402)
-- Name: externa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.externa (
    id_atividade integer NOT NULL,
    local character varying(30) NOT NULL,
    distancia integer NOT NULL
);


ALTER TABLE public.externa OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 40408)
-- Name: funcionario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.funcionario (
    id_funcionario integer NOT NULL,
    cpf character(11) NOT NULL,
    nome character varying(30) NOT NULL,
    contrato character varying(30) NOT NULL,
    cargo character varying(30) NOT NULL,
    salario numeric(10,2) NOT NULL,
    va numeric(10,2) NOT NULL,
    vr numeric(10,2) NOT NULL,
    vt numeric(10,2) NOT NULL,
    plano_saude character varying(30) NOT NULL,
    id_unidade integer NOT NULL
);


ALTER TABLE public.funcionario OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 40407)
-- Name: funcionario_id_funcionario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.funcionario_id_funcionario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.funcionario_id_funcionario_seq OWNER TO postgres;

--
-- TOC entry 5245 (class 0 OID 0)
-- Dependencies: 244
-- Name: funcionario_id_funcionario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.funcionario_id_funcionario_seq OWNED BY public.funcionario.id_funcionario;


--
-- TOC entry 246 (class 1259 OID 40414)
-- Name: geral; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.geral (
    id_requisicao integer NOT NULL
);


ALTER TABLE public.geral OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 40420)
-- Name: hospede; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hospede (
    id_hospede integer NOT NULL,
    cpf character(11) NOT NULL,
    id_reserva integer NOT NULL
);


ALTER TABLE public.hospede OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 40419)
-- Name: hospede_id_hospede_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hospede_id_hospede_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.hospede_id_hospede_seq OWNER TO postgres;

--
-- TOC entry 5246 (class 0 OID 0)
-- Dependencies: 247
-- Name: hospede_id_hospede_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hospede_id_hospede_seq OWNED BY public.hospede.id_hospede;


--
-- TOC entry 249 (class 1259 OID 40426)
-- Name: lavanderia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lavanderia (
    id_dependencia integer NOT NULL,
    tipo_acesso character varying(15) NOT NULL,
    quantidade_maq integer NOT NULL
);


ALTER TABLE public.lavanderia OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 40432)
-- Name: loja; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.loja (
    id_loja integer NOT NULL,
    valor_aluguel numeric(10,2) NOT NULL,
    tipo character varying(15) NOT NULL,
    id_condominio integer NOT NULL
);


ALTER TABLE public.loja OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 40431)
-- Name: loja_id_loja_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.loja_id_loja_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.loja_id_loja_seq OWNER TO postgres;

--
-- TOC entry 5247 (class 0 OID 0)
-- Dependencies: 250
-- Name: loja_id_loja_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.loja_id_loja_seq OWNED BY public.loja.id_loja;


--
-- TOC entry 253 (class 1259 OID 40439)
-- Name: monitor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.monitor (
    id_monitor integer NOT NULL,
    cpf character(11) NOT NULL,
    nome character varying(30) NOT NULL,
    idade integer NOT NULL,
    sexo character varying(15) NOT NULL,
    tipo character varying(15) NOT NULL,
    telefone character(13) NOT NULL
);


ALTER TABLE public.monitor OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 40438)
-- Name: monitor_id_monitor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.monitor_id_monitor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.monitor_id_monitor_seq OWNER TO postgres;

--
-- TOC entry 5248 (class 0 OID 0)
-- Dependencies: 252
-- Name: monitor_id_monitor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.monitor_id_monitor_seq OWNED BY public.monitor.id_monitor;


--
-- TOC entry 255 (class 1259 OID 40446)
-- Name: motorista; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.motorista (
    id_motorista integer NOT NULL,
    cpf character(11) NOT NULL,
    nome character varying(30) NOT NULL,
    telefone character(13) NOT NULL
);


ALTER TABLE public.motorista OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 40445)
-- Name: motorista_id_motorista_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.motorista_id_motorista_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.motorista_id_motorista_seq OWNER TO postgres;

--
-- TOC entry 5249 (class 0 OID 0)
-- Dependencies: 254
-- Name: motorista_id_motorista_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.motorista_id_motorista_seq OWNED BY public.motorista.id_motorista;


--
-- TOC entry 257 (class 1259 OID 40453)
-- Name: ocorrencia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ocorrencia (
    id_ocorrencia integer NOT NULL,
    categoria character varying(15) NOT NULL,
    descricao character varying(300) NOT NULL,
    gravidade integer NOT NULL,
    status character varying(15) NOT NULL,
    atendente character varying(15) NOT NULL,
    id_atividade integer NOT NULL
);


ALTER TABLE public.ocorrencia OWNER TO postgres;

--
-- TOC entry 256 (class 1259 OID 40452)
-- Name: ocorrencia_id_ocorrencia_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ocorrencia_id_ocorrencia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ocorrencia_id_ocorrencia_seq OWNER TO postgres;

--
-- TOC entry 5250 (class 0 OID 0)
-- Dependencies: 256
-- Name: ocorrencia_id_ocorrencia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ocorrencia_id_ocorrencia_seq OWNED BY public.ocorrencia.id_ocorrencia;


--
-- TOC entry 261 (class 1259 OID 40467)
-- Name: parceiro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.parceiro (
    id_parceiro integer NOT NULL,
    nome character varying(30) NOT NULL,
    ramo character varying(30) NOT NULL
);


ALTER TABLE public.parceiro OWNER TO postgres;

--
-- TOC entry 260 (class 1259 OID 40466)
-- Name: parceiro_id_parceiro_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.parceiro_id_parceiro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.parceiro_id_parceiro_seq OWNER TO postgres;

--
-- TOC entry 5251 (class 0 OID 0)
-- Dependencies: 260
-- Name: parceiro_id_parceiro_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.parceiro_id_parceiro_seq OWNED BY public.parceiro.id_parceiro;


--
-- TOC entry 263 (class 1259 OID 40474)
-- Name: particular; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.particular (
    id_requisicao integer NOT NULL,
    cpf_autor character(11) NOT NULL
);


ALTER TABLE public.particular OWNER TO postgres;

--
-- TOC entry 262 (class 1259 OID 40473)
-- Name: particular_id_requisicao_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.particular_id_requisicao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.particular_id_requisicao_seq OWNER TO postgres;

--
-- TOC entry 5252 (class 0 OID 0)
-- Dependencies: 262
-- Name: particular_id_requisicao_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.particular_id_requisicao_seq OWNED BY public.particular.id_requisicao;


--
-- TOC entry 264 (class 1259 OID 40480)
-- Name: piscina; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.piscina (
    id_dependencia integer NOT NULL,
    capacidade integer NOT NULL,
    profundidade integer NOT NULL,
    data_ult_limpeza date NOT NULL
);


ALTER TABLE public.piscina OWNER TO postgres;

--
-- TOC entry 266 (class 1259 OID 40486)
-- Name: produto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produto (
    id_produto integer NOT NULL,
    nome character varying(30) NOT NULL,
    valor numeric(10,2) NOT NULL,
    estoque integer NOT NULL,
    id_dependencia integer NOT NULL
);


ALTER TABLE public.produto OWNER TO postgres;

--
-- TOC entry 259 (class 1259 OID 40460)
-- Name: produto_frigobar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produto_frigobar (
    id_produto_frigobar integer NOT NULL,
    nome character(30) NOT NULL,
    valor numeric(10,2) NOT NULL,
    estoque integer NOT NULL,
    id_acomodacao integer NOT NULL
);


ALTER TABLE public.produto_frigobar OWNER TO postgres;

--
-- TOC entry 258 (class 1259 OID 40459)
-- Name: produto_frigobar_id_produto_frigobar_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produto_frigobar_id_produto_frigobar_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.produto_frigobar_id_produto_frigobar_seq OWNER TO postgres;

--
-- TOC entry 5253 (class 0 OID 0)
-- Dependencies: 258
-- Name: produto_frigobar_id_produto_frigobar_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produto_frigobar_id_produto_frigobar_seq OWNED BY public.produto_frigobar.id_produto_frigobar;


--
-- TOC entry 265 (class 1259 OID 40485)
-- Name: produto_id_produto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produto_id_produto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.produto_id_produto_seq OWNER TO postgres;

--
-- TOC entry 5254 (class 0 OID 0)
-- Dependencies: 265
-- Name: produto_id_produto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produto_id_produto_seq OWNED BY public.produto.id_produto;


--
-- TOC entry 269 (class 1259 OID 40498)
-- Name: requisicao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.requisicao (
    id_requisicao integer NOT NULL,
    status character varying(15) NOT NULL,
    tipo character varying(15) NOT NULL,
    atendente character varying(30) NOT NULL,
    texto_requisicao character varying(300) NOT NULL,
    data_abertura timestamp without time zone NOT NULL,
    data_fechamento timestamp without time zone NOT NULL,
    id_cliente integer NOT NULL
);


ALTER TABLE public.requisicao OWNER TO postgres;

--
-- TOC entry 268 (class 1259 OID 40497)
-- Name: requisicao_id_requisicao_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.requisicao_id_requisicao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.requisicao_id_requisicao_seq OWNER TO postgres;

--
-- TOC entry 5255 (class 0 OID 0)
-- Dependencies: 268
-- Name: requisicao_id_requisicao_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.requisicao_id_requisicao_seq OWNED BY public.requisicao.id_requisicao;


--
-- TOC entry 271 (class 1259 OID 40505)
-- Name: reserva; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reserva (
    id_reserva integer NOT NULL,
    valor numeric(10,2) NOT NULL,
    per_dt_inicio date NOT NULL,
    per_dt_fim date NOT NULL,
    id_cliente integer NOT NULL,
    id_acomodacao integer NOT NULL
);


ALTER TABLE public.reserva OWNER TO postgres;

--
-- TOC entry 270 (class 1259 OID 40504)
-- Name: reserva_id_reserva_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reserva_id_reserva_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reserva_id_reserva_seq OWNER TO postgres;

--
-- TOC entry 5256 (class 0 OID 0)
-- Dependencies: 270
-- Name: reserva_id_reserva_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reserva_id_reserva_seq OWNED BY public.reserva.id_reserva;


--
-- TOC entry 273 (class 1259 OID 40512)
-- Name: saida; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.saida (
    id_transacao integer NOT NULL,
    id_parceiro integer,
    receptor character varying(30) NOT NULL,
    valor_saida numeric(10,2) NOT NULL,
    id_funcionario integer
);


ALTER TABLE public.saida OWNER TO postgres;

--
-- TOC entry 272 (class 1259 OID 40511)
-- Name: saida_id_transacao_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.saida_id_transacao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.saida_id_transacao_seq OWNER TO postgres;

--
-- TOC entry 5257 (class 0 OID 0)
-- Dependencies: 272
-- Name: saida_id_transacao_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.saida_id_transacao_seq OWNED BY public.saida.id_transacao;


--
-- TOC entry 274 (class 1259 OID 40518)
-- Name: solicita; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.solicita (
    id_produto integer NOT NULL,
    id_reserva integer NOT NULL,
    quantidade integer NOT NULL
);


ALTER TABLE public.solicita OWNER TO postgres;

--
-- TOC entry 275 (class 1259 OID 40523)
-- Name: supervisiona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.supervisiona (
    id_atividade integer NOT NULL,
    id_monitor integer NOT NULL
);


ALTER TABLE public.supervisiona OWNER TO postgres;

--
-- TOC entry 277 (class 1259 OID 40529)
-- Name: transacao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transacao (
    id_transacao integer NOT NULL,
    data timestamp without time zone NOT NULL,
    motivo character varying(50) NOT NULL,
    id_nota_fiscal numeric(44,0) NOT NULL
);


ALTER TABLE public.transacao OWNER TO postgres;

--
-- TOC entry 278 (class 1259 OID 40535)
-- Name: transacao_extorno; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transacao_extorno (
    id_transacao integer NOT NULL,
    data_extorno timestamp without time zone NOT NULL,
    motivo_extorno character varying(50) NOT NULL
);


ALTER TABLE public.transacao_extorno OWNER TO postgres;

--
-- TOC entry 276 (class 1259 OID 40528)
-- Name: transacao_id_transacao_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.transacao_id_transacao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.transacao_id_transacao_seq OWNER TO postgres;

--
-- TOC entry 5258 (class 0 OID 0)
-- Dependencies: 276
-- Name: transacao_id_transacao_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.transacao_id_transacao_seq OWNED BY public.transacao.id_transacao;


--
-- TOC entry 280 (class 1259 OID 40543)
-- Name: transporte; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transporte (
    id_transporte integer NOT NULL,
    placa character varying(7) NOT NULL,
    modelo character varying(10) NOT NULL,
    capacidade integer NOT NULL
);


ALTER TABLE public.transporte OWNER TO postgres;

--
-- TOC entry 279 (class 1259 OID 40542)
-- Name: transporte_id_transporte_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.transporte_id_transporte_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.transporte_id_transporte_seq OWNER TO postgres;

--
-- TOC entry 5259 (class 0 OID 0)
-- Dependencies: 279
-- Name: transporte_id_transporte_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.transporte_id_transporte_seq OWNED BY public.transporte.id_transporte;


--
-- TOC entry 282 (class 1259 OID 40550)
-- Name: unidade; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.unidade (
    id_unidade integer NOT NULL,
    nome_fantasia character varying(30) NOT NULL,
    tipo character varying(30) NOT NULL,
    setor character varying(30) NOT NULL,
    cep character(15) NOT NULL,
    numero integer NOT NULL
);


ALTER TABLE public.unidade OWNER TO postgres;

--
-- TOC entry 281 (class 1259 OID 40549)
-- Name: unidade_id_unidade_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.unidade_id_unidade_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.unidade_id_unidade_seq OWNER TO postgres;

--
-- TOC entry 5260 (class 0 OID 0)
-- Dependencies: 281
-- Name: unidade_id_unidade_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.unidade_id_unidade_seq OWNED BY public.unidade.id_unidade;


--
-- TOC entry 283 (class 1259 OID 40556)
-- Name: utiliza; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.utiliza (
    id_atividade integer NOT NULL,
    id_equipamento integer NOT NULL,
    obrigatoriedade boolean NOT NULL
);


ALTER TABLE public.utiliza OWNER TO postgres;

--
-- TOC entry 4829 (class 2604 OID 40297)
-- Name: acomodacao id_acomodacao; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acomodacao ALTER COLUMN id_acomodacao SET DEFAULT nextval('public.acomodacao_id_acomodacao_seq'::regclass);


--
-- TOC entry 4830 (class 2604 OID 40304)
-- Name: amenidade id_amenidade; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.amenidade ALTER COLUMN id_amenidade SET DEFAULT nextval('public.amenidade_id_amenidade_seq'::regclass);


--
-- TOC entry 4831 (class 2604 OID 40311)
-- Name: atividade id_atividade; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atividade ALTER COLUMN id_atividade SET DEFAULT nextval('public.atividade_id_atividade_seq'::regclass);


--
-- TOC entry 4832 (class 2604 OID 40323)
-- Name: carro id_carro; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carro ALTER COLUMN id_carro SET DEFAULT nextval('public.carro_id_carro_seq'::regclass);


--
-- TOC entry 4833 (class 2604 OID 40330)
-- Name: cliente id_cliente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id_cliente SET DEFAULT nextval('public.cliente_id_cliente_seq'::regclass);


--
-- TOC entry 4834 (class 2604 OID 40337)
-- Name: condominio id_condominio; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.condominio ALTER COLUMN id_condominio SET DEFAULT nextval('public.condominio_id_condominio_seq'::regclass);


--
-- TOC entry 4835 (class 2604 OID 40356)
-- Name: dependencia id_dependencia; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dependencia ALTER COLUMN id_dependencia SET DEFAULT nextval('public.dependencia_id_dependencia_seq'::regclass);


--
-- TOC entry 4836 (class 2604 OID 40375)
-- Name: entrega_robo id_entrega; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entrega_robo ALTER COLUMN id_entrega SET DEFAULT nextval('public.entrega_robo_id_entrega_seq'::regclass);


--
-- TOC entry 4837 (class 2604 OID 40382)
-- Name: equipamento id_equipamento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipamento ALTER COLUMN id_equipamento SET DEFAULT nextval('public.equipamento_id_equipamento_seq'::regclass);


--
-- TOC entry 4838 (class 2604 OID 40411)
-- Name: funcionario id_funcionario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionario ALTER COLUMN id_funcionario SET DEFAULT nextval('public.funcionario_id_funcionario_seq'::regclass);


--
-- TOC entry 4839 (class 2604 OID 40423)
-- Name: hospede id_hospede; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hospede ALTER COLUMN id_hospede SET DEFAULT nextval('public.hospede_id_hospede_seq'::regclass);


--
-- TOC entry 4840 (class 2604 OID 40435)
-- Name: loja id_loja; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loja ALTER COLUMN id_loja SET DEFAULT nextval('public.loja_id_loja_seq'::regclass);


--
-- TOC entry 4841 (class 2604 OID 40442)
-- Name: monitor id_monitor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.monitor ALTER COLUMN id_monitor SET DEFAULT nextval('public.monitor_id_monitor_seq'::regclass);


--
-- TOC entry 4842 (class 2604 OID 40449)
-- Name: motorista id_motorista; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.motorista ALTER COLUMN id_motorista SET DEFAULT nextval('public.motorista_id_motorista_seq'::regclass);


--
-- TOC entry 4843 (class 2604 OID 40456)
-- Name: ocorrencia id_ocorrencia; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ocorrencia ALTER COLUMN id_ocorrencia SET DEFAULT nextval('public.ocorrencia_id_ocorrencia_seq'::regclass);


--
-- TOC entry 4845 (class 2604 OID 40470)
-- Name: parceiro id_parceiro; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parceiro ALTER COLUMN id_parceiro SET DEFAULT nextval('public.parceiro_id_parceiro_seq'::regclass);


--
-- TOC entry 4846 (class 2604 OID 40477)
-- Name: particular id_requisicao; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.particular ALTER COLUMN id_requisicao SET DEFAULT nextval('public.particular_id_requisicao_seq'::regclass);


--
-- TOC entry 4847 (class 2604 OID 40489)
-- Name: produto id_produto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto ALTER COLUMN id_produto SET DEFAULT nextval('public.produto_id_produto_seq'::regclass);


--
-- TOC entry 4844 (class 2604 OID 40463)
-- Name: produto_frigobar id_produto_frigobar; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto_frigobar ALTER COLUMN id_produto_frigobar SET DEFAULT nextval('public.produto_frigobar_id_produto_frigobar_seq'::regclass);


--
-- TOC entry 4848 (class 2604 OID 40501)
-- Name: requisicao id_requisicao; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.requisicao ALTER COLUMN id_requisicao SET DEFAULT nextval('public.requisicao_id_requisicao_seq'::regclass);


--
-- TOC entry 4849 (class 2604 OID 40508)
-- Name: reserva id_reserva; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva ALTER COLUMN id_reserva SET DEFAULT nextval('public.reserva_id_reserva_seq'::regclass);


--
-- TOC entry 4850 (class 2604 OID 40515)
-- Name: saida id_transacao; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.saida ALTER COLUMN id_transacao SET DEFAULT nextval('public.saida_id_transacao_seq'::regclass);


--
-- TOC entry 4851 (class 2604 OID 40532)
-- Name: transacao id_transacao; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transacao ALTER COLUMN id_transacao SET DEFAULT nextval('public.transacao_id_transacao_seq'::regclass);


--
-- TOC entry 4852 (class 2604 OID 40546)
-- Name: transporte id_transporte; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transporte ALTER COLUMN id_transporte SET DEFAULT nextval('public.transporte_id_transporte_seq'::regclass);


--
-- TOC entry 4853 (class 2604 OID 40553)
-- Name: unidade id_unidade; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.unidade ALTER COLUMN id_unidade SET DEFAULT nextval('public.unidade_id_unidade_seq'::regclass);


--
-- TOC entry 5165 (class 0 OID 40294)
-- Dependencies: 218
-- Data for Name: acomodacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.acomodacao (id_acomodacao, tipo, status, limpeza, preco, politica_uso, capacidade_max, id_unidade) FROM stdin;
1	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	4	2
2	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	6	11
3	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	5	10
4	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	6	11
5	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	3	14
6	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	5	5
7	Suite	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	4	8
8	Duplex	t	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	2	7
9	Suite	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	7	10
10	Duplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	10	7
11	Suite	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	1	4
12	Triplex	f	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	4	10
13	Duplex	t	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	1	3
14	Suite	f	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	4	2
15	Pet-Friendly	t	t	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	2	8
16	Quarto	f	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	8	11
17	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	6	10
18	Pet-Friendly	f	t	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	8	6
19	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	5	15
20	Triplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	10	3
21	Suite	t	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	8	7
22	Suite	f	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	2	9
23	Suite	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	9	5
24	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	9	9
25	Duplex	f	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	4	1
26	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	2	10
27	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	1	15
28	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	1	5
29	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	5	15
30	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	5	2
31	Suite	t	f	55.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	7	11
32	Pet-Friendly	f	f	92.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	1	12
33	Triplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	3	1
34	Duplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	8	14
35	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	1	2
36	Triplex	t	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	9	8
37	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	2	13
38	Triplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	7	2
39	Triplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	3	4
40	Suite	f	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	4	4
41	Quarto	f	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	4	3
42	Duplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	8	14
43	Suite	f	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	5	9
44	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	7	15
45	Triplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	7	5
46	Duplex	f	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	4	15
47	Suite	f	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	5	9
48	Duplex	f	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	10	4
49	Duplex	t	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	8	7
50	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	9	7
51	Suite	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	10	14
52	Duplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	5	1
53	Suite	t	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	9	7
54	Triplex	f	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	9	8
55	Duplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	9	7
56	Duplex	f	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	3	3
57	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	8	10
58	Triplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	3	15
59	Suite	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	8	7
60	Duplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	9	11
61	Triplex	f	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	6	14
62	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	8	6
63	Suite	t	t	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	2	8
64	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	1	9
65	Triplex	t	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	3	15
66	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	1	9
67	Triplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	9	12
68	Duplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	7	10
69	Triplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	1	4
70	Suite	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	5	1
71	Quarto	t	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	6	9
72	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	4	6
73	Suite	t	t	61.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	7	13
74	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	2	2
75	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	7	8
76	Duplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	5	9
77	Duplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	9	12
78	Duplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	8	11
79	Suite	t	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	4	5
80	Triplex	t	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	7	6
81	Triplex	t	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	9	1
82	Duplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	7	7
83	Pet-Friendly	f	t	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	4	13
84	Triplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	1	9
85	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	7	10
86	Triplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	5	11
87	Pet-Friendly	f	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	6	3
88	Duplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	9	9
89	Suite	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	1	3
90	Triplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	10	3
91	Quarto	f	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	6	4
92	Duplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	6	14
93	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	3	5
94	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	7	7
95	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	7	12
96	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	10	12
97	Triplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	10	9
98	Triplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	4	10
99	Triplex	t	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	2	12
100	Pet-Friendly	t	t	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	10	4
101	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	8	9
102	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	5	1
103	Quarto	f	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	5	1
104	Triplex	t	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	6	5
105	Duplex	f	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	7	13
106	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	5	12
107	Duplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	2	7
108	Triplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	10	10
109	Triplex	t	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	3	11
110	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	1	3
111	Triplex	f	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	5	15
112	Duplex	f	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	7	1
113	Duplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	9	5
114	Quarto	f	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	4	4
115	Suite	f	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	10	12
116	Duplex	t	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	5	1
117	Suite	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	7	9
118	Triplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	9	8
119	Suite	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	8	6
120	Suite	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	2	4
121	Duplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	6	7
122	Duplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	3	9
123	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	4	10
124	Triplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	9	3
125	Duplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	7	10
126	Duplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	3	14
127	Pet-Friendly	t	t	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	2	1
128	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	4	10
129	Duplex	t	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	2	7
130	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	4	12
131	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	3	4
132	Triplex	f	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	8	3
133	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	4	13
134	Pet-Friendly	t	t	58.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	10	12
135	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	4	3
136	Suite	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	4	1
137	Duplex	t	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	3	7
138	Suite	t	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	4	9
139	Suite	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	10	2
140	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	2	3
141	Quarto	f	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	2	3
142	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	5	13
143	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	4	1
144	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	10	13
145	Suite	t	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	9	15
146	Pet-Friendly	f	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	1	7
147	Pet-Friendly	f	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	6	13
148	Duplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	10	14
149	Duplex	f	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	5	4
150	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	10	14
151	Triplex	f	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	2	12
152	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	7	7
153	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	8	13
154	Suite	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	6	8
155	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	5	10
156	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	4	11
157	Quarto	f	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	5	4
158	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	7	2
159	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	7	9
160	Triplex	t	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	5	8
161	Suite	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	4	4
162	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	4	12
163	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	5	6
164	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	7	13
165	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	5	15
166	Triplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	5	10
167	Suite	f	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	7	14
168	Pet-Friendly	f	t	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	1	10
169	Triplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	5	10
170	Suite	f	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	10	12
171	Triplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	7	4
172	Quarto	t	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	7	3
173	Quarto	t	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	4	7
174	Quarto	t	f	50.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	3	3
175	Duplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	3	10
176	Triplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	6	5
177	Pet-Friendly	t	t	56.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	10	14
178	Triplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	3	8
179	Quarto	t	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	7	3
180	Suite	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	1	2
181	Suite	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	6	7
182	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	8	13
183	Quarto	f	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	10	3
184	Suite	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	10	3
185	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	1	11
186	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	6	14
187	Suite	f	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	4	14
188	Suite	t	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	6	7
189	Suite	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	8	11
190	Pet-Friendly	f	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	4	15
191	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	6	11
192	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	10	3
193	Duplex	f	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	8	14
194	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	1	15
195	Duplex	f	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	7	9
196	Duplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	2	14
197	Triplex	t	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	1	13
198	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	2	7
199	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	2	2
200	Suite	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	8	9
\.


--
-- TOC entry 5167 (class 0 OID 40301)
-- Dependencies: 220
-- Data for Name: amenidade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.amenidade (id_amenidade, tipo, manutencao, id_acomodacao) FROM stdin;
1	Lareira	t	1
2	Hidromassagem	t	2
3	Caixa de lenços	t	3
4	Roupões	t	4
5	Internet	t	5
6	TV a cabo	t	6
7	Streaming	t	7
8	videogame	t	8
9	Projetor	t	9
10	Cadeira de massagem	t	10
11	Umidificador de ar	t	11
12	Estação de coquetéis no quarto	t	12
13	Fruteira	t	13
14	Lareira	t	14
15	Hidromassagem	t	15
16	Caixa de lenços	t	16
17	Roupões	t	17
18	Internet	t	18
19	TV a cabo	t	19
20	Streaming	t	20
21	videogame	t	21
22	Projetor	t	22
23	Cadeira de massagem	t	23
24	Umidificador de ar	t	24
25	Estação de coquetéis no quarto	t	25
26	Fruteira	t	26
27	Lareira	t	27
28	Hidromassagem	t	28
29	Caixa de lenços	t	29
30	Roupões	t	30
31	Internet	t	31
32	TV a cabo	t	32
33	Streaming	t	33
34	videogame	f	34
35	Projetor	f	35
36	Cadeira de massagem	f	36
37	Umidificador de ar	f	37
38	Estação de coquetéis no quarto	t	38
39	Fruteira	t	39
40	Lareira	t	40
41	Lareira	t	41
42	Hidromassagem	t	42
43	Caixa de lenços	t	43
44	Roupões	t	44
45	Internet	t	45
46	TV a cabo	t	46
47	Streaming	t	47
48	videogame	t	48
49	Projetor	t	49
50	Cadeira de massagem	t	50
51	Umidificador de ar	t	51
52	Estação de coquetéis no quarto	t	52
53	Fruteira	t	53
54	Lareira	t	54
55	Hidromassagem	t	55
56	Caixa de lenços	t	56
57	Roupões	t	57
58	Internet	t	58
59	TV a cabo	t	59
60	Streaming	t	60
61	videogame	t	61
62	Projetor	t	62
63	Cadeira de massagem	t	63
64	Umidificador de ar	t	64
65	Estação de coquetéis no quarto	t	65
66	Fruteira	t	66
67	Lareira	t	67
68	Hidromassagem	t	68
69	Caixa de lenços	t	69
70	Roupões	t	70
71	Internet	t	71
72	TV a cabo	t	72
73	Streaming	t	73
74	videogame	t	74
75	Projetor	t	75
76	Cadeira de massagem	t	76
77	Umidificador de ar	t	77
78	Estação de coquetéis no quarto	t	78
79	Fruteira	t	79
80	Lareira	f	80
81	Lareira	t	81
82	Hidromassagem	t	82
83	Caixa de lenços	t	83
84	Roupões	t	84
85	Internet	t	85
86	TV a cabo	t	86
87	Streaming	t	87
88	videogame	t	88
89	Projetor	t	89
90	Cadeira de massagem	t	90
91	Umidificador de ar	t	91
92	Estação de coquetéis no quarto	t	92
93	Fruteira	t	93
94	Lareira	t	94
95	Hidromassagem	t	95
96	Caixa de lenços	t	96
97	Roupões	t	97
98	Internet	t	98
99	TV a cabo	t	99
100	Streaming	t	100
101	videogame	t	101
102	Projetor	t	102
103	Cadeira de massagem	t	103
104	Umidificador de ar	t	104
105	Estação de coquetéis no quarto	t	105
106	Fruteira	t	106
107	Lareira	t	107
108	Hidromassagem	t	108
109	Caixa de lenços	t	109
110	Roupões	t	110
111	Internet	t	111
112	TV a cabo	t	112
113	Streaming	t	113
114	videogame	f	114
115	Projetor	f	115
116	Cadeira de massagem	f	116
117	Umidificador de ar	f	117
118	Estação de coquetéis no quarto	t	118
119	Fruteira	t	119
120	Lareira	t	120
121	Internet	t	120
122	Internet	t	121
123	Internet	t	122
124	Internet	t	123
125	Internet	t	124
126	Internet	t	125
127	Internet	t	126
128	Internet	t	127
129	Internet	t	128
130	Internet	t	129
131	Internet	t	130
132	Internet	t	131
133	Internet	t	132
134	Internet	t	133
135	Internet	t	134
136	Internet	t	135
137	Internet	t	136
138	Internet	t	137
139	Internet	t	138
140	Internet	t	139
141	Internet	t	140
142	Internet	t	141
143	Internet	t	142
144	Internet	t	143
145	Internet	t	144
146	Internet	t	145
147	Internet	t	146
148	Internet	t	147
149	Internet	t	148
150	Internet	t	149
151	Internet	t	150
152	Internet	t	151
153	TV a cabo	t	152
154	TV a cabo	t	153
155	TV a cabo	t	154
156	TV a cabo	t	155
157	TV a cabo	t	156
158	TV a cabo	t	157
159	TV a cabo	t	158
160	TV a cabo	t	159
161	TV a cabo	t	160
162	TV a cabo	f	120
163	TV a cabo	f	121
164	TV a cabo	f	122
165	Streaming	t	123
166	Streaming	t	124
167	Streaming	t	125
168	Streaming	f	126
169	Streaming	f	127
170	Streaming	f	128
171	Streaming	f	129
172	Streaming	f	130
173	Internet	t	131
174	Internet	t	132
175	Internet	t	133
176	Internet	t	134
177	Internet	t	135
178	Internet	t	136
179	Internet	t	137
180	Internet	t	138
181	Internet	t	139
182	Internet	t	140
183	Internet	t	141
184	Internet	t	142
185	Internet	t	143
186	Internet	t	144
187	Internet	t	145
188	Internet	t	146
189	Internet	t	147
190	Internet	t	148
191	Internet	t	149
192	Internet	t	150
193	Internet	t	151
194	Internet	t	152
195	Internet	t	153
196	Internet	t	154
197	Internet	t	155
198	Internet	t	156
199	Internet	t	157
200	Internet	t	158
201	Internet	t	159
202	Internet	t	160
203	Internet	t	161
204	Internet	t	162
205	Internet	t	163
206	Internet	t	164
207	Internet	t	165
208	Internet	t	166
209	Internet	t	167
210	Internet	t	168
211	Internet	t	169
212	Internet	t	170
213	TV a cabo	t	171
214	TV a cabo	t	172
215	TV a cabo	t	173
216	TV a cabo	t	174
217	TV a cabo	t	175
218	TV a cabo	t	176
219	TV a cabo	t	177
220	TV a cabo	t	178
221	TV a cabo	t	179
222	TV a cabo	t	180
223	TV a cabo	t	181
224	TV a cabo	t	131
225	TV a cabo	t	132
226	TV a cabo	t	133
227	TV a cabo	f	134
228	TV a cabo	f	135
229	TV a cabo	f	136
230	TV a cabo	f	137
231	TV a cabo	f	138
232	TV a cabo	f	139
233	TV a cabo	f	140
\.


--
-- TOC entry 5169 (class 0 OID 40308)
-- Dependencies: 222
-- Data for Name: atividade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.atividade (id_atividade, nome, tipo, idade_min, idade_max, data_atv, sazonalidade, duracao, capacidade_max, id_parceiro, id_unidade) FROM stdin;
1	Aula de Natação	Piscina	5	60	2023-06-15	Calor	60	15	1	3
2	Zumba ao Ar Livre	Dança	10	50	2022-11-20	Calor	45	20	3	7
3	Torneio de Futebol	Esporte	8	40	2024-03-05	Calor	90	22	2	10
4	Show Acústico	Música	12	99	2023-09-18	Chuva	120	3	4	2
5	Workshop de Gastronomia	Culinária	15	70	2024-01-22	Frio	180	12	5	15
6	Aventura de Escalada	Radical	12	50	2022-10-10	Frio	150	10	1	6
7	Yoga na Praia	Ar livre	16	99	2023-05-25	Calor	60	30	4	9
8	Dança de Salão	Dança	18	70	2022-12-12	Chuva	90	25	4	13
9	Cinema ao Ar Livre	Teatro	5	99	2024-07-30	Calor	120	100	6	14
10	Canoagem	Esporte	10	50	2023-03-15	Frio	120	12	2	11
11	Show de Jazz	Música	16	99	2024-04-10	Chuva	120	40	7	8
12	Treinamento Funcional	Esporte	12	60	2023-02-08	Frio	45	18	4	12
13	Curso de Pintura	Artes	8	70	2022-09-14	Chuva	90	15	6	5
14	Palestra de Mindfulness	Teatro	18	70	2023-11-25	Frio	60	30	8	3
15	Corrida na Trilha	Esporte	10	40	2022-06-18	Calor	60	50	3	7
16	Festival Gastronômico	Culinária	16	99	2024-05-14	Frio	180	200	5	11
17	Luau na Praia	Música	12	99	2023-08-20	Calor	120	50	3	4
18	Oficina de Esculturas	Artes	10	50	2022-07-22	Chuva	90	20	7	6
19	Patinação no Gelo	Radical	8	50	2024-01-09	Frio	90	25	1	2
20	Dança Folclórica	Dança	12	70	2023-10-05	Chuva	60	30	4	15
\.


--
-- TOC entry 5170 (class 0 OID 40314)
-- Dependencies: 223
-- Data for Name: avalia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.avalia (id_atividade, id_hospede, nota, comentario, data_avaliacao) FROM stdin;
3	50	10	Show!!	2024-03-05 00:00:00
17	48	8	Muito legal, ótima oportunidade de conhecer novas pessoas	2023-08-20 00:00:00
6	97	7	ótima ideia de atividade, a escalada foi ótima! só um pouco dificil	2022-10-10 00:00:00
7	30	8	Muito legal, adorei	2023-05-25 00:00:00
7	80	10	A atividade de yoga foi excelente! Ambiente calmo e instrutores dedicados.	2023-05-25 00:00:00
9	95	6	O cinema ao ar livre foi uma boa ideia, mas o áudio estava baixo demais.	2024-07-30 00:00:00
5	70	6	A aula de culinária foi divertida, mas senti falta de mais receitas para aprender.	2024-01-22 00:00:00
1	58	9	Aula muito boa	2023-06-15 00:00:00
18	22	9	Adorei a oficina de escultura! Os instrutores eram ótimos e me diverti muito.	2022-07-22 00:00:00
8	67	7	A aula de dança foi muito animada, mas gostaria que houvesse mais variedade nas músicas.	2022-12-12 00:00:00
\.


--
-- TOC entry 5172 (class 0 OID 40320)
-- Dependencies: 225
-- Data for Name: carro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carro (id_carro, placa, entrada, saida, id_reserva) FROM stdin;
1	ABC1234	2024-11-16 00:00:00	2024-11-26 00:00:00	72
2	DEF5678	2024-11-16 00:00:00	2024-11-27 00:00:00	73
3	GHI9101	2024-11-17 00:00:00	2024-12-01 00:00:00	74
4	JKL1123	2024-11-20 00:00:00	2024-11-27 00:00:00	75
5	MNO1415	2024-11-18 00:00:00	2024-11-29 00:00:00	76
6	PQR1617	2024-11-20 00:00:00	2024-11-27 00:00:00	77
7	STU1819	2024-11-16 00:00:00	2024-11-26 00:00:00	78
8	VWX2021	2024-11-19 00:00:00	2024-12-01 00:00:00	79
9	YZA2223	2024-11-18 00:00:00	2024-11-25 00:00:00	80
10	BCD2425	2024-11-12 00:00:00	2024-12-01 00:00:00	82
11	EFG2627	2024-11-15 00:00:00	2024-11-27 00:00:00	84
12	HIJ2829	2024-11-17 00:00:00	2024-11-24 00:00:00	86
13	KLM3031	2024-11-17 00:00:00	2024-11-26 00:00:00	87
14	NOP3233	2024-11-17 00:00:00	2024-11-21 00:00:00	88
15	QRS3435	2024-11-19 00:00:00	2024-12-06 00:00:00	89
16	TUV3637	2024-11-21 00:00:00	2024-11-27 00:00:00	90
17	WXY3839	2024-11-18 00:00:00	2024-11-26 00:00:00	91
18	ZAB4041	2024-11-19 00:00:00	2024-11-29 00:00:00	92
19	CDE4243	2024-11-12 00:00:00	2024-11-25 00:00:00	93
20	FGH4445	2024-11-18 00:00:00	2024-11-26 00:00:00	95
21	IJK4647	2024-11-21 00:00:00	2024-11-23 00:00:00	96
22	LMN4849	2024-11-15 00:00:00	2024-11-27 00:00:00	97
23	OPQ5051	2024-11-12 00:00:00	2024-11-27 00:00:00	99
24	RST5253	2024-11-21 00:00:00	2024-11-23 00:00:00	100
25	UVW5455	2024-11-14 00:00:00	2024-12-20 00:00:00	101
26	XYZ5657	2024-11-19 00:00:00	2024-11-23 00:00:00	102
27	ABC5859	2024-11-21 00:00:00	2024-11-30 00:00:00	103
28	DEF6061	2024-11-21 00:00:00	2024-11-28 00:00:00	108
29	GHI6263	2024-11-13 00:00:00	2024-11-25 00:00:00	111
30	JKL6465	2024-11-12 00:00:00	2024-12-01 00:00:00	114
31	MNO6667	2024-11-19 00:00:00	2024-11-24 00:00:00	115
32	PQR6869	2024-11-19 00:00:00	2024-11-28 00:00:00	116
33	STU7071	2024-11-12 00:00:00	2024-11-25 00:00:00	118
34	VWX7273	2024-11-17 00:00:00	2024-11-30 00:00:00	119
35	YZA7475	2024-11-14 00:00:00	2024-11-29 00:00:00	120
36	BCD7677	2024-11-14 00:00:00	2024-11-29 00:00:00	121
37	EFG7879	2024-11-19 00:00:00	2024-11-26 00:00:00	122
38	HIJ8081	2024-11-15 00:00:00	2024-11-30 00:00:00	123
39	KLM8283	2024-11-16 00:00:00	2024-11-25 00:00:00	125
40	NOP8485	2024-11-21 00:00:00	2024-11-27 00:00:00	128
41	QRS8687	2024-11-20 00:00:00	2024-11-30 00:00:00	129
42	TUV8889	2024-11-19 00:00:00	2024-11-24 00:00:00	130
43	WXY9091	2024-11-18 00:00:00	2024-11-26 00:00:00	133
44	ZAB9293	2024-11-20 00:00:00	2024-11-30 00:00:00	134
45	CDE9495	2024-11-21 00:00:00	2024-11-28 00:00:00	135
46	FGH9697	2024-11-21 00:00:00	2024-11-30 00:00:00	136
47	IJK9899	2024-11-19 00:00:00	2024-11-28 00:00:00	137
48	LMN0001	2024-11-20 00:00:00	2024-11-30 00:00:00	138
49	OPQ1011	2024-11-13 00:00:00	2024-11-29 00:00:00	140
50	RST1213	2024-11-21 00:00:00	2024-11-25 00:00:00	143
51	UVW1415	2024-11-15 00:00:00	2024-11-21 00:00:00	144
52	XYZ1617	2024-11-15 00:00:00	2024-11-25 00:00:00	146
53	ABC1819	2024-11-11 00:00:00	2024-12-01 00:00:00	147
54	DEF2021	2024-11-21 00:00:00	2024-11-28 00:00:00	148
55	GHI2223	2024-11-13 00:00:00	2024-12-01 00:00:00	149
\.


--
-- TOC entry 5174 (class 0 OID 40327)
-- Dependencies: 227
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cliente (id_cliente, cpf, nome, email, ponto_fidelidade, visitas) FROM stdin;
1	14027131454	Ornela Silvana de Souza Jr.	alan.quintana@hotmail.com	4	9
2	65068507061	Hugo Kevin Cruz	sophie.aranda@yahoo.com	1	8
3	87244586890	Manuela Camacho Furtado	violeta.serra@hotmail.com	1	9
4	76249721775	Natália Dominato Saraiva	delatorre.josué@gmail.com	1	7
5	96948839571	Luciana Luzia Matias Filho	joão21@yahoo.com	8	4
6	40806249992	Pâmela de Souza Cordeiro	ivana.uchoa@hotmail.com	2	7
7	74364354616	Manuel Fábio da Cruz Filho	camacho.valentin@yahoo.com	7	8
8	17531145534	Christian Reis Sobrinho	michele.jimenes@hotmail.com	8	2
9	29154729354	Demian Alonso Montenegro	lutero.bruno@yahoo.com	8	7
10	12315021710	Antonieta Rios	tortiz@gmail.com	2	6
11	18533945453	Natal Dias	serna.christian@hotmail.com	5	1
12	61085486616	Jerônimo Serna Escobar Neto	ngodói@hotmail.com	6	3
13	21230495735	Joaquin Anderson Avila	nchaves@gmail.com	2	1
14	07736835507	Rafael Martines Filho	batista.emanuel@hotmail.com	8	4
15	90283482755	Thalissa Vale Dias	ariadna.vale@gmail.com	4	2
16	98570733479	Giovane Cordeiro Beltrão Filho	daragão@gmail.com	6	1
17	77962164553	Miranda Rafaela Medina Filho	joaquin68@hotmail.com	7	3
18	86650470414	Sofia Mel Garcia Sobrinho	noelí85@hotmail.com	5	5
19	11488874715	Helena Ortega Jr.	imarés@yahoo.com	2	8
20	82936607252	Agustina Martines Gonçalves Filho	santiago.elias@gmail.com	6	8
\.


--
-- TOC entry 5176 (class 0 OID 40334)
-- Dependencies: 229
-- Data for Name: condominio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.condominio (id_condominio, id_unidade, qntd_lojas) FROM stdin;
1	8	8
2	15	5
3	11	5
4	12	9
5	9	8
6	7	4
7	6	7
8	2	6
9	3	8
10	10	4
11	4	9
12	5	8
13	14	10
14	13	10
15	1	6
\.


--
-- TOC entry 5177 (class 0 OID 40342)
-- Dependencies: 230
-- Data for Name: conduz; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.conduz (id_atividade, id_transporte) FROM stdin;
4	1
6	6
10	20
11	6
15	10
17	13
19	2
4	3
6	9
10	14
11	20
15	18
19	13
19	17
4	2
6	1
10	5
11	7
15	14
17	19
19	15
4	4
6	12
10	4
4	7
\.


--
-- TOC entry 5214 (class 0 OID 40492)
-- Dependencies: 267
-- Data for Name: consome; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.consome (id_produto_frigobar, id_reserva, data, quantidade) FROM stdin;
712	1	2022-08-19 17:31:58	5
612	2	2023-06-01 09:30:50	1
413	3	2022-02-26 04:49:59	1
684	5	2023-02-17 12:32:43	2
356	6	2022-05-22 17:43:49	5
252	7	2021-05-01 16:28:24	5
627	8	2021-04-26 01:20:37	6
295	9	2023-12-19 01:37:43	6
383	10	2021-07-13 06:23:45	1
84	11	2023-06-06 20:18:46	5
130	13	2023-09-27 22:08:41	4
174	14	2022-06-07 22:39:36	3
731	15	2023-06-02 06:54:03	1
210	16	2021-07-01 00:34:27	4
671	17	2022-05-08 04:45:31	1
98	18	2021-09-14 13:54:01	3
125	19	2023-01-15 02:01:22	5
81	20	2022-02-14 04:41:32	8
110	21	2022-11-14 18:53:24	1
480	22	2024-02-17 04:09:54	8
148	23	2023-09-08 17:19:54	8
289	24	2022-12-03 16:10:07	4
484	25	2021-12-21 06:00:31	7
627	26	2022-05-04 20:15:56	5
599	27	2023-10-11 11:11:11	8
284	28	2022-10-11 09:34:24	3
221	29	2021-10-18 14:14:23	2
587	30	2023-08-17 13:59:25	7
639	32	2022-01-15 15:22:03	8
116	33	2023-04-20 07:14:06	2
197	34	2023-06-23 15:42:22	4
467	35	2023-05-29 19:15:57	4
640	36	2021-06-16 03:07:44	6
790	37	2021-12-30 19:24:32	2
707	38	2022-02-07 15:09:56	5
395	39	2023-11-27 18:22:31	6
314	40	2023-07-31 11:54:13	8
44	41	2023-02-05 07:50:33	7
360	42	2021-06-01 15:42:16	5
41	44	2023-06-24 10:15:22	8
133	45	2023-01-28 13:27:33	8
795	46	2023-08-24 13:01:24	1
2	47	2021-05-15 18:40:14	8
536	48	2023-09-15 17:38:37	6
709	49	2022-10-27 22:55:30	3
353	50	2022-10-28 15:11:39	3
280	51	2022-12-30 10:52:23	8
360	52	2024-01-04 07:07:07	8
315	53	2022-02-19 06:01:08	4
295	54	2023-07-23 03:12:25	2
148	55	2021-08-20 06:05:47	2
295	56	2023-05-25 02:53:20	1
269	57	2022-05-07 09:38:13	3
536	58	2022-05-23 04:50:41	4
659	60	2023-01-07 03:06:57	7
367	61	2023-10-17 03:32:57	4
4	62	2021-02-16 06:25:00	2
229	63	2023-01-17 16:35:48	4
298	64	2023-05-15 10:09:19	7
307	65	2021-11-17 02:06:07	3
764	66	2023-07-13 06:01:23	2
447	67	2022-10-05 02:53:23	2
477	68	2021-02-24 05:47:34	4
123	69	2022-04-20 07:21:24	4
69	70	2022-03-26 12:13:02	6
624	71	2024-11-15 06:30:35	1
625	72	2024-11-21 06:48:22	1
784	73	2024-11-18 00:42:52	2
452	74	2024-11-20 13:11:02	4
459	75	2024-11-23 01:50:23	2
594	76	2024-11-26 12:49:32	2
390	77	2024-11-22 15:19:22	3
668	78	2024-11-19 11:10:55	8
491	79	2024-11-19 20:23:28	7
379	80	2024-11-23 09:50:31	2
170	81	2024-11-13 13:24:59	6
592	82	2024-11-24 12:56:00	1
440	83	2024-11-18 23:19:06	1
417	84	2024-11-16 05:55:56	6
35	85	2024-11-18 02:29:08	5
129	86	2024-11-24 21:03:10	8
244	87	2024-11-24 03:53:24	3
230	88	2024-11-18 10:12:52	5
402	89	2024-11-23 07:39:51	8
770	90	2024-11-26 15:01:29	5
637	91	2024-11-21 05:30:35	3
222	92	2024-11-23 21:47:14	1
497	93	2024-11-23 23:48:03	4
589	94	2024-11-23 14:12:04	8
590	95	2024-11-23 08:20:43	8
232	96	2024-11-23 22:24:54	6
160	97	2024-11-20 12:21:16	4
199	98	2024-11-16 20:11:10	4
644	99	2024-11-24 10:04:05	4
182	100	2024-11-23 04:35:26	6
700	101	2024-12-12 10:14:55	8
329	102	2024-11-22 18:45:40	2
254	103	2024-11-23 02:22:50	7
57	104	2024-11-14 08:56:24	1
210	105	2024-11-15 14:54:39	6
404	106	2024-11-15 08:36:00	3
427	107	2024-11-15 21:11:54	8
549	108	2024-11-28 13:00:02	4
710	109	2024-11-18 00:43:28	3
291	110	2024-11-14 20:29:18	8
219	111	2024-11-15 16:52:56	6
590	112	2024-11-13 01:30:15	8
557	113	2024-11-13 00:50:23	2
693	114	2024-11-25 11:16:47	5
297	115	2024-11-19 03:48:55	3
36	116	2024-11-23 04:51:55	5
515	117	2024-11-26 02:47:00	5
350	118	2024-11-19 03:41:57	7
708	119	2024-11-21 10:25:42	2
356	120	2024-11-28 22:44:31	3
366	121	2024-11-15 05:00:36	7
206	122	2024-11-21 13:46:57	6
408	123	2024-11-19 19:57:14	1
235	124	2024-11-17 10:30:24	6
776	125	2024-11-25 09:08:39	3
158	126	2024-11-13 15:41:45	3
687	127	2024-11-14 11:03:50	7
88	128	2024-11-27 14:35:22	2
800	129	2024-11-20 20:57:22	4
381	130	2024-11-21 02:29:42	2
382	131	2024-11-24 20:29:23	8
346	132	2024-11-19 15:23:17	1
116	133	2024-11-21 12:21:00	6
565	134	2024-11-21 03:40:48	5
86	135	2024-11-23 11:08:47	4
313	136	2024-11-26 06:47:46	2
90	137	2024-11-27 18:59:34	1
587	138	2024-11-25 10:13:42	5
328	139	2024-11-15 16:27:27	2
200	140	2024-11-16 14:33:08	2
315	141	2024-11-17 13:19:22	3
473	142	2024-11-19 02:32:17	1
484	143	2024-11-21 09:15:16	6
279	144	2024-11-17 12:28:01	3
344	145	2024-11-27 07:03:48	2
640	146	2024-11-24 05:07:23	6
369	147	2024-11-30 14:28:00	5
80	148	2024-11-23 13:43:46	6
648	149	2024-11-29 05:19:33	8
152	150	2024-11-29 05:44:38	4
52	151	2024-11-21 04:50:48	4
208	152	2024-11-18 14:01:15	3
303	153	2024-11-26 22:13:25	7
771	154	2024-11-21 02:27:29	7
342	155	2024-11-22 14:15:04	8
513	156	2024-11-26 10:05:09	6
717	157	2024-11-28 14:44:23	1
92	158	2024-11-24 00:37:22	8
604	159	2024-11-23 20:45:01	7
373	160	2024-11-21 19:30:15	2
226	161	2024-11-16 15:00:19	7
501	162	2024-11-22 00:31:19	4
596	163	2024-11-25 19:58:38	3
167	164	2024-11-28 01:06:38	1
569	165	2024-11-18 16:09:55	4
358	166	2024-11-26 15:20:18	7
330	167	2024-11-30 14:34:27	1
485	168	2024-11-26 16:49:01	7
421	169	2024-11-29 07:06:05	3
315	170	2024-11-21 20:03:11	6
137	171	2024-11-26 11:59:22	2
256	172	2024-11-24 06:33:11	4
304	173	2024-11-23 03:29:19	7
538	174	2024-11-21 20:14:12	5
211	175	2024-11-21 04:03:48	8
617	176	2024-11-20 07:55:00	8
76	177	2024-11-17 18:59:03	3
402	178	2024-11-14 21:13:10	3
34	179	2024-11-28 11:07:12	6
660	180	2024-11-25 20:58:58	1
624	181	2024-11-21 08:17:15	7
151	182	2024-11-27 04:54:29	5
530	183	2024-11-16 09:47:46	3
774	184	2024-11-18 21:02:53	3
296	185	2024-11-18 07:54:15	1
564	186	2024-11-13 09:08:19	3
234	187	2024-11-17 14:17:25	3
750	188	2024-11-15 21:11:12	1
169	189	2024-11-17 11:56:53	7
437	190	2024-11-26 07:16:31	6
754	191	2024-11-15 01:49:17	2
570	192	2024-11-21 09:25:29	1
189	193	2024-11-18 09:34:58	5
698	194	2024-11-19 12:04:56	2
134	195	2024-11-21 00:53:32	7
584	196	2024-11-27 00:01:32	2
136	197	2024-11-21 18:11:15	7
456	198	2024-11-22 13:08:36	1
659	199	2024-11-17 09:08:09	3
767	200	2024-11-17 15:26:26	6
622	201	2024-11-18 21:12:20	2
506	202	2024-11-26 11:40:14	2
317	203	2024-11-14 22:54:36	7
483	204	2024-11-13 17:30:14	6
49	205	2024-11-13 16:03:05	8
166	206	2024-11-25 17:46:21	5
267	207	2024-11-20 02:27:39	4
703	208	2024-11-16 20:44:41	7
113	211	2024-11-14 01:06:41	8
470	212	2024-11-19 01:09:30	2
218	213	2024-11-14 05:44:01	8
517	214	2024-11-24 08:48:10	4
307	215	2024-11-13 18:09:10	4
535	216	2024-11-14 03:35:22	8
649	217	2024-11-24 03:01:16	2
519	218	2024-11-21 13:25:30	3
677	219	2024-11-14 10:29:12	4
537	220	2024-11-23 17:06:06	4
536	221	2024-11-10 17:01:03	5
106	222	2024-11-15 06:57:19	6
444	223	2024-11-16 14:11:19	3
760	224	2024-11-13 16:34:54	3
744	225	2024-11-26 07:08:34	2
405	226	2024-11-24 23:28:51	1
327	227	2024-11-17 07:32:29	3
42	228	2024-11-18 23:44:12	6
268	229	2024-11-14 15:45:11	4
623	230	2024-11-24 16:03:14	3
325	231	2024-11-15 11:23:40	5
482	232	2024-11-20 06:31:52	6
112	233	2024-11-18 01:45:02	2
175	234	2024-11-15 08:02:59	1
722	235	2024-11-12 18:43:22	3
143	238	2024-11-15 05:56:05	3
732	239	2024-11-20 14:53:38	3
755	240	2024-11-20 02:56:14	7
\.


--
-- TOC entry 5178 (class 0 OID 40347)
-- Dependencies: 231
-- Data for Name: cozinha; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cozinha (id_dependencia, local, tipo_culinaria) FROM stdin;
13	Restaurante Temático	 Japonesa
14	Restaurante Principal	 Japonesa
15	Restaurante Principal	 Jamaicana
16	Restaurante Principal	 Italiana
17	Restaurante Principal	 Francesa
18	Restaurante Principal	Brasileira
19	Restaurante Principal	Brasileira
20	Bar Central	 Tailandesa
21	Restaurante Principal	 Italiana
22	Bar Central	 Brasileira
23	Restaurante Principal	 Mexicana
24	Restaurante Principal	 Francesa
25	Restaurante Temático	 Mexicana
26	Restaurante Principal	 Mexicana
27	Restaurante Principal	Brasileira
28	Restaurante Principal	 Japonesa
29	Restaurante Principal	 Italiana
30	Restaurante Principal	 Brasileira
31	Restaurante Principal	 Espanhola
32	Buffet Externo	 Italiana
\.


--
-- TOC entry 5180 (class 0 OID 40353)
-- Dependencies: 233
-- Data for Name: dependencia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dependencia (id_dependencia, manutencao, tamanho, hr__hr_inicio, hr__hr_fim, id_unidade) FROM stdin;
1	t	1489	09:30:00	18:00:00	12
2	t	534	09:30:00	21:30:00	2
3	f	1454	06:30:00	19:30:00	14
4	f	452	07:00:00	18:30:00	5
5	f	1313	07:00:00	02:30:00	14
6	f	806	06:30:00	00:00:00	9
7	t	1048	08:00:00	20:00:00	3
8	f	428	08:30:00	03:00:00	14
9	f	240	09:30:00	21:30:00	15
10	t	1116	10:00:00	21:30:00	8
11	t	41	06:00:00	20:00:00	8
12	t	631	10:00:00	20:30:00	3
13	t	648	09:00:00	23:00:00	9
14	t	1094	09:00:00	18:00:00	15
15	t	532	08:00:00	21:30:00	11
16	t	705	09:00:00	21:00:00	12
17	f	185	06:00:00	21:00:00	14
18	t	1011	07:00:00	00:30:00	10
19	t	1056	06:30:00	03:00:00	10
20	t	1039	06:00:00	20:30:00	15
21	f	1061	08:00:00	18:00:00	8
22	t	69	10:00:00	22:30:00	5
23	f	1072	08:30:00	23:00:00	13
24	f	346	09:30:00	02:00:00	14
25	t	426	08:30:00	22:00:00	2
26	t	1513	07:00:00	02:30:00	10
27	t	1165	10:00:00	00:00:00	13
28	f	1446	10:30:00	21:00:00	13
29	f	848	10:30:00	00:30:00	5
30	f	454	08:00:00	21:00:00	13
31	t	781	09:30:00	18:00:00	9
32	f	1150	10:00:00	02:30:00	11
33	f	1520	00:00:00	00:00:00	1
34	t	550	00:00:00	00:00:00	2
35	f	500	00:00:00	00:00:00	3
36	t	1000	00:00:00	00:00:00	4
37	f	1620	00:00:00	00:00:00	5
38	f	570	00:00:00	00:00:00	7
39	f	620	00:00:00	00:00:00	8
40	t	1150	00:00:00	00:00:00	10
41	t	820	00:00:00	00:00:00	11
42	f	950	00:00:00	00:00:00	12
43	t	1300	00:00:00	00:00:00	13
44	f	700	00:00:00	00:00:00	14
45	t	870	00:00:00	00:00:00	15
46	t	1577	07:30:00	19:30:00	15
47	f	318	09:30:00	22:00:00	15
48	t	1274	06:00:00	01:30:00	8
49	t	532	07:30:00	01:30:00	14
50	t	1482	10:00:00	21:30:00	13
51	f	494	08:30:00	01:30:00	4
52	f	1379	06:30:00	02:30:00	12
53	t	1238	09:00:00	19:30:00	10
54	f	1445	06:00:00	23:00:00	9
55	f	1392	09:00:00	18:00:00	1
56	f	709	06:00:00	20:30:00	11
57	f	1355	10:30:00	20:30:00	3
58	f	451	06:00:00	00:00:00	10
59	t	814	09:30:00	21:30:00	4
60	f	890	08:00:00	23:00:00	1
61	t	1184	07:00:00	00:00:00	2
62	f	1556	08:00:00	03:00:00	9
63	t	738	09:30:00	00:00:00	4
64	f	1242	08:30:00	19:30:00	1
65	f	481	06:30:00	18:00:00	6
66	f	501	07:00:00	21:30:00	12
67	t	1229	07:30:00	03:00:00	5
68	t	491	10:00:00	23:30:00	5
69	t	289	07:30:00	20:00:00	2
70	t	499	10:30:00	22:30:00	9
71	f	811	10:30:00	21:00:00	2
72	t	84	06:30:00	02:30:00	1
73	t	707	09:00:00	01:00:00	13
74	f	245	10:30:00	20:30:00	14
75	t	415	06:00:00	20:30:00	11
76	t	946	09:30:00	01:00:00	15
77	t	772	06:30:00	22:00:00	8
78	t	949	07:00:00	19:00:00	15
79	f	908	06:30:00	00:00:00	11
80	t	1466	08:30:00	21:30:00	13
81	t	386	10:30:00	01:00:00	15
82	f	312	09:00:00	00:30:00	7
83	f	1540	09:00:00	23:00:00	15
84	f	600	09:00:00	19:30:00	7
85	t	1226	07:30:00	02:30:00	6
86	t	458	10:30:00	23:30:00	9
87	f	701	10:00:00	20:30:00	10
88	f	1356	10:00:00	21:00:00	1
89	t	175	06:00:00	03:00:00	9
90	f	496	09:30:00	02:30:00	4
91	f	1112	06:00:00	02:30:00	14
92	t	281	08:00:00	18:00:00	9
93	f	577	08:30:00	00:30:00	11
94	t	931	07:00:00	23:30:00	10
95	f	774	10:00:00	02:30:00	8
96	t	1547	08:30:00	00:00:00	7
97	t	1045	10:00:00	19:30:00	3
98	f	873	07:00:00	01:30:00	10
99	t	1600	09:00:00	21:00:00	12
100	f	176	07:30:00	01:30:00	5
101	f	927	10:00:00	02:30:00	13
102	f	412	09:30:00	01:30:00	12
103	f	1266	09:30:00	20:00:00	12
\.


--
-- TOC entry 5181 (class 0 OID 40359)
-- Dependencies: 234
-- Data for Name: dirige; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dirige (id_motorista, id_transporte) FROM stdin;
3	1
2	6
1	20
5	6
2	10
3	13
4	2
4	3
1	9
5	14
2	20
3	18
5	13
1	17
3	2
4	1
4	5
3	7
2	14
3	19
5	15
5	4
1	12
2	4
5	7
\.


--
-- TOC entry 5182 (class 0 OID 40364)
-- Dependencies: 235
-- Data for Name: entrada; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.entrada (id_transacao, id_reserva, emissor, valor_entrada, id_loja) FROM stdin;
274	1	Christian Reis Sobrinho	721.76	\N
275	2	Antonieta Rios	181	\N
276	3	Ornela Silvana de Souza Jr.	128	\N
277	4	Pâmela de Souza Cordeiro	163	\N
278	5	Jerônimo Serna Escobar Neto	653.25	\N
279	6	Thalissa Vale Dias	1000.44	\N
280	7	Helena Ortega Jr.	275	\N
281	8	Rafael Martines Filho	308.36	\N
282	9	Ornela Silvana de Souza Jr.	442.68	\N
283	10	Miranda Rafaela Medina Filho	61	\N
284	11	Jerônimo Serna Escobar Neto	193	\N
285	12	Manuela Camacho Furtado	94	\N
286	13	Hugo Kevin Cruz	70	\N
287	14	Manuel Fábio da Cruz Filho	86	\N
288	15	Rafael Martines Filho	377.08	\N
289	16	Luciana Luzia Matias Filho	806.17	\N
290	17	Natália Dominato Saraiva	1012.16	\N
291	18	Natal Dias	1159.17	\N
292	19	Christian Reis Sobrinho	534.89	\N
293	20	Manuela Camacho Furtado	237	\N
294	21	Helena Ortega Jr.	2373.96	\N
295	22	Jerônimo Serna Escobar Neto	661.44	\N
296	23	Christian Reis Sobrinho	848.2	\N
297	24	Rafael Martines Filho	1054.69	\N
298	25	Antonieta Rios	283	\N
299	26	Giovane Cordeiro Beltrão Filho	286.95	\N
300	27	Helena Ortega Jr.	379.58	\N
301	28	Rafael Martines Filho	741.02	\N
302	29	Miranda Rafaela Medina Filho	148	\N
303	30	Hugo Kevin Cruz	721.38	\N
304	31	Hugo Kevin Cruz	114	\N
305	32	Miranda Rafaela Medina Filho	377	\N
306	33	Natália Dominato Saraiva	229.82	\N
307	34	Natal Dias	291	\N
308	35	Sofia Mel Garcia Sobrinho	287.68	\N
309	36	Christian Reis Sobrinho	725.35	\N
310	37	Giovane Cordeiro Beltrão Filho	97	\N
311	38	Sofia Mel Garcia Sobrinho	178	\N
312	39	Christian Reis Sobrinho	1419.77	\N
313	40	Hugo Kevin Cruz	581	\N
314	41	Natal Dias	832.58	\N
315	42	Pâmela de Souza Cordeiro	1020.72	\N
316	43	Manuela Camacho Furtado	779	\N
317	44	Pâmela de Souza Cordeiro	507.81	\N
318	45	Antonieta Rios	483.68	\N
319	46	Giovane Cordeiro Beltrão Filho	603.19	\N
320	47	Miranda Rafaela Medina Filho	429	\N
321	48	Hugo Kevin Cruz	393.47	\N
322	49	Ornela Silvana de Souza Jr.	265	\N
323	50	Sofia Mel Garcia Sobrinho	76	\N
324	51	Luciana Luzia Matias Filho	420.91	\N
325	52	Luciana Luzia Matias Filho	637.28	\N
326	53	Manuel Fábio da Cruz Filho	287.05	\N
327	54	Agustina Martines Gonçalves Filho	183	\N
328	55	Giovane Cordeiro Beltrão Filho	197.36	\N
329	56	Christian Reis Sobrinho	338.82	\N
330	57	Christian Reis Sobrinho	542.33	\N
331	58	Pâmela de Souza Cordeiro	805.1	\N
332	59	Antonieta Rios	188	\N
333	60	Agustina Martines Gonçalves Filho	561.02	\N
334	61	Manuela Camacho Furtado	200	\N
335	62	Antonieta Rios	1261.03	\N
336	63	Antonieta Rios	267.93	\N
337	64	Natal Dias	1355.52	\N
338	65	Joaquin Anderson Avila	1082.95	\N
339	66	Natal Dias	378.8	\N
340	67	Ornela Silvana de Souza Jr.	225	\N
341	68	Demian Alonso Montenegro	242	\N
342	69	Antonieta Rios	1175.8	\N
343	70	Giovane Cordeiro Beltrão Filho	553.35	\N
344	\N	Loja 70 Condomínio 1	8550	1
345	\N	Loja 70 Condomínio 3	4703	2
346	\N	Loja 70 Condomínio 15	7821	3
347	\N	Loja 70 Condomínio 10	5853	4
348	\N	Loja 70 Condomínio 5	2855	5
349	\N	Loja 70 Condomínio 8	5050	6
350	\N	Loja 70 Condomínio 14	9563	7
351	\N	Loja 70 Condomínio 4	2112	8
352	\N	Loja 70 Condomínio 1	9333	9
353	\N	Loja 70 Condomínio 5	8521	10
354	\N	Loja 70 Condomínio 8	6565	11
355	\N	Loja 70 Condomínio 2	3637	12
356	\N	Loja 70 Condomínio 2	5314	13
357	\N	Loja 70 Condomínio 2	3424	14
358	\N	Loja 70 Condomínio 8	2082	15
359	\N	Loja 70 Condomínio 5	5950	16
360	\N	Loja 70 Condomínio 7	7853	17
361	\N	Loja 70 Condomínio 13	8492	18
362	\N	Loja 70 Condomínio 5	9772	19
363	\N	Loja 70 Condomínio 4	8757	20
364	\N	Loja 70 Condomínio 15	3038	21
365	\N	Loja 70 Condomínio 10	6332	22
366	\N	Loja 70 Condomínio 1	4920	23
367	\N	Loja 70 Condomínio 12	5348	24
368	\N	Loja 70 Condomínio 7	1996	25
369	\N	Loja 70 Condomínio 14	5007	26
370	\N	Loja 70 Condomínio 5	4969	27
371	\N	Loja 70 Condomínio 12	2183	28
372	\N	Loja 70 Condomínio 1	2850	29
373	\N	Loja 70 Condomínio 9	1980	30
374	\N	Loja 70 Condomínio 11	3317	31
375	\N	Loja 70 Condomínio 9	3316	32
376	\N	Loja 70 Condomínio 13	3189	33
377	\N	Loja 70 Condomínio 6	3643	34
378	\N	Loja 70 Condomínio 6	7681	35
379	\N	Loja 70 Condomínio 3	4175	36
380	\N	Loja 70 Condomínio 11	9485	37
381	\N	Loja 70 Condomínio 6	2720	38
382	\N	Loja 70 Condomínio 9	8877	39
383	\N	Loja 70 Condomínio 4	9878	40
384	\N	Loja 70 Condomínio 12	3070	41
385	\N	Loja 70 Condomínio 4	9784	42
386	\N	Loja 70 Condomínio 11	8701	43
387	\N	Loja 70 Condomínio 5	3143	44
388	\N	Loja 70 Condomínio 14	3491	45
389	\N	Loja 70 Condomínio 4	5197	46
390	\N	Loja 70 Condomínio 14	7049	47
391	\N	Loja 70 Condomínio 14	3471	48
392	\N	Loja 70 Condomínio 5	5403	49
393	\N	Loja 70 Condomínio 2	6526	50
\.


--
-- TOC entry 5184 (class 0 OID 40372)
-- Dependencies: 237
-- Data for Name: entrega_robo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.entrega_robo (id_entrega, robo, emissor, data, hora, id_acomodacao) FROM stdin;
1	19	DHL	2024-11-28	18:00:55	27
2	1	Rio2Clic	2024-11-15	19:34:30	197
3	4	Seur	2024-11-25	01:55:41	19
4	18	Subway	2024-11-18	01:46:54	99
5	13	Sendle	2024-11-13	01:11:50	59
6	21	Peapod	2024-11-07	09:12:36	77
7	8	TNT	2024-11-26	05:40:10	154
8	21	BlueDart	2024-11-22	12:41:06	119
9	8	Postmates	2024-11-25	11:04:22	109
10	1	Chick-fil-A	2024-11-15	12:27:06	124
11	5	GoPanda	2024-11-10	14:52:36	98
12	12	Postmates	2024-11-17	20:38:35	162
13	1	GoPanda	2024-11-24	08:13:20	142
14	14	Uber Freight	2024-11-24	00:06:54	15
15	5	Loggi	2024-11-04	06:59:58	71
16	4	Dominos	2024-11-21	14:08:50	86
17	1	Cargo	2024-11-15	13:35:40	172
18	9	BlueDart	2024-11-27	07:03:59	138
19	14	Lalamove	2024-11-06	04:56:59	83
20	4	PapaJohns	2024-11-14	19:07:09	148
21	20	Uber Freight	2024-11-28	12:53:27	11
22	8	USP	2024-11-19	01:55:23	133
23	19	Dominos	2024-11-14	06:49:52	72
24	4	Instacart	2024-11-03	12:01:43	48
25	12	FoodPanda	2024-11-23	17:42:37	96
26	21	AmazonFresh	2024-11-24	19:52:34	23
27	10	GLS	2024-11-17	22:06:36	168
28	18	Ship2Me	2024-11-28	09:19:42	179
29	7	Tecnic	2024-11-17	05:20:14	28
30	8	PostNL	2024-11-20	04:03:51	17
31	22	Peapod	2024-11-20	12:17:22	154
32	13	USP	2024-11-14	21:26:31	103
33	10	Onfleet	2024-11-01	22:23:10	177
34	11	Uber Freight	2024-11-19	21:06:25	193
35	25	QuickBox	2024-11-26	11:38:19	11
36	25	5-Guys	2024-11-14	03:16:32	180
37	25	Loggi	2024-10-27	18:23:01	149
38	22	Onfleet	2024-11-22	02:56:39	55
39	4	EasyTaxi	2024-11-26	03:15:32	36
40	25	ExpreS	2024-11-22	21:09:21	81
41	10	Ship2Me	2024-10-28	17:13:07	105
42	1	DHL	2024-11-21	16:25:44	88
43	8	Onfleet	2024-11-17	19:53:12	55
44	21	Zapp	2024-10-28	02:40:57	191
45	18	QuickBox	2024-11-26	21:51:21	26
46	15	ShipBob	2024-11-19	09:13:06	137
47	5	Chick-fil-A	2024-11-18	23:34:30	84
48	8	Sweetgreen	2024-10-25	15:58:04	164
49	7	Rappi	2024-11-16	14:43:52	124
50	18	Onfleet	2024-11-19	16:50:51	86
51	5	Uber Freight	2024-11-02	00:37:43	179
52	16	GoPuff	2024-11-15	08:58:40	172
53	20	Lalamove	2024-11-21	01:34:47	125
54	10	Pepper	2024-11-29	14:40:26	142
55	14	Tecnic	2024-11-24	22:01:21	199
56	2	GLS	2024-11-08	19:04:33	91
57	2	Zapp	2024-11-06	20:33:47	76
58	25	GoPuff	2024-11-19	17:53:28	120
59	6	Caviar	2024-11-17	09:51:03	137
60	16	DHL	2024-11-24	19:40:34	66
61	3	AmazonFresh	2024-11-01	05:51:07	141
62	6	Chick-fil-A	2024-11-22	10:14:12	166
63	6	Caviar	2024-10-28	05:40:57	19
64	7	EasyTaxi	2024-11-29	09:24:43	60
65	1	Caviar	2024-11-23	14:26:26	152
66	13	Ship2Me	2024-11-16	15:24:53	160
67	10	GoPanda	2024-11-03	14:11:17	151
68	4	DoorDash	2024-11-11	11:47:54	34
69	8	Grubhub	2024-11-10	08:17:34	61
70	5	DoorDash	2024-11-15	01:27:19	73
71	18	Cargo	2024-11-21	19:56:32	108
72	14	Lyft	2024-11-13	10:43:36	187
73	19	Rappi	2024-11-13	13:32:19	99
74	17	Sweetgreen	2024-11-22	00:17:01	26
75	15	PapaJohns	2024-11-18	07:28:52	154
76	17	Rappi	2024-11-15	08:52:02	160
77	13	Zapp	2024-11-18	05:55:08	2
78	10	FedEx	2024-11-04	15:58:14	184
79	7	Zapp	2024-11-19	05:55:07	153
80	13	QuickBox	2024-11-12	10:09:41	25
81	2	Grubhub	2024-11-11	02:12:07	128
82	1	ShipBob	2024-10-27	20:54:09	14
83	8	DHL	2024-11-22	21:38:13	155
84	7	Correios	2024-11-21	19:52:08	74
85	11	Uber Freight	2024-10-22	21:12:10	190
86	3	Deliveroo	2024-11-05	08:49:26	190
87	8	ExpreS	2024-11-08	04:35:08	161
88	2	Tecnic	2024-11-27	17:11:39	6
89	14	FedEx	2024-11-20	02:51:03	138
90	12	Deliveroo	2024-10-29	19:14:45	168
91	15	QuickBox	2024-11-18	15:57:27	88
92	3	GoPuff	2024-11-23	21:14:55	29
93	11	PapaJohns	2024-11-25	05:48:24	66
94	3	DoorDash	2024-11-18	11:41:47	2
95	21	PapaJohns	2024-10-24	08:00:30	177
96	15	USP	2024-11-23	20:36:35	63
97	3	DoorDash	2024-10-29	11:17:46	12
98	10	Instacart	2024-11-15	10:04:10	172
99	23	Parcel2Go	2024-11-21	00:09:22	125
100	11	PizzaHut	2024-11-20	17:52:22	6
101	9	GoPanda	2024-10-26	21:28:28	112
102	21	TNT	2024-11-25	18:49:03	173
103	18	Chronopost	2024-11-12	13:09:37	157
104	23	Correios	2024-11-25	08:41:27	29
105	16	Rio2Clic	2024-11-07	12:31:55	30
106	8	Subway	2024-11-15	23:40:27	9
107	9	TNT	2024-11-22	05:11:04	131
108	8	BlueDart	2024-11-03	19:21:34	174
109	6	Pepper	2024-11-23	10:37:40	92
110	15	Lalamove	2024-11-21	00:08:48	59
111	18	GoPanda	2024-10-25	17:51:06	198
112	8	DHL	2024-11-24	07:07:06	92
113	17	Caviar	2024-10-27	19:22:21	127
114	12	ShipBob	2024-11-07	11:21:54	76
115	24	Chronopost	2024-11-18	16:38:15	175
116	10	FoodPanda	2024-10-29	01:12:23	135
117	25	Grubhub	2024-10-22	05:59:05	30
118	24	Uber Freight	2024-10-29	05:23:31	137
119	19	PizzaHut	2024-11-23	19:58:29	185
120	10	FoodPanda	2024-11-19	05:05:02	199
121	23	Subway	2024-11-28	22:37:26	192
122	22	5-Guys	2024-11-22	03:59:15	64
123	20	Just Eat	2024-11-15	02:23:59	4
124	3	Pepper	2024-11-29	13:15:40	19
125	11	Loggi	2024-11-20	14:03:55	179
126	16	PapaJohns	2024-11-24	06:53:57	19
127	25	Seur	2024-11-18	11:28:32	86
128	19	PizzaHut	2024-11-13	22:08:13	129
129	10	EasyTaxi	2024-11-07	14:43:53	83
130	10	Tecnic	2024-11-29	16:09:14	7
131	23	ShipBob	2024-11-10	18:39:15	123
132	11	Zapp	2024-11-16	01:55:15	23
133	8	Starbucks	2024-11-14	16:57:48	196
134	4	PapaJohns	2024-11-14	23:55:14	188
135	24	PostNL	2024-11-26	10:29:58	66
136	9	TNT	2024-11-15	13:43:40	17
137	6	TNT	2024-11-19	08:46:06	61
138	18	EasyTaxi	2024-11-18	17:13:07	180
139	16	Caviar	2024-11-17	19:40:21	97
140	20	TNT	2024-11-09	10:03:43	99
141	2	Correios	2024-11-20	02:04:06	177
142	25	Onfleet	2024-10-21	06:19:49	165
143	1	Sweetgreen	2024-11-17	07:25:13	20
144	3	PizzaHut	2024-11-24	08:13:47	131
145	15	Rio2Clic	2024-11-10	16:58:02	32
146	15	TNT	2024-11-03	22:10:48	174
147	1	FedEx	2024-11-15	23:55:47	191
148	25	Onfleet	2024-11-20	21:31:57	22
149	18	Caviar	2024-10-22	05:10:58	198
150	16	GoPanda	2024-10-27	14:40:40	49
151	13	Correios	2024-11-16	18:06:56	100
152	12	Rio2Clic	2024-11-23	22:17:13	81
153	8	Correios	2024-11-15	14:38:00	67
154	14	Lalamove	2024-11-26	17:08:50	36
155	4	Instacart	2024-11-20	02:29:06	70
156	25	Instacart	2024-11-24	05:18:08	152
157	8	BlueDart	2024-11-09	03:29:57	195
158	21	GLS	2024-11-23	01:25:14	154
159	4	Correios	2024-11-14	04:31:51	151
160	15	Dominos	2024-10-27	12:39:13	71
161	8	Sweetgreen	2024-11-17	10:15:37	181
162	1	Lyft	2024-10-30	16:36:33	179
163	2	Instacart	2024-11-25	08:05:37	152
164	18	FedEx	2024-11-12	09:53:50	54
165	20	Tecnic	2024-11-14	04:16:39	10
166	25	Seur	2024-11-24	15:09:59	120
167	21	Lyft	2024-11-10	22:04:48	22
168	13	PapaJohns	2024-10-27	12:02:09	30
169	3	GLS	2024-11-18	22:38:37	130
170	11	Rio2Clic	2024-11-22	09:15:23	88
171	17	Rappi	2024-11-26	04:09:18	26
172	1	Grubhub	2024-11-14	18:48:44	172
173	25	Loggi	2024-11-20	10:10:20	168
174	4	Sweetgreen	2024-11-22	16:36:38	194
175	14	Lalamove	2024-11-16	12:38:57	67
176	25	Chick-fil-A	2024-11-20	11:47:41	66
177	13	GoPanda	2024-11-06	00:26:32	136
178	25	5-Guys	2024-11-18	21:21:33	86
179	13	DoorDash	2024-11-17	17:54:10	117
180	4	Pepper	2024-11-21	19:52:13	159
181	14	ExpreS	2024-10-30	21:03:19	170
182	4	Sweetgreen	2024-11-23	20:14:05	97
183	12	PizzaHut	2024-11-03	18:07:24	112
184	7	BlueDart	2024-11-18	17:18:47	55
185	16	Instacart	2024-11-08	16:18:39	4
186	11	Loggi	2024-11-18	14:20:11	88
187	9	Just Eat	2024-11-16	03:37:50	160
188	8	Caviar	2024-11-06	15:01:10	115
189	25	GoPuff	2024-10-21	09:07:58	136
190	1	Sendle	2024-11-29	23:29:57	74
191	1	USP	2024-10-30	03:11:40	14
192	2	ShipBob	2024-11-20	08:26:29	149
193	7	ShipBob	2024-11-24	09:59:39	121
194	9	ShipBob	2024-10-23	15:02:31	43
195	19	Just Eat	2024-11-21	00:13:52	88
196	24	Caviar	2024-11-20	10:34:35	125
197	1	Loggi	2024-11-01	15:07:00	93
198	9	Lyft	2024-11-22	04:59:40	96
199	13	Parcel2Go	2024-11-25	01:34:16	62
200	12	Subway	2024-11-24	02:54:48	123
201	7	PapaJohns	2024-10-26	04:01:30	157
202	4	BlueDart	2024-10-27	22:28:33	57
203	19	EasyTaxi	2024-10-23	07:08:54	3
204	17	PizzaHut	2024-10-28	14:27:43	190
205	18	Sweetgreen	2024-11-26	13:16:07	153
206	7	DHL	2024-11-21	16:31:53	163
207	10	QuickBox	2024-11-18	15:48:55	198
208	16	GoPuff	2024-11-03	03:11:32	136
209	19	Onfleet	2024-11-19	08:53:09	9
210	21	Chronopost	2024-11-22	15:31:45	176
211	8	Dominos	2024-11-23	00:21:47	64
212	20	Rappi	2024-11-27	02:34:26	194
213	10	GLS	2024-11-19	18:27:31	180
214	20	DHL	2024-11-21	02:41:59	118
215	2	Correios	2024-11-07	03:10:46	188
216	9	Uber Freight	2024-11-20	21:45:58	6
217	18	Sendle	2024-11-20	06:12:34	181
218	11	GoPuff	2024-11-25	11:59:57	185
219	6	EasyTaxi	2024-11-05	05:44:24	73
220	12	Correios	2024-10-22	23:46:06	130
221	8	Uber Freight	2024-11-13	07:42:50	31
222	21	Subway	2024-11-16	07:12:02	72
223	20	USP	2024-11-24	07:24:03	64
224	14	Sweetgreen	2024-11-23	05:15:44	94
225	19	Rio2Clic	2024-10-25	17:39:06	190
226	15	UberEats	2024-11-21	10:44:53	64
227	17	UberEats	2024-11-27	03:35:36	194
228	23	Starbucks	2024-11-09	23:21:15	43
229	16	Subway	2024-11-15	17:32:20	170
230	12	TNT	2024-11-16	00:27:35	87
231	18	Sendle	2024-11-25	04:29:12	166
232	6	Instacart	2024-11-23	19:02:10	131
233	2	PizzaHut	2024-11-17	02:19:14	149
234	1	iFood	2024-11-26	18:05:40	154
235	18	Zalando	2024-11-24	18:47:01	19
236	5	FoodPanda	2024-11-16	18:42:46	161
237	2	Onfleet	2024-11-19	13:28:52	125
238	14	AmazonFresh	2024-10-28	06:10:02	38
239	16	Starbucks	2024-11-20	15:45:46	131
240	21	FoodPanda	2024-11-22	20:27:24	35
241	20	PostNL	2024-10-21	08:00:13	101
242	14	Loggi	2024-11-18	19:41:37	77
243	20	Pepper	2024-11-26	23:56:21	81
244	14	Just Eat	2024-11-21	21:33:37	62
245	15	GoPanda	2024-11-23	07:44:06	150
246	3	DHL	2024-10-21	11:27:51	83
247	7	iFood	2024-10-31	21:08:49	123
248	1	Subway	2024-11-20	03:03:46	151
249	2	Starbucks	2024-10-25	01:24:17	22
250	5	EasyTaxi	2024-11-03	07:56:27	130
251	23	ExpreS	2024-10-27	16:27:49	153
252	8	PizzaHut	2024-10-31	00:31:40	30
253	25	DHL	2024-11-16	05:05:49	197
254	10	Onfleet	2024-11-18	20:03:54	185
255	2	UberEats	2024-10-25	00:36:40	68
256	25	Grubhub	2024-11-04	22:58:37	183
257	19	Uber Freight	2024-11-21	00:19:36	94
258	9	EasyTaxi	2024-11-09	12:46:30	132
259	19	Lalamove	2024-11-14	17:11:26	61
260	9	EasyTaxi	2024-11-20	23:49:05	166
261	20	GoPuff	2024-11-20	05:54:35	7
262	16	Chronopost	2024-11-07	03:23:52	28
263	22	Seur	2024-10-26	05:14:13	43
264	7	TNT	2024-11-24	01:12:35	194
265	16	Seur	2024-11-17	18:13:21	19
266	20	DoorDash	2024-11-16	04:50:06	92
267	23	UberEats	2024-11-24	15:13:06	179
268	16	BlueDart	2024-12-01	11:20:00	145
269	3	Sendle	2024-10-30	21:12:50	84
270	5	QuickBox	2024-11-21	13:58:28	123
271	22	Loggi	2024-11-13	17:11:36	95
272	2	Rappi	2024-11-15	02:44:02	187
273	4	Uber Freight	2024-11-24	18:27:54	96
274	19	ShipBob	2024-11-26	05:23:55	63
275	22	PizzaHut	2024-11-17	10:16:53	41
276	24	Chronopost	2024-11-09	09:10:06	32
277	16	EasyTaxi	2024-11-21	03:00:20	166
278	13	Zalando	2024-11-26	09:31:45	6
279	17	Lalamove	2024-11-04	07:35:20	61
280	10	DoorDash	2024-11-29	14:09:55	142
281	5	Correios	2024-11-03	21:04:06	180
282	3	Cargo	2024-11-22	08:21:19	119
283	16	Lyft	2024-11-24	19:47:58	85
284	6	Chronopost	2024-11-15	23:18:54	8
285	3	Lyft	2024-10-28	08:00:40	112
286	10	PostNL	2024-11-15	04:05:22	143
287	6	Tecnic	2024-11-14	09:03:07	164
288	3	Peapod	2024-11-22	06:12:55	60
289	5	GoPanda	2024-11-19	03:53:50	84
290	23	Pepper	2024-11-18	17:58:32	126
291	14	Sweetgreen	2024-11-14	15:22:04	197
292	14	DoorDash	2024-10-25	14:58:14	193
293	20	Peapod	2024-11-16	06:34:30	191
294	17	FoodPanda	2024-10-25	17:43:40	22
295	4	iFood	2024-10-31	22:05:46	83
296	4	Subway	2024-10-24	04:02:04	168
297	10	Sendle	2024-10-28	10:06:12	56
298	25	iFood	2024-11-29	08:24:49	31
299	3	Lyft	2024-11-27	11:52:20	35
300	20	Tecnic	2024-11-22	02:03:53	150
301	11	Rappi	2024-11-20	18:01:16	126
302	18	DHL	2024-11-14	15:01:15	137
303	16	EasyTaxi	2024-11-15	03:07:26	43
304	18	PizzaHut	2024-11-18	14:57:51	43
305	3	Rio2Clic	2024-10-22	19:01:40	124
306	18	PapaJohns	2024-10-30	02:42:01	74
307	3	iFood	2024-11-18	09:08:53	161
308	8	Loggi	2024-11-26	10:06:25	185
309	5	FedEx	2024-11-15	02:44:34	17
310	18	Loggi	2024-10-26	01:59:19	3
311	10	TNT	2024-11-09	18:46:04	128
312	7	Chick-fil-A	2024-11-02	16:13:51	133
313	17	5-Guys	2024-11-24	13:00:17	5
314	5	Zalando	2024-11-19	14:09:59	180
315	5	Just Eat	2024-11-05	12:45:06	144
316	5	AmazonFresh	2024-11-28	16:04:33	171
317	1	Chick-fil-A	2024-11-01	14:33:43	29
318	1	Sweetgreen	2024-11-18	00:09:26	139
319	5	Caviar	2024-11-26	15:13:34	63
320	9	Onfleet	2024-11-20	22:03:26	97
321	14	Sendle	2024-10-31	13:58:01	98
322	4	Instacart	2024-10-23	23:31:05	43
323	3	Rappi	2024-11-18	07:24:02	178
324	2	Caviar	2024-11-17	14:38:38	12
325	8	Caviar	2024-11-23	00:54:39	74
326	3	FoodPanda	2024-11-02	23:06:57	23
327	9	QuickBox	2024-11-23	00:02:06	121
328	23	Dominos	2024-11-10	03:56:41	112
329	17	Pepper	2024-11-17	22:42:49	93
330	12	Grubhub	2024-11-25	11:32:00	52
331	7	QuickBox	2024-11-10	10:18:00	3
332	24	AmazonFresh	2024-11-18	02:08:45	179
333	6	Peapod	2024-11-12	09:56:02	57
334	6	Postmates	2024-10-30	17:29:18	72
335	2	Cargo	2024-10-26	01:49:18	18
336	4	Loggi	2024-11-20	13:47:47	136
337	24	Starbucks	2024-10-23	16:10:37	80
338	13	Parcel2Go	2024-11-04	10:16:29	48
339	11	Chick-fil-A	2024-11-26	15:40:04	63
340	13	QuickBox	2024-11-02	20:46:13	98
341	15	FedEx	2024-11-25	10:50:40	125
342	16	Cargo	2024-11-13	04:44:15	95
343	17	Lalamove	2024-11-20	16:02:46	96
344	9	Onfleet	2024-11-07	13:42:22	79
345	6	Cargo	2024-11-11	18:08:54	99
346	9	Lalamove	2024-11-24	10:07:53	52
347	1	AmazonFresh	2024-10-29	06:40:08	37
348	24	Ship2Me	2024-11-16	19:41:55	60
349	13	Starbucks	2024-11-22	07:41:04	23
350	8	iFood	2024-11-05	15:45:41	127
351	15	Postmates	2024-11-27	15:38:07	19
352	2	iFood	2024-10-29	14:27:37	37
353	13	Parcel2Go	2024-11-12	20:04:06	95
354	6	Pepper	2024-11-03	13:41:03	193
355	22	UberEats	2024-11-16	08:53:00	129
356	7	Zalando	2024-10-27	23:30:14	158
357	3	Seur	2024-11-20	07:59:19	81
358	18	Chronopost	2024-11-14	14:30:50	58
359	14	5-Guys	2024-11-24	08:39:31	74
360	13	Ship2Me	2024-11-17	15:06:11	72
361	6	Parcel2Go	2024-11-05	23:19:36	43
362	6	Rappi	2024-11-20	03:20:09	11
363	7	DoorDash	2024-10-25	21:23:28	141
364	2	iFood	2024-11-17	06:30:42	91
365	8	Dominos	2024-11-19	14:12:52	154
366	24	Grubhub	2024-11-26	08:04:36	79
367	5	Lalamove	2024-11-26	04:39:26	194
368	12	USP	2024-11-10	07:38:53	93
369	3	Parcel2Go	2024-11-12	11:50:34	198
370	23	Peapod	2024-10-24	02:09:51	147
371	1	Zalando	2024-10-23	08:47:28	198
372	2	Deliveroo	2024-11-13	05:47:21	44
373	20	Parcel2Go	2024-11-20	17:34:00	163
374	19	TNT	2024-11-10	10:46:59	124
375	2	5-Guys	2024-11-25	19:36:37	192
376	1	PapaJohns	2024-11-16	06:56:18	126
377	19	GoPanda	2024-11-13	10:50:18	143
378	5	PapaJohns	2024-11-22	22:14:45	119
379	2	Correios	2024-11-23	13:21:14	171
380	2	AmazonFresh	2024-11-06	17:20:10	191
381	17	Lyft	2024-11-13	08:21:38	126
382	1	FoodPanda	2024-11-25	13:06:13	7
383	13	PostNL	2024-10-29	02:13:15	165
384	24	TNT	2024-11-19	03:45:06	115
385	20	Uber Freight	2024-11-24	09:02:25	178
386	6	FoodPanda	2024-11-12	05:50:40	187
387	21	AmazonFresh	2024-11-04	18:34:46	193
388	18	Lalamove	2024-11-14	22:26:00	78
389	5	Dominos	2024-10-22	11:02:39	136
390	12	Lyft	2024-11-14	09:14:35	31
391	19	Just Eat	2024-10-31	06:24:59	165
392	22	Onfleet	2024-11-18	00:30:36	112
393	24	FedEx	2024-11-20	11:46:24	74
394	23	FoodPanda	2024-11-19	14:07:15	38
395	21	Ship2Me	2024-11-29	20:57:24	60
396	21	PizzaHut	2024-11-18	18:12:37	32
397	6	Onfleet	2024-11-17	03:42:16	109
398	18	Rappi	2024-10-26	05:14:04	103
399	6	Zalando	2024-11-20	00:37:21	88
400	6	Rappi	2024-11-19	09:00:11	120
401	7	GoPanda	2024-11-14	12:40:40	143
402	24	iFood	2024-11-24	11:13:15	20
403	19	Tecnic	2024-11-16	12:29:15	72
404	1	DHL	2024-11-11	15:29:54	34
405	5	FedEx	2024-11-16	10:53:25	72
406	10	Zapp	2024-11-23	14:44:52	10
407	21	Parcel2Go	2024-11-26	09:59:12	64
408	8	Caviar	2024-11-15	05:19:19	97
409	7	UberEats	2024-11-23	19:22:30	96
410	12	Rio2Clic	2024-11-16	15:24:35	128
411	4	DoorDash	2024-11-03	08:35:32	174
412	15	Instacart	2024-11-21	13:48:12	163
413	11	ExpreS	2024-11-02	01:29:53	103
414	8	AmazonFresh	2024-11-09	02:48:50	95
415	2	Starbucks	2024-11-23	21:19:49	159
416	2	Dominos	2024-11-13	06:17:29	6
417	23	Uber Freight	2024-11-13	09:44:48	134
418	17	Caviar	2024-11-23	16:53:25	125
419	1	Grubhub	2024-11-06	16:48:15	193
420	3	GoPanda	2024-11-21	18:56:52	68
421	17	Sendle	2024-10-23	05:42:26	30
422	10	Cargo	2024-11-14	11:27:09	165
423	17	Sendle	2024-11-01	09:54:03	173
424	21	Starbucks	2024-11-14	07:27:32	180
425	6	FedEx	2024-10-31	00:51:57	50
426	11	Loggi	2024-11-26	23:36:44	11
427	21	PostNL	2024-11-26	00:45:52	55
428	8	Seur	2024-11-15	19:32:19	197
429	11	5-Guys	2024-11-21	18:22:49	1
430	19	Tecnic	2024-11-28	18:37:08	145
431	10	Sweetgreen	2024-11-11	12:26:08	25
432	5	Peapod	2024-11-17	17:37:27	28
433	4	Pepper	2024-11-19	19:14:19	22
434	25	Chick-fil-A	2024-11-20	14:33:44	87
435	25	Lyft	2024-11-20	09:34:37	76
436	9	PostNL	2024-10-31	09:40:19	26
437	3	Loggi	2024-11-07	16:49:43	193
438	15	PizzaHut	2024-11-16	07:39:20	139
439	4	EasyTaxi	2024-11-20	22:57:41	66
440	4	ExpreS	2024-10-22	18:47:15	168
441	9	Cargo	2024-11-15	12:10:28	78
442	1	Caviar	2024-11-13	13:14:47	4
443	8	Dominos	2024-11-15	00:11:27	5
444	5	FoodPanda	2024-11-15	00:08:16	165
445	1	FedEx	2024-11-26	10:33:38	62
446	14	FedEx	2024-11-24	04:47:15	152
447	17	Dominos	2024-11-13	09:53:45	127
448	6	Pepper	2024-12-05	07:04:33	138
449	17	Rappi	2024-11-11	19:13:53	22
450	17	QuickBox	2024-11-09	02:02:27	165
451	22	EasyTaxi	2024-11-14	14:37:57	168
452	12	Uber Freight	2024-10-28	05:03:23	93
453	25	BlueDart	2024-10-25	03:22:30	149
454	13	ShipBob	2024-11-19	09:21:23	9
455	23	ExpreS	2024-11-21	13:50:45	199
456	21	GoPanda	2024-11-24	20:46:49	110
457	4	Loggi	2024-11-19	05:24:18	151
458	18	iFood	2024-11-09	22:46:48	1
459	14	GoPanda	2024-11-04	18:28:36	48
460	2	UberEats	2024-11-15	11:36:43	122
461	22	Uber Freight	2024-11-22	10:45:50	70
462	15	Deliveroo	2024-11-12	23:08:10	10
463	6	TNT	2024-11-20	16:11:43	142
464	17	Zapp	2024-10-25	03:47:25	93
465	9	Subway	2024-11-19	02:30:05	20
466	25	Pepper	2024-11-05	17:50:34	149
467	1	Lalamove	2024-11-06	02:29:13	37
468	16	DoorDash	2024-11-19	21:22:41	159
469	14	ShipBob	2024-11-15	12:27:59	129
470	23	BlueDart	2024-11-22	07:58:14	27
471	6	Uber Freight	2024-11-24	11:46:51	158
472	5	Zapp	2024-11-19	05:15:36	15
473	3	Caviar	2024-11-22	03:10:34	15
474	16	AmazonFresh	2024-11-24	12:55:04	110
475	22	PapaJohns	2024-11-20	06:00:00	63
476	17	Loggi	2024-11-08	03:30:20	78
477	25	ExpreS	2024-11-15	17:11:00	126
478	18	ExpreS	2024-11-17	22:01:30	28
479	13	Deliveroo	2024-11-05	17:15:43	80
480	7	EasyTaxi	2024-11-20	00:57:26	7
481	25	GLS	2024-11-14	10:55:20	4
482	9	Uber Freight	2024-10-22	15:51:02	98
483	19	Chronopost	2024-11-19	05:15:58	84
484	20	DoorDash	2024-11-17	12:56:52	157
485	20	Sweetgreen	2024-11-15	19:31:18	137
486	23	Subway	2024-11-24	05:14:05	131
487	25	GLS	2024-11-13	19:39:44	106
488	15	Zalando	2024-11-24	05:43:17	64
489	14	Sweetgreen	2024-11-16	02:09:44	95
490	25	Zapp	2024-11-20	18:41:06	96
491	21	DoorDash	2024-11-01	00:28:08	51
492	10	Seur	2024-11-21	00:23:39	130
493	15	Caviar	2024-11-12	22:27:41	34
494	21	Loggi	2024-11-17	23:24:35	28
495	10	Postmates	2024-11-25	09:02:41	192
496	2	Zapp	2024-11-15	02:21:55	61
497	1	GoPanda	2024-10-27	21:46:44	94
498	3	FedEx	2024-10-24	04:49:05	71
499	19	Correios	2024-11-13	09:46:55	127
500	24	EasyTaxi	2024-10-30	19:06:27	130
501	19	Zalando	2024-11-19	22:42:42	86
502	14	Subway	2024-11-09	14:47:37	79
503	2	Caviar	2024-11-21	12:24:38	70
504	5	5-Guys	2024-11-24	10:08:46	154
505	4	Onfleet	2024-11-17	04:23:56	190
506	12	iFood	2024-11-26	05:22:12	139
507	20	Subway	2024-11-06	00:24:53	79
508	18	Cargo	2024-11-03	03:01:50	30
509	23	Starbucks	2024-10-30	17:31:10	61
510	19	Lyft	2024-11-05	18:30:28	23
511	4	Zalando	2024-11-06	21:06:35	177
512	7	Rio2Clic	2024-11-21	15:28:15	145
513	18	FoodPanda	2024-11-19	06:34:17	10
514	9	Correios	2024-11-04	07:46:44	64
515	2	GoPuff	2024-11-19	11:14:45	138
516	8	Peapod	2024-11-07	08:16:51	187
517	24	EasyTaxi	2024-11-15	19:42:23	17
518	10	GoPuff	2024-11-20	18:19:25	176
519	15	UberEats	2024-10-21	20:36:50	132
520	8	Just Eat	2024-11-23	08:12:57	178
521	1	Instacart	2024-11-18	07:38:48	130
522	22	FedEx	2024-11-21	15:05:59	176
523	2	Ship2Me	2024-11-21	23:32:56	8
524	3	Loggi	2024-11-24	14:44:42	26
525	11	UberEats	2024-10-29	23:23:40	170
526	23	AmazonFresh	2024-11-20	06:00:54	58
527	1	Uber Freight	2024-11-03	10:10:11	164
528	4	Dominos	2024-11-21	09:48:35	166
529	22	GoPanda	2024-10-30	23:29:23	37
530	1	Just Eat	2024-10-30	04:52:33	87
531	12	iFood	2024-10-28	20:05:37	25
532	19	ShipBob	2024-11-16	21:29:54	139
533	19	Onfleet	2024-11-19	06:04:02	129
534	2	BlueDart	2024-10-29	06:18:03	16
535	23	GoPanda	2024-11-26	18:53:02	133
536	19	USP	2024-10-30	07:26:11	83
537	12	Grubhub	2024-11-20	18:12:03	132
538	3	Subway	2024-11-18	18:58:58	70
539	6	Rappi	2024-10-30	16:34:45	93
540	12	Loggi	2024-11-18	06:51:29	162
541	21	Parcel2Go	2024-10-25	00:00:26	16
542	25	DHL	2024-11-17	15:27:53	139
543	15	Just Eat	2024-11-19	09:42:50	26
544	25	Rio2Clic	2024-11-21	19:08:50	133
545	3	EasyTaxi	2024-10-23	17:18:22	18
546	12	Loggi	2024-11-21	20:00:08	58
547	17	Caviar	2024-11-02	23:02:48	174
548	15	Caviar	2024-11-13	04:32:15	18
549	4	Instacart	2024-10-23	18:25:36	183
550	21	Instacart	2024-11-19	04:00:03	70
551	11	Ship2Me	2024-10-30	01:14:53	196
552	25	Correios	2024-11-19	04:59:25	55
553	25	Zalando	2024-11-23	15:55:34	70
554	20	ExpreS	2024-10-26	02:43:09	184
555	20	Sendle	2024-10-31	07:01:05	128
556	6	Loggi	2024-11-25	22:25:18	23
557	6	Grubhub	2024-10-22	09:25:27	188
558	18	Lalamove	2024-11-18	10:31:48	54
559	24	FoodPanda	2024-11-03	04:47:52	87
560	18	Subway	2024-11-19	18:52:48	105
561	14	Starbucks	2024-10-26	00:48:31	136
562	8	Zalando	2024-11-01	06:35:27	198
563	1	Parcel2Go	2024-10-29	06:26:15	76
564	25	Lalamove	2024-11-15	02:45:55	98
565	5	DHL	2024-11-18	08:33:57	159
566	22	Caviar	2024-11-14	01:13:05	172
567	24	Rio2Clic	2024-11-27	21:49:33	110
568	24	BlueDart	2024-11-16	02:23:20	180
569	9	QuickBox	2024-11-24	09:28:38	96
570	12	Chick-fil-A	2024-11-27	02:11:39	194
571	15	Just Eat	2024-11-25	09:19:40	129
572	19	FoodPanda	2024-11-23	12:27:00	90
573	19	USP	2024-11-18	17:21:52	8
574	17	Deliveroo	2024-11-15	12:13:30	129
575	19	Caviar	2024-11-14	16:52:12	4
576	14	Correios	2024-10-29	15:24:21	80
577	10	Grubhub	2024-11-06	01:45:48	25
578	24	Correios	2024-11-21	02:47:17	26
579	20	PapaJohns	2024-10-22	23:20:56	22
580	25	Rio2Clic	2024-11-17	03:16:07	180
581	22	Correios	2024-11-07	09:23:10	83
582	17	Caviar	2024-11-25	00:12:14	5
583	13	Onfleet	2024-11-12	04:59:24	130
584	2	Sendle	2024-11-24	04:31:58	52
585	23	QuickBox	2024-11-22	01:07:22	70
586	18	FedEx	2024-11-25	12:24:03	81
587	1	Uber Freight	2024-11-30	12:59:47	11
588	10	Grubhub	2024-10-22	02:22:13	190
589	2	Lyft	2024-10-24	06:13:56	118
590	22	Zalando	2024-11-29	00:22:38	11
591	17	FoodPanda	2024-11-21	21:46:10	88
592	9	EasyTaxi	2024-11-24	11:36:22	178
593	22	iFood	2024-11-15	01:37:49	3
594	21	UberEats	2024-11-20	05:07:18	191
595	19	Sweetgreen	2024-11-23	22:17:37	125
596	19	Dominos	2024-10-28	22:24:51	43
597	21	QuickBox	2024-11-14	14:25:02	83
598	16	Postmates	2024-11-17	05:22:07	2
599	20	ShipBob	2024-11-14	20:01:30	196
600	6	QuickBox	2024-11-28	14:51:38	192
601	9	Grubhub	2024-11-28	07:52:58	27
602	17	AmazonFresh	2024-11-18	02:53:52	193
603	21	Just Eat	2024-11-18	05:36:55	188
604	12	Correios	2024-11-26	15:25:06	65
605	10	Caviar	2024-11-24	03:19:35	26
606	18	Dominos	2024-11-21	15:05:25	97
607	14	Subway	2024-10-25	10:17:06	128
608	11	Deliveroo	2024-11-10	12:33:58	68
609	12	GoPuff	2024-11-12	18:56:12	19
610	14	USP	2024-11-18	01:25:59	197
611	8	5-Guys	2024-11-13	00:20:05	158
612	5	5-Guys	2024-11-28	02:21:21	26
613	3	PapaJohns	2024-10-25	10:53:42	144
614	14	Peapod	2024-10-27	21:13:06	168
615	3	AmazonFresh	2024-11-13	14:12:27	87
616	22	QuickBox	2024-10-22	17:05:16	184
617	18	Rio2Clic	2024-11-20	12:04:24	20
618	16	Caviar	2024-11-25	12:41:07	161
619	24	Deliveroo	2024-11-07	13:02:25	198
620	13	Uber Freight	2024-11-13	12:47:35	143
621	10	Tecnic	2024-11-15	17:55:12	157
622	23	Starbucks	2024-11-21	18:48:08	181
623	16	Starbucks	2024-11-23	12:15:07	94
624	16	Lyft	2024-10-21	11:02:04	173
625	16	TNT	2024-11-20	12:20:29	20
626	1	Rio2Clic	2024-11-19	14:16:16	159
627	18	Caviar	2024-11-02	05:43:22	37
628	6	AmazonFresh	2024-11-13	16:18:58	115
629	12	ShipBob	2024-11-18	10:24:04	78
630	12	Deliveroo	2024-11-14	08:04:19	59
631	2	Starbucks	2024-11-10	21:13:41	51
632	7	GoPanda	2024-11-15	03:42:00	69
633	9	PostNL	2024-11-01	20:47:35	59
634	2	BlueDart	2024-11-14	14:55:43	79
635	14	iFood	2024-11-15	07:49:00	197
636	22	Deliveroo	2024-10-24	03:14:06	164
637	9	Caviar	2024-10-21	08:17:40	164
638	17	FoodPanda	2024-11-23	22:18:38	65
639	16	GLS	2024-11-26	01:11:36	33
640	8	Tecnic	2024-11-23	13:31:08	148
641	13	Grubhub	2024-10-22	17:00:52	118
642	18	UberEats	2024-11-10	00:07:16	62
643	14	DHL	2024-10-26	05:16:12	16
644	17	Dominos	2024-10-24	19:50:01	25
645	5	Starbucks	2024-11-22	10:20:35	62
646	19	Cargo	2024-11-25	19:40:59	52
647	16	Zalando	2024-11-20	14:12:35	142
648	14	Zapp	2024-11-27	19:45:21	19
649	11	Tecnic	2024-10-31	19:26:02	103
650	17	5-Guys	2024-11-20	13:26:09	160
651	19	PapaJohns	2024-11-26	20:25:57	101
652	10	GLS	2024-10-26	19:34:49	151
653	19	TNT	2024-11-16	10:44:44	9
654	6	Chronopost	2024-11-15	14:26:06	60
655	16	QuickBox	2024-11-18	00:29:42	90
656	2	Just Eat	2024-11-22	15:15:50	119
657	14	DHL	2024-10-27	11:58:31	41
658	15	AmazonFresh	2024-11-17	23:37:15	106
659	4	Chronopost	2024-11-24	04:04:48	139
660	18	Pepper	2024-11-14	20:15:41	172
661	18	Rio2Clic	2024-11-05	18:45:10	77
662	20	Caviar	2024-11-26	06:44:18	159
663	25	Tecnic	2024-11-21	16:26:04	26
664	6	Uber Freight	2024-11-16	11:03:48	165
665	15	Correios	2024-10-25	12:09:56	50
666	15	Instacart	2024-11-13	10:25:19	141
667	13	Peapod	2024-11-29	07:18:31	171
668	13	AmazonFresh	2024-11-17	11:33:13	106
669	14	Peapod	2024-11-22	16:47:40	131
670	8	Sweetgreen	2024-11-14	11:29:57	195
671	18	QuickBox	2024-11-04	00:21:32	157
672	3	AmazonFresh	2024-11-16	18:49:48	137
673	4	UberEats	2024-11-14	20:30:35	137
674	18	5-Guys	2024-11-13	00:25:48	190
675	11	Chronopost	2024-11-15	08:13:52	4
676	17	FoodPanda	2024-11-17	03:48:06	83
677	7	Sweetgreen	2024-11-07	05:24:59	193
678	17	DoorDash	2024-11-17	00:32:49	164
679	4	QuickBox	2024-11-21	17:51:37	20
680	18	DHL	2024-11-27	00:41:00	194
681	8	EasyTaxi	2024-11-12	17:31:29	126
682	11	FedEx	2024-11-19	17:08:20	195
683	13	GoPanda	2024-11-07	10:42:06	171
684	5	Chronopost	2024-11-11	11:24:31	187
685	15	FoodPanda	2024-11-06	10:01:52	115
686	16	Caviar	2024-11-16	06:15:00	139
687	22	Lyft	2024-11-08	07:15:35	79
688	16	Zapp	2024-11-01	17:18:17	73
689	21	Caviar	2024-10-29	10:48:01	141
690	7	Rio2Clic	2024-11-13	08:34:31	4
691	10	USP	2024-11-24	23:44:21	65
692	14	QuickBox	2024-11-29	23:54:35	185
693	8	QuickBox	2024-11-16	13:49:44	160
694	20	Dominos	2024-11-24	00:24:44	1
695	23	Grubhub	2024-11-15	17:27:22	108
696	18	DoorDash	2024-11-07	20:15:56	43
697	22	Tecnic	2024-10-30	09:45:15	159
698	4	ShipBob	2024-11-17	11:13:34	174
699	18	Rappi	2024-11-27	05:30:39	154
700	23	Postmates	2024-10-26	12:29:07	8
701	22	iFood	2024-11-18	11:02:26	148
702	2	Correios	2024-11-05	00:36:54	16
703	13	Chronopost	2024-11-18	23:33:35	130
704	18	BlueDart	2024-11-27	03:04:28	154
705	13	Caviar	2024-11-11	20:45:04	193
706	25	Caviar	2024-11-21	02:27:08	70
707	5	Dominos	2024-11-17	09:43:23	193
708	9	PapaJohns	2024-10-30	10:18:31	71
709	6	ExpreS	2024-11-19	12:24:23	166
710	7	Onfleet	2024-11-23	20:39:13	19
711	22	BlueDart	2024-11-22	01:06:42	64
712	24	DoorDash	2024-11-22	01:17:20	85
713	1	Tecnic	2024-11-23	02:22:43	159
714	22	Seur	2024-11-23	21:35:20	52
715	10	5-Guys	2024-11-22	13:06:58	7
716	23	GLS	2024-11-09	05:20:10	38
717	25	Rappi	2024-11-13	22:33:47	158
718	14	PizzaHut	2024-11-16	08:55:17	173
719	20	Instacart	2024-11-17	12:37:17	10
720	7	Uber Freight	2024-11-22	19:12:36	166
721	3	Chronopost	2024-10-24	10:38:06	174
722	20	Cargo	2024-11-16	15:51:41	160
723	3	USP	2024-10-30	11:54:07	191
724	13	Caviar	2024-11-26	15:54:59	29
725	9	TNT	2024-11-15	15:39:55	105
726	16	ShipBob	2024-11-25	22:07:16	58
727	21	Ship2Me	2024-12-11	14:26:25	181
728	23	DoorDash	2024-11-20	23:37:18	174
729	25	5-Guys	2024-11-01	19:30:07	61
730	5	Cargo	2024-11-17	14:36:54	89
731	12	Zapp	2024-10-21	13:47:18	133
732	15	Caviar	2024-11-20	18:12:28	175
733	9	Ship2Me	2024-11-15	03:47:39	77
734	2	FedEx	2024-11-19	07:48:44	33
735	20	AmazonFresh	2024-11-08	12:34:24	71
736	18	EasyTaxi	2024-10-24	12:49:33	65
737	8	Sweetgreen	2024-11-22	03:40:12	88
738	11	Ship2Me	2024-11-14	08:23:18	4
739	17	PostNL	2024-10-24	05:30:31	157
740	16	Sweetgreen	2024-11-12	04:41:30	67
741	11	Lalamove	2024-11-16	01:05:34	118
742	11	Zalando	2024-10-30	13:04:28	119
743	23	ExpreS	2024-11-24	03:23:12	19
744	18	Caviar	2024-11-30	14:16:16	138
745	1	Deliveroo	2024-11-22	15:33:46	101
746	18	Loggi	2024-11-19	13:11:37	162
747	22	Peapod	2024-10-28	00:44:33	149
748	7	Lalamove	2024-11-05	06:42:33	137
749	13	Parcel2Go	2024-11-19	13:02:47	126
750	3	Postmates	2024-11-18	04:21:43	106
751	25	Parcel2Go	2024-11-23	15:50:38	52
752	2	DoorDash	2024-11-12	20:34:33	51
753	25	Uber Freight	2024-11-18	22:44:05	89
754	6	Tecnic	2024-11-28	16:52:45	79
755	4	ShipBob	2024-11-23	16:37:06	58
756	3	EasyTaxi	2024-11-15	14:04:29	6
757	8	Instacart	2024-11-06	10:19:14	80
758	3	QuickBox	2024-11-11	08:55:50	187
759	6	Seur	2024-10-21	22:41:54	141
760	9	Uber Freight	2024-11-09	15:53:57	157
761	24	Just Eat	2024-11-16	03:23:30	84
762	25	Loggi	2024-10-24	04:22:13	174
763	6	Caviar	2024-11-01	02:56:02	121
764	22	GoPanda	2024-10-28	20:39:09	157
765	24	ExpreS	2024-10-22	17:03:15	34
766	18	DoorDash	2024-11-11	14:47:22	10
767	24	DHL	2024-11-24	18:51:14	35
768	17	ExpreS	2024-11-01	09:14:30	56
769	10	GoPuff	2024-11-17	16:06:57	72
770	11	Lyft	2024-11-26	17:10:28	107
771	19	Zalando	2024-11-23	13:06:32	60
772	1	AmazonFresh	2024-11-23	11:51:33	11
773	7	Subway	2024-11-01	06:18:58	190
774	25	Uber Freight	2024-11-18	00:16:38	57
775	25	EasyTaxi	2024-11-14	05:11:19	196
776	9	Caviar	2024-11-07	23:20:14	64
777	10	Rio2Clic	2024-11-23	06:24:15	129
778	5	Zalando	2024-11-16	17:33:45	106
779	10	GoPuff	2024-11-24	15:17:39	20
780	16	BlueDart	2024-11-17	03:43:18	22
781	7	DoorDash	2024-11-21	03:52:34	199
782	23	Loggi	2024-11-02	05:58:02	91
783	6	Sendle	2024-11-29	09:28:18	179
784	19	Zapp	2024-11-06	09:35:44	103
785	5	DoorDash	2024-11-03	07:43:18	14
786	6	Postmates	2024-11-13	09:56:43	155
787	10	Loggi	2024-11-15	10:31:39	197
788	20	DoorDash	2024-11-23	15:17:22	55
789	6	Tecnic	2024-11-05	08:56:54	73
790	14	Just Eat	2024-11-17	18:20:53	85
791	5	ExpreS	2024-11-24	02:50:17	52
792	17	GLS	2024-10-26	09:40:21	88
793	20	Uber Freight	2024-11-24	22:23:47	152
794	9	5-Guys	2024-11-19	10:46:07	68
795	23	Rappi	2024-10-30	14:45:10	116
796	23	PizzaHut	2024-11-17	16:13:49	2
797	7	Caviar	2024-10-23	17:02:16	41
798	6	UberEats	2024-11-23	09:18:10	120
799	14	Grubhub	2024-11-13	17:09:12	106
800	14	EasyTaxi	2024-10-21	00:39:06	184
801	12	Parcel2Go	2024-10-23	04:39:33	61
802	17	FoodPanda	2024-10-25	20:53:47	30
803	7	Grubhub	2024-11-29	08:16:15	11
804	21	GoPuff	2024-11-19	20:27:08	165
805	7	Starbucks	2024-11-22	16:23:54	171
806	20	iFood	2024-11-21	21:43:01	86
807	1	UberEats	2024-10-31	22:09:17	135
808	16	Uber Freight	2024-11-17	18:48:51	25
809	11	Just Eat	2024-11-21	02:27:00	133
810	10	Caviar	2024-10-21	02:56:04	151
811	18	Ship2Me	2024-11-20	19:25:28	96
812	9	Postmates	2024-10-27	06:46:19	93
813	16	Zapp	2024-11-18	18:22:26	62
814	24	DHL	2024-11-16	12:08:44	108
815	1	Peapod	2024-11-13	00:17:31	184
816	18	Starbucks	2024-11-21	16:10:40	119
817	23	GoPuff	2024-11-15	05:48:36	172
818	23	Correios	2024-10-29	20:13:35	162
819	6	Tecnic	2024-11-20	22:36:53	86
820	18	5-Guys	2024-11-17	09:27:47	28
821	10	5-Guys	2024-11-08	00:43:44	68
822	15	AmazonFresh	2024-11-20	15:57:09	137
823	13	Peapod	2024-11-13	09:24:18	24
824	5	PizzaHut	2024-11-16	23:26:13	181
825	14	Rappi	2024-11-14	17:51:13	151
826	19	PizzaHut	2024-11-11	06:37:43	132
827	11	Starbucks	2024-11-04	13:08:08	179
828	9	UberEats	2024-11-04	02:32:47	188
829	12	USP	2024-11-22	06:54:09	33
830	1	Starbucks	2024-11-22	20:07:47	36
831	4	GLS	2024-11-10	19:03:51	149
832	20	EasyTaxi	2024-11-15	01:12:50	143
833	21	Sweetgreen	2024-11-09	08:50:12	50
834	4	GoPuff	2024-11-24	15:50:08	6
835	5	iFood	2024-11-21	23:55:41	55
836	11	Peapod	2024-11-22	08:22:09	70
837	12	Uber Freight	2024-11-04	16:17:56	151
838	18	Parcel2Go	2024-11-03	08:26:15	35
839	22	Lyft	2024-11-20	05:09:43	9
840	19	Lalamove	2024-11-15	06:58:47	93
841	13	5-Guys	2024-10-29	21:54:26	165
842	16	Instacart	2024-11-02	18:45:56	193
843	8	PostNL	2024-10-26	08:05:39	32
844	16	Subway	2024-10-23	22:47:49	73
845	22	ExpreS	2024-11-15	01:35:56	103
846	5	Starbucks	2024-11-18	01:53:49	155
847	16	GLS	2024-11-16	15:20:04	180
848	24	Zalando	2024-11-13	09:44:24	151
849	8	Ship2Me	2024-11-20	05:39:02	130
850	9	BlueDart	2024-11-21	03:53:53	88
851	4	Sendle	2024-11-15	19:39:43	141
852	21	PostNL	2024-11-20	03:27:02	61
853	6	Correios	2024-11-16	02:37:54	67
854	6	Peapod	2024-11-06	04:31:08	80
855	4	Sweetgreen	2024-11-05	10:36:23	18
856	19	GoPuff	2024-11-21	16:47:10	171
857	4	BlueDart	2024-11-17	20:23:34	68
858	20	DHL	2024-11-22	15:20:41	155
859	7	USP	2024-11-13	15:00:35	93
860	15	DoorDash	2024-11-25	01:44:40	194
861	15	QuickBox	2024-11-23	04:43:53	58
862	8	Ship2Me	2024-10-21	14:44:52	68
863	24	Zalando	2024-10-24	09:55:25	128
864	6	Zalando	2024-10-21	22:30:21	187
865	11	Chick-fil-A	2024-11-18	13:51:22	60
866	13	GoPuff	2024-11-18	11:11:51	8
867	9	Caviar	2024-11-19	17:34:05	199
868	25	Rio2Clic	2024-10-25	16:17:09	9
869	1	Uber Freight	2024-10-30	13:03:20	135
870	7	Rio2Clic	2024-11-19	09:14:08	62
871	6	Sweetgreen	2024-11-07	18:43:00	58
872	16	Tecnic	2024-11-16	12:49:51	160
873	3	GoPuff	2024-11-11	21:41:43	41
874	10	Chick-fil-A	2024-11-19	00:25:59	61
875	22	GoPuff	2024-11-03	14:38:56	149
876	24	Cargo	2024-11-18	13:36:02	33
877	4	PizzaHut	2024-10-29	07:17:26	118
878	18	GoPanda	2024-11-19	17:58:00	174
879	10	Chronopost	2024-11-23	04:34:14	171
880	3	Zapp	2024-11-21	15:45:16	131
881	12	Tecnic	2024-10-24	19:08:47	49
882	4	Lalamove	2024-11-05	23:49:47	118
883	7	BlueDart	2024-11-22	21:07:50	66
884	12	GoPuff	2024-11-25	17:55:32	162
885	25	PostNL	2024-11-11	14:37:07	195
886	22	Uber Freight	2024-11-09	17:32:41	32
887	12	Rio2Clic	2024-11-24	10:04:00	125
888	1	EasyTaxi	2024-11-20	00:49:03	103
889	3	Cargo	2024-10-30	08:07:41	116
890	9	QuickBox	2024-11-22	07:04:40	148
891	24	Grubhub	2024-11-24	10:53:46	52
892	14	iFood	2024-11-19	11:47:24	100
893	25	Tecnic	2024-11-20	12:11:51	66
894	18	Postmates	2024-12-01	13:40:16	138
895	8	Onfleet	2024-10-22	07:53:37	14
896	23	TNT	2024-11-19	20:32:04	110
897	1	ShipBob	2024-11-14	18:12:46	6
898	21	Subway	2024-11-20	12:32:23	137
899	13	Chronopost	2024-11-18	21:19:23	178
900	23	ShipBob	2024-11-18	18:04:16	139
901	4	Instacart	2024-11-21	13:38:33	60
902	12	Tecnic	2024-11-15	20:04:37	41
903	25	Caviar	2024-11-15	15:03:56	36
904	16	Lyft	2024-11-20	14:24:08	81
905	15	Parcel2Go	2024-11-15	22:27:16	24
906	11	Peapod	2024-11-24	21:55:33	74
907	3	Dominos	2024-11-11	04:46:37	193
908	24	Correios	2024-10-25	02:14:47	135
909	15	Caviar	2024-11-04	17:41:58	99
910	22	GoPanda	2024-11-04	12:31:45	49
911	3	Cargo	2024-11-20	16:45:26	139
912	12	Rio2Clic	2024-11-26	18:40:02	58
913	23	GLS	2024-11-25	16:00:05	52
914	22	Rappi	2024-11-20	09:18:39	129
915	14	Chick-fil-A	2024-10-25	05:00:07	105
916	21	Cargo	2024-11-14	11:44:03	147
917	11	Loggi	2024-11-19	23:57:56	109
918	2	Caviar	2024-10-22	07:36:25	195
919	15	EasyTaxi	2024-11-08	23:17:09	57
920	20	ShipBob	2024-10-22	16:27:43	50
921	20	Sweetgreen	2024-10-31	05:40:05	116
922	6	DHL	2024-11-13	01:44:06	154
923	8	Ship2Me	2024-11-23	04:02:17	60
924	20	UberEats	2024-11-24	10:46:56	70
925	8	Uber Freight	2024-11-24	09:10:44	150
926	17	Chronopost	2024-11-15	18:24:42	122
927	11	TNT	2024-11-17	03:15:41	103
928	22	Chick-fil-A	2024-11-05	17:54:09	80
929	9	GoPanda	2024-11-14	22:47:25	127
930	2	QuickBox	2024-10-30	04:08:12	49
931	15	Dominos	2024-11-23	17:28:07	33
932	11	BlueDart	2024-11-23	14:06:34	97
933	23	Cargo	2024-11-19	08:03:09	128
934	1	Tecnic	2024-10-21	13:07:47	135
935	4	Uber Freight	2024-11-23	07:26:38	52
936	16	Lalamove	2024-10-24	15:10:43	50
937	23	Rappi	2024-11-08	03:35:28	124
938	25	Chick-fil-A	2024-11-24	05:15:21	7
939	17	TNT	2024-11-20	17:17:07	139
940	17	Onfleet	2024-11-17	20:28:42	33
941	22	Deliveroo	2024-11-20	05:22:49	74
942	3	BlueDart	2024-11-14	08:38:41	196
943	11	Parcel2Go	2024-11-22	10:52:15	7
944	18	GoPanda	2024-11-25	13:55:46	176
945	16	Caviar	2024-11-24	21:05:01	1
946	6	Zalando	2024-10-30	01:25:20	69
947	18	Loggi	2024-11-26	08:09:02	194
948	7	Uber Freight	2024-11-08	09:05:36	73
949	20	iFood	2024-11-23	02:03:40	63
950	20	GoPuff	2024-11-15	15:30:27	80
951	5	GoPanda	2024-11-20	06:02:51	35
952	22	PostNL	2024-11-16	07:25:21	9
953	7	Sweetgreen	2024-11-18	04:51:06	6
954	19	Onfleet	2024-11-24	13:41:27	121
955	2	Rappi	2024-11-07	01:35:49	141
956	17	Tecnic	2024-11-18	02:31:43	34
957	21	PizzaHut	2024-11-26	11:01:35	17
958	8	Just Eat	2024-11-10	23:37:23	101
959	5	UberEats	2024-10-30	19:10:10	103
960	10	Caviar	2024-11-07	04:25:47	44
961	14	EasyTaxi	2024-11-11	20:37:38	170
962	13	Dominos	2024-11-05	18:50:42	84
963	24	BlueDart	2024-11-16	10:50:34	110
964	22	Just Eat	2024-11-20	11:10:21	187
965	11	PizzaHut	2024-11-18	22:22:54	28
966	25	USP	2024-11-22	06:42:58	70
967	16	Seur	2024-11-27	13:12:18	192
968	8	Chronopost	2024-11-19	07:38:38	129
969	21	DoorDash	2024-11-12	14:20:47	95
970	5	Rio2Clic	2024-11-26	04:48:55	63
971	19	AmazonFresh	2024-11-15	12:03:12	92
972	21	DoorDash	2024-11-17	16:28:39	141
973	4	Loggi	2024-11-18	00:24:18	106
974	22	Instacart	2024-10-24	05:38:27	134
975	7	GoPuff	2024-10-31	07:25:21	127
976	13	Chick-fil-A	2024-10-23	10:12:29	22
977	12	Seur	2024-11-25	14:25:54	94
978	12	Lalamove	2024-11-10	17:00:26	32
979	24	TNT	2024-11-15	12:15:08	160
980	2	Sweetgreen	2024-11-25	06:38:36	171
981	1	Subway	2024-11-02	15:16:06	147
982	16	BlueDart	2024-11-19	13:12:17	190
983	20	Deliveroo	2024-10-26	04:19:14	76
984	1	Uber Freight	2024-11-15	19:49:20	141
985	7	Grubhub	2024-11-24	18:57:05	192
986	18	Correios	2024-11-15	18:31:40	38
987	1	USP	2024-11-05	21:40:29	112
988	3	Rappi	2024-11-21	08:35:13	63
989	7	Dominos	2024-11-03	13:49:47	77
990	6	Deliveroo	2024-11-19	06:33:58	58
991	22	ExpreS	2024-11-20	19:54:34	83
992	21	UberEats	2024-11-09	13:03:41	132
993	22	AmazonFresh	2024-11-18	17:12:42	109
994	23	PizzaHut	2024-11-25	00:04:43	11
995	15	Onfleet	2024-11-19	06:41:32	34
996	22	Cargo	2024-11-15	09:22:45	151
997	9	Chronopost	2024-10-30	22:37:04	123
998	4	EasyTaxi	2024-11-18	16:24:27	78
999	6	Tecnic	2024-11-19	02:34:45	84
\.


--
-- TOC entry 5186 (class 0 OID 40379)
-- Dependencies: 239
-- Data for Name: equipamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.equipamento (id_equipamento, nome, quantidade, desgaste) FROM stdin;
1	Colete Salva-Vidas	10	Novo
2	Caiaque	5	Moderado
3	Prancha de Stand-Up	7	Relevante
4	Alter	3	Comprometido
5	Raquetes de Tênis	15	Novo
6	Equipamento de Mergulho	8	Moderado
7	Jogos de Tabuleiro	20	Novo
8	Barcos a Remo	4	Relevante
9	Equipamentos de Tirolesa	1	Comprometido
10	Bola de Vôlei	2	Inutilizável
11	Quadriciclo	6	Novo
12	Patins	10	Moderado
13	Equipamento de Arco e Flecha	3	Relevante
14	Bolas de Futebol	12	Novo
15	Colchonetes de Yoga	8	Moderado
16	Slackline	2	Comprometido
17	Equipamento de Paintball	5	Relevante
18	Raquete de tênis	4	Novo
19	Brinquedos Infantis	20	Moderado
20	Bolas de Basquete	3	Relevante
21	Avental e luvas	10	Relevante
22	Sapatos de dança	10	Relevante
23	Pinceis, tintas e quadros	10	Relevante
\.


--
-- TOC entry 5187 (class 0 OID 40385)
-- Dependencies: 240
-- Data for Name: estaciona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estaciona (id_carro, data_inicio, diarias, tipo_vaga, id_dependencia) FROM stdin;
37	2024-11-25 00:00:00	1	Coberta	41
17	2024-11-25 00:00:00	1	Coberta	44
31	2024-11-20 00:00:00	2	Ar livre	35
44	2024-11-21 00:00:00	5	Ar livre	34
46	2024-11-25 00:00:00	3	Coberta	34
4	2024-11-26 00:00:00	1	Coberta	44
5	2024-11-22 00:00:00	5	Coberta	37
28	2024-11-27 00:00:00	1	Coberta	44
13	2024-11-25 00:00:00	1	Ar livre	38
47	2024-11-22 00:00:00	6	Ar livre	34
3	2024-11-21 00:00:00	10	Coberta	38
1	2024-11-16 00:00:00	9	Ar livre	45
2	2024-11-22 00:00:00	4	Coberta	33
33	2024-11-19 00:00:00	5	Coberta	37
35	2024-11-17 00:00:00	6	Coberta	40
29	2024-11-15 00:00:00	9	Ar livre	43
41	2024-11-27 00:00:00	2	Ar livre	35
9	2024-11-18 00:00:00	4	Coberta	39
53	2024-11-18 00:00:00	11	Ar livre	37
39	2024-11-17 00:00:00	4	Coberta	36
32	2024-11-26 00:00:00	2	Ar livre	34
12	2024-11-20 00:00:00	2	Ar livre	33
50	2024-11-24 00:00:00	1	Coberta	37
8	2024-12-01 00:00:00	1	Coberta	43
19	2024-11-19 00:00:00	3	Ar livre	39
14	2024-11-19 00:00:00	1	Coberta	40
51	2024-11-16 00:00:00	4	Ar livre	37
23	2024-11-15 00:00:00	12	Ar livre	37
11	2024-11-18 00:00:00	8	Coberta	39
25	2024-11-29 00:00:00	13	Coberta	37
7	2024-11-16 00:00:00	5	Ar livre	37
45	2024-11-24 00:00:00	2	Coberta	40
40	2024-11-26 00:00:00	1	Ar livre	44
30	2024-11-29 00:00:00	2	Coberta	41
27	2024-11-21 00:00:00	6	Coberta	35
\.


--
-- TOC entry 5188 (class 0 OID 40390)
-- Dependencies: 241
-- Data for Name: estacionamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estacionamento (id_dependencia, local, vaga_coberta, vaga_ar_livre, custo_coberta, custo_ar_livre) FROM stdin;
33	Leste	40	113	28.00	15.00
34	Leste	114	175	24.00	19.00
35	Oeste	39	115	27.00	17.00
36	Sul	64	155	33.00	35.00
37	Oeste	208	31	18.00	15.00
38	Leste	195	224	38.00	35.00
39	Norte	150	225	32.00	41.00
40	Norte	97	224	28.00	23.00
41	Oeste	233	134	21.00	43.00
42	Sul	186	80	32.00	42.00
43	Sul	161	208	20.00	25.00
44	Leste	229	50	37.00	49.00
45	Oeste	60	250	48.00	44.00
\.


--
-- TOC entry 5189 (class 0 OID 40397)
-- Dependencies: 242
-- Data for Name: evento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.evento (id_dependencia, nome, tipo_uso, capacidade) FROM stdin;
10	Salão de Festas	Aniversário	60
77	Auditório Principal	Exposição	200
11	Sala de Conferências	Formatura	330
79	Terraço	Show	145
48	Sala de Reuniões	Palestra	120
81	Centro de Convenções	Workshop	390
82	Salão de Eventos	Casamento	150
83	Sala VIP	Palestra	70
84	Jardim Externo	Casamento	350
85	Terraço Panorâmico	Reunião	350
86	Espaço Gourmet	Festa	115
87	Centro de Treinamento	Workshop	60
88	Palco Aberto	Show	165
89	Galeria de Arte	Exposição	190
90	Sala de Diretoria	Reunião	85
49	Pavilhão de Exposições	Feira	270
60	Salão de Gala	Exposição	360
61	Espaço Lounge	Festa	120
64	Galeria Panorâmica	Exposição	300
97	Pátio Lumina	Exposição	340
100	Arena Viva	Shows	500
99	Deck Solar	Ar livre	70
102	Sala Áurea	Conferências	140
\.


--
-- TOC entry 5190 (class 0 OID 40402)
-- Dependencies: 243
-- Data for Name: externa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.externa (id_atividade, local, distancia) FROM stdin;
4	Casa de Eventos Plaza	4
6	Praia dos Ventos	6
10	Rio das Ostras	5
11	Casa de Eventos Sukuya	3
15	Reserva Nacional Arara Azul	7
17	Praia das Conchas	9
19	Patinação WA	5
\.


--
-- TOC entry 5192 (class 0 OID 40408)
-- Dependencies: 245
-- Data for Name: funcionario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.funcionario (id_funcionario, cpf, nome, contrato, cargo, salario, va, vr, vt, plano_saude, id_unidade) FROM stdin;
1	48352709160	Dr. Cauê Siqueira	CLT	Gerente geral	12500.00	1700.00	2000.00	1500.00	Unimed	1
2	23179685077	Alícia Fogaça	PJ	Gerente de RH	13900.00	1800.00	2000.00	1800.00	Amil	1
3	56390821433	Sr. Léo Macedo	CLT	Gerente de Compras	12700.00	1500.00	1600.00	1900.00	Bradesco	1
4	01823547923	Sara Silveira	CLT	Gerente de Recepção	13000.00	2000.00	2000.00	2000.00	Sulamérica	1
5	29051436815	Thiago Castro	CLT	Conciierge	1700.00	600.00	500.00	700.00	Hapvida	1
6	52893714609	Ana Laura Araújo	CLT	Manobrista	2100.00	500.00	500.00	700.00	NotreDame	1
7	40287963187	Dra. Laura Borges	PJ	Recepcionista	2900.00	500.00	500.00	600.00	Porto Seguro	1
8	48625917364	Dr. Davi Luiz da Rocha	CLT	Mensageiros	2700.00	600.00	500.00	700.00	Sompo	1
9	96230845105	Dra. Bianca Lima	CLT	Conciierge	1600.00	600.00	700.00	500.00	Allianz	1
10	83649701510	Sr. João Miguel Costela	PJ	Cozinheiro	2300.00	600.00	500.00	600.00	Prevent Senior	1
11	76314890500	Mariah Andrade	CLT	Gerente geral	14400.00	1800.00	1700.00	1800.00	Unimed	2
12	36128749003	Zoe Guerra	CLT	Gerente de RH	10900.00	1800.00	1900.00	1500.00	Amil	2
13	38179406296	Noah Sales	PJ	Gerente de Compras	11300.00	1800.00	1500.00	2000.00	Bradesco	2
14	50432176853	Lorenzo Carvalho	CLT	Gerente de Recepção	14000.00	1700.00	1600.00	1600.00	Sulamérica	2
15	62183470526	Arthur Barros	CLT	Mensageiros	3000.00	600.00	700.00	700.00	Hapvida	2
16	27063481517	Benjamim Oliveira	CLT	Barman	1500.00	600.00	500.00	700.00	NotreDame	2
17	62409138713	Paulo Sousa	CLT	Cozinheiro	1400.00	700.00	500.00	500.00	Porto Seguro	2
18	62859714049	Maria Helena Sampaio	CLT	Cozinheiro	1400.00	600.00	600.00	700.00	Sompo	2
19	34805719648	Davi Jesus	CLT	Manobrista	1900.00	600.00	600.00	700.00	Allianz	2
20	09385762168	Srta. Rebeca Câmara	CLT	Recepcionista	2500.00	700.00	500.00	500.00	Prevent Senior	2
21	52043968106	Lunna Jesus	CLT	Gerente geral	10900.00	1800.00	1900.00	1600.00	Unimed	3
22	65019247820	Dr. Anthony Gabriel Mendes	PJ	Gerente de RH	10000.00	2000.00	1500.00	1800.00	Amil	3
23	23654170862	Fernanda da Costa	CLT	Gerente de Compras	14900.00	1800.00	1600.00	1900.00	Bradesco	3
24	21348076950	Marcela Monteiro	CLT	Gerente de Recepção	11400.00	1700.00	1500.00	1800.00	Sulamérica	3
25	40286931524	Maria Clara Nogueira	CLT	Mensageiros	1600.00	700.00	700.00	700.00	Hapvida	3
26	34187092579	Rafaela Cirino	CLT	Segurança	1400.00	500.00	600.00	700.00	NotreDame	3
27	23605174906	Emanuella Monteiro	PJ	Conciierge	3000.00	700.00	700.00	500.00	Porto Seguro	3
28	29487510397	Dr. Ravi Lima	CLT	Conciierge	2800.00	500.00	600.00	500.00	Sompo	3
29	13750648271	Sra. Julia Novaes	CLT	Mensageiros	1800.00	500.00	600.00	500.00	Allianz	3
30	51320689795	Carolina da Rosa	PJ	Segurança	1700.00	500.00	700.00	700.00	Prevent Senior	3
31	61482539764	Brayan Barbosa	CLT	Gerente geral	12900.00	1700.00	1500.00	1800.00	Unimed	4
32	01748625390	Giovanna Machado	CLT	Gerente de RH	13400.00	1700.00	1500.00	2000.00	Amil	4
33	32976058121	Lucas Monteiro	PJ	Gerente de Compras	12400.00	1500.00	1500.00	1600.00	Bradesco	4
34	37948016287	Alexia Sousa	CLT	Gerente de Recepção	13700.00	1600.00	1700.00	1700.00	Sulamérica	4
35	40379562847	Sofia Mendes	CLT	Manobrista	3000.00	600.00	700.00	600.00	Hapvida	4
36	86045972120	Sr. Caleb Monteiro	CLT	Manobrista	2000.00	600.00	600.00	500.00	NotreDame	4
37	54691837264	Sra. Mirella Azevedo	CLT	Recepcionista	2400.00	700.00	600.00	700.00	Porto Seguro	4
38	34816792031	Sr. Theo Aragão	CLT	Cozinheiro	2800.00	500.00	500.00	500.00	Sompo	4
39	38291605424	Srta. Emilly Oliveira	CLT	Cozinheiro	1600.00	600.00	700.00	600.00	Allianz	4
40	43018659775	Levi Jesus	CLT	Manobrista	2100.00	700.00	700.00	600.00	Prevent Senior	4
41	27630851480	Davi Lucca Gonçalves	CLT	Gerente geral	14100.00	1800.00	1500.00	1900.00	Unimed	5
42	09243156799	Antony Pastor	CLT	Gerente de RH	13400.00	1600.00	1600.00	2000.00	Amil	5
43	80954137639	Yasmin Freitas	PJ	Gerente de Compras	14400.00	1900.00	1700.00	1600.00	Bradesco	5
44	07582146344	Olívia Brito	CLT	Gerente de Recepção	10700.00	2000.00	2000.00	1800.00	Sulamérica	5
45	42679180313	Lorena Costa	PJ	Segurança	3000.00	700.00	600.00	600.00	Hapvida	5
46	18697230403	Gael Henrique da Cunha	CLT	Supervisor de governança	5000.00	1100.00	1200.00	1200.00	NotreDame	5
47	49530816766	Ian Ferreira	CLT	Segurança	2200.00	600.00	600.00	600.00	Porto Seguro	5
48	20964581370	Maria Isis Vieira	PJ	Recepcionista	2700.00	700.00	500.00	600.00	Sompo	5
49	90452831741	Felipe Vasconcelos	CLT	Segurança	2200.00	500.00	700.00	600.00	Allianz	5
50	61948702576	Nicolas Guerra	PJ	Conciierge	2300.00	500.00	500.00	700.00	Prevent Senior	5
51	74193526828	Nicole das Neves	CLT	Gerente geral	13400.00	1600.00	1500.00	1700.00	Unimed	6
52	21504786335	Lunna Leão	PJ	Gerente de RH	11600.00	1600.00	1500.00	2000.00	Amil	6
53	17259046830	Yuri Azevedo	CLT	Gerente de Compras	13600.00	1800.00	1900.00	1600.00	Bradesco	6
54	70913842613	Diogo da Rocha	CLT	Gerente de Recepção	10800.00	1900.00	1700.00	1700.00	Sulamérica	6
55	89753026447	Henrique Leão	PJ	Camareira	2800.00	500.00	500.00	500.00	Hapvida	6
56	93781542041	Isis Pacheco	CLT	Barman	2000.00	700.00	700.00	500.00	NotreDame	6
57	53017948684	Brenda Carvalho	PJ	Camareira	2900.00	600.00	600.00	500.00	Porto Seguro	6
58	64523801924	Hellena Borges	CLT	Atendente de reservas	2000.00	500.00	500.00	500.00	Sompo	6
59	08394561748	Nina Freitas	CLT	Mensageiros	2100.00	500.00	700.00	700.00	Allianz	6
60	89436251700	Anna Liz Barbosa	PJ	Segurança	2900.00	500.00	500.00	700.00	Prevent Senior	6
61	27809453629	Maria Pacheco	CLT	Gerente geral	12900.00	1600.00	1600.00	1900.00	Unimed	7
62	98632741004	Srta. Luísa Fogaça	CLT	Gerente de RH	12800.00	1800.00	2000.00	1700.00	Amil	7
63	87340659110	Olivia Martins	PJ	Gerente de Compras	11500.00	1600.00	1500.00	1700.00	Bradesco	7
64	40237895692	Rebeca Marques	CLT	Gerente de Recepção	13600.00	1900.00	1500.00	1600.00	Sulamérica	7
65	89705632103	Dr. Isaac Mendonça	CLT	Camareira	3000.00	600.00	700.00	500.00	Hapvida	7
66	35128749088	Maria Luiza Machado	PJ	Mensageiros	2600.00	500.00	500.00	700.00	NotreDame	7
67	36907821559	Isaac Montenegro	CLT	Recepcionista	1900.00	600.00	700.00	500.00	Porto Seguro	7
68	74069832122	Rafaela da Cruz	CLT	Manobrista	1800.00	700.00	500.00	600.00	Sompo	7
69	68312740996	Dra. Ísis Ribeiro	PJ	Cozinheiro	2800.00	600.00	500.00	700.00	Allianz	7
70	71368025471	Kevin da Mota	CLT	Conciierge	1700.00	500.00	700.00	600.00	Prevent Senior	7
71	80659237474	Dr. Luiz Gustavo Marques	CLT	Atendente de reservas	2500.00	700.00	600.00	700.00	Unimed	1
72	84590263106	Benício Lopes	CLT	Supervisor de segurança	6100.00	1000.00	1200.00	1200.00	Amil	2
73	63482519773	Allana da Rocha	PJ	Recepcionista	3000.00	500.00	700.00	600.00	Bradesco	3
74	37258461973	Sra. Ana Júlia Moraes	CLT	Atendente de reservas	2000.00	500.00	600.00	700.00	Sulamérica	4
75	36248195773	Srta. Emanuella da Mata	PJ	Manobrista	1700.00	500.00	500.00	500.00	Hapvida	5
76	65924713016	Theo Mendes	CLT	Mensageiros	2800.00	600.00	500.00	600.00	NotreDame	6
77	65714290399	Benício Abreu	PJ	Segurança	1400.00	500.00	500.00	600.00	Prevent Senior	7
78	68479310278	Sra. Melissa Cardoso	CLT	Gerente geral	10200.00	1600.00	1700.00	1600.00	Porto Seguro	8
79	54361897093	Dr. Raul Cirino	PJ	Gerente geral	14800.00	2000.00	1700.00	1900.00	Sompo	9
80	20613948505	Eduardo Correia	CLT	Gerente geral	12400.00	1800.00	1700.00	1900.00	Allianz	10
81	96134508748	Ana Aparecida	PJ	Gerente geral	14300.00	1700.00	1900.00	2000.00	Unimed	11
82	49630257874	Dom Cunha	CLT	Gerente geral	11700.00	1900.00	1900.00	1900.00	Amil	12
83	41853792004	Pedro Henrique Mendes	PJ	Gerente geral	13600.00	2000.00	1600.00	1700.00	Bradesco	13
84	40691523770	Rael Moraes	CLT	Gerente geral	11800.00	1900.00	2000.00	1900.00	Sulamérica	14
85	64127309822	Bianca Pacheco	PJ	Gerente geral	14700.00	1800.00	1800.00	1500.00	Hapvida	15
86	47508192397	Sr. João Miguel Nogueira	CLT	Manobrista	2700.00	600.00	500.00	700.00	NotreDame	1
87	20596178395	Luiz Fernando da Luz	PJ	Cozinheiro	2600.00	500.00	500.00	500.00	Prevent Senior	2
88	73495610243	Sra. Melissa Martins	CLT	Segurança	1900.00	500.00	600.00	700.00	Porto Seguro	3
89	04153278904	Rebeca Siqueira	PJ	Atendente de reservas	1400.00	700.00	700.00	500.00	Sompo	4
90	72531408932	Murilo Aparecida	CLT	Recepcionista	2900.00	700.00	600.00	700.00	Allianz	5
91	75290164316	José Pedro Vieira	PJ	Recepcionista	2000.00	600.00	700.00	700.00	Unimed	6
92	29176804313	Srta. Brenda Moreira	CLT	Mensageiros	2700.00	600.00	600.00	700.00	Amil	7
93	09326741869	Sarah Gonçalves	PJ	Gerente de RH	12700.00	1800.00	1800.00	1500.00	Bradesco	8
94	37961245855	Bella Vieira	CLT	Gerente de RH	14000.00	1900.00	1800.00	1900.00	Sulamérica	9
95	30285794132	Rafaela Gonçalves	PJ	Gerente de RH	11000.00	1600.00	1600.00	1800.00	Hapvida	10
96	05971234897	João Vitor Rios	CLT	Gerente de RH	11100.00	1500.00	2000.00	1700.00	NotreDame	11
97	23917546809	Dr. Antony Jesus	PJ	Gerente de RH	11900.00	1900.00	1900.00	1900.00	Prevent Senior	12
98	57392840665	Léo Correia	CLT	Gerente de RH	12200.00	2000.00	1600.00	1500.00	Porto Seguro	13
99	14708963548	Dra. Lorena Cardoso	PJ	Gerente de RH	10500.00	2000.00	1600.00	1700.00	Sompo	14
100	31678490539	Bruna Lima	CLT	Gerente de RH	12700.00	1500.00	1500.00	1900.00	Allianz	15
101	13879504601	Clara Moreira	PJ	Barman	2500.00	500.00	600.00	500.00	Unimed	1
102	01234578905	Benjamim Martins	CLT	Gerente Geral	14700.00	1800.00	1900.00	1700.00	Unimed	8
103	62415980315	Maitê Rocha	CLT	Recepcionista	2700.00	700.00	600.00	500.00	Amil	8
104	25461037925	Sara Peixoto	CLT	Atendente de Reservas	2200.00	500.00	600.00	500.00	Bradesco	8
105	12470965306	Srta. Rebeca Caldeira	CLT	Concierge	2500.00	700.00	600.00	700.00	Sulamérica	8
106	80536491224	Camila Caldeira	CLT	Mensageiro	1400.00	700.00	600.00	500.00	Hapvida	8
107	84730615271	Henry Cirino	CLT	Mensageiro	2900.00	500.00	600.00	700.00	NotreDame	8
108	36508412744	Anna Liz Santos	CLT	Cozinheiro	2500.00	500.00	500.00	500.00	Prevent Senior	8
109	54378291673	Dra. Helena Cunha	CLT	Cozinheiro	1700.00	500.00	700.00	700.00	Porto Seguro	8
110	92716385068	Srta. Maria Liz Pereira	CLT	Barman	1500.00	700.00	500.00	600.00	Sompo	8
111	64097182331	Sra. Allana Cunha	CLT	Camareira	2900.00	500.00	600.00	500.00	Unimed	8
112	96318740287	Dr. Levi Lima	CLT	Camareira	2700.00	700.00	700.00	600.00	Amil	8
113	18962045702	Francisco das Neves	CLT	Camareira	2700.00	600.00	600.00	700.00	Bradesco	8
114	06825913786	Eduardo da Paz	CLT	Manobrista	3000.00	700.00	600.00	600.00	Sulamérica	8
115	02658143915	Ian Azevedo	CLT	Supervisor de Governança	6200.00	1100.00	1100.00	1000.00	Hapvida	8
116	87593026159	Juan Souza	CLT	Segurança	2600.00	500.00	500.00	600.00	NotreDame	8
117	27134980588	Davi Miguel Alves	CLT	Supervisor de Segurança	6800.00	1000.00	1000.00	1000.00	Prevent Senior	8
118	38271450662	Lunna Caldeira	CLT	Gerente de RH	12900.00	1700.00	1900.00	2000.00	Porto Seguro	8
119	84207653929	Josué Duarte	CLT	Gerente de Compras	13000.00	1700.00	1600.00	1600.00	Sompo	8
120	64821537044	Maria Clara da Costa	CLT	Gerente de Recepção	11800.00	1800.00	1800.00	1600.00	Unimed	8
121	09432781550	Carlos Eduardo Abreu	CLT	Gerente Geral	14200.00	2000.00	1500.00	1900.00	Unimed	9
122	91685370268	Sarah Borges	CLT	Recepcionista	1500.00	500.00	600.00	500.00	Amil	9
123	45768092374	Diogo Vieira	CLT	Atendente de Reservas	1900.00	500.00	500.00	600.00	Bradesco	9
124	30718642562	Stephany Carvalho	CLT	Concierge	1700.00	700.00	500.00	700.00	Sulamérica	9
125	97025413879	Erick Barros	CLT	Mensageiro	2700.00	700.00	600.00	700.00	Hapvida	9
126	83067925483	Antônio da Mata	CLT	Mensageiro	2600.00	600.00	500.00	500.00	NotreDame	9
127	67183429040	João Pedro Pacheco	CLT	Cozinheiro	2600.00	500.00	700.00	700.00	Prevent Senior	9
128	52436801924	João Guilherme Barros	CLT	Cozinheiro	2700.00	600.00	600.00	700.00	Porto Seguro	9
129	31602978530	Ana Sophia Albuquerque	CLT	Barman	2900.00	600.00	700.00	700.00	Sompo	9
130	97358140648	Vitor Gabriel Fogaça	CLT	Camareira	2300.00	600.00	500.00	500.00	Unimed	9
131	74620953199	Davi Lucas Vargas	CLT	Camareira	2600.00	700.00	500.00	700.00	Amil	9
132	68405937200	Enzo Garcia	CLT	Camareira	2000.00	600.00	700.00	500.00	Bradesco	9
133	97812056449	Vinicius Viana	CLT	Manobrista	2000.00	700.00	700.00	600.00	Sulamérica	9
134	14930865700	Isis Sousa	CLT	Supervisor de Governança	6700.00	1100.00	1200.00	1100.00	Hapvida	9
135	58206397400	Stephany Sá	CLT	Segurança	1400.00	500.00	600.00	700.00	NotreDame	9
136	81270564307	Alexia Moraes	CLT	Supervisor de Segurança	5400.00	1200.00	1200.00	1100.00	Prevent Senior	9
137	72941583637	Heitor Monteiro	CLT	Gerente de RH	10000.00	1900.00	1600.00	1900.00	Porto Seguro	9
138	15960372886	Vitor Vargas	CLT	Gerente de Compras	14900.00	1600.00	1600.00	1500.00	Sompo	9
139	50423718690	Sr. Léo Novaes	CLT	Gerente de Recepção	12000.00	1500.00	1900.00	2000.00	Unimed	9
140	38024971631	Sr. Mateus Correia	CLT	Gerente Geral	11800.00	1900.00	1900.00	1900.00	Unimed	10
141	40395716810	Eloá Azevedo	CLT	Recepcionista	2000.00	500.00	600.00	500.00	Amil	10
142	19532067434	Josué Caldeira	CLT	Atendente de Reservas	2300.00	700.00	700.00	600.00	Bradesco	10
143	89426710396	Natália Sampaio	CLT	Concierge	2000.00	500.00	700.00	600.00	Sulamérica	10
144	23578049638	Sophie Barros	CLT	Mensageiro	2700.00	500.00	500.00	600.00	Hapvida	10
145	50927643170	Alexandre Moraes	CLT	Mensageiro	2400.00	700.00	500.00	700.00	NotreDame	10
146	63174908566	Bruna Souza	CLT	Cozinheiro	2300.00	700.00	600.00	500.00	Prevent Senior	10
147	17053964299	Maria Luísa Melo	CLT	Cozinheiro	2800.00	700.00	700.00	700.00	Porto Seguro	10
148	32695084170	Asafe Casa Grande	CLT	Barman	1500.00	700.00	600.00	600.00	Sompo	10
149	64371958001	Sr. Benicio Nogueira	CLT	Camareira	2400.00	600.00	600.00	600.00	Unimed	10
150	59731680268	Eloá Rodrigues	CLT	Camareira	2600.00	700.00	700.00	700.00	Amil	10
151	69405273116	Sr. Diogo Alves	CLT	Camareira	1900.00	500.00	600.00	700.00	Bradesco	10
152	75802346965	Thomas Pastor	CLT	Manobrista	2500.00	700.00	600.00	700.00	Sulamérica	10
153	65308921415	André Pimenta	CLT	Supervisor de Governança	5100.00	1100.00	1100.00	1000.00	Hapvida	10
154	63582471071	Stella Mendes	CLT	Segurança	2700.00	600.00	600.00	600.00	NotreDame	10
155	21965743846	Maria Isis Cardoso	CLT	Supervisor de Segurança	5100.00	1000.00	1200.00	1000.00	Prevent Senior	10
156	71593026480	Sr. Brayan Barbosa	CLT	Gerente de RH	13500.00	1700.00	1600.00	1700.00	Porto Seguro	10
157	62539081703	Isaque Silveira	CLT	Gerente de Compras	10700.00	1800.00	1600.00	1800.00	Sompo	10
158	17829360413	Bárbara Montenegro	CLT	Gerente de Recepção	13600.00	1700.00	1800.00	1700.00	Unimed	10
159	18952730640	Ravy Casa Grande	CLT	Gerente Geral	13100.00	2000.00	1500.00	1800.00	Unimed	11
160	21345986700	Dr. Matteo Montenegro	CLT	Recepcionista	1700.00	600.00	500.00	600.00	Amil	11
161	06584123960	Ana Beatriz Campos	CLT	Atendente de Reservas	2500.00	700.00	600.00	700.00	Bradesco	11
162	54216730906	Ana Cecília Macedo	CLT	Concierge	3000.00	500.00	700.00	700.00	Sulamérica	11
163	90258176377	Brayan Barros	CLT	Mensageiro	1900.00	700.00	700.00	700.00	Hapvida	11
164	37591246070	Ágatha Abreu	CLT	Mensageiro	2300.00	600.00	500.00	500.00	NotreDame	11
165	47025196380	Paulo Araújo	CLT	Cozinheiro	2300.00	500.00	500.00	500.00	Prevent Senior	11
166	50492637865	Maria Vitória Aparecida	CLT	Cozinheiro	2000.00	700.00	600.00	600.00	Porto Seguro	11
167	87306159410	Otávio da Luz	CLT	Barman	1500.00	600.00	700.00	600.00	Sompo	11
168	87465920329	Anthony Gabriel das Neves	CLT	Camareira	2400.00	500.00	700.00	700.00	Unimed	11
169	05162397407	Srta. Liz Leão	CLT	Camareira	1400.00	500.00	600.00	500.00	Amil	11
170	73450291661	Dr. Thomas Peixoto	CLT	Camareira	1900.00	700.00	600.00	500.00	Bradesco	11
171	28064153735	Antônio Pacheco	CLT	Manobrista	2400.00	500.00	500.00	700.00	Sulamérica	11
172	74031589620	Brenda Sales	CLT	Supervisor de Governança	5800.00	1200.00	1000.00	1000.00	Hapvida	11
173	09745168211	Luiz Fernando Caldeira	CLT	Segurança	1600.00	500.00	700.00	700.00	NotreDame	11
174	18042657994	Vitória Vargas	CLT	Supervisor de Segurança	6300.00	1200.00	1100.00	1200.00	Prevent Senior	11
175	40629581398	Fernando Montenegro	CLT	Gerente de RH	13300.00	1700.00	1700.00	1800.00	Porto Seguro	11
176	65481309793	Augusto Siqueira	CLT	Gerente de Compras	10400.00	2000.00	1600.00	1900.00	Sompo	11
177	78346251955	Eduardo Cunha	CLT	Gerente de Recepção	12300.00	1600.00	1700.00	1800.00	Unimed	11
178	41398726591	Benjamim Moreira	CLT	Gerente Geral	14300.00	2000.00	1700.00	1900.00	Unimed	12
179	27653098177	Pedro da Cunha	CLT	Recepcionista	1800.00	600.00	700.00	600.00	Amil	12
180	34180567920	Marina Gomes	CLT	Atendente de Reservas	3000.00	600.00	500.00	700.00	Bradesco	12
181	85632741982	Ana Carolina Pimenta	CLT	Concierge	2700.00	700.00	700.00	600.00	Sulamérica	12
182	18396524700	Lívia Rios	CLT	Mensageiro	1800.00	600.00	700.00	500.00	Hapvida	12
183	27135409680	Vitor Sousa	CLT	Mensageiro	1600.00	700.00	700.00	600.00	NotreDame	12
184	59847031223	Ana Vitória Barbosa	CLT	Cozinheiro	1500.00	500.00	500.00	700.00	Prevent Senior	12
185	78163459255	Hellena Monteiro	CLT	Cozinheiro	2000.00	600.00	700.00	500.00	Porto Seguro	12
186	61058379259	Rhavi Ribeiro	CLT	Barman	1700.00	700.00	600.00	600.00	Sompo	12
187	90654123870	Sra. Jade Costa	CLT	Camareira	1900.00	600.00	600.00	600.00	Unimed	12
188	80731654226	Sr. Theo Almeida	CLT	Camareira	2200.00	600.00	600.00	600.00	Amil	12
189	48769203113	Sabrina Casa Grande	CLT	Camareira	1400.00	600.00	700.00	600.00	Bradesco	12
190	14608793500	Gabriel Câmara	CLT	Manobrista	3000.00	500.00	700.00	500.00	Sulamérica	12
191	48675901348	Thiago Cavalcante	CLT	Supervisor de Governança	6200.00	1000.00	1000.00	1100.00	Hapvida	12
192	51290376859	Sophie Sales	CLT	Segurança	1700.00	500.00	600.00	600.00	NotreDame	12
193	05938467292	Arthur Miguel Correia	CLT	Supervisor de Segurança	6300.00	1200.00	1100.00	1000.00	Prevent Senior	12
194	16378402922	Benicio Rocha	CLT	Gerente de RH	13100.00	2000.00	1900.00	1700.00	Porto Seguro	12
195	98435761282	Theo Santos	CLT	Gerente de Compras	14900.00	1800.00	1900.00	1600.00	Sompo	12
196	13249806560	Pedro Henrique Nunes	CLT	Gerente de Recepção	13000.00	1600.00	2000.00	1500.00	Unimed	12
197	13856429719	Juan Monteiro	CLT	Gerente Geral	11700.00	1900.00	2000.00	1800.00	Unimed	13
198	26478091350	Bella da Mata	CLT	Recepcionista	2500.00	600.00	600.00	500.00	Amil	13
199	08467321903	Hadassa Moura	CLT	Atendente de Reservas	1500.00	600.00	600.00	700.00	Bradesco	13
200	13492680542	Sophia Macedo	CLT	Concierge	2500.00	600.00	500.00	700.00	Sulamérica	13
201	36217890496	Maria Luiza Garcia	CLT	Mensageiro	2900.00	700.00	700.00	700.00	Hapvida	13
202	98570324197	Caroline Alves	CLT	Mensageiro	2300.00	500.00	500.00	600.00	NotreDame	13
203	70293864187	Gustavo Henrique Almeida	CLT	Cozinheiro	2200.00	700.00	600.00	500.00	Prevent Senior	13
204	81367904269	Sra. Heloisa Cavalcanti	CLT	Cozinheiro	2000.00	700.00	700.00	600.00	Porto Seguro	13
205	31284906515	Lorena Rezende	CLT	Barman	1900.00	700.00	700.00	500.00	Sompo	13
206	38610742903	Kaique Cavalcanti	CLT	Camareira	1700.00	600.00	600.00	500.00	Unimed	13
207	36195240842	Breno Aparecida	CLT	Camareira	1700.00	600.00	500.00	600.00	Amil	13
208	81652349006	Kaique Campos	CLT	Camareira	2900.00	500.00	700.00	700.00	Bradesco	13
209	57132869400	Ana Vitória Oliveira	CLT	Manobrista	2000.00	700.00	600.00	500.00	Sulamérica	13
210	95214068360	Antony Viana	CLT	Supervisor de Governança	6900.00	1000.00	1000.00	1200.00	Hapvida	13
211	30281549605	Paulo Machado	CLT	Segurança	2600.00	700.00	600.00	700.00	NotreDame	13
212	21780356471	Maya Porto	CLT	Supervisor de Segurança	5300.00	1200.00	1000.00	1200.00	Prevent Senior	13
213	94527183079	Emanuel Montenegro	CLT	Gerente de RH	11300.00	1500.00	1900.00	1900.00	Porto Seguro	13
214	94815063206	Joana Camargo	CLT	Gerente de Compras	12500.00	1500.00	1600.00	1700.00	Sompo	13
215	27698540111	Rael Montenegro	CLT	Gerente de Recepção	10000.00	1800.00	1700.00	1700.00	Unimed	13
216	08421695398	Benjamim Câmara	CLT	Gerente Geral	13800.00	1600.00	1800.00	1800.00	Unimed	14
217	76801234978	Bryan Barbosa	CLT	Recepcionista	2500.00	600.00	700.00	500.00	Amil	14
218	51804673226	Matheus da Mota	CLT	Atendente de Reservas	2300.00	600.00	600.00	600.00	Bradesco	14
219	42735016943	Dra. Maria Casa Grande	CLT	Concierge	2600.00	700.00	600.00	500.00	Sulamérica	14
220	32068759438	Ana Júlia da Costa	CLT	Mensageiro	3000.00	500.00	600.00	600.00	Hapvida	14
221	64705138244	Marina Costa	CLT	Mensageiro	1400.00	700.00	500.00	700.00	NotreDame	14
222	43108972588	Luiz Fernando Nascimento	CLT	Cozinheiro	1700.00	500.00	700.00	600.00	Prevent Senior	14
223	70145698211	Maya Gomes	CLT	Cozinheiro	2200.00	500.00	700.00	600.00	Porto Seguro	14
224	40925681776	Stella Cassiano	CLT	Barman	1900.00	600.00	500.00	600.00	Sompo	14
225	27068931413	Gabriela da Mata	CLT	Camareira	2100.00	700.00	600.00	600.00	Unimed	14
226	36108257903	Rebeca Lopes	CLT	Camareira	1700.00	500.00	600.00	600.00	Amil	14
227	25390786130	Ana Júlia Ribeiro	CLT	Camareira	1800.00	500.00	600.00	600.00	Bradesco	14
228	01457368900	Ryan Gomes	CLT	Manobrista	2700.00	700.00	700.00	700.00	Sulamérica	14
229	95730612877	Arthur Miguel Almeida	CLT	Supervisor de Governança	6800.00	1000.00	1000.00	1000.00	Hapvida	14
230	01642738913	Mariane Aparecida	CLT	Segurança	2300.00	600.00	700.00	500.00	NotreDame	14
231	37861524035	Alice Nogueira	CLT	Supervisor de Segurança	5700.00	1100.00	1100.00	1100.00	Prevent Senior	14
232	31486907539	Maria Luiza Dias	CLT	Gerente de RH	12100.00	1600.00	2000.00	1900.00	Porto Seguro	14
233	83562791003	Henry Gabriel da Paz	CLT	Gerente de Compras	11000.00	1800.00	2000.00	1600.00	Sompo	14
234	78345291023	Eloá Farias	CLT	Gerente de Recepção	15000.00	1900.00	1900.00	1600.00	Unimed	14
235	67052419858	Joana Gomes	CLT	Gerente Geral	10500.00	2000.00	2000.00	1700.00	Unimed	15
236	87364512071	Sabrina Silveira	CLT	Recepcionista	2400.00	700.00	500.00	500.00	Amil	15
237	07426981576	Dr. Bryan Melo	CLT	Atendente de Reservas	2900.00	700.00	700.00	700.00	Bradesco	15
238	81954732619	Rebeca Novaes	CLT	Concierge	2800.00	600.00	700.00	500.00	Sulamérica	15
239	72915348014	Mathias Almeida	CLT	Mensageiro	3000.00	700.00	700.00	700.00	Hapvida	15
240	72486591001	Enrico Cassiano	CLT	Mensageiro	2200.00	600.00	600.00	700.00	NotreDame	15
241	74925863100	Matheus Peixoto	CLT	Cozinheiro	2600.00	600.00	600.00	500.00	Prevent Senior	15
242	26139805406	Eduarda Garcia	CLT	Cozinheiro	1500.00	500.00	600.00	700.00	Porto Seguro	15
243	09278546356	Ana Lívia Fernandes	CLT	Barman	2700.00	700.00	700.00	700.00	Sompo	15
244	26850794167	Juliana Pastor	CLT	Camareira	2000.00	600.00	600.00	700.00	Unimed	15
245	81420659758	Davi Teixeira	CLT	Camareira	2300.00	700.00	700.00	500.00	Amil	15
246	73246901570	Emanuella Gomes	CLT	Camareira	2900.00	500.00	600.00	600.00	Bradesco	15
247	95103862786	Josué Lima	CLT	Manobrista	1900.00	700.00	500.00	500.00	Sulamérica	15
248	81925367428	Raquel Nascimento	CLT	Supervisor de Governança	5000.00	1100.00	1100.00	1100.00	Hapvida	15
249	78390142597	Bryan Moura	CLT	Segurança	2400.00	700.00	500.00	700.00	NotreDame	15
250	61794538291	Rael Dias	CLT	Supervisor de Segurança	5900.00	1000.00	1000.00	1100.00	Prevent Senior	15
251	84670931296	Arthur Gabriel Pires	CLT	Gerente de RH	12800.00	1800.00	1700.00	1500.00	Porto Seguro	15
252	82910574601	Dr. Yan Vasconcelos	CLT	Gerente de Compras	11400.00	1800.00	1500.00	1600.00	Sompo	15
253	25089731659	Lucca Almeida	CLT	Gerente de Recepção	10200.00	1500.00	1600.00	1800.00	Unimed	15
\.


--
-- TOC entry 5193 (class 0 OID 40414)
-- Dependencies: 246
-- Data for Name: geral; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.geral (id_requisicao) FROM stdin;
1
3
4
8
9
\.


--
-- TOC entry 5195 (class 0 OID 40420)
-- Dependencies: 248
-- Data for Name: hospede; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hospede (id_hospede, cpf, id_reserva) FROM stdin;
1	12345678901	45
2	98765432109	78
3	23456789012	150
4	45678901234	198
5	56789012345	2
6	67890123456	76
7	78901234567	125
8	89012345678	257
9	90123456789	43
10	11234567890	89
11	22345678901	192
12	33456789012	64
13	44567890123	114
14	55678901234	219
15	66789012345	88
16	77890123456	145
17	88901234567	255
18	99012345678	32
19	10123456789	99
20	21234567890	164
21	32345678901	48
22	43456789012	13
23	54567890123	188
24	65678901234	219
25	76789012345	92
26	87890123456	101
27	98901234567	203
28	10012345678	122
29	11123456789	31
30	22234567890	2
31	33345678901	177
32	44456789012	250
33	55567890123	78
34	66678901234	145
35	77789012345	240
36	88890123456	101
37	99901234567	150
38	11112345678	95
39	22223456789	78
40	33334567890	134
41	44445678901	175
42	55556789012	94
43	66667890123	202
44	77778901234	109
45	88889012345	164
46	99990123456	260
47	11223456789	112
48	22334567890	46
49	33445678901	198
50	44556789012	22
51	55667890123	130
52	66778901234	89
53	77889012345	212
54	88990123456	179
55	99001234567	49
56	10011234567	134
57	11122345678	259
58	22233456789	15
59	33344567890	210
60	44455678901	198
61	55566789012	91
62	66677890123	240
63	77788901234	84
64	88899012345	159
65	99900123456	120
66	12345098765	34
67	98765012345	51
68	23456098712	162
69	45678012367	201
70	56789023456	52
71	67890123478	123
72	78901234589	246
73	89012345690	91
74	90123456701	47
75	11234567812	193
76	22345678923	67
77	33456789034	153
78	44567890145	219
79	55678901256	82
80	66789012367	137
81	77890123478	234
82	88901234589	89
83	99012345690	147
84	10123456701	208
85	21234567812	112
86	32345678923	56
87	43456789034	150
88	54567890145	231
89	65678901256	99
90	76789012367	143
91	87890123478	239
92	98901234589	73
93	10012345690	155
94	11123456701	150
95	12234567812	7
96	13345678923	162
97	14456789034	1
98	15567890145	82
99	16678901256	194
100	17789012367	121
101	18890123478	237
102	19901234589	109
103	21012345690	178
104	22123456701	250
105	23234567812	134
106	14027131454	245
107	65068507061	236
108	87244586890	227
109	76249721775	260
110	96948839571	219
111	40806249992	260
112	74364354616	251
113	17531145534	242
114	29154729354	233
115	12315021710	224
116	18533945453	215
117	61085486616	246
118	21230495735	227
119	07736835507	218
120	90283482755	209
121	98570733479	200
122	77962164553	231
123	86650470414	232
124	11488874715	253
125	82936607252	244
126	19023456789	16
127	20134567890	17
128	21245678901	18
129	22356789012	19
130	23467890123	20
131	24578901234	21
132	25689012345	22
133	26790123456	23
134	27801234567	24
135	28912345678	25
136	29023456789	26
137	30134567890	27
138	31245678901	28
139	32356789012	29
140	33467890123	30
141	34578901234	31
142	35689012345	32
143	36790123456	34
144	37801234567	35
145	38912345678	36
146	39023456789	37
147	40134567890	38
148	41245678901	39
149	42356789012	40
150	43467890123	41
151	44578901234	43
152	45689012345	44
153	46790123456	46
154	47801234567	47
155	48912345678	48
156	49023456789	49
157	50134567890	50
158	51245678901	51
159	52356789012	52
160	53467890123	53
161	54578901234	54
162	55689012345	55
163	56790123456	57
164	57801234567	58
165	58912345678	59
166	59023456789	60
167	60134567890	61
168	61245678901	62
169	62356789012	63
170	63467890123	64
171	64578901234	66
172	65689012345	67
173	66790123456	68
174	67801234567	69
175	68912345678	70
176	69023456789	71
177	70134567890	72
178	71245678901	73
179	72356789012	74
180	73467890123	75
181	74578901234	76
182	75689012345	77
183	76790123456	78
184	77801234567	79
185	78912345678	80
186	79023456789	81
187	80134567890	82
188	81245678901	83
189	82356789012	84
190	83467890123	85
191	84578901234	86
192	85689012345	87
193	86790123456	88
194	87801234567	89
195	88912345678	90
196	89023456789	91
197	90134567890	92
198	91245678901	93
199	92356789012	94
200	93467890123	95
201	94578901234	96
202	95689012345	97
203	96790123456	99
204	97801234567	100
205	98912345678	101
206	99023456789	102
207	10013456789	103
208	10124567890	104
209	10235678901	105
210	10346789012	106
211	10457890123	107
212	10568901234	108
213	10679012345	109
214	10780123456	110
215	10891234567	111
216	10902345678	112
217	11013456789	113
218	11124567890	114
219	11235678901	115
220	11346789012	116
221	11457890123	117
222	11568901234	118
223	11679012345	119
224	11780123456	120
225	11891234567	121
226	11902345678	122
227	12013456789	123
228	12124567890	124
229	12235678901	125
230	12346789012	126
231	12457890123	127
232	12568901234	128
233	12679012345	129
234	12780123456	130
235	12891234567	131
236	12902345678	132
237	13013456789	133
238	13124567890	134
239	13235678901	135
240	13346789012	136
241	13457890123	137
242	13568901234	138
243	13679012345	139
244	13780123456	140
245	13891234567	141
246	13902345678	142
247	14013456789	143
248	14124567890	144
249	14235678901	145
250	14346789012	146
251	14457890123	147
252	14568901234	148
253	14679012345	149
254	14780123456	150
255	14891234567	151
256	14902345678	152
257	15013456789	153
258	15124567890	154
259	15235678901	155
260	15346789012	156
261	15457890123	157
262	15568901234	158
263	15679012345	159
264	15780123456	160
265	15891234567	161
266	15902345678	162
267	16013456789	163
268	16124567890	164
269	16235678901	165
270	16346789012	166
271	16457890123	167
272	16568901234	168
273	16679012345	169
274	16780123456	170
275	16891234567	171
276	16902345678	172
277	17013456789	173
278	17124567890	174
279	17235678901	175
280	17346789012	176
281	17457890123	177
282	17568901234	178
283	17679012345	179
284	17780123456	180
285	17891234567	181
286	17902345678	182
287	18013456789	183
288	18124567890	184
289	18235678901	185
290	18346789012	186
291	18457890123	187
292	18568901234	188
293	18679012345	189
294	18780123456	190
295	18891234567	191
296	18902345678	192
297	19013456789	193
298	19124567890	194
299	19235678901	195
300	19346789012	196
301	19457890123	197
302	19568901234	198
303	19679012345	199
304	19780123456	200
305	19891234567	201
306	19902345678	202
307	20013456789	203
308	20124567890	204
309	20235678901	205
310	20346789012	206
311	20457890123	207
312	20568901234	208
313	20679012345	209
314	20780123456	210
315	20891234567	211
316	20902345678	212
317	21013456789	213
318	21124567890	214
319	21235678901	215
320	21346789012	216
321	21457890123	217
322	21568901234	218
323	21679012345	219
324	21780123456	220
325	21891234567	221
326	21902345678	222
327	22013456789	223
328	22124567890	224
329	22235678901	225
330	22346789012	226
331	22457890123	227
332	22568901234	228
333	22679012345	229
334	22780123456	230
335	22891234567	231
336	22902345678	232
337	23013456789	233
338	23124567890	234
339	23235678901	235
340	23346789012	236
341	23457890123	237
342	23568901234	238
343	23679012345	239
344	23780123456	240
345	23891234567	241
346	23902345678	242
347	24013456789	243
348	24124567890	244
349	24235678901	245
350	24346789012	246
351	24457890123	247
352	24568901234	248
353	24679012345	249
354	24780123456	250
355	24891234567	251
356	24902345678	252
357	25013456789	253
358	25124567890	254
359	25235678901	255
360	25346789012	256
361	25457890123	257
362	25568901234	258
363	25679012345	259
364	25780123456	260
\.


--
-- TOC entry 5196 (class 0 OID 40426)
-- Dependencies: 249
-- Data for Name: lavanderia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lavanderia (id_dependencia, tipo_acesso, quantidade_maq) FROM stdin;
50	Restrito	29
51	Público	11
52	Público	21
53	Restrito	29
75	Público	13
55	Privado	23
56	Privado	28
57	Restrito	26
58	Privado	27
59	Privado	21
74	Restrito	18
62	Restrito	13
63	Restrito	28
73	Público	11
65	Restrito	15
66	Privado	20
67	Público	10
72	Restrito	10
71	Privado	12
93	Privado	10
101	Restrito	15
103	Privado	8
91	Público	20
\.


--
-- TOC entry 5198 (class 0 OID 40432)
-- Dependencies: 251
-- Data for Name: loja; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.loja (id_loja, valor_aluguel, tipo, id_condominio) FROM stdin;
1	8550.00	Calça	1
2	4703.00	Produto	3
3	7821.00	Esportes	15
4	5853.00	Calça	10
5	2855.00	Ferraria	5
6	5050.00	Papelaria	8
7	9563.00	Papelaria	14
8	2112.00	Calçados	4
9	9333.00	Eletrônicos	1
10	8521.00	Decorações	5
11	6565.00	Conveniência	8
12	3637.00	Móveis	2
13	5314.00	Cosméticos	2
14	3424.00	Eletrônicos	2
15	2082.00	Móveis	8
16	5950.00	Roupas	5
17	7853.00	Farmácia	7
18	8492.00	Padaria	13
19	9772.00	Cosméticos	5
20	8757.00	Produtos	4
21	3038.00	Supermercado	15
22	6332.00	Livraria	10
23	4920.00	Departamento	1
24	5348.00	Esportes	12
25	1996.00	Livraria	7
26	5007.00	Móveis	14
27	4969.00	Pet Shop	5
28	2183.00	Calçados	12
29	2850.00	Informática	1
30	1980.00	Brinquedos	9
31	3317.00	Brinquedos	11
32	3316.00	Padaria	9
33	3189.00	Supermercado	13
34	3643.00	Farmácia	6
35	7681.00	Esportes	6
36	4175.00	Pet Shop	3
37	9485.00	Padaria	11
38	2720.00	Produtos	6
39	8877.00	Supermercado	9
40	9878.00	Farmácia	4
41	3070.00	Livraria	12
42	9784.00	Supermercado	4
43	8701.00	Roupa	11
44	3143.00	Conveniência	5
45	3491.00	Automóveis	14
46	5197.00	Automóveis	4
47	7049.00	Cosméticos	14
48	3471.00	Roupas	14
49	5403.00	Brinquedos	5
50	6526.00	Informática	2
\.


--
-- TOC entry 5200 (class 0 OID 40439)
-- Dependencies: 253
-- Data for Name: monitor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.monitor (id_monitor, cpf, nome, idade, sexo, tipo, telefone) FROM stdin;
1	32947699184	Aaron Natal Velasques Jr.	51	Masculino	Esporte	11987654321  
2	80398886810	Thalissa Faro Gomes	49	Feminino	Esporte	21912345678  
3	94770552441	Ricardo Tamoio Jr.	46	Masculino	Dança	31998765432  
4	98759776748	Adriano Esteves Branco	29	Masculino	Teatro	41923456789  
5	70425373945	Leandro Rezende Abreu Neto	42	Masculino	Estudos	51976543210  
6	19568172624	Ziraldo Santacruz	21	Masculino	Jogos	61934567890  
7	12025773762	Miranda Duarte Sobrinho	34	Feminino	Dança	71987123456  
\.


--
-- TOC entry 5202 (class 0 OID 40446)
-- Dependencies: 255
-- Data for Name: motorista; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.motorista (id_motorista, cpf, nome, telefone) FROM stdin;
1	57238896326	Ivana Batista Meireles	85987654321  
2	77161068065	Máximo Rangel Barreto	92912345678  
3	09836094258	Renata Brito	47998765432  
4	03524087111	Manuel Ivan Delgado	83923456789  
5	41006432851	Elias Correia Teles Sobrinho	63976543210  
\.


--
-- TOC entry 5204 (class 0 OID 40453)
-- Dependencies: 257
-- Data for Name: ocorrencia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ocorrencia (id_ocorrencia, categoria, descricao, gravidade, status, atendente, id_atividade) FROM stdin;
1	Acidente	Pequena queda durnate o percurso	1	Fechado	João	15
2	Acidente	Queda de hospede durante a atividade	2	Fechado	Ana	19
3	Roubo	Roubo do celular do cliente durante a apresentação	5	Aberto	Ana	11
4	Vandalismo	Quebra das esculturas das atividades	1	Fechado	Joao	18
5	Assédio	Relato de assédio moral entre participantes da atividade	3	Andamento	Ana	2
\.


--
-- TOC entry 5208 (class 0 OID 40467)
-- Dependencies: 261
-- Data for Name: parceiro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.parceiro (id_parceiro, nome, ramo) FROM stdin;
1	Vértice 360	Esporte
2	Pulsar Ativo	Esporte
3	Resonante Harmonia	Música
4	Fluxo de Ritmo	Dança
5	Sabor e Essência	Culinária
6	Galeria Mutações	Artes
7	Reflexos Azuis	Piscina
8	Mente Crítica	Jogos
\.


--
-- TOC entry 5210 (class 0 OID 40474)
-- Dependencies: 263
-- Data for Name: particular; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.particular (id_requisicao, cpf_autor) FROM stdin;
2	45148971315
5	78893682605
6	05879577448
7	24409382415
10	33023555811
\.


--
-- TOC entry 5211 (class 0 OID 40480)
-- Dependencies: 264
-- Data for Name: piscina; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.piscina (id_dependencia, capacidade, profundidade, data_ult_limpeza) FROM stdin;
2	175437	200	2024-10-23
4	195319	130	2024-11-09
6	157464	140	2024-11-20
8	169875	180	2024-11-01
9	99822	130	2024-11-14
46	183289	160	2024-11-12
47	19366	160	2024-11-20
12	23149	150	2024-11-18
1	74429	130	2024-11-09
3	81316	120	2024-11-12
5	35806	120	2024-11-18
7	118981	200	2024-11-11
54	107281	160	2024-11-19
68	112429	170	2024-11-17
69	116858	150	2024-11-15
70	83280	160	2024-11-20
76	90275	180	2024-11-12
78	39068	130	2024-11-01
80	101630	170	2024-11-13
96	80000	150	2024-11-14
95	75000	160	2024-11-15
92	90000	140	2024-11-16
94	100000	180	2024-11-17
98	101630	170	2024-11-18
\.


--
-- TOC entry 5213 (class 0 OID 40486)
-- Dependencies: 266
-- Data for Name: produto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produto (id_produto, nome, valor, estoque, id_dependencia) FROM stdin;
1	feijoada	65.30	158	18
2	fruta fresca (mamão	70.78	184	18
3	bolinho de chuva	75.73	185	18
4	escondidinho de carne seca	36.69	85	18
5	vatapá	65.31	173	18
6	peixe assado com farofa	73.74	128	18
7	bolo de fubá	71.56	199	18
8	costela assada	54.21	67	18
9	pirão de peixe	28.00	164	18
10	goiabada com queijo	68.88	97	18
11	carne de sol com purê de abób	20.56	132	18
12	pão de queijo	65.12	57	18
13	churrasco com pão de alho	30.71	151	18
14	baião de dois	63.22	80	18
15	mingau de aveia	18.54	153	18
16	arroz com pequi	53.58	124	18
17	pamonha assada	75.54	153	18
18	sopa de legumes	31.06	122	18
19	café preto	27.23	120	18
20	acarajé	45.01	70	18
21	banana)	48.74	168	18
22	galinhada	45.03	141	18
23	pão francês com manteiga	28.96	93	18
24	feijão tropeiro	48.02	174	18
25	caldo de mandioca	65.02	156	18
26	camarão na moranga	36.02	125	18
27	moqueca de peixe	18.65	155	18
28	tapioca com queijo	51.20	104	18
29	cuscuz com manteiga	46.58	117	18
30	pinga com mel	31.33	177	18
31	guaraná natural	18.38	163	18
32	vinho colonial	8.28	69	18
33	cachaça pura	10.59	134	18
34	caipirinha	21.02	175	18
35	batida de coco	27.90	159	18
36	suco de laranja	18.45	136	18
37	água de coco	18.40	149	18
38	suco de melancia	21.48	126	18
39	caldo de cana	26.59	189	18
40	batida de maracujá	17.78	196	18
41	água	32.83	176	18
42	licor de jabuticaba	21.94	81	18
43	caipiroska de morango	32.09	81	18
44	chá de capim-limão	23.84	159	18
45	feijoada	65.30	158	19
46	fruta fresca (mamão	70.78	184	19
47	bolinho de chuva	75.73	185	19
48	escondidinho de carne seca	36.69	85	19
49	vatapá	65.31	173	19
50	peixe assado com farofa	73.74	128	19
51	bolo de fubá	71.56	199	19
52	costela assada	54.21	67	19
53	pirão de peixe	28.00	164	19
54	goiabada com queijo	68.88	97	19
55	carne de sol com purê de abób	20.56	132	19
56	pão de queijo	65.12	57	19
57	churrasco com pão de alho	30.71	151	19
58	baião de dois	63.22	80	19
59	mingau de aveia	18.54	153	19
60	arroz com pequi	53.58	124	19
61	pamonha assada	75.54	153	19
62	sopa de legumes	31.06	122	19
63	café preto	27.23	120	19
64	acarajé	45.01	70	19
65	banana)	48.74	168	19
66	galinhada	45.03	141	19
67	pão francês com manteiga	28.96	93	19
68	feijão tropeiro	48.02	174	19
69	caldo de mandioca	65.02	156	19
70	camarão na moranga	36.02	125	19
71	moqueca de peixe	18.65	155	19
72	tapioca com queijo	51.20	104	19
73	cuscuz com manteiga	46.58	117	19
74	pinga com mel	31.33	177	19
75	guaraná natural	18.38	163	19
76	vinho colonial	8.28	69	19
77	cachaça pura	10.59	134	19
78	caipirinha	21.02	175	19
79	batida de coco	27.90	159	19
80	suco de laranja	18.45	136	19
81	água de coco	18.40	149	19
82	suco de melancia	21.48	126	19
83	caldo de cana	26.59	189	19
84	batida de maracujá	17.78	196	19
85	água	32.83	176	19
86	licor de jabuticaba	21.94	81	19
87	caipiroska de morango	32.09	81	19
88	chá de capim-limão	23.84	159	19
89	feijoada	65.30	158	22
90	fruta fresca (mamão	70.78	184	22
91	bolinho de chuva	75.73	185	22
92	escondidinho de carne seca	36.69	85	22
93	vatapá	65.31	173	22
94	peixe assado com farofa	73.74	128	22
95	bolo de fubá	71.56	199	22
96	costela assada	54.21	67	22
97	pirão de peixe	28.00	164	22
98	goiabada com queijo	68.88	97	22
99	carne de sol com purê de abób	20.56	132	22
100	pão de queijo	65.12	57	22
101	churrasco com pão de alho	30.71	151	22
102	baião de dois	63.22	80	22
103	mingau de aveia	18.54	153	22
104	arroz com pequi	53.58	124	22
105	pamonha assada	75.54	153	22
106	sopa de legumes	31.06	122	22
107	café preto	27.23	120	22
108	acarajé	45.01	70	22
109	banana)	48.74	168	22
110	galinhada	45.03	141	22
111	pão francês com manteiga	28.96	93	22
112	feijão tropeiro	48.02	174	22
113	caldo de mandioca	65.02	156	22
114	camarão na moranga	36.02	125	22
115	moqueca de peixe	18.65	155	22
116	tapioca com queijo	51.20	104	22
117	cuscuz com manteiga	46.58	117	22
118	pinga com mel	31.33	177	22
119	guaraná natural	18.38	163	22
120	vinho colonial	8.28	69	22
121	cachaça pura	10.59	134	22
122	caipirinha	21.02	175	22
123	batida de coco	27.90	159	22
124	suco de laranja	18.45	136	22
125	água de coco	18.40	149	22
126	suco de melancia	21.48	126	22
127	caldo de cana	26.59	189	22
128	batida de maracujá	17.78	196	22
129	água	32.83	176	22
130	licor de jabuticaba	21.94	81	22
131	caipiroska de morango	32.09	81	22
132	chá de capim-limão	23.84	159	22
133	feijoada	65.30	158	27
134	fruta fresca (mamão	70.78	184	27
135	bolinho de chuva	75.73	185	27
136	escondidinho de carne seca	36.69	85	27
137	vatapá	65.31	173	27
138	peixe assado com farofa	73.74	128	27
139	bolo de fubá	71.56	199	27
140	costela assada	54.21	67	27
141	pirão de peixe	28.00	164	27
142	goiabada com queijo	68.88	97	27
143	carne de sol com purê de abób	20.56	132	27
144	pão de queijo	65.12	57	27
145	churrasco com pão de alho	30.71	151	27
146	baião de dois	63.22	80	27
147	mingau de aveia	18.54	153	27
148	arroz com pequi	53.58	124	27
149	pamonha assada	75.54	153	27
150	sopa de legumes	31.06	122	27
151	café preto	27.23	120	27
152	acarajé	45.01	70	27
153	banana)	48.74	168	27
154	galinhada	45.03	141	27
155	pão francês com manteiga	28.96	93	27
156	feijão tropeiro	48.02	174	27
157	caldo de mandioca	65.02	156	27
158	camarão na moranga	36.02	125	27
159	moqueca de peixe	18.65	155	27
160	tapioca com queijo	51.20	104	27
161	cuscuz com manteiga	46.58	117	27
162	pinga com mel	31.33	177	27
163	guaraná natural	18.38	163	27
164	vinho colonial	8.28	69	27
165	cachaça pura	10.59	134	27
166	caipirinha	21.02	175	27
167	batida de coco	27.90	159	27
168	suco de laranja	18.45	136	27
169	água de coco	18.40	149	27
170	suco de melancia	21.48	126	27
171	caldo de cana	26.59	189	27
172	batida de maracujá	17.78	196	27
173	água	32.83	176	27
174	licor de jabuticaba	21.94	81	27
175	caipiroska de morango	32.09	81	27
176	chá de capim-limão	23.84	159	27
177	feijoada	65.30	158	30
178	fruta fresca (mamão	70.78	184	30
179	bolinho de chuva	75.73	185	30
180	escondidinho de carne seca	36.69	85	30
181	vatapá	65.31	173	30
182	peixe assado com farofa	73.74	128	30
183	bolo de fubá	71.56	199	30
184	costela assada	54.21	67	30
185	pirão de peixe	28.00	164	30
186	goiabada com queijo	68.88	97	30
187	carne de sol com purê de abób	20.56	132	30
188	pão de queijo	65.12	57	30
189	churrasco com pão de alho	30.71	151	30
190	baião de dois	63.22	80	30
191	mingau de aveia	18.54	153	30
192	arroz com pequi	53.58	124	30
193	pamonha assada	75.54	153	30
194	sopa de legumes	31.06	122	30
195	café preto	27.23	120	30
196	acarajé	45.01	70	30
197	banana)	48.74	168	30
198	galinhada	45.03	141	30
199	pão francês com manteiga	28.96	93	30
200	feijão tropeiro	48.02	174	30
201	caldo de mandioca	65.02	156	30
202	camarão na moranga	36.02	125	30
203	moqueca de peixe	18.65	155	30
204	tapioca com queijo	51.20	104	30
205	cuscuz com manteiga	46.58	117	30
206	pinga com mel	31.33	177	30
207	guaraná natural	18.38	163	30
208	vinho colonial	8.28	69	30
209	cachaça pura	10.59	134	30
210	caipirinha	21.02	175	30
211	batida de coco	27.90	159	30
212	suco de laranja	18.45	136	30
213	água de coco	18.40	149	30
214	suco de melancia	21.48	126	30
215	caldo de cana	26.59	189	30
216	batida de maracujá	17.78	196	30
217	água	32.83	176	30
218	licor de jabuticaba	21.94	81	30
219	caipiroska de morango	32.09	81	30
220	chá de capim-limão	23.84	159	30
221	suco de cenoura	53.14	85	31
222	leite batido com frutas	60.92	114	31
223	tostadas	49.41	184	31
224	jamón com pão	79.15	168	31
225	conejo al ajillo	76.16	86	31
226	empanada gallega	18.16	113	31
227	suco de laranja	39.56	98	31
228	tortilla de patatas	38.35	137	31
229	café expresso	16.47	136	31
230	café com leche	32.55	50	31
231	calamares fritos	75.17	80	31
232	arroz negro	65.42	89	31
233	smoothie de frutas	53.41	127	31
234	tortilla española	55.56	121	31
235	água	67.03	116	31
236	chocolate quente	78.56	149	31
237	água com gás	16.48	85	31
238	gazpacho	12.40	84	31
239	suco de ameixa	49.24	111	31
240	suco de pêssego	22.95	162	31
241	albóndigas	47.73	113	31
242	estofado de carne	25.88	98	31
243	queijo manchego	55.17	65	31
244	água de coco	26.85	198	31
245	horchata	53.38	151	31
246	chá gelado	42.15	108	31
247	bacalao al pil-pil	15.63	95	31
248	mejillones en escabeche	31.81	128	31
249	bizcocho de limón	20.56	125	31
250	infusão de ervas	35.70	174	31
251	água com gás	13.14	120	31
252	chá preto	28.36	195	31
253	limonada	15.22	120	31
254	vinho branco	17.71	187	31
255	sidra asturiana	9.54	163	31
256	chá gelado	27.44	165	31
257	vinho de Jerez	20.84	128	31
258	smoothie de frutas	8.41	188	31
259	café expresso	31.25	92	31
260	leite batido com frutas	9.20	67	31
261	licor de café	13.01	174	31
262	suco de laranja	13.97	197	31
263	chá verde	8.22	114	31
264	chocolate quente	30.92	179	31
265	infusão de ervas	16.26	103	31
266	 quiche lorraine	50.84	63	17
267	 madeleines	78.51	181	17
268	 fricassée de poulet	61.65	65	17
269	 steak tartare	53.15	163	17
270	 entrecôte com molho béarnaise	74.41	197	17
271	 canard à lorange	42.82	183	17
272	 moules marinières	69.58	139	17
273	 soupe à l\\oignon	49.36	176	17
274	 chateaubriand	76.43	174	17
275	 steak au poivre	32.69	55	17
276	 coq au vin	18.08	62	17
277	 brandade de morue	22.06	82	17
278	 salade niçoise	50.05	56	17
279	 ratatouille	41.07	140	17
280	 crepe de morango	23.72	184	17
281	 vol-au-vent	53.85	106	17
282	 magret de canard	23.60	179	17
283	 tarte au citron	55.66	85	17
284	 pain au chocolat	50.29	179	17
285	 cassoulet	42.41	119	17
286	 boeuf bourguignon	14.49	115	17
287	 brioche	56.38	61	17
288	 bouillabaisse	71.67	127	17
289	croissant	60.64	83	17
290	 omelette aux fines herbes	18.73	76	17
291	 escargot	21.57	86	17
292	 navarin dagneau	47.78	140	17
293	 baguette com manteiga	68.16	131	17
294	 pain perdu	61.28	117	17
295	 armagnac	33.90	129	17
296	 suco de pera	31.04	77	17
297	 chá de camomila	13.00	173	17
298	 grand marnier	13.59	174	17
299	 suco de cranberry	27.44	164	17
300	 pastis	32.22	167	17
301	 suco de maçã	27.12	97	17
302	 smoothie de frutas vermelhas	27.90	119	17
303	 leite fresco	30.75	125	17
304	 suco de laranja	17.95	119	17
305	 kombucha de limão	16.79	115	17
306	 café preto	25.52	122	17
307	 suco de toranja	27.28	199	17
308	 vinho tinto	34.46	179	17
309	 champanhe	25.20	131	17
310	 quiche lorraine	50.84	63	24
311	 madeleines	78.51	181	24
312	 fricassée de poulet	61.65	65	24
313	 steak tartare	53.15	163	24
314	 entrecôte com molho béarnaise	74.41	197	24
315	 canard à lorange	42.82	183	24
316	 moules marinières	69.58	139	24
317	 soupe à l\\oignon	49.36	176	24
318	 chateaubriand	76.43	174	24
319	 steak au poivre	32.69	55	24
320	 coq au vin	18.08	62	24
321	 brandade de morue	22.06	82	24
322	 salade niçoise	50.05	56	24
323	 ratatouille	41.07	140	24
324	 crepe de morango	23.72	184	24
325	 vol-au-vent	53.85	106	24
326	 magret de canard	23.60	179	24
327	 tarte au citron	55.66	85	24
328	 pain au chocolat	50.29	179	24
329	 cassoulet	42.41	119	24
330	 boeuf bourguignon	14.49	115	24
331	 brioche	56.38	61	24
332	 bouillabaisse	71.67	127	24
333	croissant	60.64	83	24
334	 omelette aux fines herbes	18.73	76	24
335	 escargot	21.57	86	24
336	 navarin dagneau	47.78	140	24
337	 baguette com manteiga	68.16	131	24
338	 pain perdu	61.28	117	24
339	 armagnac	33.90	129	24
340	 suco de pera	31.04	77	24
341	 chá de camomila	13.00	173	24
342	 grand marnier	13.59	174	24
343	 suco de cranberry	27.44	164	24
344	 pastis	32.22	167	24
345	 suco de maçã	27.12	97	24
346	 smoothie de frutas vermelhas	27.90	119	24
347	 leite fresco	30.75	125	24
348	 suco de laranja	17.95	119	24
349	 kombucha de limão	16.79	115	24
350	 café preto	25.52	122	24
351	 suco de toranja	27.28	199	24
352	 vinho tinto	34.46	179	24
353	 champanhe	25.20	131	24
354	tiramisu	43.87	157	16
355	penne allarrabbiata	42.92	62	16
356	cappuccino	71.47	165	16
357	tagliatelle bolognese	76.35	94	16
358	ravioli de queijo	71.23	67	16
359	peixe assado com ervas	22.25	107	16
360	taralli	79.74	158	16
361	lasanha	61.76	193	16
362	ossobuco	52.88	126	16
363	cordeiro assado	76.17	149	16
364	sopa minestrone	56.00	149	16
365	focaccia	67.41	65	16
366	pão com nutella	72.73	102	16
367	cornetto	60.96	177	16
368	sfogliatella	50.94	124	16
369	risotto de frutos do mar	58.18	87	16
370	ricotta com mel	56.48	137	16
371	gnocchi al pesto	40.47	126	16
372	polenta	26.89	66	16
373	bruschetta	60.22	95	16
374	pizza margherita	34.99	56	16
375	carpaccio	62.67	117	16
376	ensalada caprese	69.23	173	16
377	pão ciabatta	53.37	151	16
378	saltimbocca	15.28	88	16
379	risotto milanese	22.57	55	16
380	panna cotta	71.17	67	16
381	brioche com café	35.82	132	16
382	spaghetti carbonara	66.23	125	16
383	água com gás	27.16	84	16
384	negroni	32.97	78	16
385	chocolate quente	34.39	190	16
386	suco de pera	17.68	54	16
387	água	21.38	69	16
388	água tônica	16.17	133	16
389	chá gelado de limão	34.22	200	16
390	campari	31.72	90	16
391	smoothie de frutas vermelhas	18.65	141	16
392	suco de abacaxi	9.87	112	16
393	vermute rosso	10.17	119	16
394	infusão de ervas	17.38	172	16
395	suco de maçã	33.06	50	16
396	vinho tinto	33.53	60	16
397	grappa	20.03	102	16
398	tiramisu	43.87	157	21
399	penne allarrabbiata	42.92	62	21
400	cappuccino	71.47	165	21
401	tagliatelle bolognese	76.35	94	21
402	ravioli de queijo	71.23	67	21
403	peixe assado com ervas	22.25	107	21
404	taralli	79.74	158	21
405	lasanha	61.76	193	21
406	ossobuco	52.88	126	21
407	cordeiro assado	76.17	149	21
408	sopa minestrone	56.00	149	21
409	focaccia	67.41	65	21
410	pão com nutella	72.73	102	21
411	cornetto	60.96	177	21
412	sfogliatella	50.94	124	21
413	risotto de frutos do mar	58.18	87	21
414	ricotta com mel	56.48	137	21
415	gnocchi al pesto	40.47	126	21
416	polenta	26.89	66	21
417	bruschetta	60.22	95	21
418	pizza margherita	34.99	56	21
419	carpaccio	62.67	117	21
420	ensalada caprese	69.23	173	21
421	pão ciabatta	53.37	151	21
422	saltimbocca	15.28	88	21
423	risotto milanese	22.57	55	21
424	panna cotta	71.17	67	21
425	brioche com café	35.82	132	21
426	spaghetti carbonara	66.23	125	21
427	água com gás	27.16	84	21
428	negroni	32.97	78	21
429	chocolate quente	34.39	190	21
430	suco de pera	17.68	54	21
431	água	21.38	69	21
432	água tônica	16.17	133	21
433	chá gelado de limão	34.22	200	21
434	campari	31.72	90	21
435	smoothie de frutas vermelhas	18.65	141	21
436	suco de abacaxi	9.87	112	21
437	vermute rosso	10.17	119	21
438	infusão de ervas	17.38	172	21
439	suco de maçã	33.06	50	21
440	vinho tinto	33.53	60	21
441	grappa	20.03	102	21
442	tiramisu	43.87	157	29
443	penne allarrabbiata	42.92	62	29
444	cappuccino	71.47	165	29
445	tagliatelle bolognese	76.35	94	29
446	ravioli de queijo	71.23	67	29
447	peixe assado com ervas	22.25	107	29
448	taralli	79.74	158	29
449	lasanha	61.76	193	29
450	ossobuco	52.88	126	29
451	cordeiro assado	76.17	149	29
452	sopa minestrone	56.00	149	29
453	focaccia	67.41	65	29
454	pão com nutella	72.73	102	29
455	cornetto	60.96	177	29
456	sfogliatella	50.94	124	29
457	risotto de frutos do mar	58.18	87	29
458	ricotta com mel	56.48	137	29
459	gnocchi al pesto	40.47	126	29
460	polenta	26.89	66	29
461	bruschetta	60.22	95	29
462	pizza margherita	34.99	56	29
463	carpaccio	62.67	117	29
464	ensalada caprese	69.23	173	29
465	pão ciabatta	53.37	151	29
466	saltimbocca	15.28	88	29
467	risotto milanese	22.57	55	29
468	panna cotta	71.17	67	29
469	brioche com café	35.82	132	29
470	spaghetti carbonara	66.23	125	29
471	água com gás	27.16	84	29
472	negroni	32.97	78	29
473	chocolate quente	34.39	190	29
474	suco de pera	17.68	54	29
475	água	21.38	69	29
476	água tônica	16.17	133	29
477	chá gelado de limão	34.22	200	29
478	campari	31.72	90	29
479	smoothie de frutas vermelhas	18.65	141	29
480	suco de abacaxi	9.87	112	29
481	vermute rosso	10.17	119	29
482	infusão de ervas	17.38	172	29
483	suco de maçã	33.06	50	29
484	vinho tinto	33.53	60	29
485	grappa	20.03	102	29
486	tiramisu	43.87	157	32
487	penne allarrabbiata	42.92	62	32
488	cappuccino	71.47	165	32
489	tagliatelle bolognese	76.35	94	32
490	ravioli de queijo	71.23	67	32
491	peixe assado com ervas	22.25	107	32
492	taralli	79.74	158	32
493	lasanha	61.76	193	32
494	ossobuco	52.88	126	32
495	cordeiro assado	76.17	149	32
496	sopa minestrone	56.00	149	32
497	focaccia	67.41	65	32
498	pão com nutella	72.73	102	32
499	cornetto	60.96	177	32
500	sfogliatella	50.94	124	32
501	risotto de frutos do mar	58.18	87	32
502	ricotta com mel	56.48	137	32
503	gnocchi al pesto	40.47	126	32
504	polenta	26.89	66	32
505	bruschetta	60.22	95	32
506	pizza margherita	34.99	56	32
507	carpaccio	62.67	117	32
508	ensalada caprese	69.23	173	32
509	pão ciabatta	53.37	151	32
510	saltimbocca	15.28	88	32
511	risotto milanese	22.57	55	32
512	panna cotta	71.17	67	32
513	brioche com café	35.82	132	32
514	spaghetti carbonara	66.23	125	32
515	água com gás	27.16	84	32
516	negroni	32.97	78	32
517	chocolate quente	34.39	190	32
518	suco de pera	17.68	54	32
519	água	21.38	69	32
520	água tônica	16.17	133	32
521	chá gelado de limão	34.22	200	32
522	campari	31.72	90	32
523	smoothie de frutas vermelhas	18.65	141	32
524	suco de abacaxi	9.87	112	32
525	vermute rosso	10.17	119	32
526	infusão de ervas	17.38	172	32
527	suco de maçã	33.06	50	32
528	vinho tinto	33.53	60	32
529	grappa	20.03	102	32
530	curry goat	29.87	78	15
531	pão coco	67.58	105	15
532	steamed fish	74.80	110	15
533	bammy	32.42	187	15
534	frango ensopado	26.48	157	15
535	mingau de milho	77.83	83	15
536	curry de vegetais	39.17	129	15
537	banana cozida com carne	27.39	134	15
538	johnnycakes	41.14	50	15
539	mingau de banana	60.81	152	15
540	sopa de carne de porco	62.65	159	15
541	escovitch fish	41.21	62	15
542	curry de frutos do mar	29.94	110	15
543	sopa de ervilha vermelha	69.87	197	15
544	jerk chicken	61.57	136	15
545	sopa de abóbora	26.42	62	15
546	ackee and saltfish	29.39	195	15
547	pepper pot soup	34.71	197	15
548	brown stew chicken	62.67	161	15
549	pão de banana frito com camar	72.88	199	15
550	plantains fritos	50.75	114	15
551	festival	16.27	103	15
552	jerk pork	66.81	193	15
553	oxtail stew	15.54	90	15
554	patties jamaicanas	43.09	124	15
555	run down	53.99	143	15
556	callaloo	51.52	113	15
557	rice and peas	57.32	159	15
558	camarão ao coco	38.23	53	15
559	limonada	15.12	141	15
560	mojito jamaicano	20.38	139	15
561	chá de ervas	13.56	63	15
562	suco de guava	28.38	136	15
563	água de coco	10.34	117	15
564	chá de hibisco	11.69	75	15
565	suco de beterraba	19.94	100	15
566	rum cream	19.57	62	15
567	dragon stout	8.08	56	15
568	rum punch	18.79	198	15
569	rum envelhecido	33.01	138	15
570	suco de manga	34.02	78	15
571	red stripe (cerveja)	21.64	128	15
572	suco de melancia	13.86	160	15
573	leite maltado	10.91	175	15
574	chá verde	18.12	148	13
575	curry japonês	58.62	163	13
576	tofu	71.48	186	13
577	udon	78.22	139	13
578	tempurá	32.15	190	13
579	okonomiyaki	40.09	107	13
580	natto	49.11	113	13
581	sashimi	14.01	119	13
582	onigiri	19.65	78	13
583	sukiyaki	24.78	83	13
584	peixe grelhado com molho teri	17.39	62	13
585	ameixa umeboshi	27.90	164	13
586	takoyaki	65.84	137	13
587	tonkatsu	68.28	67	13
588	sopa de tofu	24.13	165	13
589	tamagoyaki (omelete japonesa)	53.69	167	13
590	sopa de soba	58.35	93	13
591	chawanmushi	31.94	145	13
592	peixe grelhado	36.69	93	13
593	gohan (arroz branco)	21.09	59	13
594	sopa de missô	35.83	177	13
595	katsudon	41.73	62	13
596	shabu-shabu	64.95	77	13
597	yakiniku	75.41	90	13
598	algas nori	22.69	184	13
599	ramen	71.56	184	13
600	sushi	37.55	52	13
601	bento box completo	45.37	194	13
602	gyudon	52.92	188	13
603	kombucha de gengibre	12.18	117	13
604	coquetel de lichia	13.39	118	13
605	água	30.46	153	13
606	água com gás	18.69	91	13
607	shochu com água quente	31.43	80	13
608	chá preto	27.36	152	13
609	leite de soja	18.85	66	13
610	saquê	14.26	165	13
611	suco de ameixa japonesa	34.55	68	13
612	suco de laranja	27.15	94	13
613	suco de manga	18.94	131	13
614	saquê doce	25.50	136	13
615	cerveja artesanal japonesa	20.11	153	13
616	chá de hortelã	9.77	52	13
617	chá verde	18.12	148	14
618	curry japonês	58.62	163	14
619	tofu	71.48	186	14
620	udon	78.22	139	14
621	tempurá	32.15	190	14
622	okonomiyaki	40.09	107	14
623	natto	49.11	113	14
624	sashimi	14.01	119	14
625	onigiri	19.65	78	14
626	sukiyaki	24.78	83	14
627	peixe grelhado com molho teri	17.39	62	14
628	ameixa umeboshi	27.90	164	14
629	takoyaki	65.84	137	14
630	tonkatsu	68.28	67	14
631	sopa de tofu	24.13	165	14
632	tamagoyaki (omelete japonesa)	53.69	167	14
633	sopa de soba	58.35	93	14
634	chawanmushi	31.94	145	14
635	peixe grelhado	36.69	93	14
636	gohan (arroz branco)	21.09	59	14
637	sopa de missô	35.83	177	14
638	katsudon	41.73	62	14
639	shabu-shabu	64.95	77	14
640	yakiniku	75.41	90	14
641	algas nori	22.69	184	14
642	ramen	71.56	184	14
643	sushi	37.55	52	14
644	bento box completo	45.37	194	14
645	gyudon	52.92	188	14
646	kombucha de gengibre	12.18	117	14
647	coquetel de lichia	13.39	118	14
648	água	30.46	153	14
649	água com gás	18.69	91	14
650	shochu com água quente	31.43	80	14
651	chá preto	27.36	152	14
652	leite de soja	18.85	66	14
653	saquê	14.26	165	14
654	suco de ameixa japonesa	34.55	68	14
655	suco de laranja	27.15	94	14
656	suco de manga	18.94	131	14
657	saquê doce	25.50	136	14
658	cerveja artesanal japonesa	20.11	153	14
659	chá de hortelã	9.77	52	14
660	chá verde	18.12	148	28
661	curry japonês	58.62	163	28
662	tofu	71.48	186	28
663	udon	78.22	139	28
664	tempurá	32.15	190	28
665	okonomiyaki	40.09	107	28
666	natto	49.11	113	28
667	sashimi	14.01	119	28
668	onigiri	19.65	78	28
669	sukiyaki	24.78	83	28
670	peixe grelhado com molho teri	17.39	62	28
671	ameixa umeboshi	27.90	164	28
672	takoyaki	65.84	137	28
673	tonkatsu	68.28	67	28
674	sopa de tofu	24.13	165	28
675	tamagoyaki (omelete japonesa)	53.69	167	28
676	sopa de soba	58.35	93	28
677	chawanmushi	31.94	145	28
678	peixe grelhado	36.69	93	28
679	gohan (arroz branco)	21.09	59	28
680	sopa de missô	35.83	177	28
681	katsudon	41.73	62	28
682	shabu-shabu	64.95	77	28
683	yakiniku	75.41	90	28
684	algas nori	22.69	184	28
685	ramen	71.56	184	28
686	sushi	37.55	52	28
687	bento box completo	45.37	194	28
688	gyudon	52.92	188	28
689	kombucha de gengibre	12.18	117	28
690	coquetel de lichia	13.39	118	28
691	água	30.46	153	28
692	água com gás	18.69	91	28
693	shochu com água quente	31.43	80	28
694	chá preto	27.36	152	28
695	leite de soja	18.85	66	28
696	saquê	14.26	165	28
697	suco de ameixa japonesa	34.55	68	28
698	suco de laranja	27.15	94	28
699	suco de manga	18.94	131	28
700	saquê doce	25.50	136	28
701	cerveja artesanal japonesa	20.11	153	28
702	chá de hortelã	9.77	52	28
703	ovos mexidos com chorizo	50.03	75	23
704	chiles en nogada	59.13	155	23
705	cochinita pibil	69.91	182	23
706	chocolate quente com pão	23.33	138	23
707	tamales	46.47	131	23
708	tacos de pescado	14.99	105	23
709	sopa azteca	59.95	74	23
710	mole poblano	20.11	98	23
711	frutas frescas com limão e ch	28.65	155	23
712	feijão refrito	74.86	68	23
713	torta mexicana	44.26	89	23
714	huevos rancheros	62.40	78	23
715	chile relleno	16.35	190	23
716	camarones a la diabla	14.21	183	23
717	quesadillas	43.68	123	23
718	carne asada	46.99	126	23
719	sopa de tortilla	77.69	185	23
720	arroz mexicano	54.21	61	23
721	torradas com guacamole	59.91	79	23
722	birria	35.93	150	23
723	pan dulce	50.87	182	23
724	burritos de café da manhã	53.94	197	23
725	ensalada de nopales	44.88	98	23
726	quesadillas de queijo	51.84	193	23
727	sopa de feijão	22.41	195	23
728	sopa de milho	43.55	176	23
729	enchiladas	37.60	104	23
730	pozole	35.13	79	23
731	tacos al pastor	62.87	63	23
732	michelada	26.80	102	23
733	margarita	24.86	84	23
734	sangrita	8.16	138	23
735	tequila	31.81	56	23
736	licor de café	31.36	173	23
737	suco de laranja	24.19	181	23
738	suco de maracujá	29.88	190	23
739	mojito mexicano	34.66	149	23
740	pulque	32.62	162	23
741	horchata	10.28	191	23
742	suco de manga	32.89	103	23
743	jamaica (hibisco)	19.66	54	23
744	mezcal	8.29	133	23
745	suco de toranja	33.47	111	23
746	ovos mexidos com chorizo	50.03	75	25
747	chiles en nogada	59.13	155	25
748	cochinita pibil	69.91	182	25
749	chocolate quente com pão	23.33	138	25
750	tamales	46.47	131	25
751	tacos de pescado	14.99	105	25
752	sopa azteca	59.95	74	25
753	mole poblano	20.11	98	25
754	frutas frescas com limão e ch	28.65	155	25
755	feijão refrito	74.86	68	25
756	torta mexicana	44.26	89	25
757	huevos rancheros	62.40	78	25
758	chile relleno	16.35	190	25
759	camarones a la diabla	14.21	183	25
760	quesadillas	43.68	123	25
761	carne asada	46.99	126	25
762	sopa de tortilla	77.69	185	25
763	arroz mexicano	54.21	61	25
764	torradas com guacamole	59.91	79	25
765	birria	35.93	150	25
766	pan dulce	50.87	182	25
767	burritos de café da manhã	53.94	197	25
768	ensalada de nopales	44.88	98	25
769	quesadillas de queijo	51.84	193	25
770	sopa de feijão	22.41	195	25
771	sopa de milho	43.55	176	25
772	enchiladas	37.60	104	25
773	pozole	35.13	79	25
774	tacos al pastor	62.87	63	25
775	michelada	26.80	102	25
776	margarita	24.86	84	25
777	sangrita	8.16	138	25
778	tequila	31.81	56	25
779	licor de café	31.36	173	25
780	suco de laranja	24.19	181	25
781	suco de maracujá	29.88	190	25
782	mojito mexicano	34.66	149	25
783	pulque	32.62	162	25
784	horchata	10.28	191	25
785	suco de manga	32.89	103	25
786	jamaica (hibisco)	19.66	54	25
787	mezcal	8.29	133	25
788	suco de toranja	33.47	111	25
789	ovos mexidos com chorizo	50.03	75	26
790	chiles en nogada	59.13	155	26
791	cochinita pibil	69.91	182	26
792	chocolate quente com pão	23.33	138	26
793	tamales	46.47	131	26
794	tacos de pescado	14.99	105	26
795	sopa azteca	59.95	74	26
796	mole poblano	20.11	98	26
797	frutas frescas com limão e ch	28.65	155	26
798	feijão refrito	74.86	68	26
799	torta mexicana	44.26	89	26
800	huevos rancheros	62.40	78	26
801	chile relleno	16.35	190	26
802	camarones a la diabla	14.21	183	26
803	quesadillas	43.68	123	26
804	carne asada	46.99	126	26
805	sopa de tortilla	77.69	185	26
806	arroz mexicano	54.21	61	26
807	torradas com guacamole	59.91	79	26
808	birria	35.93	150	26
809	pan dulce	50.87	182	26
810	burritos de café da manhã	53.94	197	26
811	ensalada de nopales	44.88	98	26
812	quesadillas de queijo	51.84	193	26
813	sopa de feijão	22.41	195	26
814	sopa de milho	43.55	176	26
815	enchiladas	37.60	104	26
816	pozole	35.13	79	26
817	tacos al pastor	62.87	63	26
818	michelada	26.80	102	26
819	margarita	24.86	84	26
820	sangrita	8.16	138	26
821	tequila	31.81	56	26
822	licor de café	31.36	173	26
823	suco de laranja	24.19	181	26
824	suco de maracujá	29.88	190	26
825	mojito mexicano	34.66	149	26
826	pulque	32.62	162	26
827	horchata	10.28	191	26
828	suco de manga	32.89	103	26
829	jamaica (hibisco)	19.66	54	26
830	mezcal	8.29	133	26
831	suco de toranja	33.47	111	26
832	Arroz pegajoso com durião	24.87	169	20
833	Frango ao molho de gengibre.	79.42	180	20
834	Camarão empanado com molho de	24.70	153	20
835	Frango com castanha de caju	18.20	151	20
836	Tom Kha Gai	39.25	116	20
837	Arroz frito tailandês	66.22	61	20
838	Porco assado com molho de tam	52.14	152	20
839	Pad Thai de camarão	74.44	186	20
840	Almôndegas tailandesas com mo	13.68	165	20
841	Carne marinada com pimenta e	36.99	142	20
842	Peixe ao vapor com limão e er	41.50	149	20
843	Costela de porco ao curry ma	12.65	98	20
844	Curry vermelho de porco	41.23	103	20
845	Pad Thai vegetariano	29.29	194	20
846	Tortinha de coco	50.22	193	20
847	Salada de macarrão de vidro	38.51	81	20
848	Peixe frito com molho de tama	41.00	75	20
849	Frango grelhado com molho pic	52.66	75	20
850	Berinjela ao curry verde	32.54	97	20
851	Panquecas tailandesas	46.02	146	20
852	Curry amarelo de legumes	58.30	156	20
853	Macarrão frito com manjericão	79.00	185	20
854	Satay de frango	68.51	158	20
855	Tom Yum	40.47	152	20
856	Curry verde de frango	40.48	129	20
857	Pato assado ao curry	69.48	186	20
858	Bolinhos de arroz frito	79.75	76	20
859	Arroz pegajoso com manga	36.02	144	20
860	Porco agridoce	23.18	178	20
861	Salada de mamão verde	75.49	151	20
862	suco de maracujá	17.71	112	20
863	suco de melancia	33.03	72	20
864	cerveja Singha	11.29	127	20
865	água de coco	19.36	186	20
866	suco de manga	33.53	76	20
867	mojito tailandês	31.13	188	20
868	smoothie de coco	13.73	138	20
869	cerveja Chang	14.51	68	20
870	sangria tailandesa com frutas	27.78	157	20
871	Margarita de manga com piment	24.01	54	20
872	cerveja Leo	8.64	166	20
873	suco de abacaxi	30.47	195	20
874	água	15.85	78	20
875	coquetel de lichia com vodka	10.97	181	20
876	chá tailandês com leite (Cha 	28.92	99	20
\.


--
-- TOC entry 5206 (class 0 OID 40460)
-- Dependencies: 259
-- Data for Name: produto_frigobar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produto_frigobar (id_produto_frigobar, nome, valor, estoque, id_acomodacao) FROM stdin;
1	Castanhas Agtal               	16.00	8	10
2	Água Tônica Schweppes         	34.00	2	157
3	Cerveja Heineken              	48.00	4	120
4	Castanhas Agtal               	34.00	1	194
5	Amendoim Elma Chips           	50.00	3	33
6	Refrigerante Coca-Cola        	50.00	2	49
7	Biscoitos Oreo                	45.00	0	158
8	Balas Halls                   	40.00	7	108
9	Biscoitos Oreo                	37.00	3	72
10	Chocolate KitKat              	37.00	5	129
11	Biscoitos Oreo                	21.00	8	27
12	Refrigerante Coca-Cola        	45.00	5	84
13	Whisky Johnnie Walker         	42.00	7	154
14	Salgadinhos Doritos           	46.00	4	80
15	Iogurte Nestlé                	43.00	2	136
16	Castanhas Agtal               	43.00	0	158
17	Castanhas Agtal               	34.00	9	57
18	Iogurte Nestlé                	26.00	3	69
19	Suco Del Valle                	19.00	4	178
20	Refrigerante Coca-Cola        	33.00	3	122
21	Gelatina Royal                	14.00	9	186
22	Suco Del Valle                	36.00	8	49
23	Água Tônica Schweppes         	43.00	6	179
24	Sanduíche Pronto Seara        	34.00	0	195
25	Gelatina Royal                	37.00	6	157
26	Água Crystal                  	18.00	9	44
27	Refrigerante Coca-Cola        	25.00	8	122
28	Salgadinhos Doritos           	17.00	3	177
29	Água Crystal                  	13.00	4	107
30	Chá Lipton                    	43.00	5	86
31	Amendoim Elma Chips           	13.00	5	2
32	Refrigerante Coca-Cola        	19.00	4	93
33	Barra de Cereal Nutry         	43.00	5	96
34	Gelatina Royal                	12.00	3	26
35	Balas Halls                   	14.00	8	2
36	Suco Del Valle                	22.00	6	1
37	Castanhas Agtal               	50.00	5	135
38	Castanhas Agtal               	46.00	7	17
39	Biscoitos Oreo                	14.00	0	71
40	Castanhas Agtal               	21.00	2	49
41	Biscoitos Oreo                	35.00	6	51
42	Chá Lipton                    	18.00	2	164
43	Água Tônica Schweppes         	20.00	7	3
44	Gelatina Royal                	31.00	6	185
45	Suco Del Valle                	17.00	7	73
46	Energético Red Bull           	41.00	9	68
47	Balas Halls                   	40.00	9	121
48	Chocolate KitKat              	33.00	6	126
49	Água Tônica Schweppes         	41.00	2	77
50	Biscoitos Oreo                	43.00	5	23
51	Amendoim Elma Chips           	32.00	1	29
52	Mini Pizza Sadia              	17.00	3	78
53	Água Crystal                  	32.00	4	200
54	Salgadinhos Doritos           	28.00	2	185
55	Gelatina Royal                	28.00	4	84
56	Barra de Cereal Nutry         	22.00	1	178
57	Biscoitos Oreo                	41.00	0	180
58	Castanhas Agtal               	27.00	9	153
59	Gelatina Royal                	39.00	4	129
60	Refrigerante Sprite           	14.00	5	29
61	Mini Pizza Sadia              	32.00	8	103
62	Suco Del Valle                	40.00	5	139
63	Biscoitos Oreo                	24.00	7	165
64	Amendoim Elma Chips           	49.00	3	70
65	Chá Lipton                    	18.00	8	72
66	Iogurte Nestlé                	37.00	0	165
67	Castanhas Agtal               	19.00	8	27
68	Suco Del Valle                	34.00	1	125
69	Iogurte Nestlé                	16.00	2	9
70	Amendoim Elma Chips           	40.00	7	166
71	Mini Pizza Sadia              	21.00	7	178
72	Amendoim Elma Chips           	25.00	0	72
73	Biscoitos Oreo                	21.00	9	197
74	Água Tônica Schweppes         	12.00	5	120
75	Cerveja Heineken              	29.00	6	171
76	Cerveja Heineken              	20.00	3	4
77	Mini Pizza Sadia              	36.00	3	66
78	Mini Pizza Sadia              	28.00	6	82
79	Cerveja Heineken              	32.00	9	163
80	Amendoim Elma Chips           	41.00	2	75
81	Iogurte Nestlé                	26.00	0	29
82	Salgadinhos Doritos           	45.00	5	184
83	Energético Red Bull           	30.00	3	199
84	Cerveja Heineken              	36.00	7	13
85	Gelatina Royal                	49.00	3	166
86	Amendoim Elma Chips           	16.00	8	86
87	Sanduíche Pronto Seara        	45.00	2	97
88	Barra de Cereal Nutry         	20.00	3	29
89	Biscoitos Oreo                	27.00	2	142
90	Barra de Cereal Nutry         	31.00	6	199
91	Chocolate KitKat              	15.00	6	50
92	Amendoim Elma Chips           	21.00	1	81
93	Castanhas Agtal               	15.00	5	108
94	Castanhas Agtal               	28.00	5	84
95	Salgadinhos Doritos           	24.00	8	198
96	Sanduíche Pronto Seara        	28.00	2	139
97	Iogurte Nestlé                	25.00	3	164
98	Whisky Johnnie Walker         	32.00	8	115
99	Energético Red Bull           	39.00	8	154
100	Sanduíche Pronto Seara        	30.00	3	19
101	Biscoitos Oreo                	17.00	6	115
102	Salgadinhos Doritos           	43.00	2	89
103	Água Tônica Schweppes         	39.00	0	65
104	Mini Pizza Sadia              	33.00	5	72
105	Chocolate KitKat              	12.00	1	50
106	Mini Pizza Sadia              	17.00	5	134
107	Cerveja Heineken              	16.00	8	50
108	Chá Lipton                    	21.00	2	137
109	Sanduíche Pronto Seara        	50.00	8	10
110	Salgadinhos Doritos           	36.00	5	83
111	Suco Del Valle                	39.00	2	164
112	Whisky Johnnie Walker         	44.00	4	182
113	Chocolate KitKat              	13.00	7	99
114	Balas Halls                   	47.00	8	17
115	Sanduíche Pronto Seara        	19.00	6	120
116	Barra de Cereal Nutry         	27.00	7	159
117	Cerveja Heineken              	44.00	6	80
118	Mini Pizza Sadia              	28.00	0	195
119	Castanhas Agtal               	37.00	6	45
120	Salgadinhos Doritos           	12.00	1	75
121	Barra de Cereal Nutry         	44.00	5	39
122	Gelatina Royal                	50.00	8	188
123	Barra de Cereal Nutry         	37.00	4	194
124	Energético Red Bull           	41.00	4	94
125	Chocolate KitKat              	19.00	1	36
126	Balas Halls                   	17.00	2	140
127	Salgadinhos Doritos           	34.00	1	79
128	Água Crystal                  	35.00	6	17
129	Salgadinhos Doritos           	16.00	2	20
130	Mini Pizza Sadia              	15.00	3	10
131	Castanhas Agtal               	24.00	1	165
132	Chocolate KitKat              	46.00	2	196
133	Biscoitos Oreo                	44.00	8	67
134	Gelatina Royal                	28.00	9	49
135	Barra de Cereal Nutry         	28.00	0	157
136	Chá Lipton                    	18.00	0	51
137	Sanduíche Pronto Seara        	45.00	0	125
138	Mini Pizza Sadia              	37.00	5	131
139	Amendoim Elma Chips           	32.00	8	126
140	Energético Red Bull           	43.00	7	66
141	Amendoim Elma Chips           	18.00	5	39
142	Iogurte Nestlé                	18.00	1	1
143	Chá Lipton                    	32.00	4	191
144	Amendoim Elma Chips           	40.00	0	188
145	Balas Halls                   	34.00	0	65
146	Salgadinhos Doritos           	16.00	6	101
147	Energético Red Bull           	37.00	4	15
148	Mini Pizza Sadia              	16.00	6	27
149	Balas Halls                   	28.00	6	51
150	Whisky Johnnie Walker         	28.00	6	151
151	Suco Del Valle                	40.00	1	31
152	Suco Del Valle                	21.00	6	15
153	Mini Pizza Sadia              	27.00	4	92
154	Água Crystal                  	37.00	4	51
155	Salgadinhos Doritos           	47.00	1	67
156	Refrigerante Sprite           	24.00	1	79
157	Chocolate KitKat              	18.00	2	10
158	Chocolate KitKat              	25.00	3	95
159	Energético Red Bull           	26.00	7	154
160	Balas Halls                   	32.00	8	126
161	Iogurte Nestlé                	28.00	7	19
162	Chá Lipton                    	43.00	3	129
163	Suco Del Valle                	17.00	3	63
164	Refrigerante Coca-Cola        	39.00	4	41
165	Chocolate KitKat              	46.00	2	159
166	Balas Halls                   	48.00	3	80
167	Cerveja Heineken              	20.00	8	142
168	Sanduíche Pronto Seara        	18.00	0	199
169	Cerveja Heineken              	22.00	7	34
170	Água Crystal                  	28.00	6	24
171	Chocolate KitKat              	20.00	8	33
172	Castanhas Agtal               	45.00	6	51
173	Água Tônica Schweppes         	32.00	9	11
174	Mini Pizza Sadia              	26.00	0	8
175	Iogurte Nestlé                	33.00	8	184
176	Barra de Cereal Nutry         	41.00	9	157
177	Energético Red Bull           	12.00	3	162
178	Mini Pizza Sadia              	43.00	1	19
179	Refrigerante Sprite           	39.00	3	161
180	Whisky Johnnie Walker         	22.00	6	26
181	Iogurte Nestlé                	41.00	3	137
182	Iogurte Nestlé                	40.00	5	119
183	Refrigerante Coca-Cola        	19.00	4	122
184	Água Crystal                  	29.00	6	8
185	Balas Halls                   	35.00	7	71
186	Cerveja Heineken              	50.00	5	127
187	Suco Del Valle                	15.00	7	92
188	Barra de Cereal Nutry         	27.00	5	33
189	Chocolate KitKat              	31.00	9	44
190	Suco Del Valle                	14.00	1	20
191	Energético Red Bull           	24.00	0	155
192	Chocolate KitKat              	29.00	9	10
193	Salgadinhos Doritos           	28.00	6	168
194	Chocolate KitKat              	32.00	2	96
195	Sanduíche Pronto Seara        	38.00	6	96
196	Gelatina Royal                	30.00	5	133
197	Água Crystal                  	41.00	0	127
198	Água Tônica Schweppes         	14.00	2	90
199	Sanduíche Pronto Seara        	23.00	7	160
200	Barra de Cereal Nutry         	28.00	2	17
201	Cerveja Heineken              	23.00	6	169
202	Energético Red Bull           	34.00	5	69
203	Gelatina Royal                	18.00	7	57
204	Whisky Johnnie Walker         	48.00	3	136
205	Chá Lipton                    	28.00	2	57
206	Salgadinhos Doritos           	12.00	5	96
207	Balas Halls                   	36.00	2	83
208	Gelatina Royal                	20.00	5	101
209	Refrigerante Coca-Cola        	31.00	1	3
210	Refrigerante Sprite           	33.00	1	5
211	Salgadinhos Doritos           	23.00	6	123
212	Mini Pizza Sadia              	19.00	8	174
213	Suco Del Valle                	40.00	6	37
214	Água Crystal                  	12.00	4	158
215	Refrigerante Sprite           	17.00	8	29
216	Chocolate KitKat              	36.00	9	72
217	Iogurte Nestlé                	24.00	1	70
218	Biscoitos Oreo                	40.00	5	102
219	Castanhas Agtal               	47.00	1	196
220	Iogurte Nestlé                	45.00	1	33
221	Biscoitos Oreo                	48.00	6	52
222	Mini Pizza Sadia              	23.00	3	185
223	Chá Lipton                    	45.00	7	8
224	Sanduíche Pronto Seara        	47.00	4	134
225	Biscoitos Oreo                	20.00	9	87
226	Barra de Cereal Nutry         	39.00	8	92
227	Água Crystal                  	22.00	8	97
228	Biscoitos Oreo                	21.00	6	49
229	Energético Red Bull           	13.00	4	57
230	Gelatina Royal                	13.00	3	86
231	Chocolate KitKat              	30.00	8	133
232	Iogurte Nestlé                	31.00	6	36
233	Biscoitos Oreo                	36.00	3	21
234	Whisky Johnnie Walker         	13.00	2	21
235	Água Tônica Schweppes         	26.00	8	72
236	Gelatina Royal                	17.00	6	118
237	Balas Halls                   	20.00	5	191
238	Água Tônica Schweppes         	20.00	9	19
239	Chocolate KitKat              	36.00	6	177
240	Mini Pizza Sadia              	48.00	2	31
241	Energético Red Bull           	49.00	6	102
242	Energético Red Bull           	29.00	6	121
243	Refrigerante Coca-Cola        	27.00	9	145
244	Energético Red Bull           	20.00	2	178
245	Suco Del Valle                	29.00	7	1
246	Amendoim Elma Chips           	20.00	0	71
247	Cerveja Heineken              	37.00	1	71
248	Refrigerante Coca-Cola        	34.00	8	63
249	Amendoim Elma Chips           	18.00	2	195
250	Água Crystal                  	24.00	6	103
251	Chá Lipton                    	36.00	4	153
252	Refrigerante Coca-Cola        	44.00	7	55
253	Refrigerante Coca-Cola        	13.00	7	106
254	Salgadinhos Doritos           	38.00	1	171
255	Iogurte Nestlé                	23.00	4	30
256	Energético Red Bull           	20.00	4	65
257	Castanhas Agtal               	29.00	0	25
258	Água Crystal                  	34.00	1	145
259	Biscoitos Oreo                	18.00	7	198
260	Balas Halls                   	23.00	0	80
261	Iogurte Nestlé                	17.00	1	164
262	Castanhas Agtal               	47.00	5	41
263	Energético Red Bull           	16.00	0	97
264	Iogurte Nestlé                	50.00	0	101
265	Água Crystal                  	48.00	6	7
266	Cerveja Heineken              	16.00	7	117
267	Sanduíche Pronto Seara        	44.00	1	82
268	Chá Lipton                    	15.00	3	165
269	Sanduíche Pronto Seara        	44.00	6	23
270	Gelatina Royal                	17.00	9	199
271	Balas Halls                   	37.00	0	166
272	Amendoim Elma Chips           	18.00	3	86
273	Água Tônica Schweppes         	40.00	9	164
274	Amendoim Elma Chips           	16.00	1	162
275	Barra de Cereal Nutry         	14.00	8	31
276	Água Tônica Schweppes         	19.00	9	166
277	Castanhas Agtal               	36.00	4	144
278	Balas Halls                   	15.00	5	9
279	Suco Del Valle                	15.00	4	8
280	Refrigerante Coca-Cola        	30.00	7	38
281	Castanhas Agtal               	27.00	1	184
282	Refrigerante Sprite           	38.00	5	84
283	Mini Pizza Sadia              	44.00	4	93
284	Amendoim Elma Chips           	23.00	6	168
285	Balas Halls                   	27.00	3	198
286	Barra de Cereal Nutry         	49.00	9	103
287	Amendoim Elma Chips           	41.00	2	136
288	Chá Lipton                    	38.00	7	152
289	Balas Halls                   	46.00	6	200
290	Energético Red Bull           	14.00	3	63
291	Mini Pizza Sadia              	14.00	9	79
292	Biscoitos Oreo                	21.00	3	168
293	Água Tônica Schweppes         	31.00	5	102
294	Água Tônica Schweppes         	34.00	7	103
295	Sanduíche Pronto Seara        	42.00	4	99
296	Chá Lipton                    	22.00	1	3
297	Barra de Cereal Nutry         	46.00	3	131
298	Amendoim Elma Chips           	26.00	9	46
299	Sanduíche Pronto Seara        	42.00	2	97
300	Whisky Johnnie Walker         	43.00	1	8
301	Chá Lipton                    	47.00	2	180
302	Castanhas Agtal               	42.00	3	197
303	Mini Pizza Sadia              	28.00	9	19
304	Refrigerante Coca-Cola        	49.00	6	107
305	Água Crystal                  	31.00	4	82
306	Gelatina Royal                	41.00	7	150
307	Suco Del Valle                	49.00	8	113
308	Balas Halls                   	41.00	9	154
309	Refrigerante Coca-Cola        	21.00	3	128
310	Refrigerante Coca-Cola        	32.00	5	74
311	Cerveja Heineken              	20.00	2	30
312	Biscoitos Oreo                	38.00	3	100
313	Energético Red Bull           	49.00	4	180
314	Barra de Cereal Nutry         	49.00	4	189
315	Iogurte Nestlé                	25.00	8	117
316	Iogurte Nestlé                	14.00	4	77
317	Suco Del Valle                	35.00	8	73
318	Cerveja Heineken              	42.00	4	194
319	Cerveja Heineken              	13.00	6	195
320	Biscoitos Oreo                	48.00	9	131
321	Refrigerante Sprite           	21.00	0	92
322	Água Crystal                  	42.00	4	119
323	Amendoim Elma Chips           	50.00	5	194
324	Água Crystal                  	29.00	3	166
325	Cerveja Heineken              	31.00	3	174
326	Cerveja Heineken              	31.00	1	181
327	Energético Red Bull           	36.00	5	156
328	Barra de Cereal Nutry         	22.00	3	4
329	Mini Pizza Sadia              	37.00	1	163
330	Refrigerante Sprite           	18.00	0	145
331	Refrigerante Sprite           	22.00	5	195
332	Castanhas Agtal               	46.00	1	88
333	Iogurte Nestlé                	35.00	0	7
334	Sanduíche Pronto Seara        	42.00	5	8
335	Refrigerante Coca-Cola        	44.00	2	25
336	Água Crystal                  	41.00	7	11
337	Refrigerante Sprite           	37.00	0	196
338	Barra de Cereal Nutry         	47.00	4	15
339	Refrigerante Coca-Cola        	17.00	0	181
340	Gelatina Royal                	46.00	6	65
341	Balas Halls                   	35.00	5	160
342	Sanduíche Pronto Seara        	43.00	9	133
343	Barra de Cereal Nutry         	16.00	7	35
344	Barra de Cereal Nutry         	23.00	4	192
345	Castanhas Agtal               	21.00	8	21
346	Whisky Johnnie Walker         	20.00	4	122
347	Água Crystal                  	12.00	4	103
348	Balas Halls                   	15.00	7	168
349	Barra de Cereal Nutry         	45.00	1	172
350	Balas Halls                   	47.00	9	59
351	Mini Pizza Sadia              	49.00	8	97
352	Chá Lipton                    	48.00	0	41
353	Amendoim Elma Chips           	17.00	1	25
354	Mini Pizza Sadia              	20.00	3	139
355	Barra de Cereal Nutry         	18.00	2	93
356	Balas Halls                   	49.00	2	60
357	Energético Red Bull           	18.00	4	115
358	Whisky Johnnie Walker         	31.00	9	90
359	Gelatina Royal                	47.00	9	44
360	Água Tônica Schweppes         	48.00	1	6
361	Mini Pizza Sadia              	23.00	9	142
362	Cerveja Heineken              	40.00	7	163
363	Barra de Cereal Nutry         	45.00	7	37
364	Cerveja Heineken              	47.00	2	21
365	Gelatina Royal                	29.00	1	50
366	Cerveja Heineken              	42.00	8	9
367	Refrigerante Coca-Cola        	37.00	1	52
368	Balas Halls                   	15.00	6	200
369	Salgadinhos Doritos           	24.00	6	10
370	Refrigerante Sprite           	35.00	2	102
371	Barra de Cereal Nutry         	24.00	4	92
372	Barra de Cereal Nutry         	46.00	3	171
373	Sanduíche Pronto Seara        	32.00	6	7
374	Energético Red Bull           	35.00	2	37
375	Biscoitos Oreo                	18.00	3	7
376	Mini Pizza Sadia              	39.00	1	108
377	Salgadinhos Doritos           	12.00	8	160
378	Chocolate KitKat              	42.00	9	172
379	Água Tônica Schweppes         	21.00	4	175
380	Refrigerante Sprite           	18.00	1	131
381	Refrigerante Sprite           	24.00	9	70
382	Água Tônica Schweppes         	32.00	2	88
383	Cerveja Heineken              	12.00	0	49
384	Refrigerante Sprite           	27.00	4	121
385	Chocolate KitKat              	27.00	5	93
386	Sanduíche Pronto Seara        	50.00	7	17
387	Água Crystal                  	16.00	0	162
388	Chá Lipton                    	12.00	5	19
389	Mini Pizza Sadia              	44.00	0	171
390	Mini Pizza Sadia              	25.00	4	66
391	Mini Pizza Sadia              	29.00	5	96
392	Cerveja Heineken              	33.00	2	163
393	Água Tônica Schweppes         	48.00	1	81
394	Iogurte Nestlé                	28.00	6	181
395	Chá Lipton                    	26.00	4	151
396	Balas Halls                   	42.00	0	107
397	Energético Red Bull           	26.00	1	64
398	Castanhas Agtal               	26.00	0	152
399	Iogurte Nestlé                	46.00	4	77
400	Energético Red Bull           	20.00	2	66
401	Amendoim Elma Chips           	30.00	4	192
402	Energético Red Bull           	22.00	9	138
403	Cerveja Heineken              	34.00	5	174
404	Cerveja Heineken              	12.00	3	106
405	Whisky Johnnie Walker         	17.00	3	144
406	Energético Red Bull           	48.00	5	57
407	Amendoim Elma Chips           	40.00	8	157
408	Água Tônica Schweppes         	39.00	3	173
409	Refrigerante Sprite           	33.00	2	20
410	Água Crystal                  	12.00	3	74
411	Salgadinhos Doritos           	16.00	7	162
412	Iogurte Nestlé                	21.00	1	103
413	Mini Pizza Sadia              	41.00	1	87
414	Chocolate KitKat              	47.00	2	196
415	Cerveja Heineken              	40.00	0	80
416	Castanhas Agtal               	33.00	3	157
417	Chocolate KitKat              	30.00	8	108
418	Mini Pizza Sadia              	13.00	4	104
419	Balas Halls                   	12.00	9	59
420	Chá Lipton                    	45.00	8	104
421	Cerveja Heineken              	46.00	6	79
422	Suco Del Valle                	24.00	7	93
423	Barra de Cereal Nutry         	25.00	8	49
424	Sanduíche Pronto Seara        	44.00	4	155
425	Gelatina Royal                	44.00	6	175
426	Amendoim Elma Chips           	43.00	1	172
427	Água Tônica Schweppes         	28.00	9	172
428	Iogurte Nestlé                	48.00	6	115
429	Água Crystal                  	21.00	0	166
430	Biscoitos Oreo                	39.00	3	44
431	Cerveja Heineken              	30.00	6	161
432	Balas Halls                   	27.00	1	5
433	Energético Red Bull           	44.00	1	136
434	Whisky Johnnie Walker         	46.00	9	197
435	Suco Del Valle                	30.00	5	123
436	Balas Halls                   	19.00	9	85
437	Salgadinhos Doritos           	41.00	0	37
438	Chá Lipton                    	45.00	9	72
439	Gelatina Royal                	49.00	3	36
440	Cerveja Heineken              	12.00	4	28
441	Amendoim Elma Chips           	35.00	9	39
442	Sanduíche Pronto Seara        	47.00	5	84
443	Energético Red Bull           	30.00	8	108
444	Refrigerante Coca-Cola        	37.00	1	135
445	Suco Del Valle                	32.00	0	161
446	Iogurte Nestlé                	14.00	7	108
447	Água Tônica Schweppes         	49.00	1	127
448	Água Tônica Schweppes         	28.00	3	108
449	Refrigerante Sprite           	47.00	5	20
450	Sanduíche Pronto Seara        	41.00	6	59
451	Amendoim Elma Chips           	15.00	5	10
452	Água Tônica Schweppes         	32.00	4	63
453	Sanduíche Pronto Seara        	34.00	0	159
454	Mini Pizza Sadia              	38.00	9	177
455	Chocolate KitKat              	22.00	2	145
456	Gelatina Royal                	21.00	3	53
457	Balas Halls                   	22.00	4	174
458	Água Tônica Schweppes         	50.00	0	80
459	Salgadinhos Doritos           	19.00	5	194
460	Suco Del Valle                	37.00	4	139
461	Amendoim Elma Chips           	46.00	9	87
462	Água Crystal                  	49.00	9	165
463	Biscoitos Oreo                	34.00	7	151
464	Iogurte Nestlé                	27.00	0	106
465	Whisky Johnnie Walker         	14.00	7	50
466	Chocolate KitKat              	33.00	3	151
467	Mini Pizza Sadia              	38.00	5	95
468	Amendoim Elma Chips           	16.00	3	29
469	Whisky Johnnie Walker         	26.00	0	135
470	Iogurte Nestlé                	38.00	2	100
471	Refrigerante Coca-Cola        	14.00	4	76
472	Cerveja Heineken              	33.00	5	110
473	Whisky Johnnie Walker         	45.00	0	89
474	Amendoim Elma Chips           	12.00	6	179
475	Chocolate KitKat              	25.00	9	107
476	Chá Lipton                    	33.00	2	164
477	Sanduíche Pronto Seara        	43.00	6	70
478	Água Tônica Schweppes         	23.00	7	1
479	Energético Red Bull           	29.00	5	68
480	Iogurte Nestlé                	42.00	1	38
481	Refrigerante Coca-Cola        	40.00	3	199
482	Sanduíche Pronto Seara        	35.00	7	177
483	Energético Red Bull           	40.00	5	76
484	Refrigerante Coca-Cola        	27.00	6	94
485	Sanduíche Pronto Seara        	31.00	6	154
486	Água Tônica Schweppes         	33.00	6	152
487	Refrigerante Sprite           	27.00	4	165
488	Amendoim Elma Chips           	18.00	0	107
489	Suco Del Valle                	36.00	6	46
490	Chocolate KitKat              	48.00	2	179
491	Suco Del Valle                	37.00	9	150
492	Whisky Johnnie Walker         	50.00	8	42
493	Balas Halls                   	23.00	3	72
494	Chocolate KitKat              	37.00	3	157
495	Energético Red Bull           	28.00	8	90
496	Mini Pizza Sadia              	32.00	3	127
497	Chá Lipton                    	15.00	1	155
498	Chocolate KitKat              	19.00	7	131
499	Água Crystal                  	49.00	3	86
500	Água Crystal                  	27.00	9	77
501	Cerveja Heineken              	45.00	7	161
502	Refrigerante Coca-Cola        	28.00	3	52
503	Salgadinhos Doritos           	43.00	7	83
504	Chá Lipton                    	12.00	4	41
505	Suco Del Valle                	29.00	5	52
506	Refrigerante Sprite           	28.00	7	71
507	Água Crystal                  	37.00	2	74
508	Água Crystal                  	16.00	9	140
509	Gelatina Royal                	46.00	2	150
510	Mini Pizza Sadia              	28.00	8	103
511	Sanduíche Pronto Seara        	27.00	2	120
512	Mini Pizza Sadia              	19.00	4	107
513	Iogurte Nestlé                	18.00	6	166
514	Salgadinhos Doritos           	17.00	2	175
515	Cerveja Heineken              	25.00	1	143
516	Refrigerante Sprite           	27.00	5	169
517	Água Tônica Schweppes         	30.00	1	104
518	Refrigerante Coca-Cola        	24.00	6	63
519	Salgadinhos Doritos           	41.00	8	124
520	Castanhas Agtal               	25.00	3	159
521	Mini Pizza Sadia              	34.00	1	118
522	Iogurte Nestlé                	49.00	9	108
523	Biscoitos Oreo                	31.00	1	169
524	Balas Halls                   	47.00	0	11
525	Energético Red Bull           	44.00	9	123
526	Suco Del Valle                	16.00	3	108
527	Barra de Cereal Nutry         	19.00	5	174
528	Cerveja Heineken              	27.00	7	26
529	Chocolate KitKat              	20.00	2	41
530	Refrigerante Sprite           	23.00	2	120
531	Gelatina Royal                	12.00	4	34
532	Cerveja Heineken              	16.00	2	122
533	Água Tônica Schweppes         	21.00	5	137
534	Castanhas Agtal               	43.00	3	33
535	Sanduíche Pronto Seara        	27.00	5	116
536	Refrigerante Coca-Cola        	32.00	2	130
537	Água Crystal                  	20.00	8	128
538	Amendoim Elma Chips           	44.00	3	158
539	Balas Halls                   	41.00	5	67
540	Energético Red Bull           	14.00	6	74
541	Biscoitos Oreo                	33.00	3	118
542	Chocolate KitKat              	39.00	3	188
543	Refrigerante Coca-Cola        	19.00	1	11
544	Barra de Cereal Nutry         	47.00	9	137
545	Balas Halls                   	31.00	9	197
546	Água Crystal                  	39.00	1	116
547	Amendoim Elma Chips           	19.00	0	53
548	Chocolate KitKat              	19.00	3	109
549	Refrigerante Sprite           	21.00	2	27
550	Cerveja Heineken              	15.00	6	133
551	Chocolate KitKat              	12.00	4	26
552	Cerveja Heineken              	42.00	9	160
553	Refrigerante Sprite           	28.00	8	152
554	Salgadinhos Doritos           	27.00	6	178
555	Chá Lipton                    	29.00	7	26
556	Castanhas Agtal               	41.00	6	107
557	Refrigerante Coca-Cola        	48.00	1	143
558	Refrigerante Sprite           	43.00	4	101
559	Água Tônica Schweppes         	26.00	7	101
560	Refrigerante Coca-Cola        	39.00	5	191
561	Balas Halls                   	30.00	0	108
562	Água Crystal                  	13.00	1	85
563	Iogurte Nestlé                	17.00	9	57
564	Whisky Johnnie Walker         	22.00	0	13
565	Energético Red Bull           	33.00	1	74
566	Refrigerante Coca-Cola        	21.00	9	144
567	Whisky Johnnie Walker         	26.00	2	68
568	Água Tônica Schweppes         	31.00	4	92
569	Castanhas Agtal               	24.00	3	129
570	Refrigerante Coca-Cola        	30.00	9	42
571	Gelatina Royal                	47.00	2	131
572	Energético Red Bull           	50.00	2	68
573	Chá Lipton                    	25.00	2	30
574	Cerveja Heineken              	44.00	5	124
575	Água Tônica Schweppes         	39.00	3	100
576	Whisky Johnnie Walker         	35.00	6	23
577	Salgadinhos Doritos           	15.00	5	17
578	Salgadinhos Doritos           	38.00	3	104
579	Água Crystal                  	44.00	2	49
580	Sanduíche Pronto Seara        	38.00	2	162
581	Barra de Cereal Nutry         	24.00	7	124
582	Iogurte Nestlé                	42.00	6	122
583	Refrigerante Coca-Cola        	38.00	7	178
584	Biscoitos Oreo                	36.00	3	50
585	Biscoitos Oreo                	20.00	1	151
586	Chocolate KitKat              	35.00	4	44
587	Suco Del Valle                	26.00	1	148
588	Gelatina Royal                	38.00	4	27
589	Energético Red Bull           	23.00	6	52
590	Chá Lipton                    	31.00	2	62
591	Iogurte Nestlé                	32.00	7	82
592	Água Crystal                  	20.00	2	6
593	Salgadinhos Doritos           	42.00	9	103
594	Balas Halls                   	32.00	3	121
595	Gelatina Royal                	43.00	5	134
596	Chá Lipton                    	15.00	1	176
597	Água Tônica Schweppes         	47.00	5	53
598	Água Crystal                  	38.00	3	158
599	Chá Lipton                    	19.00	0	5
600	Balas Halls                   	40.00	3	169
601	Energético Red Bull           	43.00	7	75
602	Cerveja Heineken              	50.00	7	198
603	Barra de Cereal Nutry         	48.00	5	110
604	Refrigerante Sprite           	37.00	8	64
605	Biscoitos Oreo                	17.00	0	101
606	Água Crystal                  	26.00	7	80
607	Biscoitos Oreo                	15.00	5	129
608	Cerveja Heineken              	43.00	8	86
609	Cerveja Heineken              	47.00	7	77
610	Balas Halls                   	29.00	7	155
611	Whisky Johnnie Walker         	43.00	5	178
612	Salgadinhos Doritos           	27.00	6	154
613	Suco Del Valle                	40.00	2	157
614	Biscoitos Oreo                	15.00	5	80
615	Whisky Johnnie Walker         	12.00	3	166
616	Amendoim Elma Chips           	34.00	7	195
617	Água Crystal                  	46.00	5	139
618	Biscoitos Oreo                	47.00	5	9
619	Água Crystal                  	24.00	8	5
620	Biscoitos Oreo                	37.00	6	200
621	Salgadinhos Doritos           	26.00	4	173
622	Iogurte Nestlé                	44.00	9	69
623	Água Tônica Schweppes         	22.00	2	169
624	Cerveja Heineken              	29.00	5	109
625	Mini Pizza Sadia              	47.00	0	33
626	Amendoim Elma Chips           	37.00	5	34
627	Água Crystal                  	34.00	9	58
628	Barra de Cereal Nutry         	17.00	3	1
629	Chocolate KitKat              	47.00	6	55
630	Chá Lipton                    	20.00	1	184
631	Cerveja Heineken              	17.00	9	53
632	Iogurte Nestlé                	26.00	9	130
633	Água Tônica Schweppes         	44.00	6	80
634	Castanhas Agtal               	31.00	9	142
635	Mini Pizza Sadia              	20.00	8	87
636	Cerveja Heineken              	37.00	1	186
637	Chá Lipton                    	20.00	8	58
638	Biscoitos Oreo                	34.00	0	142
639	Iogurte Nestlé                	42.00	8	41
640	Energético Red Bull           	28.00	2	162
641	Suco Del Valle                	20.00	3	23
642	Balas Halls                   	17.00	1	159
643	Água Tônica Schweppes         	12.00	5	36
644	Água Tônica Schweppes         	50.00	0	137
645	Sanduíche Pronto Seara        	18.00	2	177
646	Refrigerante Sprite           	23.00	2	124
647	Mini Pizza Sadia              	42.00	5	144
648	Mini Pizza Sadia              	46.00	2	38
649	Biscoitos Oreo                	35.00	0	118
650	Água Crystal                  	49.00	0	133
651	Amendoim Elma Chips           	31.00	7	177
652	Gelatina Royal                	50.00	6	166
653	Castanhas Agtal               	47.00	5	65
654	Iogurte Nestlé                	13.00	6	80
655	Sanduíche Pronto Seara        	28.00	9	139
656	Sanduíche Pronto Seara        	27.00	9	20
657	Amendoim Elma Chips           	45.00	1	83
658	Suco Del Valle                	34.00	8	53
659	Mini Pizza Sadia              	14.00	6	57
660	Chocolate KitKat              	17.00	3	85
661	Suco Del Valle                	21.00	7	158
662	Refrigerante Sprite           	38.00	4	171
663	Energético Red Bull           	42.00	5	21
664	Salgadinhos Doritos           	25.00	8	9
665	Biscoitos Oreo                	38.00	7	101
666	Refrigerante Sprite           	45.00	6	39
667	Gelatina Royal                	31.00	2	171
668	Energético Red Bull           	49.00	0	55
669	Cerveja Heineken              	33.00	0	15
670	Refrigerante Sprite           	17.00	2	107
671	Sanduíche Pronto Seara        	23.00	8	38
672	Suco Del Valle                	34.00	3	121
673	Biscoitos Oreo                	33.00	1	139
674	Chá Lipton                    	43.00	6	52
675	Castanhas Agtal               	44.00	5	126
676	Salgadinhos Doritos           	47.00	2	106
677	Biscoitos Oreo                	26.00	0	127
678	Chá Lipton                    	48.00	4	84
679	Amendoim Elma Chips           	31.00	4	2
680	Iogurte Nestlé                	29.00	9	124
681	Água Tônica Schweppes         	31.00	1	188
682	Chá Lipton                    	20.00	5	88
683	Barra de Cereal Nutry         	42.00	4	102
684	Chá Lipton                    	48.00	3	113
685	Mini Pizza Sadia              	44.00	9	30
686	Água Crystal                  	48.00	1	192
687	Suco Del Valle                	48.00	8	197
688	Barra de Cereal Nutry         	24.00	4	191
689	Gelatina Royal                	22.00	3	8
690	Barra de Cereal Nutry         	19.00	8	72
691	Gelatina Royal                	22.00	4	87
692	Balas Halls                   	44.00	1	174
693	Cerveja Heineken              	46.00	6	67
694	Chá Lipton                    	45.00	9	87
695	Água Tônica Schweppes         	14.00	9	179
696	Refrigerante Sprite           	15.00	6	162
697	Barra de Cereal Nutry         	21.00	9	97
698	Chocolate KitKat              	45.00	0	45
699	Castanhas Agtal               	31.00	9	96
700	Castanhas Agtal               	45.00	9	181
701	Biscoitos Oreo                	43.00	1	77
702	Gelatina Royal                	39.00	5	74
703	Mini Pizza Sadia              	17.00	3	84
704	Castanhas Agtal               	36.00	9	68
705	Castanhas Agtal               	49.00	0	95
706	Whisky Johnnie Walker         	50.00	7	92
707	Energético Red Bull           	15.00	1	103
708	Água Crystal                  	41.00	9	153
709	Água Crystal                  	46.00	0	127
710	Cerveja Heineken              	50.00	1	36
711	Refrigerante Sprite           	12.00	8	108
712	Suco Del Valle                	44.00	4	178
713	Água Crystal                  	48.00	2	55
714	Água Crystal                  	42.00	7	23
715	Refrigerante Coca-Cola        	17.00	3	166
716	Água Crystal                  	40.00	7	198
717	Amendoim Elma Chips           	34.00	4	35
718	Chá Lipton                    	23.00	9	21
719	Gelatina Royal                	45.00	1	169
720	Mini Pizza Sadia              	34.00	8	70
721	Refrigerante Coca-Cola        	23.00	9	100
722	Amendoim Elma Chips           	38.00	4	186
723	Mini Pizza Sadia              	44.00	0	70
724	Água Crystal                  	29.00	9	176
725	Biscoitos Oreo                	26.00	2	46
726	Amendoim Elma Chips           	20.00	2	188
727	Amendoim Elma Chips           	45.00	5	195
728	Biscoitos Oreo                	50.00	4	50
729	Suco Del Valle                	47.00	5	41
730	Gelatina Royal                	43.00	0	161
731	Energético Red Bull           	40.00	1	29
732	Mini Pizza Sadia              	17.00	8	198
733	Whisky Johnnie Walker         	15.00	7	42
734	Whisky Johnnie Walker         	38.00	5	41
735	Cerveja Heineken              	17.00	9	142
736	Amendoim Elma Chips           	21.00	9	195
737	Balas Halls                   	46.00	7	142
738	Whisky Johnnie Walker         	14.00	9	135
739	Água Crystal                  	39.00	1	77
740	Gelatina Royal                	28.00	6	104
741	Energético Red Bull           	40.00	3	113
742	Sanduíche Pronto Seara        	43.00	6	46
743	Whisky Johnnie Walker         	42.00	4	104
744	Castanhas Agtal               	17.00	7	140
745	Whisky Johnnie Walker         	29.00	2	119
746	Amendoim Elma Chips           	22.00	6	117
747	Refrigerante Coca-Cola        	34.00	6	8
748	Água Tônica Schweppes         	29.00	2	137
749	Mini Pizza Sadia              	44.00	0	108
750	Salgadinhos Doritos           	47.00	7	30
751	Barra de Cereal Nutry         	14.00	3	29
752	Cerveja Heineken              	28.00	8	101
753	Água Crystal                  	38.00	8	45
754	Mini Pizza Sadia              	32.00	4	39
755	Água Tônica Schweppes         	32.00	6	200
756	Mini Pizza Sadia              	40.00	2	102
757	Salgadinhos Doritos           	25.00	2	102
758	Salgadinhos Doritos           	14.00	0	64
759	Whisky Johnnie Walker         	21.00	2	150
760	Amendoim Elma Chips           	43.00	1	136
761	Refrigerante Coca-Cola        	50.00	0	67
762	Amendoim Elma Chips           	34.00	7	80
763	Biscoitos Oreo                	22.00	0	173
764	Mini Pizza Sadia              	28.00	7	195
765	Biscoitos Oreo                	50.00	2	39
766	Barra de Cereal Nutry         	29.00	0	118
767	Chocolate KitKat              	36.00	7	68
768	Sanduíche Pronto Seara        	43.00	6	58
769	Barra de Cereal Nutry         	25.00	2	28
770	Água Tônica Schweppes         	40.00	5	152
771	Água Crystal                  	24.00	2	97
772	Balas Halls                   	20.00	1	121
773	Chá Lipton                    	45.00	1	28
774	Sanduíche Pronto Seara        	33.00	2	179
775	Mini Pizza Sadia              	23.00	2	33
776	Iogurte Nestlé                	21.00	3	23
777	Chá Lipton                    	43.00	1	155
778	Chocolate KitKat              	34.00	3	154
779	Gelatina Royal                	37.00	4	96
780	Gelatina Royal                	25.00	1	188
781	Castanhas Agtal               	41.00	2	168
782	Castanhas Agtal               	48.00	5	178
783	Chá Lipton                    	14.00	8	142
784	Gelatina Royal                	34.00	1	110
785	Refrigerante Sprite           	31.00	8	104
786	Iogurte Nestlé                	31.00	7	124
787	Água Tônica Schweppes         	19.00	6	44
788	Sanduíche Pronto Seara        	20.00	8	1
789	Biscoitos Oreo                	12.00	6	139
790	Chocolate KitKat              	22.00	6	53
791	Salgadinhos Doritos           	27.00	8	124
792	Iogurte Nestlé                	49.00	3	84
793	Gelatina Royal                	23.00	7	102
794	Salgadinhos Doritos           	45.00	5	45
795	Refrigerante Coca-Cola        	28.00	9	4
796	Balas Halls                   	18.00	9	197
797	Biscoitos Oreo                	22.00	4	28
798	Balas Halls                   	39.00	9	19
799	Mini Pizza Sadia              	42.00	4	123
800	Energético Red Bull           	47.00	9	11
\.


--
-- TOC entry 5216 (class 0 OID 40498)
-- Dependencies: 269
-- Data for Name: requisicao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.requisicao (id_requisicao, status, tipo, atendente, texto_requisicao, data_abertura, data_fechamento, id_cliente) FROM stdin;
1	Andamento	Dúvida	Giovane Salgado Aragão Jr.	Autem nihil voluptas ipsum praesentium assumenda non voluptas officia. Dignissimos cupiditate maxime corporis dolor aut. Excepturi enim porro possimus quam. Ea repudiandae et accusamus.	1982-04-09 12:29:37	1977-06-30 00:51:44	8
2	Andamento	Elogio	Elizabeth Cordeiro de Ag	Ipsum totam ex neque voluptatem. Placeat dolorem veniam rem. Magnam illum libero iusto nemo.	2019-01-18 17:24:57	2021-06-17 14:59:46	2
3	Fechado	Reclamação	Silvana Paz Mendonça Jr.	Consequatur aut temporibus ex et dignissimos quis. Voluptas id aspernatur impedit ad rerum corrupti fugiat. Pariatur veritatis illo ut possimus ullam. Et est dolores et quisquam dolores.	1992-08-11 18:27:38	2013-08-23 11:15:34	3
4	Andamento	Reclamação	Noel Lutero	Mollitia sit consequatur reiciendis quae. Atque et consequatur molestiae similique soluta accusantium aut. Consequuntur eligendi ipsam saepe facilis. Quia tenetur animi quibusdam quia.	1984-05-08 21:41:08	2017-12-29 21:54:12	5
5	Aberto	Dúvida	Giovane Carlos Velasques	Maiores qui qui dolor repellat nesciunt voluptas. Necessitatibus est amet corporis perspiciatis sed aspernatur. Qui dolor deleniti sed optio nostrum eius. Cumque officia nesciunt veritatis.	2023-08-20 13:57:26	2015-04-01 22:07:00	4
6	Aberto	Dúvida	Emanuel Lozano	Voluptatum voluptas laudantium corporis qui. Ex facere odio aut corrupti quod doloremque. Dolor iste dolores sed numquam. Hic alias veniam quos magni quo sunt eligendi.	1993-06-01 05:31:26	2012-05-10 00:32:14	2
7	Andamento	Sugestão	Camilo Elias Mendes	Omnis officia quia molestias dignissimos animi quos. Velit placeat consequatur aliquam asperiores. Rerum deserunt sed et illum eos. Et iste voluptate aliquam error ut id architecto.	1995-06-06 12:03:37	1972-02-24 18:46:33	2
8	Andamento	Elogio	Giovana Camacho Jr.	Assumenda iure minus sit qui adipisci. Et error sunt dicta nesciunt eum temporibus culpa.	1973-04-12 00:07:30	1985-04-21 11:04:13	8
9	Andamento	Sugestão	Melissa Gomes Correia	Accusantium eos asperiores tempora pariatur numquam sapiente expedita et. Voluptatem magnam neque at voluptas quaerat architecto. Id sed est omnis architecto quis occaecati in.	2011-05-11 08:34:05	2018-03-22 04:22:36	1
10	Aberto	Dúvida	Nádia Julieta Cordeiro Sob	Deserunt expedita autem blanditiis consequatur quae. Porro ex atque veniam ut vel. Officia explicabo eligendi consequatur sint ullam exercitationem rem.	2005-06-07 19:54:38	2011-03-30 09:36:33	7
\.


--
-- TOC entry 5218 (class 0 OID 40505)
-- Dependencies: 271
-- Data for Name: reserva; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reserva (id_reserva, valor, per_dt_inicio, per_dt_fim, id_cliente, id_acomodacao) FROM stdin;
1	16450.00	2022-10-03	2022-10-15	8	178
2	6236.00	2023-05-22	2023-06-02	10	154
3	11505.00	2022-02-20	2022-02-28	1	87
4	13196.00	2023-08-25	2023-09-10	6	163
5	5095.00	2023-02-17	2023-02-22	12	113
6	12370.00	2022-05-18	2022-05-30	15	60
7	9812.00	2024-07-30	2024-07-10	19	55
8	10063.00	2021-04-24	2021-05-03	14	58
9	19157.00	2023-12-13	2023-12-25	1	99
10	13444.00	2021-07-12	2021-07-23	17	49
11	12334.00	2023-06-06	2023-06-18	12	13
12	7412.00	2021-10-21	2021-10-28	3	94
13	11615.00	2022-07-19	2022-07-30	2	10
14	1699.00	2022-06-06	2022-06-07	7	8
15	1002.00	2023-06-01	2023-06-02	14	29
16	17320.00	2021-06-17	2021-07-10	5	5
17	2178.00	2022-05-08	2022-05-10	4	38
18	9622.00	2021-09-10	2021-09-28	11	115
19	4697.00	2023-01-15	2023-01-19	8	36
20	14883.00	2022-02-02	2022-02-14	3	29
21	13130.00	2022-11-08	2022-11-15	19	83
22	12385.00	2024-02-04	2024-03-06	12	38
23	16934.00	2023-09-02	2023-09-17	8	27
24	7452.00	2022-12-01	2022-12-08	14	200
25	17074.00	2021-12-21	2021-12-25	10	94
26	13129.00	2022-05-03	2022-05-20	16	58
27	15661.00	2023-10-07	2023-10-18	19	5
28	3482.00	2022-10-10	2022-10-14	14	168
29	5834.00	2021-10-11	2021-10-19	17	52
30	8055.00	2023-08-05	2023-08-17	2	148
31	9284.00	2023-03-12	2023-03-22	2	114
32	19758.00	2022-01-09	2022-01-16	17	41
33	8672.00	2023-04-16	2023-04-25	4	159
34	19352.00	2023-03-26	2023-07-11	11	127
35	2428.00	2023-05-27	2023-05-29	18	95
36	7934.00	2021-06-10	2021-06-17	8	162
37	17823.00	2021-12-22	2022-01-05	16	53
38	6406.00	2022-02-02	2022-02-07	18	103
39	12339.00	2023-11-24	2023-12-03	8	151
40	3807.00	2023-07-30	2023-08-02	2	189
41	12116.00	2023-02-04	2023-02-09	11	185
42	16396.00	2021-05-30	2021-06-03	6	6
43	7268.00	2021-06-22	2021-07-01	3	196
44	17287.00	2023-06-14	2023-06-26	6	51
45	6992.00	2023-01-23	2023-01-29	10	67
46	16184.00	2023-08-16	2023-08-30	16	4
47	11231.00	2021-05-04	2021-05-16	17	157
48	19924.00	2023-09-02	2023-09-21	2	130
49	18028.00	2022-10-24	2022-11-12	1	127
50	5161.00	2022-10-27	2022-10-30	18	25
51	14695.00	2022-12-17	2023-01-01	5	38
52	8708.00	2024-01-08	2024-01-23	5	6
53	4310.00	2022-02-17	2022-02-20	7	117
54	1746.00	2023-07-21	2023-07-23	20	99
55	18589.00	2021-08-01	2021-08-20	16	27
56	19348.00	2023-05-12	2023-05-30	8	99
57	14759.00	2022-04-28	2022-05-15	8	23
58	13141.00	2022-05-10	2022-05-29	6	130
59	10971.00	2023-07-06	2023-07-15	10	188
60	13602.00	2023-01-02	2023-01-17	20	57
61	6821.00	2023-10-13	2023-10-20	3	52
62	16631.00	2021-02-10	2021-02-23	10	194
63	18900.00	2023-01-16	2023-02-05	10	57
64	1821.00	2023-05-15	2023-05-17	11	46
65	3498.00	2021-11-15	2021-11-18	13	113
66	17508.00	2023-07-08	2023-07-25	11	195
67	8818.00	2022-10-02	2022-10-16	1	127
68	1844.00	2021-02-24	2021-02-26	9	70
69	9788.00	2022-04-20	2022-04-30	10	194
70	16155.00	2022-03-24	2022-04-13	16	9
71	1493.00	2024-11-15	2024-11-16	16	109
72	5369.00	2024-11-16	2024-11-26	1	33
73	4267.00	2024-11-16	2024-11-27	16	110
74	9636.00	2024-11-17	2024-12-01	2	63
75	14934.00	2024-11-20	2024-11-27	18	194
76	9626.00	2024-11-18	2024-11-29	7	121
77	6707.00	2024-11-20	2024-11-27	12	66
78	9101.00	2024-11-16	2024-11-26	6	55
79	8357.00	2024-11-19	2024-12-01	7	150
80	10015.00	2024-11-18	2024-11-25	17	175
81	3957.00	2024-11-13	2024-11-16	12	24
82	14685.00	2024-11-12	2024-12-01	9	6
83	3266.00	2024-11-16	2024-11-18	4	28
84	13647.00	2024-11-15	2024-11-27	17	108
85	1449.00	2024-11-17	2024-11-18	11	2
86	12355.00	2024-11-17	2024-11-24	3	20
87	15450.00	2024-11-17	2024-11-26	5	178
88	3534.00	2024-11-17	2024-11-21	13	86
89	18708.00	2024-11-19	2024-12-06	2	138
90	8860.00	2024-11-21	2024-11-27	13	152
91	14005.00	2024-11-18	2024-11-26	14	58
92	14138.00	2024-11-19	2024-11-29	6	185
93	19763.00	2024-11-12	2024-11-25	7	155
94	1336.00	2024-11-23	2024-11-25	7	52
95	8283.00	2024-11-18	2024-11-26	6	62
96	2682.00	2024-11-21	2024-11-23	6	36
97	15453.00	2024-11-15	2024-11-27	11	126
98	1890.00	2024-11-14	2024-11-16	10	160
99	10126.00	2024-11-12	2024-11-27	11	137
100	2091.00	2024-11-21	2024-11-23	16	119
101	4779.00	2024-11-14	2024-12-20	12	181
102	3804.00	2024-11-19	2024-11-23	17	163
103	15043.00	2024-11-21	2024-11-30	20	171
104	5709.00	2024-11-14	2024-11-19	7	180
105	4089.00	2024-11-13	2024-11-16	17	5
106	4089.00	2024-11-13	2024-11-18	7	106
107	1447.00	2024-11-14	2024-11-15	20	172
108	16512.00	2024-11-21	2024-11-28	7	27
109	6454.00	2024-11-13	2024-11-20	14	36
110	5189.00	2024-11-14	2024-11-20	19	79
111	13090.00	2024-11-13	2024-11-25	8	196
112	1390.00	2024-11-12	2024-11-13	11	62
113	1952.00	2024-11-13	2024-11-15	4	143
114	10604.00	2024-11-12	2024-12-01	17	67
115	11546.00	2024-11-19	2024-11-24	14	131
116	6215.00	2024-11-19	2024-11-28	18	1
117	8111.00	2024-11-23	2024-12-01	19	143
118	5465.00	2024-11-12	2024-11-25	1	59
119	8585.00	2024-11-17	2024-11-30	5	153
120	7424.00	2024-11-14	2024-11-29	15	60
121	17305.00	2024-11-14	2024-11-29	4	9
122	11695.00	2024-11-19	2024-11-26	3	96
123	15459.00	2024-11-15	2024-11-30	13	173
124	1189.00	2024-11-16	2024-11-17	20	72
125	17997.00	2024-11-16	2024-11-25	13	23
126	3742.00	2024-11-12	2024-11-16	4	95
127	5550.00	2024-11-13	2024-11-18	11	197
128	17770.00	2024-11-21	2024-11-27	10	29
129	7939.00	2024-11-20	2024-11-30	20	11
130	15276.00	2024-11-19	2024-11-24	15	70
131	9014.00	2024-11-22	2024-12-01	2	88
132	4307.00	2024-11-15	2024-11-20	13	122
133	10658.00	2024-11-18	2024-11-26	16	159
134	13095.00	2024-11-20	2024-11-30	19	74
135	19150.00	2024-11-21	2024-11-28	13	86
136	9797.00	2024-11-21	2024-11-30	12	180
137	13225.00	2024-11-19	2024-11-28	17	199
138	10601.00	2024-11-14	2024-11-27	11	148
139	2898.00	2024-11-13	2024-11-15	14	4
140	19254.00	2024-11-13	2024-11-29	2	17
141	3121.00	2024-11-14	2024-11-17	5	117
142	2421.00	2024-11-17	2024-11-19	13	89
143	19653.00	2024-11-21	2024-11-25	19	94
144	4714.00	2024-11-15	2024-11-21	14	8
145	4299.00	2024-11-24	2024-11-28	11	192
146	11132.00	2024-11-15	2024-11-25	9	162
147	17460.00	2024-11-11	2024-12-01	11	10
148	11594.00	2024-11-21	2024-11-28	12	75
149	14762.00	2024-11-13	2024-12-01	10	38
150	17489.00	2024-11-18	2024-11-30	17	15
151	6318.00	2024-11-13	2024-11-25	5	78
152	12060.00	2024-11-14	2024-11-26	13	101
153	8763.00	2024-11-23	2024-12-01	18	19
154	12312.00	2024-11-15	2024-11-26	3	97
155	15388.00	2024-11-20	2024-11-25	3	133
156	19509.00	2024-11-17	2024-11-29	16	166
157	15683.00	2024-11-19	2024-11-29	5	35
158	4961.00	2024-11-18	2024-11-26	9	81
159	8465.00	2024-11-21	2024-11-27	16	64
160	13886.00	2024-11-17	2024-11-26	19	7
161	1041.00	2024-11-16	2024-11-18	20	92
162	5100.00	2024-11-18	2024-11-25	16	161
163	13749.00	2024-11-19	2024-11-27	1	176
164	17413.00	2024-11-15	2024-11-29	13	142
165	6699.00	2024-11-13	2024-11-25	15	129
166	13888.00	2024-11-13	2024-11-29	3	90
167	16763.00	2024-11-21	2024-12-01	19	145
168	9105.00	2024-11-16	2024-11-29	8	154
169	12821.00	2024-11-21	2024-12-01	3	79
170	13689.00	2024-11-18	2024-11-28	2	117
171	12327.00	2024-11-19	2024-11-26	17	125
172	9758.00	2024-11-16	2024-11-29	12	65
173	10699.00	2024-11-18	2024-12-01	5	107
174	11206.00	2024-11-15	2024-11-26	6	158
175	17988.00	2024-11-21	2024-11-26	7	123
176	5734.00	2024-11-16	2024-11-27	10	139
177	6532.00	2024-11-17	2024-11-29	16	4
178	1089.00	2024-11-13	2024-11-14	16	138
179	14177.00	2024-11-18	2024-11-28	13	26
180	6965.00	2024-11-17	2024-11-26	12	85
181	10759.00	2024-11-16	2024-11-26	18	109
182	14682.00	2024-11-12	2024-12-01	11	31
183	6481.00	2024-11-16	2024-11-26	19	120
184	8957.00	2024-11-16	2024-11-28	7	179
185	2354.00	2024-11-10	2024-11-21	1	3
186	4291.00	2024-11-11	2024-11-23	2	13
187	3150.00	2024-11-12	2024-11-24	3	21
188	4790.00	2024-11-13	2024-11-25	4	30
189	5891.00	2024-11-14	2024-11-26	5	34
190	3057.00	2024-11-15	2024-11-27	6	37
191	5120.00	2024-11-10	2024-11-22	7	39
192	4903.00	2024-11-11	2024-11-23	8	42
193	3905.00	2024-11-12	2024-11-24	9	44
194	4500.00	2024-11-13	2024-11-25	10	45
195	3199.00	2024-11-14	2024-11-26	11	49
196	5680.00	2024-11-15	2024-11-27	12	50
197	3715.00	2024-11-10	2024-11-21	13	51
198	4295.00	2024-11-11	2024-11-23	14	53
199	5112.00	2024-11-12	2024-11-24	15	57
200	2900.00	2024-11-13	2024-11-25	16	68
201	3420.00	2024-11-14	2024-11-26	17	69
202	4890.00	2024-11-15	2024-11-27	18	71
203	3700.00	2024-11-10	2024-11-22	19	73
204	3050.00	2024-11-11	2024-11-23	20	76
205	4205.00	2024-11-12	2024-11-24	1	77
206	5070.00	2024-11-13	2024-11-25	2	80
207	3500.00	2024-11-14	2024-11-26	3	82
208	5900.00	2024-11-15	2024-11-27	4	84
209	4750.00	2024-11-10	2024-11-21	5	93
210	3520.00	2024-11-11	2024-11-23	6	98
211	4015.00	2024-11-12	2024-11-24	7	99
212	5180.00	2024-11-13	2024-11-25	8	100
213	4950.00	2024-11-14	2024-11-26	9	102
214	3880.00	2024-11-15	2024-11-27	10	104
215	4250.00	2024-11-10	2024-11-22	11	113
216	5500.00	2024-11-11	2024-11-23	12	116
217	4750.00	2024-11-12	2024-11-24	13	118
218	3600.00	2024-11-13	2024-11-25	14	124
219	4420.00	2024-11-14	2024-11-26	15	127
220	5200.00	2024-11-15	2024-11-27	16	128
221	3900.00	2024-11-10	2024-11-21	17	130
222	5150.00	2024-11-11	2024-11-23	18	134
223	4500.00	2024-11-12	2024-11-24	19	135
224	3400.00	2024-11-13	2024-11-25	20	136
225	4750.00	2024-11-14	2024-11-26	1	140
226	5600.00	2024-11-15	2024-11-27	2	144
227	4900.00	2024-11-10	2024-11-22	3	156
228	4550.00	2024-11-11	2024-11-23	4	164
229	3500.00	2024-11-12	2024-11-24	5	165
230	4320.00	2024-11-13	2024-11-25	6	169
231	5200.00	2024-11-14	2024-11-26	7	174
232	5900.00	2024-11-15	2024-11-27	8	177
233	4000.00	2024-11-10	2024-11-21	9	182
234	4500.00	2024-11-11	2024-11-23	10	184
235	3700.00	2024-11-12	2024-11-24	11	186
236	4450.00	2024-11-13	2024-11-25	12	188
237	5800.00	2024-11-14	2024-11-26	13	189
238	3900.00	2024-11-15	2024-11-27	14	191
239	4600.00	2024-11-10	2024-11-22	15	198
240	5200.00	2024-11-11	2024-11-23	16	200
241	10148.00	2024-12-24	2025-01-01	1	8
242	12058.00	2024-12-25	2025-01-02	13	19
243	14135.00	2024-12-22	2025-01-03	18	143
244	7771.00	2024-12-29	2025-01-06	12	73
245	12297.00	2024-12-21	2025-01-03	7	58
246	18510.00	2024-12-27	2025-01-02	20	166
247	15750.00	2024-12-24	2025-01-08	16	113
248	8123.00	2024-12-28	2025-01-05	13	164
249	3057.00	2024-12-31	2025-01-07	2	114
250	927.00	2024-12-23	2025-01-03	8	192
251	1578.00	2024-12-30	2025-01-03	3	153
252	11156.00	2024-12-27	2025-01-04	11	188
253	18833.00	2024-12-28	2025-01-05	7	130
254	13271.00	2024-12-24	2025-01-07	9	63
255	13090.00	2024-12-23	2025-01-09	12	90
256	9957.00	2024-12-22	2025-01-05	12	147
257	10355.00	2024-12-30	2025-01-07	2	121
258	7250.00	2024-12-31	2025-01-04	1	187
259	12499.00	2024-12-25	2025-01-02	13	129
260	5033.00	2024-12-28	2025-01-07	8	171
\.


--
-- TOC entry 5220 (class 0 OID 40512)
-- Dependencies: 273
-- Data for Name: saida; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.saida (id_transacao, id_parceiro, receptor, valor_saida, id_funcionario) FROM stdin;
1	\N	Dr. Cauê Siqueira	17700.00	1
2	\N	Alícia Fogaça	19500.00	2
3	\N	Sr. Léo Macedo	17700.00	3
4	\N	Sara Silveira	19000.00	4
5	\N	Thiago Castro	3500.00	5
6	\N	Ana Laura Araújo	3800.00	6
7	\N	Dra. Laura Borges	4500.00	7
8	\N	Dr. Davi Luiz da Rocha	4500.00	8
9	\N	Dra. Bianca Lima	3400.00	9
10	\N	Sr. João Miguel Costela	4000.00	10
11	\N	Mariah Andrade	19700.00	11
12	\N	Zoe Guerra	16100.00	12
13	\N	Noah Sales	16600.00	13
14	\N	Lorenzo Carvalho	18900.00	14
15	\N	Arthur Barros	5000.00	15
16	\N	Benjamim Oliveira	3300.00	16
17	\N	Paulo Sousa	3100.00	17
18	\N	Maria Helena Sampaio	3300.00	18
19	\N	Davi Jesus	3800.00	19
20	\N	Srta. Rebeca Câmara	4200.00	20
21	\N	Lunna Jesus	16200.00	21
22	\N	Dr. Anthony Gabriel Mendes	15300.00	22
23	\N	Fernanda da Costa	20200.00	23
24	\N	Marcela Monteiro	16400.00	24
25	\N	Maria Clara Nogueira	3700.00	25
26	\N	Rafaela Cirino	3200.00	26
27	\N	Emanuella Monteiro	4900.00	27
28	\N	Dr. Ravi Lima	4400.00	28
29	\N	Sra. Julia Novaes	3400.00	29
30	\N	Carolina da Rosa	3600.00	30
31	\N	Brayan Barbosa	17900.00	31
32	\N	Giovanna Machado	18600.00	32
33	\N	Lucas Monteiro	17000.00	33
34	\N	Alexia Sousa	18700.00	34
35	\N	Sofia Mendes	4900.00	35
36	\N	Sr. Caleb Monteiro	3700.00	36
37	\N	Sra. Mirella Azevedo	4400.00	37
38	\N	Sr. Theo Aragão	4300.00	38
39	\N	Srta. Emilly Oliveira	3500.00	39
40	\N	Levi Jesus	4100.00	40
41	\N	Davi Lucca Gonçalves	19300.00	41
42	\N	Antony Pastor	18600.00	42
43	\N	Yasmin Freitas	19600.00	43
44	\N	Olívia Brito	16500.00	44
45	\N	Lorena Costa	4900.00	45
46	\N	Gael Henrique da Cunha	8500.00	46
47	\N	Ian Ferreira	4000.00	47
48	\N	Maria Isis Vieira	4500.00	48
49	\N	Felipe Vasconcelos	4000.00	49
50	\N	Nicolas Guerra	4000.00	50
51	\N	Nicole das Neves	18200.00	51
52	\N	Lunna Leão	16700.00	52
53	\N	Yuri Azevedo	18900.00	53
54	\N	Diogo da Rocha	16100.00	54
55	\N	Henrique Leão	4300.00	55
56	\N	Isis Pacheco	3900.00	56
57	\N	Brenda Carvalho	4600.00	57
58	\N	Hellena Borges	3500.00	58
59	\N	Nina Freitas	4000.00	59
60	\N	Anna Liz Barbosa	4600.00	60
61	\N	Maria Pacheco	18000.00	61
62	\N	Srta. Luísa Fogaça	18300.00	62
63	\N	Olivia Martins	16300.00	63
64	\N	Rebeca Marques	18600.00	64
65	\N	Dr. Isaac Mendonça	4800.00	65
66	\N	Maria Luiza Machado	4300.00	66
67	\N	Isaac Montenegro	3700.00	67
68	\N	Rafaela da Cruz	3600.00	68
69	\N	Dra. Ísis Ribeiro	4600.00	69
70	\N	Kevin da Mota	3500.00	70
71	\N	Dr. Luiz Gustavo Marques	4500.00	71
72	\N	Benício Lopes	9500.00	72
73	\N	Allana da Rocha	4800.00	73
74	\N	Sra. Ana Júlia Moraes	3800.00	74
75	\N	Srta. Emanuella da Mata	3200.00	75
76	\N	Theo Mendes	4500.00	76
77	\N	Benício Abreu	3000.00	77
78	\N	Sra. Melissa Cardoso	15100.00	78
79	\N	Dr. Raul Cirino	20400.00	79
80	\N	Eduardo Correia	17800.00	80
81	\N	Ana Aparecida	19900.00	81
82	\N	Dom Cunha	17400.00	82
83	\N	Pedro Henrique Mendes	18900.00	83
84	\N	Rael Moraes	17600.00	84
85	\N	Bianca Pacheco	19800.00	85
86	\N	Sr. João Miguel Nogueira	4500.00	86
87	\N	Luiz Fernando da Luz	4100.00	87
88	\N	Sra. Melissa Martins	3700.00	88
89	\N	Rebeca Siqueira	3300.00	89
90	\N	Murilo Aparecida	4900.00	90
91	\N	José Pedro Vieira	4000.00	91
92	\N	Srta. Brenda Moreira	4600.00	92
93	\N	Sarah Gonçalves	17800.00	93
94	\N	Bella Vieira	19600.00	94
95	\N	Rafaela Gonçalves	16000.00	95
96	\N	João Vitor Rios	16300.00	96
97	\N	Dr. Antony Jesus	17600.00	97
98	\N	Léo Correia	17300.00	98
99	\N	Dra. Lorena Cardoso	15800.00	99
100	\N	Bruna Lima	17600.00	100
101	\N	Clara Moreira	4100.00	101
102	\N	Benjamim Martins	20100.00	102
103	\N	Maitê Rocha	4500.00	103
104	\N	Sara Peixoto	3800.00	104
105	\N	Srta. Rebeca Caldeira	4500.00	105
106	\N	Camila Caldeira	3200.00	106
107	\N	Henry Cirino	4700.00	107
108	\N	Anna Liz Santos	4000.00	108
109	\N	Dra. Helena Cunha	3600.00	109
110	\N	Srta. Maria Liz Pereira	3300.00	110
111	\N	Sra. Allana Cunha	4500.00	111
112	\N	Dr. Levi Lima	4700.00	112
113	\N	Francisco das Neves	4600.00	113
114	\N	Eduardo da Paz	4900.00	114
115	\N	Ian Azevedo	9400.00	115
116	\N	Juan Souza	4200.00	116
117	\N	Davi Miguel Alves	9800.00	117
118	\N	Lunna Caldeira	18500.00	118
119	\N	Josué Duarte	17900.00	119
120	\N	Maria Clara da Costa	17000.00	120
121	\N	Carlos Eduardo Abreu	19600.00	121
122	\N	Sarah Borges	3100.00	122
123	\N	Diogo Vieira	3500.00	123
124	\N	Stephany Carvalho	3600.00	124
125	\N	Erick Barros	4700.00	125
126	\N	Antônio da Mata	4200.00	126
127	\N	João Pedro Pacheco	4500.00	127
128	\N	João Guilherme Barros	4600.00	128
129	\N	Ana Sophia Albuquerque	4900.00	129
130	\N	Vitor Gabriel Fogaça	3900.00	130
131	\N	Davi Lucas Vargas	4500.00	131
132	\N	Enzo Garcia	3800.00	132
133	\N	Vinicius Viana	4000.00	133
134	\N	Isis Sousa	10100.00	134
135	\N	Stephany Sá	3200.00	135
136	\N	Alexia Moraes	8900.00	136
137	\N	Heitor Monteiro	15400.00	137
138	\N	Vitor Vargas	19600.00	138
139	\N	Sr. Léo Novaes	17400.00	139
140	\N	Sr. Mateus Correia	17500.00	140
141	\N	Eloá Azevedo	3600.00	141
142	\N	Josué Caldeira	4300.00	142
143	\N	Natália Sampaio	3800.00	143
144	\N	Sophie Barros	4300.00	144
145	\N	Alexandre Moraes	4300.00	145
146	\N	Bruna Souza	4100.00	146
147	\N	Maria Luísa Melo	4900.00	147
148	\N	Asafe Casa Grande	3400.00	148
149	\N	Sr. Benicio Nogueira	4200.00	149
150	\N	Eloá Rodrigues	4700.00	150
151	\N	Sr. Diogo Alves	3700.00	151
152	\N	Thomas Pastor	4500.00	152
153	\N	André Pimenta	8300.00	153
154	\N	Stella Mendes	4500.00	154
155	\N	Maria Isis Cardoso	8300.00	155
156	\N	Sr. Brayan Barbosa	18500.00	156
157	\N	Isaque Silveira	15900.00	157
158	\N	Bárbara Montenegro	18800.00	158
159	\N	Ravy Casa Grande	18400.00	159
160	\N	Dr. Matteo Montenegro	3400.00	160
161	\N	Ana Beatriz Campos	4500.00	161
162	\N	Ana Cecília Macedo	4900.00	162
163	\N	Brayan Barros	4000.00	163
164	\N	Ágatha Abreu	3900.00	164
165	\N	Paulo Araújo	3800.00	165
166	\N	Maria Vitória Aparecida	3900.00	166
167	\N	Otávio da Luz	3400.00	167
168	\N	Anthony Gabriel das Neves	4300.00	168
169	\N	Srta. Liz Leão	3000.00	169
170	\N	Dr. Thomas Peixoto	3700.00	170
171	\N	Antônio Pacheco	4100.00	171
172	\N	Brenda Sales	9000.00	172
173	\N	Luiz Fernando Caldeira	3500.00	173
174	\N	Vitória Vargas	9800.00	174
175	\N	Fernando Montenegro	18500.00	175
176	\N	Augusto Siqueira	15900.00	176
177	\N	Eduardo Cunha	17400.00	177
178	\N	Benjamim Moreira	19900.00	178
179	\N	Pedro da Cunha	3700.00	179
180	\N	Marina Gomes	4800.00	180
181	\N	Ana Carolina Pimenta	4700.00	181
182	\N	Lívia Rios	3600.00	182
183	\N	Vitor Sousa	3600.00	183
184	\N	Ana Vitória Barbosa	3200.00	184
185	\N	Hellena Monteiro	3800.00	185
186	\N	Rhavi Ribeiro	3600.00	186
187	\N	Sra. Jade Costa	3700.00	187
188	\N	Sr. Theo Almeida	4000.00	188
189	\N	Sabrina Casa Grande	3300.00	189
190	\N	Gabriel Câmara	4700.00	190
191	\N	Thiago Cavalcante	9300.00	191
192	\N	Sophie Sales	3400.00	192
193	\N	Arthur Miguel Correia	9600.00	193
194	\N	Benicio Rocha	18700.00	194
195	\N	Theo Santos	20200.00	195
196	\N	Pedro Henrique Nunes	18100.00	196
197	\N	Juan Monteiro	17400.00	197
198	\N	Bella da Mata	4200.00	198
199	\N	Hadassa Moura	3400.00	199
200	\N	Sophia Macedo	4300.00	200
201	\N	Maria Luiza Garcia	5000.00	201
202	\N	Caroline Alves	3900.00	202
203	\N	Gustavo Henrique Almeida	4000.00	203
204	\N	Sra. Heloisa Cavalcanti	4000.00	204
205	\N	Lorena Rezende	3800.00	205
206	\N	Kaique Cavalcanti	3400.00	206
207	\N	Breno Aparecida	3400.00	207
208	\N	Kaique Campos	4800.00	208
209	\N	Ana Vitória Oliveira	3800.00	209
210	\N	Antony Viana	10100.00	210
211	\N	Paulo Machado	4600.00	211
212	\N	Maya Porto	8700.00	212
213	\N	Emanuel Montenegro	16600.00	213
214	\N	Joana Camargo	17300.00	214
215	\N	Rael Montenegro	15200.00	215
216	\N	Benjamim Câmara	19000.00	216
217	\N	Bryan Barbosa	4300.00	217
218	\N	Matheus da Mota	4100.00	218
219	\N	Dra. Maria Casa Grande	4400.00	219
220	\N	Ana Júlia da Costa	4700.00	220
221	\N	Marina Costa	3300.00	221
222	\N	Luiz Fernando Nascimento	3500.00	222
223	\N	Maya Gomes	4000.00	223
224	\N	Stella Cassiano	3600.00	224
225	\N	Gabriela da Mata	4000.00	225
226	\N	Rebeca Lopes	3400.00	226
227	\N	Ana Júlia Ribeiro	3500.00	227
228	\N	Ryan Gomes	4800.00	228
229	\N	Arthur Miguel Almeida	9800.00	229
230	\N	Mariane Aparecida	4100.00	230
231	\N	Alice Nogueira	9000.00	231
232	\N	Maria Luiza Dias	17600.00	232
233	\N	Henry Gabriel da Paz	16400.00	233
234	\N	Eloá Farias	20400.00	234
235	\N	Joana Gomes	16200.00	235
236	\N	Sabrina Silveira	4100.00	236
237	\N	Dr. Bryan Melo	5000.00	237
238	\N	Rebeca Novaes	4600.00	238
239	\N	Mathias Almeida	5100.00	239
240	\N	Enrico Cassiano	4100.00	240
241	\N	Matheus Peixoto	4300.00	241
242	\N	Eduarda Garcia	3300.00	242
243	\N	Ana Lívia Fernandes	4800.00	243
244	\N	Juliana Pastor	3900.00	244
245	\N	Davi Teixeira	4200.00	245
246	\N	Emanuella Gomes	4600.00	246
247	\N	Josué Lima	3600.00	247
248	\N	Raquel Nascimento	8300.00	248
249	\N	Bryan Moura	4300.00	249
250	\N	Rael Dias	9000.00	250
251	\N	Arthur Gabriel Pires	17800.00	251
252	\N	Dr. Yan Vasconcelos	16300.00	252
253	\N	Lucca Almeida	15100.00	253
254	1	Vértice 360	1266.34	\N
255	2	Pulsar Ativo	1452.49	\N
256	3	Resonante Harmonia	1565.59	\N
257	4	Fluxo de Ritmo	3920.72	\N
258	5	Sabor e Essência	3171.11	\N
259	6	Galeria Mutações	3940.23	\N
260	7	Reflexos Azuis	2038.87	\N
261	8	Mente Crítica	3018.00	\N
262	4	Fluxo de Ritmo	3920.72	\N
263	1	Vértice 360	1266.34	\N
264	4	Fluxo de Ritmo	3920.72	\N
265	4	Fluxo de Ritmo	3920.72	\N
266	2	Pulsar Ativo	1452.49	\N
267	7	Reflexos Azuis	2038.87	\N
268	4	Fluxo de Ritmo	3920.72	\N
269	6	Galeria Mutações	3940.23	\N
270	3	Resonante Harmonia	1565.59	\N
271	5	Sabor e Essência	3171.11	\N
272	1	Vértice 360	1266.34	\N
273	4	Fluxo de Ritmo	3920.72	\N
\.


--
-- TOC entry 5221 (class 0 OID 40518)
-- Dependencies: 274
-- Data for Name: solicita; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.solicita (id_produto, id_reserva, quantidade) FROM stdin;
515	151	8
696	21	6
244	81	4
403	96	4
357	58	6
47	171	6
104	194	7
811	185	3
849	167	6
213	203	2
862	172	3
283	235	8
370	36	7
651	172	3
126	57	1
326	189	4
598	131	1
340	192	5
449	110	6
614	208	7
461	194	8
860	8	2
462	209	7
517	41	4
634	69	1
714	21	4
274	161	5
247	89	7
349	235	6
382	222	3
106	163	7
410	217	6
225	240	4
251	204	3
349	43	1
40	220	4
468	110	1
410	148	8
845	23	4
117	83	3
219	203	7
224	202	4
174	119	5
446	65	6
276	161	1
19	80	6
13	210	3
74	180	3
456	163	4
57	84	8
269	189	6
572	182	3
864	229	4
427	148	2
147	119	7
324	43	6
89	110	4
676	127	1
192	164	6
672	119	4
345	235	4
761	176	7
167	155	7
432	74	6
121	214	7
140	164	8
499	6	6
852	64	8
143	228	7
610	202	1
376	39	5
292	232	1
675	226	5
480	169	7
246	178	2
31	84	4
181	226	1
449	52	2
158	119	8
397	106	6
612	178	5
859	193	5
262	159	5
783	104	4
278	97	4
220	228	8
494	182	2
378	9	6
616	132	5
281	111	2
550	71	5
429	96	1
39	230	7
789	84	1
16	185	8
669	203	5
398	150	3
164	127	1
481	214	7
1	80	4
644	62	8
276	97	1
703	119	6
20	210	4
26	171	1
152	226	3
109	83	4
175	233	4
503	177	2
464	5	4
265	77	8
72	140	8
632	64	2
658	153	7
245	154	8
306	79	8
603	202	2
6	199	2
202	164	3
79	230	5
760	17	5
451	83	4
445	214	4
348	138	8
839	229	1
580	154	1
434	98	4
862	23	5
10	156	2
764	174	5
99	57	3
20	220	1
241	77	2
767	188	2
334	79	4
64	175	7
286	97	7
832	153	3
233	77	3
770	136	4
705	226	5
449	214	6
343	97	6
17	200	5
243	81	7
98	194	1
502	71	4
113	5	2
249	159	1
689	203	3
158	233	7
738	119	3
742	226	1
575	208	5
751	176	5
72	156	5
367	18	5
565	71	1
25	140	8
720	226	3
724	127	7
115	5	2
10	70	1
261	240	7
727	190	7
612	24	6
551	227	5
492	238	4
691	226	4
237	154	3
186	228	8
429	98	6
485	194	7
512	182	7
662	203	4
154	119	8
734	228	7
58	175	5
208	21	4
117	163	6
184	119	5
62	200	8
700	190	8
166	226	3
174	228	2
247	66	7
758	176	3
150	228	8
247	208	2
625	26	3
52	179	2
408	98	2
666	203	6
87	63	3
819	121	4
339	161	8
462	52	2
389	39	1
319	235	2
444	57	1
780	157	4
850	229	3
94	82	5
556	238	1
567	135	1
847	15	8
642	69	8
319	161	3
676	21	3
277	192	8
253	77	3
412	19	5
375	122	4
505	46	5
541	92	2
81	210	3
277	79	2
399	109	5
625	91	7
645	108	1
457	57	4
74	63	2
122	194	1
29	180	8
847	153	4
328	79	6
583	154	6
784	188	1
246	77	6
843	62	3
444	42	3
540	151	1
530	182	2
100	65	4
98	82	2
750	188	3
126	169	1
531	85	1
507	151	3
415	1	8
812	140	7
689	228	4
806	140	8
706	228	1
195	203	5
677	155	7
208	190	1
618	69	2
474	194	7
840	23	5
692	228	7
388	45	4
643	23	6
180	164	1
212	190	8
227	131	7
426	74	4
214	127	5
201	190	3
772	174	7
9	121	1
801	84	6
635	64	3
685	21	7
295	27	1
816	185	7
732	228	4
108	163	2
577	159	4
765	51	3
696	190	5
158	226	5
88	80	7
336	138	2
163	228	8
561	46	2
746	134	4
500	41	2
304	30	1
25	199	1
119	194	7
120	42	8
324	161	8
608	132	2
498	177	5
801	210	3
239	89	8
576	204	5
638	64	8
517	227	6
538	177	5
86	230	3
814	156	7
761	157	5
120	209	8
768	176	8
36	84	1
188	21	1
722	203	4
684	226	8
285	235	7
406	160	4
297	197	2
388	221	8
224	133	4
698	203	2
335	192	1
141	228	3
340	44	3
816	80	8
36	156	7
329	30	7
481	83	8
70	230	3
237	152	1
648	193	3
580	152	4
355	106	6
363	106	8
472	214	4
700	203	3
415	160	6
11	179	7
678	155	5
84	180	7
331	189	4
175	21	5
818	121	4
773	51	1
187	155	7
46	230	7
45	185	3
279	232	6
858	167	6
573	227	3
153	203	6
498	238	6
700	226	3
470	163	5
141	21	3
72	175	5
161	228	5
56	180	5
480	215	3
804	230	6
755	188	8
746	17	4
371	126	1
463	83	5
384	56	6
16	171	8
153	164	1
659	75	4
73	179	4
808	80	1
28	230	2
787	134	6
661	119	1
342	232	2
351	43	5
181	127	7
526	177	4
55	210	2
4	185	5
617	167	6
840	128	1
633	167	1
504	237	8
616	178	1
569	238	7
267	79	3
168	21	4
81	175	6
192	119	4
358	106	1
479	194	7
134	155	3
769	17	4
48	179	6
374	39	5
22	93	5
320	235	2
54	80	3
598	89	1
425	87	8
547	151	7
797	179	6
330	189	6
684	119	7
720	203	5
68	210	8
638	62	2
252	204	7
349	232	5
641	23	3
585	204	5
257	81	7
260	66	2
649	69	6
419	74	4
856	167	8
560	237	3
340	189	6
431	147	4
577	81	2
393	35	4
256	159	1
715	21	1
77	80	4
385	106	5
841	193	5
639	193	2
396	222	6
302	44	3
306	197	2
684	228	1
868	64	8
120	163	2
727	226	2
761	174	8
338	232	7
298	27	4
507	182	6
546	227	2
553	151	4
311	138	4
547	46	7
748	188	4
540	92	6
331	105	4
309	79	8
841	91	6
240	159	6
19	175	4
171	21	6
740	127	7
581	152	1
396	114	4
110	65	3
563	151	7
718	164	8
7	200	1
256	208	3
488	181	3
279	43	7
790	84	4
33	230	5
515	139	7
795	175	8
305	27	8
677	233	2
754	188	4
390	106	1
704	164	1
305	232	4
38	175	4
681	127	6
394	222	2
645	153	7
83	171	6
434	160	1
581	53	5
235	77	4
420	217	7
8	200	8
351	16	3
661	21	1
531	151	2
151	233	7
518	177	7
333	161	5
525	151	4
402	148	4
587	89	1
362	39	6
596	178	7
128	83	5
155	190	6
392	106	4
21	84	8
223	159	1
740	21	6
81	28	6
388	39	1
103	194	5
460	52	2
759	188	6
10	180	2
83	179	7
631	62	2
503	227	3
674	127	6
741	164	5
824	230	2
473	83	7
515	85	3
314	235	5
472	194	1
358	122	3
558	41	5
430	150	4
170	226	8
160	119	5
399	87	3
599	154	6
338	79	7
728	228	3
350	30	3
438	217	1
179	21	2
315	16	2
27	60	8
34	180	5
822	28	3
364	39	4
537	151	2
359	58	4
449	42	8
357	18	6
630	91	1
334	197	1
541	6	8
191	190	8
189	21	8
356	48	1
609	24	7
652	229	4
296	192	7
765	22	8
275	161	1
861	229	1
750	17	7
565	85	8
231	24	5
770	174	5
288	16	7
180	228	3
400	74	6
722	233	8
155	127	5
875	55	8
258	33	2
629	172	4
61	200	2
631	229	7
677	228	8
451	163	1
185	119	4
435	19	8
223	81	1
790	80	3
681	190	4
48	60	7
575	204	4
807	28	5
8	70	7
494	88	4
732	226	3
397	222	5
232	159	8
58	179	7
250	77	3
44	171	1
733	233	7
209	203	6
742	164	1
90	163	2
873	167	8
86	93	2
754	104	3
192	190	4
843	55	4
852	62	8
349	192	5
361	18	3
504	88	8
650	23	4
408	150	5
402	217	5
307	138	1
562	182	5
564	85	4
25	175	2
492	120	2
\.


--
-- TOC entry 5222 (class 0 OID 40523)
-- Dependencies: 275
-- Data for Name: supervisiona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.supervisiona (id_atividade, id_monitor) FROM stdin;
1	1
2	3
3	1
4	7
5	5
6	1
7	5
8	7
9	4
10	2
11	6
12	1
13	3
14	4
15	2
16	4
17	3
18	6
19	2
20	3
\.


--
-- TOC entry 5224 (class 0 OID 40529)
-- Dependencies: 277
-- Data for Name: transacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transacao (id_transacao, data, motivo, id_nota_fiscal) FROM stdin;
1	2024-11-05 09:55:33	Pagamento	472411123456780001235500133278622127784737
2	2024-11-05 08:34:30	Pagamento	362411123456780001235500190269810281745930
3	2024-11-05 08:47:16	Pagamento	502411123456780001235500191419232124264568
4	2024-11-05 09:50:23	Pagamento	192411123456780001235500172441087852085722
5	2024-11-05 08:35:38	Pagamento	392411123456780001235500111501743322074550
6	2024-11-05 08:41:23	Pagamento	412411123456780001235500112566147102225958
7	2024-11-05 09:05:47	Pagamento	482411123456780001235500181090099287800445
8	2024-11-05 09:54:52	Pagamento	262411123456780001235500191708026395074078
9	2024-11-05 08:31:22	Pagamento	182411123456780001235500165741946174282031
10	2024-11-05 09:47:23	Pagamento	172411123456780001235500188983567203354106
11	2024-11-05 08:51:20	Pagamento	292411123456780001235500105441337438669039
12	2024-11-05 08:49:01	Pagamento	282411123456780001235500168598752413752962
13	2024-11-05 09:48:14	Pagamento	432411123456780001235500156058456894937945
14	2024-11-05 09:32:39	Pagamento	472411123456780001235500142692880239246902
15	2024-11-05 09:05:04	Pagamento	362411123456780001235500183005212631661647
16	2024-11-05 08:06:58	Pagamento	252411123456780001235500179992124538668678
17	2024-11-05 09:03:55	Pagamento	422411123456780001235500117316742455649755
18	2024-11-05 08:08:26	Pagamento	192411123456780001235500115849205436770643
19	2024-11-05 09:28:13	Pagamento	252411123456780001235500142426255322119867
20	2024-11-05 09:13:40	Pagamento	182411123456780001235500146291044376626052
21	2024-11-05 09:32:39	Pagamento	262411123456780001235500112244699213176786
22	2024-11-05 08:03:50	Pagamento	202411123456780001235500178721839240689186
23	2024-11-05 08:17:19	Pagamento	332411123456780001235500159471712780970931
24	2024-11-05 08:46:03	Pagamento	412411123456780001235500169358402704615792
25	2024-11-05 09:45:35	Pagamento	182411123456780001235500128780634717508435
26	2024-11-05 08:57:54	Pagamento	212411123456780001235500179759703798167694
27	2024-11-05 08:10:58	Pagamento	302411123456780001235500199777251077269209
28	2024-11-05 09:40:48	Pagamento	232411123456780001235500145227896186298760
29	2024-11-05 08:55:48	Pagamento	452411123456780001235500110655511101503123
30	2024-11-05 09:44:06	Pagamento	492411123456780001235500127411668494979330
31	2024-11-05 09:15:40	Pagamento	162411123456780001235500109881368160425645
32	2024-11-05 09:42:39	Pagamento	442411123456780001235500106094381170556676
33	2024-11-05 08:11:14	Pagamento	192411123456780001235500154520487564028345
34	2024-11-05 08:51:22	Pagamento	202411123456780001235500184388775041330292
35	2024-11-05 08:09:40	Pagamento	252411123456780001235500199143389826002129
36	2024-11-05 08:20:54	Pagamento	352411123456780001235500115938548139783088
37	2024-11-05 08:52:06	Pagamento	402411123456780001235500118011439266427525
38	2024-11-05 09:07:20	Pagamento	262411123456780001235500152184718436952839
39	2024-11-05 09:01:54	Pagamento	282411123456780001235500133529326024629111
40	2024-11-05 09:41:29	Pagamento	142411123456780001235500158113874068751530
41	2024-11-05 09:37:58	Pagamento	122411123456780001235500150012087378688203
42	2024-11-05 09:19:32	Pagamento	412411123456780001235500174163440760042941
43	2024-11-05 09:18:29	Pagamento	352411123456780001235500129539093346725304
44	2024-11-05 09:52:55	Pagamento	202411123456780001235500142293206555334285
45	2024-11-05 09:59:01	Pagamento	292411123456780001235500130912460006787569
46	2024-11-05 09:24:28	Pagamento	322411123456780001235500151137784921043415
47	2024-11-05 08:47:42	Pagamento	322411123456780001235500195870736858258229
48	2024-11-05 08:04:58	Pagamento	182411123456780001235500177353748771130566
49	2024-11-05 08:38:19	Pagamento	342411123456780001235500115394908116593397
50	2024-11-05 08:05:18	Pagamento	442411123456780001235500134550828874487576
51	2024-11-05 09:04:34	Pagamento	472411123456780001235500166765058686550503
52	2024-11-05 08:18:36	Pagamento	262411123456780001235500149769708638447613
53	2024-11-05 08:05:04	Pagamento	482411123456780001235500130007306087719357
54	2024-11-05 09:07:08	Pagamento	492411123456780001235500199211492021608698
55	2024-11-05 08:20:08	Pagamento	502411123456780001235500151319737134158352
56	2024-11-05 08:33:50	Pagamento	132411123456780001235500147228192375258753
57	2024-11-05 09:22:03	Pagamento	212411123456780001235500102823033307150839
58	2024-11-05 09:37:58	Pagamento	342411123456780001235500140518956186967387
59	2024-11-05 08:35:56	Pagamento	152411123456780001235500108336380893914217
60	2024-11-05 08:48:27	Pagamento	322411123456780001235500109308649603541562
61	2024-11-05 08:00:53	Pagamento	422411123456780001235500140956312173933023
62	2024-11-05 09:55:32	Pagamento	282411123456780001235500153213683001207549
63	2024-11-05 09:13:50	Pagamento	392411123456780001235500121670561034711502
64	2024-11-05 08:22:41	Pagamento	282411123456780001235500198380974371889847
65	2024-11-05 09:37:22	Pagamento	192411123456780001235500127212673789719948
66	2024-11-05 09:23:54	Pagamento	462411123456780001235500100087219648056416
67	2024-11-05 09:46:26	Pagamento	492411123456780001235500159590835842716953
68	2024-11-05 09:20:20	Pagamento	312411123456780001235500121641370860208700
69	2024-11-05 09:16:50	Pagamento	112411123456780001235500170487913214112094
70	2024-11-05 08:54:07	Pagamento	372411123456780001235500177311042596802769
71	2024-11-05 08:38:36	Pagamento	322411123456780001235500175384351496630175
72	2024-11-05 08:26:21	Pagamento	452411123456780001235500189757307375954897
73	2024-11-05 08:56:13	Pagamento	182411123456780001235500178816183976027066
74	2024-11-05 08:53:57	Pagamento	282411123456780001235500142828407658405910
75	2024-11-05 09:32:24	Pagamento	342411123456780001235500161714202460888132
76	2024-11-05 09:48:07	Pagamento	412411123456780001235500170785678641628857
77	2024-11-05 09:57:26	Pagamento	362411123456780001235500123029752841710769
78	2024-11-05 08:57:20	Pagamento	252411123456780001235500157571468881102843
79	2024-11-05 08:45:39	Pagamento	262411123456780001235500171215686372003531
80	2024-11-05 08:29:21	Pagamento	142411123456780001235500118900468738043289
81	2024-11-05 09:55:59	Pagamento	492411123456780001235500113653036655634652
82	2024-11-05 08:37:39	Pagamento	322411123456780001235500108659062131196198
83	2024-11-05 08:58:56	Pagamento	152411123456780001235500169280442619693755
84	2024-11-05 09:51:44	Pagamento	502411123456780001235500110041729671349719
85	2024-11-05 09:10:47	Pagamento	472411123456780001235500161676726214576171
86	2024-11-05 08:03:17	Pagamento	112411123456780001235500115571961843649170
87	2024-11-05 09:21:55	Pagamento	122411123456780001235500101503220256142755
88	2024-11-05 08:05:35	Pagamento	392411123456780001235500105844509561105606
89	2024-11-05 09:58:12	Pagamento	402411123456780001235500112565482296220673
90	2024-11-05 09:16:56	Pagamento	122411123456780001235500147882183718313577
91	2024-11-05 09:12:23	Pagamento	302411123456780001235500101795253462509788
92	2024-11-05 08:36:29	Pagamento	222411123456780001235500152136433311829820
93	2024-11-05 09:54:12	Pagamento	112411123456780001235500180701440609473990
94	2024-11-05 08:29:13	Pagamento	492411123456780001235500189727381967156368
95	2024-11-05 09:32:30	Pagamento	442411123456780001235500191261588322718284
96	2024-11-05 08:51:06	Pagamento	462411123456780001235500133002506499498361
97	2024-11-05 09:58:21	Pagamento	362411123456780001235500162723948426585823
98	2024-11-05 09:02:50	Pagamento	242411123456780001235500187248779137050345
99	2024-11-05 08:56:20	Pagamento	342411123456780001235500170891067009473130
100	2024-11-05 09:03:50	Pagamento	392411123456780001235500197960663451940478
101	2024-11-05 09:21:00	Pagamento	122411123456780001235500136780220180513278
102	2024-11-05 09:05:28	Pagamento	392411123456780001235500158716760468601508
103	2024-11-05 09:30:24	Pagamento	262411123456780001235500143800471723923893
104	2024-11-05 08:04:07	Pagamento	292411123456780001235500110900574610943523
105	2024-11-05 09:53:20	Pagamento	312411123456780001235500144237027692999721
106	2024-11-05 09:15:00	Pagamento	122411123456780001235500105023646396967811
107	2024-11-05 09:56:22	Pagamento	472411123456780001235500194341631791815188
108	2024-11-05 09:34:04	Pagamento	502411123456780001235500151224505885510410
109	2024-11-05 08:22:20	Pagamento	302411123456780001235500178461872164880079
110	2024-11-05 09:55:44	Pagamento	442411123456780001235500151352301015595046
111	2024-11-05 08:50:35	Pagamento	122411123456780001235500174522650991150463
112	2024-11-05 08:43:10	Pagamento	472411123456780001235500144815980872177590
113	2024-11-05 08:56:09	Pagamento	452411123456780001235500145325586271538685
114	2024-11-05 09:25:52	Pagamento	462411123456780001235500180383398581428911
115	2024-11-05 08:33:02	Pagamento	362411123456780001235500131346791562987658
116	2024-11-05 08:25:48	Pagamento	422411123456780001235500169456296339268280
117	2024-11-05 08:56:47	Pagamento	212411123456780001235500134143079205746437
118	2024-11-05 08:26:11	Pagamento	142411123456780001235500171176272606368666
119	2024-11-05 08:18:41	Pagamento	272411123456780001235500160052124804275034
120	2024-11-05 08:56:58	Pagamento	372411123456780001235500119871809975957025
121	2024-11-05 08:32:52	Pagamento	142411123456780001235500133322292861871135
122	2024-11-05 08:29:34	Pagamento	362411123456780001235500141416705994517260
123	2024-11-05 09:09:03	Pagamento	502411123456780001235500167116823864745647
124	2024-11-05 09:38:49	Pagamento	392411123456780001235500194244544860061586
125	2024-11-05 08:17:40	Pagamento	302411123456780001235500139159312559095589
126	2024-11-05 09:51:02	Pagamento	472411123456780001235500161419086524693540
127	2024-11-05 09:16:38	Pagamento	372411123456780001235500146649574163007962
128	2024-11-05 08:57:16	Pagamento	112411123456780001235500184549154831503497
129	2024-11-05 09:47:24	Pagamento	412411123456780001235500162462295543812213
130	2024-11-05 08:59:16	Pagamento	412411123456780001235500131384365324034428
131	2024-11-05 08:28:14	Pagamento	422411123456780001235500178495457201117593
132	2024-11-05 09:55:04	Pagamento	462411123456780001235500172000165545534286
133	2024-11-05 08:39:12	Pagamento	202411123456780001235500163765289937014032
134	2024-11-05 08:33:55	Pagamento	252411123456780001235500152182889509350588
135	2024-11-05 08:44:54	Pagamento	482411123456780001235500171491472380188168
136	2024-11-05 09:21:30	Pagamento	152411123456780001235500199782520351163167
137	2024-11-05 08:10:49	Pagamento	292411123456780001235500129024909504806552
138	2024-11-05 09:07:02	Pagamento	472411123456780001235500107613023991107938
139	2024-11-05 09:38:47	Pagamento	252411123456780001235500197692348676495662
140	2024-11-05 08:30:18	Pagamento	322411123456780001235500159046510363889573
141	2024-11-05 09:18:51	Pagamento	262411123456780001235500119370661667959460
142	2024-11-05 09:03:12	Pagamento	472411123456780001235500141945269856589936
143	2024-11-05 08:48:01	Pagamento	262411123456780001235500159102175278603733
144	2024-11-05 08:14:41	Pagamento	192411123456780001235500102704449392026655
145	2024-11-05 08:40:39	Pagamento	432411123456780001235500158448633953992048
146	2024-11-05 09:57:30	Pagamento	342411123456780001235500127027739378739736
147	2024-11-05 09:59:05	Pagamento	262411123456780001235500139220941181176506
148	2024-11-05 08:06:33	Pagamento	472411123456780001235500184204800263241672
149	2024-11-05 09:04:04	Pagamento	362411123456780001235500105184167403485769
150	2024-11-05 09:43:20	Pagamento	142411123456780001235500122568092839125904
151	2024-11-05 08:50:23	Pagamento	392411123456780001235500195471741538183689
152	2024-11-05 09:31:30	Pagamento	332411123456780001235500143938088420096863
153	2024-11-05 08:35:07	Pagamento	172411123456780001235500163567206049912527
154	2024-11-05 08:16:36	Pagamento	402411123456780001235500136696432025130950
155	2024-11-05 09:09:17	Pagamento	322411123456780001235500168210890525446345
156	2024-11-05 08:27:00	Pagamento	472411123456780001235500128065393193190233
157	2024-11-05 08:59:20	Pagamento	372411123456780001235500194982240624217928
158	2024-11-05 09:20:30	Pagamento	302411123456780001235500183006455435279546
159	2024-11-05 08:30:52	Pagamento	262411123456780001235500166436545182815850
160	2024-11-05 09:36:31	Pagamento	272411123456780001235500192431079434305094
161	2024-11-05 09:23:35	Pagamento	152411123456780001235500178771026813409818
162	2024-11-05 08:42:12	Pagamento	162411123456780001235500113141444225783643
163	2024-11-05 08:48:34	Pagamento	272411123456780001235500111685893000599273
164	2024-11-05 08:57:12	Pagamento	492411123456780001235500114457649376908966
165	2024-11-05 08:27:36	Pagamento	382411123456780001235500141867936933977234
166	2024-11-05 08:46:49	Pagamento	192411123456780001235500121503162343698564
167	2024-11-05 09:06:25	Pagamento	372411123456780001235500194215673648130361
168	2024-11-05 08:31:31	Pagamento	492411123456780001235500198737794842147095
169	2024-11-05 08:42:49	Pagamento	382411123456780001235500165644175867406780
170	2024-11-05 09:59:43	Pagamento	332411123456780001235500180847057347365087
171	2024-11-05 08:32:27	Pagamento	152411123456780001235500113795364016876049
172	2024-11-05 08:55:39	Pagamento	342411123456780001235500162223424621462742
173	2024-11-05 09:09:09	Pagamento	242411123456780001235500119885045646975376
174	2024-11-05 08:22:56	Pagamento	492411123456780001235500153963541120036852
175	2024-11-05 08:17:59	Pagamento	162411123456780001235500146862645709939959
176	2024-11-05 08:23:12	Pagamento	112411123456780001235500152206577187026169
177	2024-11-05 09:42:46	Pagamento	242411123456780001235500157212314707514411
178	2024-11-05 09:30:14	Pagamento	482411123456780001235500197513398278985028
179	2024-11-05 08:48:25	Pagamento	202411123456780001235500113679477227900601
180	2024-11-05 09:18:31	Pagamento	162411123456780001235500141351906926710120
181	2024-11-05 09:17:49	Pagamento	142411123456780001235500135545104077975842
182	2024-11-05 09:32:13	Pagamento	222411123456780001235500110259895921947250
183	2024-11-05 08:25:49	Pagamento	192411123456780001235500117972575269890362
184	2024-11-05 09:22:09	Pagamento	192411123456780001235500143216921106890225
185	2024-11-05 08:30:29	Pagamento	172411123456780001235500162354883808607118
186	2024-11-05 08:06:00	Pagamento	282411123456780001235500189694010842567753
187	2024-11-05 08:47:07	Pagamento	192411123456780001235500173881990064824791
188	2024-11-05 08:20:06	Pagamento	112411123456780001235500107852138207512123
189	2024-11-05 09:09:51	Pagamento	252411123456780001235500195442263031936647
190	2024-11-05 08:14:14	Pagamento	132411123456780001235500100394505598831688
191	2024-11-05 08:43:34	Pagamento	142411123456780001235500164444052254639897
192	2024-11-05 09:08:05	Pagamento	292411123456780001235500109907252602387242
193	2024-11-05 08:48:14	Pagamento	432411123456780001235500186135167262782204
194	2024-11-05 08:27:43	Pagamento	132411123456780001235500128111191023075711
195	2024-11-05 08:51:40	Pagamento	502411123456780001235500163382305009927812
196	2024-11-05 09:13:52	Pagamento	342411123456780001235500109233138498038801
197	2024-11-05 08:30:14	Pagamento	192411123456780001235500133290114846063022
198	2024-11-05 08:00:09	Pagamento	482411123456780001235500133462734564483546
199	2024-11-05 08:43:57	Pagamento	182411123456780001235500116787255299864400
200	2024-11-05 09:38:00	Pagamento	342411123456780001235500149673419220509261
201	2024-11-05 08:20:38	Pagamento	202411123456780001235500148809705887717274
202	2024-11-05 08:08:54	Pagamento	172411123456780001235500121771132430775492
203	2024-11-05 09:19:09	Pagamento	312411123456780001235500177824987578600131
204	2024-11-05 09:07:03	Pagamento	332411123456780001235500140147433346660630
205	2024-11-05 08:49:10	Pagamento	342411123456780001235500158627251805406813
206	2024-11-05 08:22:31	Pagamento	202411123456780001235500117069191104186007
207	2024-11-05 08:42:43	Pagamento	212411123456780001235500178298485921585631
208	2024-11-05 08:00:59	Pagamento	232411123456780001235500158682252336329438
209	2024-11-05 08:36:06	Pagamento	272411123456780001235500110100383829348883
210	2024-11-05 08:29:11	Pagamento	342411123456780001235500128311268742442227
211	2024-11-05 09:27:10	Pagamento	312411123456780001235500140349781581552192
212	2024-11-05 09:57:27	Pagamento	162411123456780001235500158951021483360632
213	2024-11-05 09:17:39	Pagamento	292411123456780001235500110444581377131586
214	2024-11-05 08:09:59	Pagamento	422411123456780001235500109576930638983625
215	2024-11-05 09:13:26	Pagamento	162411123456780001235500114032355139956851
216	2024-11-05 08:28:48	Pagamento	312411123456780001235500148458701784438935
217	2024-11-05 09:00:29	Pagamento	412411123456780001235500122207057660953658
218	2024-11-05 09:41:25	Pagamento	152411123456780001235500118003912194744783
219	2024-11-05 08:49:50	Pagamento	492411123456780001235500141394653148125156
220	2024-11-05 08:33:32	Pagamento	382411123456780001235500135394682643356848
221	2024-11-05 08:31:55	Pagamento	172411123456780001235500172525905885694304
222	2024-11-05 09:09:59	Pagamento	282411123456780001235500112463196029946195
223	2024-11-05 09:27:28	Pagamento	352411123456780001235500142494125520352801
224	2024-11-05 08:36:37	Pagamento	402411123456780001235500152917945845154768
225	2024-11-05 09:29:59	Pagamento	472411123456780001235500161051589536838758
226	2024-11-05 09:02:27	Pagamento	112411123456780001235500171365773176724872
227	2024-11-05 08:22:51	Pagamento	112411123456780001235500116851092776810425
228	2024-11-05 09:16:46	Pagamento	212411123456780001235500114231759366767281
229	2024-11-05 08:21:33	Pagamento	262411123456780001235500161052378537919110
230	2024-11-05 09:49:31	Pagamento	332411123456780001235500129905802757206234
231	2024-11-05 08:39:08	Pagamento	162411123456780001235500134628889599184621
232	2024-11-05 09:55:45	Pagamento	122411123456780001235500116902166690909789
233	2024-11-05 09:48:03	Pagamento	472411123456780001235500187546336535711518
234	2024-11-05 08:42:01	Pagamento	262411123456780001235500178834052781850915
235	2024-11-05 09:34:38	Pagamento	502411123456780001235500192737282531944187
236	2024-11-05 09:09:17	Pagamento	432411123456780001235500167261765634394483
237	2024-11-05 08:28:41	Pagamento	142411123456780001235500156880547088553555
238	2024-11-05 08:34:34	Pagamento	422411123456780001235500180234279429096829
239	2024-11-05 08:49:26	Pagamento	352411123456780001235500115057155368826394
240	2024-11-05 09:38:15	Pagamento	352411123456780001235500107152307352399303
241	2024-11-05 08:09:22	Pagamento	182411123456780001235500163572188410189058
242	2024-11-05 08:37:15	Pagamento	222411123456780001235500110294195443401379
243	2024-11-05 08:53:54	Pagamento	242411123456780001235500172317141005424837
244	2024-11-05 09:04:24	Pagamento	442411123456780001235500138315234059743956
245	2024-11-05 08:01:05	Pagamento	372411123456780001235500190787113918327612
246	2024-11-05 09:24:44	Pagamento	462411123456780001235500191702679337094702
247	2024-11-05 09:40:01	Pagamento	252411123456780001235500125729264023883001
248	2024-11-05 09:24:22	Pagamento	362411123456780001235500150289274065430809
249	2024-11-05 08:15:11	Pagamento	262411123456780001235500187676055459611378
250	2024-11-05 09:11:19	Pagamento	152411123456780001235500110658736717221345
251	2024-11-05 08:54:43	Pagamento	222411123456780001235500194902274503221147
252	2024-11-05 08:21:04	Pagamento	132411123456780001235500199633516563856587
253	2024-11-05 08:18:32	Pagamento	412411123456780001235500106417921088927689
254	2023-06-15 09:28:24	Pagamento atividade	372411123456780001235500116598042560404057
255	2024-03-05 09:54:38	Pagamento atividade	122411123456780001235500155601307753220549
256	2022-11-20 10:28:44	Pagamento atividade	322411123456780001235500114229172222711982
257	2023-08-20 08:32:15	Pagamento atividade	172411123456780001235500149812933279493873
258	2024-01-22 09:55:09	Pagamento atividade	282411123456780001235500185325038841270831
259	2024-07-30 08:12:12	Pagamento atividade	182411123456780001235500152773498496483093
260	2022-07-22 09:13:56	Pagamento atividade	382411123456780001235500124829460911863419
261	2023-11-25 09:43:01	Pagamento atividade	122411123456780001235500123160013479553302
262	2023-09-18 08:28:00	Pagamento atividade	172411123456780001235500115806480851443932
263	2022-10-10 10:05:14	Pagamento atividade	302411123456780001235500159371318824781804
264	2023-05-25 09:46:55	Pagamento atividade	402411123456780001235500166168765299642257
265	2022-12-12 10:08:24	Pagamento atividade	112411123456780001235500156693296940912541
266	2023-03-15 09:56:24	Pagamento atividade	432411123456780001235500106492716778922111
267	2024-04-10 08:01:24	Pagamento atividade	462411123456780001235500104367283014832364
268	2023-02-08 09:03:20	Pagamento atividade	502411123456780001235500101516087897393456
269	2022-09-14 08:32:04	Pagamento atividade	452411123456780001235500118538381376289197
270	2022-06-18 08:22:51	Pagamento atividade	312411123456780001235500165238914623718028
271	2024-05-14 09:54:17	Pagamento atividade	322411123456780001235500173537754070131762
272	2024-01-09 10:38:41	Pagamento atividade	452411123456780001235500163897797189821684
273	2023-10-05 09:58:37	Pagamento atividade	472411123456780001235500196647570970861511
274	2022-10-15 16:19:20	Checkout	432411123456780001235500139881075526580034
275	2023-06-02 09:55:51	Checkout	392411123456780001235500149269945167779694
276	2022-02-28 09:24:34	Checkout	262411123456780001235500132052185580654718
277	2023-09-10 16:23:05	Checkout	192411123456780001235500187205151818992794
278	2023-02-22 10:36:59	Checkout	342411123456780001235500118904169015048313
279	2022-05-30 14:41:30	Checkout	332411123456780001235500155764217341701715
280	2021-05-02 09:28:04	Checkout	392411123456780001235500123932108869554482
281	2021-05-03 14:01:08	Checkout	372411123456780001235500189071600240604655
282	2023-12-25 13:25:43	Checkout	272411123456780001235500127871951139793222
283	2021-07-23 17:05:53	Checkout	222411123456780001235500102468769723767128
284	2023-06-18 15:48:07	Checkout	132411123456780001235500167341177306985589
285	2021-10-28 09:58:45	Checkout	362411123456780001235500150175190347855581
286	2023-09-30 13:56:45	Checkout	262411123456780001235500173663967479431961
287	2022-06-07 13:10:17	Checkout	392411123456780001235500138430052069572850
288	2023-06-02 14:42:26	Checkout	422411123456780001235500193461288030667407
289	2021-07-10 16:16:17	Checkout	112411123456780001235500159698706037486436
290	2022-05-10 16:05:22	Checkout	452411123456780001235500120803671631693963
291	2021-09-28 12:26:16	Checkout	322411123456780001235500193394244883703182
292	2023-01-19 08:18:37	Checkout	172411123456780001235500101016740102545292
293	2022-02-14 13:35:40	Checkout	372411123456780001235500166409128164274106
294	2022-11-15 17:04:17	Checkout	502411123456780001235500109701637307059691
295	2024-03-06 09:18:06	Checkout	472411123456780001235500183794239139435425
296	2023-09-17 16:49:45	Checkout	172411123456780001235500145311617339450483
297	2022-12-08 14:45:42	Checkout	382411123456780001235500154699268668336745
298	2021-12-25 14:34:47	Checkout	442411123456780001235500119117162521017953
299	2022-05-20 13:05:07	Checkout	142411123456780001235500158548251911089324
300	2023-10-18 09:03:52	Checkout	312411123456780001235500147415342104236315
301	2022-10-14 11:53:35	Checkout	322411123456780001235500188453456209166691
302	2021-10-19 10:49:50	Checkout	482411123456780001235500142441076617848132
303	2023-08-17 09:05:39	Checkout	162411123456780001235500138623877898090080
304	2023-03-22 12:04:33	Checkout	182411123456780001235500197058930299274017
305	2022-01-16 13:47:36	Checkout	482411123456780001235500157908488766101516
306	2023-04-25 15:04:12	Checkout	182411123456780001235500111192591382490891
307	2023-07-11 13:42:38	Checkout	492411123456780001235500148003255142085457
308	2023-05-29 10:56:17	Checkout	412411123456780001235500136568977944010874
309	2021-06-17 13:17:07	Checkout	272411123456780001235500191393604647494907
310	2022-01-05 11:40:09	Checkout	302411123456780001235500101077600793567141
311	2022-02-07 16:51:57	Checkout	302411123456780001235500179487238419567468
312	2023-12-03 08:01:24	Checkout	132411123456780001235500165044321692667853
313	2023-08-02 15:37:17	Checkout	282411123456780001235500128096940843460092
314	2023-02-09 11:00:55	Checkout	472411123456780001235500147308297577756174
315	2021-06-03 17:38:13	Checkout	192411123456780001235500187817411105796717
316	2021-07-01 08:40:56	Checkout	212411123456780001235500174517358930139090
317	2023-06-26 17:35:29	Checkout	112411123456780001235500134126550136981282
318	2023-01-29 15:52:11	Checkout	422411123456780001235500186114595785683301
319	2023-08-30 14:22:09	Checkout	432411123456780001235500183808098974400305
320	2021-05-16 15:36:52	Checkout	182411123456780001235500192015126013080372
321	2023-09-21 12:06:50	Checkout	442411123456780001235500135400693696784870
322	2022-11-12 08:44:38	Checkout	462411123456780001235500178986502836622349
323	2022-10-30 15:26:57	Checkout	462411123456780001235500180144638432973337
324	2023-01-01 10:54:30	Checkout	482411123456780001235500192383590766166998
325	2024-01-08 09:56:35	Checkout	352411123456780001235500135409996224613577
326	2022-02-20 15:57:27	Checkout	332411123456780001235500157532653695447343
327	2023-07-23 09:18:07	Checkout	302411123456780001235500184917882053286614
328	2021-08-20 08:49:47	Checkout	292411123456780001235500134376883566722492
329	2023-05-30 17:22:37	Checkout	322411123456780001235500141627111369955371
330	2022-05-15 13:42:52	Checkout	342411123456780001235500127706260379652654
331	2022-05-29 12:30:04	Checkout	222411123456780001235500170009393001957013
332	2023-07-15 15:23:09	Checkout	432411123456780001235500134347221092132228
333	2023-01-17 17:32:24	Checkout	372411123456780001235500175325352791069248
334	2023-10-20 11:46:43	Checkout	392411123456780001235500161196470168634507
335	2021-02-23 11:29:45	Checkout	172411123456780001235500198842251461930656
336	2023-02-05 12:23:08	Checkout	152411123456780001235500130511730356850660
337	2023-05-17 09:52:09	Checkout	412411123456780001235500130383747427339850
338	2021-11-18 17:12:36	Checkout	182411123456780001235500107386272469976669
339	2023-07-25 09:09:31	Checkout	362411123456780001235500110223704445357346
340	2022-10-16 09:19:00	Checkout	202411123456780001235500141581425216928081
341	2021-02-26 17:00:13	Checkout	202411123456780001235500166831633536268793
342	2022-04-30 09:43:13	Checkout	112411123456780001235500173315575703704074
343	2022-04-13 15:13:03	Checkout	192411123456780001235500186020727657743742
344	2024-11-05 08:22:27	Aluguel	132411123456780001235500182094214400910349
345	2024-11-05 08:45:21	Aluguel	482411123456780001235500102743859358344046
346	2024-11-05 09:31:18	Aluguel	152411123456780001235500135255439432582065
347	2024-11-05 09:48:52	Aluguel	492411123456780001235500137291880017737858
348	2024-11-05 09:44:31	Aluguel	332411123456780001235500102677606432007057
349	2024-11-05 09:55:49	Aluguel	362411123456780001235500197138678122780674
350	2024-11-05 09:04:13	Aluguel	372411123456780001235500132491762832411069
351	2024-11-05 08:16:55	Aluguel	472411123456780001235500170753338359866626
352	2024-11-05 08:53:31	Aluguel	182411123456780001235500156029398351561339
353	2024-11-05 08:35:57	Aluguel	152411123456780001235500129564955829511965
354	2024-11-05 09:19:24	Aluguel	302411123456780001235500142616585895115453
355	2024-11-05 09:38:36	Aluguel	432411123456780001235500138420156043940050
356	2024-11-05 09:02:36	Aluguel	322411123456780001235500193895356566172783
357	2024-11-05 09:55:28	Aluguel	112411123456780001235500176903950163204085
358	2024-11-05 08:36:15	Aluguel	412411123456780001235500168661796960634388
359	2024-11-05 09:00:34	Aluguel	232411123456780001235500123310334023228384
360	2024-11-05 08:13:09	Aluguel	462411123456780001235500138456356381113293
361	2024-11-05 09:23:27	Aluguel	172411123456780001235500174884039478899250
362	2024-11-05 09:55:36	Aluguel	382411123456780001235500111893580134485869
363	2024-11-05 08:24:18	Aluguel	132411123456780001235500130805770098211115
364	2024-11-05 08:37:46	Aluguel	412411123456780001235500128751439788363220
365	2024-11-05 08:42:48	Aluguel	472411123456780001235500158281542309704929
366	2024-11-05 09:09:38	Aluguel	112411123456780001235500176193288578217707
367	2024-11-05 08:54:16	Aluguel	502411123456780001235500114602753313064750
368	2024-11-05 08:52:54	Aluguel	212411123456780001235500139562346564867076
369	2024-11-05 08:03:52	Aluguel	272411123456780001235500187242651216251163
370	2024-11-05 09:20:24	Aluguel	132411123456780001235500130312582780084544
371	2024-11-05 08:55:09	Aluguel	132411123456780001235500140482976471607839
372	2024-11-05 08:47:47	Aluguel	212411123456780001235500120400449970339874
373	2024-11-05 08:06:32	Aluguel	392411123456780001235500157569159780691369
374	2024-11-05 08:19:14	Aluguel	342411123456780001235500133675963815491778
375	2024-11-05 09:08:24	Aluguel	382411123456780001235500143448365326153680
376	2024-11-05 08:50:52	Aluguel	442411123456780001235500129148765648130280
377	2024-11-05 08:27:46	Aluguel	332411123456780001235500109876393105933380
378	2024-11-05 09:58:43	Aluguel	252411123456780001235500161507164033873634
379	2024-11-05 09:59:54	Aluguel	132411123456780001235500141117911316571596
380	2024-11-05 08:04:02	Aluguel	472411123456780001235500121599808743924322
381	2024-11-05 08:34:42	Aluguel	282411123456780001235500121747048463524241
382	2024-11-05 09:02:51	Aluguel	282411123456780001235500100874365540190026
383	2024-11-05 08:19:16	Aluguel	262411123456780001235500163163348207779992
384	2024-11-05 08:08:31	Aluguel	362411123456780001235500117737503972934083
385	2024-11-05 08:06:28	Aluguel	252411123456780001235500144600372215087530
386	2024-11-05 09:27:53	Aluguel	312411123456780001235500137132322976115954
387	2024-11-05 09:45:57	Aluguel	132411123456780001235500171650256948933881
388	2024-11-05 08:44:45	Aluguel	202411123456780001235500119834756136325288
389	2024-11-05 09:32:19	Aluguel	442411123456780001235500110065206750885505
390	2024-11-05 09:19:38	Aluguel	372411123456780001235500127756030128810167
391	2024-11-05 08:16:01	Aluguel	352411123456780001235500128148843769428476
392	2024-11-05 09:09:22	Aluguel	462411123456780001235500135297798360424304
393	2024-11-05 09:46:35	Aluguel	232411123456780001235500194787216906713318
\.


--
-- TOC entry 5225 (class 0 OID 40535)
-- Dependencies: 278
-- Data for Name: transacao_extorno; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transacao_extorno (id_transacao, data_extorno, motivo_extorno) FROM stdin;
274	2022-10-20 10:01:00	Desconto Reserva Antecipada
290	2022-05-21 08:50:00	Cobrança indevida
316	2022-07-03 09:00:00	Desconto Reserva Antecipada
330	2022-05-18 09:32:00	Desconto Fidelidade
331	2022-06-07 09:00:00	Cobrança indevida
332	2022-07-24 09:47:00	Desconto Fidelidade
338	2021-11-23 10:05:00	Cobrança indevida
\.


--
-- TOC entry 5227 (class 0 OID 40543)
-- Dependencies: 280
-- Data for Name: transporte; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transporte (id_transporte, placa, modelo, capacidade) FROM stdin;
1	jnh8m5	 Scania K	44
2	shv7i1	 Renault 	21
3	dbr0q6	 RAM ProM	17
4	nlg2i1	 Volksbus	15
5	npv7e2	 Hiace	28
6	sid5x1	 Mercedes	28
7	ujd2u7	 Master	21
8	qmm4o9	 Peugeot 	17
9	gnl6l9	 Comil Ca	19
10	pti9a9	 Ford Tou	27
11	vss5v5	 Neobus S	17
12	eqx6b5	 Toyota P	29
13	arr1m6	 Mascarel	24
14	edn8k0	 Marcopol	27
15	kut6r2	 Irizar i	28
16	xhg1p8	Sprinter	23
17	mwa5i4	 Transit	24
18	cub5s3	 Fiat Scu	17
19	omj6v3	 Iveco Da	26
20	ylf8g9	 Kombi	20
21	jhu6e3	 Volare W	17
22	alx5l5	 Ducato	21
23	jzt9u9	 Hyundai 	23
24	hyq7t6	 Sprinter	24
25	ufd3c7	Hiace	21
\.


--
-- TOC entry 5229 (class 0 OID 40550)
-- Dependencies: 282
-- Data for Name: unidade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.unidade (id_unidade, nome_fantasia, tipo, setor, cep, numero) FROM stdin;
1	Hotel Vista do Sol	Chalé	Família	97235-829      	2348
2	Refúgio da Montanha	Pousada	Família	57912-287      	381
3	Oásis do Amanhecer	Hotel Fazenda	Adultos	72765-467      	2725
4	Pousada Serenidade	Pousada	Família	53376-970      	6
5	Château de Lumière	Resort	Adultos	67334-159      	522
6	Hotel Safari Dreams	Tradicional	Pet-friendly	21782-188      	1574
7	Paraíso das Palmeiras	Tradicional	Beira-Mar	20894-558      	964
8	Diamante Azul Hotel	Tradicional	Trabalho	76588-618      	775
9	Ilha do Descanso	Resort	Beira-Mar	96706-703      	30
10	Vila Tropical Escape	Hotel Fazenda	Pet-friendly	25601-957      	561
11	Encanto Urbano	Tradicional	Trabalho	84241-931      	3
12	Floresta Encantada Lodge	Chalé	Adultos	64461-574      	305
13	Estalagem do Pôr do Sol	Pousada	Família	36640-960      	2995
14	Grand Harmonia	Resort	Luxo	81709-549      	1286
15	Jardins do Éden	Resort	Luxo	43062-063      	541
\.


--
-- TOC entry 5230 (class 0 OID 40556)
-- Dependencies: 283
-- Data for Name: utiliza; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.utiliza (id_atividade, id_equipamento, obrigatoriedade) FROM stdin;
1	1	f
2	15	f
3	14	t
8	22	f
5	21	t
6	11	f
7	16	f
8	4	f
9	7	f
10	2	t
13	23	t
\.


--
-- TOC entry 5261 (class 0 OID 0)
-- Dependencies: 217
-- Name: acomodacao_id_acomodacao_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.acomodacao_id_acomodacao_seq', 200, true);


--
-- TOC entry 5262 (class 0 OID 0)
-- Dependencies: 219
-- Name: amenidade_id_amenidade_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.amenidade_id_amenidade_seq', 233, true);


--
-- TOC entry 5263 (class 0 OID 0)
-- Dependencies: 221
-- Name: atividade_id_atividade_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.atividade_id_atividade_seq', 20, true);


--
-- TOC entry 5264 (class 0 OID 0)
-- Dependencies: 224
-- Name: carro_id_carro_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.carro_id_carro_seq', 55, true);


--
-- TOC entry 5265 (class 0 OID 0)
-- Dependencies: 226
-- Name: cliente_id_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_id_cliente_seq', 20, true);


--
-- TOC entry 5266 (class 0 OID 0)
-- Dependencies: 228
-- Name: condominio_id_condominio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.condominio_id_condominio_seq', 15, true);


--
-- TOC entry 5267 (class 0 OID 0)
-- Dependencies: 232
-- Name: dependencia_id_dependencia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dependencia_id_dependencia_seq', 103, true);


--
-- TOC entry 5268 (class 0 OID 0)
-- Dependencies: 236
-- Name: entrega_robo_id_entrega_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.entrega_robo_id_entrega_seq', 999, true);


--
-- TOC entry 5269 (class 0 OID 0)
-- Dependencies: 238
-- Name: equipamento_id_equipamento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.equipamento_id_equipamento_seq', 23, true);


--
-- TOC entry 5270 (class 0 OID 0)
-- Dependencies: 244
-- Name: funcionario_id_funcionario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.funcionario_id_funcionario_seq', 253, true);


--
-- TOC entry 5271 (class 0 OID 0)
-- Dependencies: 247
-- Name: hospede_id_hospede_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hospede_id_hospede_seq', 364, true);


--
-- TOC entry 5272 (class 0 OID 0)
-- Dependencies: 250
-- Name: loja_id_loja_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.loja_id_loja_seq', 50, true);


--
-- TOC entry 5273 (class 0 OID 0)
-- Dependencies: 252
-- Name: monitor_id_monitor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.monitor_id_monitor_seq', 7, true);


--
-- TOC entry 5274 (class 0 OID 0)
-- Dependencies: 254
-- Name: motorista_id_motorista_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.motorista_id_motorista_seq', 5, true);


--
-- TOC entry 5275 (class 0 OID 0)
-- Dependencies: 256
-- Name: ocorrencia_id_ocorrencia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ocorrencia_id_ocorrencia_seq', 5, true);


--
-- TOC entry 5276 (class 0 OID 0)
-- Dependencies: 260
-- Name: parceiro_id_parceiro_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.parceiro_id_parceiro_seq', 8, true);


--
-- TOC entry 5277 (class 0 OID 0)
-- Dependencies: 262
-- Name: particular_id_requisicao_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.particular_id_requisicao_seq', 1, false);


--
-- TOC entry 5278 (class 0 OID 0)
-- Dependencies: 258
-- Name: produto_frigobar_id_produto_frigobar_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produto_frigobar_id_produto_frigobar_seq', 800, true);


--
-- TOC entry 5279 (class 0 OID 0)
-- Dependencies: 265
-- Name: produto_id_produto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produto_id_produto_seq', 876, true);


--
-- TOC entry 5280 (class 0 OID 0)
-- Dependencies: 268
-- Name: requisicao_id_requisicao_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.requisicao_id_requisicao_seq', 10, true);


--
-- TOC entry 5281 (class 0 OID 0)
-- Dependencies: 270
-- Name: reserva_id_reserva_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reserva_id_reserva_seq', 260, true);


--
-- TOC entry 5282 (class 0 OID 0)
-- Dependencies: 272
-- Name: saida_id_transacao_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.saida_id_transacao_seq', 1, false);


--
-- TOC entry 5283 (class 0 OID 0)
-- Dependencies: 276
-- Name: transacao_id_transacao_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transacao_id_transacao_seq', 1, false);


--
-- TOC entry 5284 (class 0 OID 0)
-- Dependencies: 279
-- Name: transporte_id_transporte_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transporte_id_transporte_seq', 25, true);


--
-- TOC entry 5285 (class 0 OID 0)
-- Dependencies: 281
-- Name: unidade_id_unidade_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.unidade_id_unidade_seq', 15, true);


--
-- TOC entry 4907 (class 2606 OID 40406)
-- Name: externa fkati_ext_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.externa
    ADD CONSTRAINT fkati_ext_id PRIMARY KEY (id_atividade);


--
-- TOC entry 4890 (class 2606 OID 40370)
-- Name: entrada fkcheckout_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entrada
    ADD CONSTRAINT fkcheckout_id UNIQUE (id_reserva);


--
-- TOC entry 4882 (class 2606 OID 40351)
-- Name: cozinha fkdep_coz_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cozinha
    ADD CONSTRAINT fkdep_coz_id PRIMARY KEY (id_dependencia);


--
-- TOC entry 4903 (class 2606 OID 40396)
-- Name: estacionamento fkdep_est_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estacionamento
    ADD CONSTRAINT fkdep_est_id PRIMARY KEY (id_dependencia);


--
-- TOC entry 4905 (class 2606 OID 40401)
-- Name: evento fkdep_eve_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento
    ADD CONSTRAINT fkdep_eve_id PRIMARY KEY (id_dependencia);


--
-- TOC entry 4917 (class 2606 OID 40430)
-- Name: lavanderia fkdep_lav_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lavanderia
    ADD CONSTRAINT fkdep_lav_id PRIMARY KEY (id_dependencia);


--
-- TOC entry 4935 (class 2606 OID 40484)
-- Name: piscina fkdep_pis_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.piscina
    ADD CONSTRAINT fkdep_pis_id PRIMARY KEY (id_dependencia);


--
-- TOC entry 4900 (class 2606 OID 40389)
-- Name: estaciona fkest_car_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estaciona
    ADD CONSTRAINT fkest_car_id PRIMARY KEY (id_carro);


--
-- TOC entry 4875 (class 2606 OID 40341)
-- Name: condominio fkestabelece_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.condominio
    ADD CONSTRAINT fkestabelece_id UNIQUE (id_unidade);


--
-- TOC entry 4912 (class 2606 OID 40418)
-- Name: geral fkreq_ger_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.geral
    ADD CONSTRAINT fkreq_ger_id PRIMARY KEY (id_requisicao);


--
-- TOC entry 4933 (class 2606 OID 40479)
-- Name: particular fkreq_par_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.particular
    ADD CONSTRAINT fkreq_par_id PRIMARY KEY (id_requisicao);


--
-- TOC entry 4961 (class 2606 OID 40541)
-- Name: transacao_extorno fkretorna_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transacao_extorno
    ADD CONSTRAINT fkretorna_id UNIQUE (id_transacao);


--
-- TOC entry 4892 (class 2606 OID 40368)
-- Name: entrada fktra_ent_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entrada
    ADD CONSTRAINT fktra_ent_id PRIMARY KEY (id_transacao);


--
-- TOC entry 4950 (class 2606 OID 40517)
-- Name: saida fktra_sai_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.saida
    ADD CONSTRAINT fktra_sai_id PRIMARY KEY (id_transacao);


--
-- TOC entry 4858 (class 2606 OID 40299)
-- Name: acomodacao id_acomodacao_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acomodacao
    ADD CONSTRAINT id_acomodacao_id PRIMARY KEY (id_acomodacao);


--
-- TOC entry 4860 (class 2606 OID 40306)
-- Name: amenidade id_amenidade; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.amenidade
    ADD CONSTRAINT id_amenidade PRIMARY KEY (id_amenidade);


--
-- TOC entry 4864 (class 2606 OID 40313)
-- Name: atividade id_atividade_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atividade
    ADD CONSTRAINT id_atividade_id PRIMARY KEY (id_atividade);


--
-- TOC entry 4867 (class 2606 OID 40318)
-- Name: avalia id_avalia; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.avalia
    ADD CONSTRAINT id_avalia PRIMARY KEY (id_hospede, id_atividade);


--
-- TOC entry 4870 (class 2606 OID 40325)
-- Name: carro id_carro_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carro
    ADD CONSTRAINT id_carro_id PRIMARY KEY (id_carro);


--
-- TOC entry 4873 (class 2606 OID 40332)
-- Name: cliente id_cliente; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT id_cliente PRIMARY KEY (id_cliente);


--
-- TOC entry 4877 (class 2606 OID 40339)
-- Name: condominio id_condominio; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.condominio
    ADD CONSTRAINT id_condominio PRIMARY KEY (id_condominio);


--
-- TOC entry 4880 (class 2606 OID 40346)
-- Name: conduz id_conduz; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conduz
    ADD CONSTRAINT id_conduz PRIMARY KEY (id_atividade, id_transporte);


--
-- TOC entry 4941 (class 2606 OID 40496)
-- Name: consome id_consome; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consome
    ADD CONSTRAINT id_consome PRIMARY KEY (id_reserva, id_produto_frigobar, data);


--
-- TOC entry 4885 (class 2606 OID 40358)
-- Name: dependencia id_dependencia; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dependencia
    ADD CONSTRAINT id_dependencia PRIMARY KEY (id_dependencia);


--
-- TOC entry 4888 (class 2606 OID 40363)
-- Name: dirige id_dirige; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dirige
    ADD CONSTRAINT id_dirige PRIMARY KEY (id_motorista, id_transporte);


--
-- TOC entry 4895 (class 2606 OID 40377)
-- Name: entrega_robo id_entrega_robo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entrega_robo
    ADD CONSTRAINT id_entrega_robo PRIMARY KEY (id_entrega);


--
-- TOC entry 4898 (class 2606 OID 40384)
-- Name: equipamento id_equipamento_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipamento
    ADD CONSTRAINT id_equipamento_id PRIMARY KEY (id_equipamento);


--
-- TOC entry 4910 (class 2606 OID 40413)
-- Name: funcionario id_funcionario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT id_funcionario PRIMARY KEY (id_funcionario);


--
-- TOC entry 4915 (class 2606 OID 40425)
-- Name: hospede id_hospede; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hospede
    ADD CONSTRAINT id_hospede PRIMARY KEY (id_hospede);


--
-- TOC entry 4919 (class 2606 OID 40437)
-- Name: loja id_loja; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loja
    ADD CONSTRAINT id_loja PRIMARY KEY (id_loja);


--
-- TOC entry 4922 (class 2606 OID 40444)
-- Name: monitor id_monitor_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.monitor
    ADD CONSTRAINT id_monitor_id PRIMARY KEY (id_monitor);


--
-- TOC entry 4924 (class 2606 OID 40451)
-- Name: motorista id_motorista_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.motorista
    ADD CONSTRAINT id_motorista_id PRIMARY KEY (id_motorista);


--
-- TOC entry 4926 (class 2606 OID 40458)
-- Name: ocorrencia id_ocorrencia; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ocorrencia
    ADD CONSTRAINT id_ocorrencia PRIMARY KEY (id_ocorrencia);


--
-- TOC entry 4931 (class 2606 OID 40472)
-- Name: parceiro id_parceiro_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parceiro
    ADD CONSTRAINT id_parceiro_id PRIMARY KEY (id_parceiro);


--
-- TOC entry 4937 (class 2606 OID 40491)
-- Name: produto id_produto; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT id_produto PRIMARY KEY (id_produto);


--
-- TOC entry 4929 (class 2606 OID 40465)
-- Name: produto_frigobar id_produto_frigobar; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto_frigobar
    ADD CONSTRAINT id_produto_frigobar PRIMARY KEY (id_produto_frigobar);


--
-- TOC entry 4943 (class 2606 OID 40503)
-- Name: requisicao id_requisicao; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.requisicao
    ADD CONSTRAINT id_requisicao PRIMARY KEY (id_requisicao);


--
-- TOC entry 4946 (class 2606 OID 40510)
-- Name: reserva id_reserva_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT id_reserva_id PRIMARY KEY (id_reserva);


--
-- TOC entry 4953 (class 2606 OID 40522)
-- Name: solicita id_solicita; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicita
    ADD CONSTRAINT id_solicita PRIMARY KEY (id_reserva, id_produto);


--
-- TOC entry 4957 (class 2606 OID 40527)
-- Name: supervisiona id_supervisiona; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supervisiona
    ADD CONSTRAINT id_supervisiona PRIMARY KEY (id_atividade, id_monitor);


--
-- TOC entry 4959 (class 2606 OID 40534)
-- Name: transacao id_transacao; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transacao
    ADD CONSTRAINT id_transacao PRIMARY KEY (id_transacao);


--
-- TOC entry 4963 (class 2606 OID 40539)
-- Name: transacao_extorno id_transacao_extorno; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transacao_extorno
    ADD CONSTRAINT id_transacao_extorno PRIMARY KEY (id_transacao, data_extorno);


--
-- TOC entry 4965 (class 2606 OID 40548)
-- Name: transporte id_transporte_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transporte
    ADD CONSTRAINT id_transporte_id PRIMARY KEY (id_transporte);


--
-- TOC entry 4967 (class 2606 OID 40555)
-- Name: unidade id_unidade_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.unidade
    ADD CONSTRAINT id_unidade_id PRIMARY KEY (id_unidade);


--
-- TOC entry 4969 (class 2606 OID 40560)
-- Name: utiliza id_utiliza; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utiliza
    ADD CONSTRAINT id_utiliza PRIMARY KEY (id_equipamento, id_atividade);


--
-- TOC entry 4856 (class 1259 OID 40801)
-- Name: equ_acomo_unida_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX equ_acomo_unida_ind ON public.acomodacao USING btree (id_unidade);


--
-- TOC entry 4862 (class 1259 OID 40803)
-- Name: equ_ativi_parce_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX equ_ativi_parce_ind ON public.atividade USING btree (id_parceiro);


--
-- TOC entry 4878 (class 1259 OID 40807)
-- Name: equ_condu_trans_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX equ_condu_trans_ind ON public.conduz USING btree (id_transporte);


--
-- TOC entry 4883 (class 1259 OID 40808)
-- Name: equ_depen_unida_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX equ_depen_unida_ind ON public.dependencia USING btree (id_unidade);


--
-- TOC entry 4886 (class 1259 OID 40809)
-- Name: equ_dirig_trans_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX equ_dirig_trans_ind ON public.dirige USING btree (id_transporte);


--
-- TOC entry 4908 (class 1259 OID 40813)
-- Name: equ_funci_unida_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX equ_funci_unida_ind ON public.funcionario USING btree (id_unidade);


--
-- TOC entry 4913 (class 1259 OID 40814)
-- Name: equ_hospe_reser_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX equ_hospe_reser_ind ON public.hospede USING btree (id_reserva);


--
-- TOC entry 4955 (class 1259 OID 40824)
-- Name: equ_super_monit_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX equ_super_monit_ind ON public.supervisiona USING btree (id_monitor);


--
-- TOC entry 4939 (class 1259 OID 40818)
-- Name: fkcon_pro_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fkcon_pro_ind ON public.consome USING btree (id_produto_frigobar);


--
-- TOC entry 4927 (class 1259 OID 40816)
-- Name: fkguarda_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fkguarda_ind ON public.produto_frigobar USING btree (id_acomodacao);


--
-- TOC entry 4861 (class 1259 OID 40802)
-- Name: ref_ameni_acomo_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ref_ameni_acomo_ind ON public.amenidade USING btree (id_acomodacao);


--
-- TOC entry 4865 (class 1259 OID 40804)
-- Name: ref_ativi_unida_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ref_ativi_unida_ind ON public.atividade USING btree (id_unidade);


--
-- TOC entry 4868 (class 1259 OID 40805)
-- Name: ref_avali_ativi_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ref_avali_ativi_ind ON public.avalia USING btree (id_atividade);


--
-- TOC entry 4871 (class 1259 OID 40806)
-- Name: ref_carro_reser_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ref_carro_reser_ind ON public.carro USING btree (id_reserva);


--
-- TOC entry 4893 (class 1259 OID 40810)
-- Name: ref_entra_loja_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ref_entra_loja_ind ON public.entrada USING btree (id_loja);


--
-- TOC entry 4896 (class 1259 OID 40811)
-- Name: ref_entre_acomo_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ref_entre_acomo_ind ON public.entrega_robo USING btree (id_acomodacao);


--
-- TOC entry 4901 (class 1259 OID 40812)
-- Name: ref_estac_estac_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ref_estac_estac_ind ON public.estaciona USING btree (id_dependencia);


--
-- TOC entry 4920 (class 1259 OID 40815)
-- Name: ref_loja_condo_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ref_loja_condo_ind ON public.loja USING btree (id_condominio);


--
-- TOC entry 4938 (class 1259 OID 40817)
-- Name: ref_produ_cozin_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ref_produ_cozin_ind ON public.produto USING btree (id_dependencia);


--
-- TOC entry 4944 (class 1259 OID 40819)
-- Name: ref_requi_clien_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ref_requi_clien_ind ON public.requisicao USING btree (id_cliente);


--
-- TOC entry 4947 (class 1259 OID 40821)
-- Name: ref_reser_acomo_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ref_reser_acomo_ind ON public.reserva USING btree (id_acomodacao);


--
-- TOC entry 4948 (class 1259 OID 40820)
-- Name: ref_reser_clien_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ref_reser_clien_ind ON public.reserva USING btree (id_cliente);


--
-- TOC entry 4951 (class 1259 OID 40822)
-- Name: ref_saida_funci_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ref_saida_funci_ind ON public.saida USING btree (id_funcionario);


--
-- TOC entry 4954 (class 1259 OID 40823)
-- Name: ref_solic_produ_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ref_solic_produ_ind ON public.solicita USING btree (id_produto);


--
-- TOC entry 4970 (class 1259 OID 40825)
-- Name: ref_utili_ativi_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ref_utili_ativi_ind ON public.utiliza USING btree (id_atividade);


--
-- TOC entry 4971 (class 2606 OID 40561)
-- Name: acomodacao equ_acomo_unida_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acomodacao
    ADD CONSTRAINT equ_acomo_unida_fk FOREIGN KEY (id_unidade) REFERENCES public.unidade(id_unidade);


--
-- TOC entry 4973 (class 2606 OID 40571)
-- Name: atividade equ_ativi_parce_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atividade
    ADD CONSTRAINT equ_ativi_parce_fk FOREIGN KEY (id_parceiro) REFERENCES public.parceiro(id_parceiro);


--
-- TOC entry 4979 (class 2606 OID 40606)
-- Name: conduz equ_condu_exter; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conduz
    ADD CONSTRAINT equ_condu_exter FOREIGN KEY (id_atividade) REFERENCES public.externa(id_atividade);


--
-- TOC entry 4980 (class 2606 OID 40601)
-- Name: conduz equ_condu_trans_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conduz
    ADD CONSTRAINT equ_condu_trans_fk FOREIGN KEY (id_transporte) REFERENCES public.transporte(id_transporte);


--
-- TOC entry 4982 (class 2606 OID 40616)
-- Name: dependencia equ_depen_unida_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dependencia
    ADD CONSTRAINT equ_depen_unida_fk FOREIGN KEY (id_unidade) REFERENCES public.unidade(id_unidade);


--
-- TOC entry 4983 (class 2606 OID 40626)
-- Name: dirige equ_dirig_motor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dirige
    ADD CONSTRAINT equ_dirig_motor FOREIGN KEY (id_motorista) REFERENCES public.motorista(id_motorista);


--
-- TOC entry 4984 (class 2606 OID 40621)
-- Name: dirige equ_dirig_trans_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dirige
    ADD CONSTRAINT equ_dirig_trans_fk FOREIGN KEY (id_transporte) REFERENCES public.transporte(id_transporte);


--
-- TOC entry 4994 (class 2606 OID 40676)
-- Name: funcionario equ_funci_unida_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT equ_funci_unida_fk FOREIGN KEY (id_unidade) REFERENCES public.unidade(id_unidade);


--
-- TOC entry 4996 (class 2606 OID 40686)
-- Name: hospede equ_hospe_reser_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hospede
    ADD CONSTRAINT equ_hospe_reser_fk FOREIGN KEY (id_reserva) REFERENCES public.reserva(id_reserva);


--
-- TOC entry 5014 (class 2606 OID 40781)
-- Name: supervisiona equ_super_ativi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supervisiona
    ADD CONSTRAINT equ_super_ativi FOREIGN KEY (id_atividade) REFERENCES public.atividade(id_atividade);


--
-- TOC entry 5015 (class 2606 OID 40776)
-- Name: supervisiona equ_super_monit_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supervisiona
    ADD CONSTRAINT equ_super_monit_fk FOREIGN KEY (id_monitor) REFERENCES public.monitor(id_monitor);


--
-- TOC entry 5017 (class 2606 OID 40791)
-- Name: utiliza equ_utili_equip; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utiliza
    ADD CONSTRAINT equ_utili_equip FOREIGN KEY (id_equipamento) REFERENCES public.equipamento(id_equipamento);


--
-- TOC entry 5004 (class 2606 OID 40731)
-- Name: consome fkcon_pro_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consome
    ADD CONSTRAINT fkcon_pro_fk FOREIGN KEY (id_produto_frigobar) REFERENCES public.produto_frigobar(id_produto_frigobar);


--
-- TOC entry 5005 (class 2606 OID 40726)
-- Name: consome fkcon_res; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consome
    ADD CONSTRAINT fkcon_res FOREIGN KEY (id_reserva) REFERENCES public.reserva(id_reserva);


--
-- TOC entry 5000 (class 2606 OID 40706)
-- Name: produto_frigobar fkguarda_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto_frigobar
    ADD CONSTRAINT fkguarda_fk FOREIGN KEY (id_acomodacao) REFERENCES public.acomodacao(id_acomodacao);


--
-- TOC entry 4981 (class 2606 OID 40611)
-- Name: cozinha id_cozin_depen_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cozinha
    ADD CONSTRAINT id_cozin_depen_fk FOREIGN KEY (id_dependencia) REFERENCES public.dependencia(id_dependencia);


--
-- TOC entry 4985 (class 2606 OID 40631)
-- Name: entrada id_entra_trans_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entrada
    ADD CONSTRAINT id_entra_trans_fk FOREIGN KEY (id_transacao) REFERENCES public.transacao(id_transacao);


--
-- TOC entry 4989 (class 2606 OID 40651)
-- Name: estaciona id_estac_carro_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estaciona
    ADD CONSTRAINT id_estac_carro_fk FOREIGN KEY (id_carro) REFERENCES public.carro(id_carro);


--
-- TOC entry 4991 (class 2606 OID 40661)
-- Name: estacionamento id_estac_depen_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estacionamento
    ADD CONSTRAINT id_estac_depen_fk FOREIGN KEY (id_dependencia) REFERENCES public.dependencia(id_dependencia);


--
-- TOC entry 4992 (class 2606 OID 40666)
-- Name: evento id_event_depen_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento
    ADD CONSTRAINT id_event_depen_fk FOREIGN KEY (id_dependencia) REFERENCES public.dependencia(id_dependencia);


--
-- TOC entry 4993 (class 2606 OID 40671)
-- Name: externa id_exter_ativi_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.externa
    ADD CONSTRAINT id_exter_ativi_fk FOREIGN KEY (id_atividade) REFERENCES public.atividade(id_atividade);


--
-- TOC entry 4995 (class 2606 OID 40681)
-- Name: geral id_geral_requi_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.geral
    ADD CONSTRAINT id_geral_requi_fk FOREIGN KEY (id_requisicao) REFERENCES public.requisicao(id_requisicao);


--
-- TOC entry 4997 (class 2606 OID 40691)
-- Name: lavanderia id_lavan_depen_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lavanderia
    ADD CONSTRAINT id_lavan_depen_fk FOREIGN KEY (id_dependencia) REFERENCES public.dependencia(id_dependencia);


--
-- TOC entry 5001 (class 2606 OID 40711)
-- Name: particular id_parti_requi_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.particular
    ADD CONSTRAINT id_parti_requi_fk FOREIGN KEY (id_requisicao) REFERENCES public.requisicao(id_requisicao);


--
-- TOC entry 5002 (class 2606 OID 40716)
-- Name: piscina id_pisci_depen_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.piscina
    ADD CONSTRAINT id_pisci_depen_fk FOREIGN KEY (id_dependencia) REFERENCES public.dependencia(id_dependencia);


--
-- TOC entry 5009 (class 2606 OID 40751)
-- Name: saida id_saida_trans_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.saida
    ADD CONSTRAINT id_saida_trans_fk FOREIGN KEY (id_transacao) REFERENCES public.transacao(id_transacao);


--
-- TOC entry 4972 (class 2606 OID 40566)
-- Name: amenidade ref_ameni_acomo_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.amenidade
    ADD CONSTRAINT ref_ameni_acomo_fk FOREIGN KEY (id_acomodacao) REFERENCES public.acomodacao(id_acomodacao);


--
-- TOC entry 4974 (class 2606 OID 40576)
-- Name: atividade ref_ativi_unida_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atividade
    ADD CONSTRAINT ref_ativi_unida_fk FOREIGN KEY (id_unidade) REFERENCES public.unidade(id_unidade);


--
-- TOC entry 4975 (class 2606 OID 40586)
-- Name: avalia ref_avali_ativi_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.avalia
    ADD CONSTRAINT ref_avali_ativi_fk FOREIGN KEY (id_atividade) REFERENCES public.atividade(id_atividade);


--
-- TOC entry 4976 (class 2606 OID 40581)
-- Name: avalia ref_avali_hospe; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.avalia
    ADD CONSTRAINT ref_avali_hospe FOREIGN KEY (id_hospede) REFERENCES public.hospede(id_hospede);


--
-- TOC entry 4977 (class 2606 OID 40591)
-- Name: carro ref_carro_reser_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carro
    ADD CONSTRAINT ref_carro_reser_fk FOREIGN KEY (id_reserva) REFERENCES public.reserva(id_reserva);


--
-- TOC entry 4986 (class 2606 OID 40636)
-- Name: entrada ref_entra_loja_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entrada
    ADD CONSTRAINT ref_entra_loja_fk FOREIGN KEY (id_loja) REFERENCES public.loja(id_loja);


--
-- TOC entry 4988 (class 2606 OID 40646)
-- Name: entrega_robo ref_entre_acomo_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entrega_robo
    ADD CONSTRAINT ref_entre_acomo_fk FOREIGN KEY (id_acomodacao) REFERENCES public.acomodacao(id_acomodacao);


--
-- TOC entry 4990 (class 2606 OID 40656)
-- Name: estaciona ref_estac_estac_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estaciona
    ADD CONSTRAINT ref_estac_estac_fk FOREIGN KEY (id_dependencia) REFERENCES public.estacionamento(id_dependencia);


--
-- TOC entry 4998 (class 2606 OID 40696)
-- Name: loja ref_loja_condo_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loja
    ADD CONSTRAINT ref_loja_condo_fk FOREIGN KEY (id_condominio) REFERENCES public.condominio(id_condominio);


--
-- TOC entry 4999 (class 2606 OID 40701)
-- Name: ocorrencia ref_ocorr_ativi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ocorrencia
    ADD CONSTRAINT ref_ocorr_ativi FOREIGN KEY (id_atividade) REFERENCES public.atividade(id_atividade);


--
-- TOC entry 5003 (class 2606 OID 40721)
-- Name: produto ref_produ_cozin_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT ref_produ_cozin_fk FOREIGN KEY (id_dependencia) REFERENCES public.cozinha(id_dependencia);


--
-- TOC entry 5006 (class 2606 OID 40736)
-- Name: requisicao ref_requi_clien_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.requisicao
    ADD CONSTRAINT ref_requi_clien_fk FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);


--
-- TOC entry 5007 (class 2606 OID 40746)
-- Name: reserva ref_reser_acomo_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT ref_reser_acomo_fk FOREIGN KEY (id_acomodacao) REFERENCES public.acomodacao(id_acomodacao);


--
-- TOC entry 5008 (class 2606 OID 40741)
-- Name: reserva ref_reser_clien_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT ref_reser_clien_fk FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);


--
-- TOC entry 5010 (class 2606 OID 40756)
-- Name: saida ref_saida_funci_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.saida
    ADD CONSTRAINT ref_saida_funci_fk FOREIGN KEY (id_funcionario) REFERENCES public.funcionario(id_funcionario);


--
-- TOC entry 5012 (class 2606 OID 40771)
-- Name: solicita ref_solic_produ_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicita
    ADD CONSTRAINT ref_solic_produ_fk FOREIGN KEY (id_produto) REFERENCES public.produto(id_produto);


--
-- TOC entry 5013 (class 2606 OID 40766)
-- Name: solicita ref_solic_reser; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicita
    ADD CONSTRAINT ref_solic_reser FOREIGN KEY (id_reserva) REFERENCES public.reserva(id_reserva);


--
-- TOC entry 5018 (class 2606 OID 40796)
-- Name: utiliza ref_utili_ativi_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utiliza
    ADD CONSTRAINT ref_utili_ativi_fk FOREIGN KEY (id_atividade) REFERENCES public.atividade(id_atividade);


--
-- TOC entry 4978 (class 2606 OID 40596)
-- Name: condominio sid_condo_unida_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.condominio
    ADD CONSTRAINT sid_condo_unida_fk FOREIGN KEY (id_unidade) REFERENCES public.unidade(id_unidade);


--
-- TOC entry 4987 (class 2606 OID 40641)
-- Name: entrada sid_entra_reser_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entrada
    ADD CONSTRAINT sid_entra_reser_fk FOREIGN KEY (id_reserva) REFERENCES public.reserva(id_reserva);


--
-- TOC entry 5011 (class 2606 OID 40761)
-- Name: saida sid_saida_parce_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.saida
    ADD CONSTRAINT sid_saida_parce_fk FOREIGN KEY (id_parceiro) REFERENCES public.parceiro(id_parceiro);


--
-- TOC entry 5016 (class 2606 OID 40786)
-- Name: transacao_extorno sid_trans_entra_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transacao_extorno
    ADD CONSTRAINT sid_trans_entra_fk FOREIGN KEY (id_transacao) REFERENCES public.entrada(id_transacao);


-- Completed on 2024-11-27 22:50:59

--
-- PostgreSQL database dump complete
--

