--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- Started on 2024-11-27 23:06:45

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
-- TOC entry 218 (class 1259 OID 41367)
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
-- TOC entry 217 (class 1259 OID 41366)
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
-- TOC entry 220 (class 1259 OID 41374)
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
-- TOC entry 219 (class 1259 OID 41373)
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
-- TOC entry 222 (class 1259 OID 41381)
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
-- TOC entry 221 (class 1259 OID 41380)
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
-- TOC entry 223 (class 1259 OID 41387)
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
-- TOC entry 225 (class 1259 OID 41393)
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
-- TOC entry 224 (class 1259 OID 41392)
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
-- TOC entry 227 (class 1259 OID 41400)
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
-- TOC entry 226 (class 1259 OID 41399)
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
-- TOC entry 229 (class 1259 OID 41407)
-- Name: condominio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.condominio (
    id_condominio integer NOT NULL,
    id_unidade integer NOT NULL,
    qntd_lojas integer NOT NULL
);


ALTER TABLE public.condominio OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 41406)
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
-- TOC entry 230 (class 1259 OID 41415)
-- Name: conduz; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.conduz (
    id_atividade integer NOT NULL,
    id_transporte integer NOT NULL
);


ALTER TABLE public.conduz OWNER TO postgres;

--
-- TOC entry 267 (class 1259 OID 41565)
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
-- TOC entry 231 (class 1259 OID 41420)
-- Name: cozinha; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cozinha (
    id_dependencia integer NOT NULL,
    local character varying(30) NOT NULL,
    tipo_culinaria character varying(20) NOT NULL
);


ALTER TABLE public.cozinha OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 41426)
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
-- TOC entry 232 (class 1259 OID 41425)
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
-- TOC entry 234 (class 1259 OID 41432)
-- Name: dirige; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dirige (
    id_motorista integer NOT NULL,
    id_transporte integer NOT NULL
);


ALTER TABLE public.dirige OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 41437)
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
-- TOC entry 237 (class 1259 OID 41445)
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
-- TOC entry 236 (class 1259 OID 41444)
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
-- TOC entry 239 (class 1259 OID 41452)
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
-- TOC entry 238 (class 1259 OID 41451)
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
-- TOC entry 240 (class 1259 OID 41458)
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
-- TOC entry 241 (class 1259 OID 41463)
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
-- TOC entry 242 (class 1259 OID 41470)
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
-- TOC entry 243 (class 1259 OID 41475)
-- Name: externa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.externa (
    id_atividade integer NOT NULL,
    local character varying(30) NOT NULL,
    distancia integer NOT NULL
);


ALTER TABLE public.externa OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 41481)
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
-- TOC entry 244 (class 1259 OID 41480)
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
-- TOC entry 246 (class 1259 OID 41487)
-- Name: geral; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.geral (
    id_requisicao integer NOT NULL
);


ALTER TABLE public.geral OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 41493)
-- Name: hospede; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hospede (
    id_hospede integer NOT NULL,
    cpf character(11) NOT NULL,
    id_reserva integer NOT NULL
);


ALTER TABLE public.hospede OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 41492)
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
-- TOC entry 249 (class 1259 OID 41499)
-- Name: lavanderia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lavanderia (
    id_dependencia integer NOT NULL,
    tipo_acesso character varying(15) NOT NULL,
    quantidade_maq integer NOT NULL
);


ALTER TABLE public.lavanderia OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 41505)
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
-- TOC entry 250 (class 1259 OID 41504)
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
-- TOC entry 253 (class 1259 OID 41512)
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
-- TOC entry 252 (class 1259 OID 41511)
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
-- TOC entry 255 (class 1259 OID 41519)
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
-- TOC entry 254 (class 1259 OID 41518)
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
-- TOC entry 257 (class 1259 OID 41526)
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
-- TOC entry 256 (class 1259 OID 41525)
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
-- TOC entry 261 (class 1259 OID 41540)
-- Name: parceiro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.parceiro (
    id_parceiro integer NOT NULL,
    nome character varying(30) NOT NULL,
    ramo character varying(30) NOT NULL
);


ALTER TABLE public.parceiro OWNER TO postgres;

--
-- TOC entry 260 (class 1259 OID 41539)
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
-- TOC entry 263 (class 1259 OID 41547)
-- Name: particular; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.particular (
    id_requisicao integer NOT NULL,
    cpf_autor character(11) NOT NULL
);


ALTER TABLE public.particular OWNER TO postgres;

--
-- TOC entry 262 (class 1259 OID 41546)
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
-- TOC entry 264 (class 1259 OID 41553)
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
-- TOC entry 266 (class 1259 OID 41559)
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
-- TOC entry 259 (class 1259 OID 41533)
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
-- TOC entry 258 (class 1259 OID 41532)
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
-- TOC entry 265 (class 1259 OID 41558)
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
-- TOC entry 269 (class 1259 OID 41571)
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
-- TOC entry 268 (class 1259 OID 41570)
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
-- TOC entry 271 (class 1259 OID 41578)
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
-- TOC entry 270 (class 1259 OID 41577)
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
-- TOC entry 273 (class 1259 OID 41585)
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
-- TOC entry 272 (class 1259 OID 41584)
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
-- TOC entry 274 (class 1259 OID 41591)
-- Name: solicita; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.solicita (
    id_produto integer NOT NULL,
    id_reserva integer NOT NULL,
    quantidade integer NOT NULL
);


ALTER TABLE public.solicita OWNER TO postgres;

--
-- TOC entry 275 (class 1259 OID 41596)
-- Name: supervisiona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.supervisiona (
    id_atividade integer NOT NULL,
    id_monitor integer NOT NULL
);


ALTER TABLE public.supervisiona OWNER TO postgres;

--
-- TOC entry 277 (class 1259 OID 41602)
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
-- TOC entry 278 (class 1259 OID 41608)
-- Name: transacao_extorno; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transacao_extorno (
    id_transacao integer NOT NULL,
    data_extorno timestamp without time zone NOT NULL,
    motivo_extorno character varying(50) NOT NULL
);


ALTER TABLE public.transacao_extorno OWNER TO postgres;

--
-- TOC entry 276 (class 1259 OID 41601)
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
-- TOC entry 280 (class 1259 OID 41616)
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
-- TOC entry 279 (class 1259 OID 41615)
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
-- TOC entry 282 (class 1259 OID 41623)
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
-- TOC entry 281 (class 1259 OID 41622)
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
-- TOC entry 283 (class 1259 OID 41629)
-- Name: utiliza; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.utiliza (
    id_atividade integer NOT NULL,
    id_equipamento integer NOT NULL,
    obrigatoriedade boolean NOT NULL
);


ALTER TABLE public.utiliza OWNER TO postgres;

--
-- TOC entry 4829 (class 2604 OID 41370)
-- Name: acomodacao id_acomodacao; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acomodacao ALTER COLUMN id_acomodacao SET DEFAULT nextval('public.acomodacao_id_acomodacao_seq'::regclass);


--
-- TOC entry 4830 (class 2604 OID 41377)
-- Name: amenidade id_amenidade; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.amenidade ALTER COLUMN id_amenidade SET DEFAULT nextval('public.amenidade_id_amenidade_seq'::regclass);


--
-- TOC entry 4831 (class 2604 OID 41384)
-- Name: atividade id_atividade; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atividade ALTER COLUMN id_atividade SET DEFAULT nextval('public.atividade_id_atividade_seq'::regclass);


--
-- TOC entry 4832 (class 2604 OID 41396)
-- Name: carro id_carro; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carro ALTER COLUMN id_carro SET DEFAULT nextval('public.carro_id_carro_seq'::regclass);


--
-- TOC entry 4833 (class 2604 OID 41403)
-- Name: cliente id_cliente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id_cliente SET DEFAULT nextval('public.cliente_id_cliente_seq'::regclass);


--
-- TOC entry 4834 (class 2604 OID 41410)
-- Name: condominio id_condominio; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.condominio ALTER COLUMN id_condominio SET DEFAULT nextval('public.condominio_id_condominio_seq'::regclass);


--
-- TOC entry 4835 (class 2604 OID 41429)
-- Name: dependencia id_dependencia; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dependencia ALTER COLUMN id_dependencia SET DEFAULT nextval('public.dependencia_id_dependencia_seq'::regclass);


--
-- TOC entry 4836 (class 2604 OID 41448)
-- Name: entrega_robo id_entrega; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entrega_robo ALTER COLUMN id_entrega SET DEFAULT nextval('public.entrega_robo_id_entrega_seq'::regclass);


--
-- TOC entry 4837 (class 2604 OID 41455)
-- Name: equipamento id_equipamento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipamento ALTER COLUMN id_equipamento SET DEFAULT nextval('public.equipamento_id_equipamento_seq'::regclass);


--
-- TOC entry 4838 (class 2604 OID 41484)
-- Name: funcionario id_funcionario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionario ALTER COLUMN id_funcionario SET DEFAULT nextval('public.funcionario_id_funcionario_seq'::regclass);


--
-- TOC entry 4839 (class 2604 OID 41496)
-- Name: hospede id_hospede; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hospede ALTER COLUMN id_hospede SET DEFAULT nextval('public.hospede_id_hospede_seq'::regclass);


--
-- TOC entry 4840 (class 2604 OID 41508)
-- Name: loja id_loja; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loja ALTER COLUMN id_loja SET DEFAULT nextval('public.loja_id_loja_seq'::regclass);


--
-- TOC entry 4841 (class 2604 OID 41515)
-- Name: monitor id_monitor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.monitor ALTER COLUMN id_monitor SET DEFAULT nextval('public.monitor_id_monitor_seq'::regclass);


--
-- TOC entry 4842 (class 2604 OID 41522)
-- Name: motorista id_motorista; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.motorista ALTER COLUMN id_motorista SET DEFAULT nextval('public.motorista_id_motorista_seq'::regclass);


--
-- TOC entry 4843 (class 2604 OID 41529)
-- Name: ocorrencia id_ocorrencia; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ocorrencia ALTER COLUMN id_ocorrencia SET DEFAULT nextval('public.ocorrencia_id_ocorrencia_seq'::regclass);


--
-- TOC entry 4845 (class 2604 OID 41543)
-- Name: parceiro id_parceiro; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parceiro ALTER COLUMN id_parceiro SET DEFAULT nextval('public.parceiro_id_parceiro_seq'::regclass);


--
-- TOC entry 4846 (class 2604 OID 41550)
-- Name: particular id_requisicao; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.particular ALTER COLUMN id_requisicao SET DEFAULT nextval('public.particular_id_requisicao_seq'::regclass);


--
-- TOC entry 4847 (class 2604 OID 41562)
-- Name: produto id_produto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto ALTER COLUMN id_produto SET DEFAULT nextval('public.produto_id_produto_seq'::regclass);


--
-- TOC entry 4844 (class 2604 OID 41536)
-- Name: produto_frigobar id_produto_frigobar; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto_frigobar ALTER COLUMN id_produto_frigobar SET DEFAULT nextval('public.produto_frigobar_id_produto_frigobar_seq'::regclass);


--
-- TOC entry 4848 (class 2604 OID 41574)
-- Name: requisicao id_requisicao; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.requisicao ALTER COLUMN id_requisicao SET DEFAULT nextval('public.requisicao_id_requisicao_seq'::regclass);


--
-- TOC entry 4849 (class 2604 OID 41581)
-- Name: reserva id_reserva; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva ALTER COLUMN id_reserva SET DEFAULT nextval('public.reserva_id_reserva_seq'::regclass);


--
-- TOC entry 4850 (class 2604 OID 41588)
-- Name: saida id_transacao; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.saida ALTER COLUMN id_transacao SET DEFAULT nextval('public.saida_id_transacao_seq'::regclass);


--
-- TOC entry 4851 (class 2604 OID 41605)
-- Name: transacao id_transacao; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transacao ALTER COLUMN id_transacao SET DEFAULT nextval('public.transacao_id_transacao_seq'::regclass);


--
-- TOC entry 4852 (class 2604 OID 41619)
-- Name: transporte id_transporte; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transporte ALTER COLUMN id_transporte SET DEFAULT nextval('public.transporte_id_transporte_seq'::regclass);


--
-- TOC entry 4853 (class 2604 OID 41626)
-- Name: unidade id_unidade; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.unidade ALTER COLUMN id_unidade SET DEFAULT nextval('public.unidade_id_unidade_seq'::regclass);


--
-- TOC entry 5165 (class 0 OID 41367)
-- Dependencies: 218
-- Data for Name: acomodacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.acomodacao (id_acomodacao, tipo, status, limpeza, preco, politica_uso, capacidade_max, id_unidade) FROM stdin;
1	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	4	1
2	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	6	1
3	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	5	1
4	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	6	1
5	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	3	1
6	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	5	1
7	Suite	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	4	1
8	Duplex	t	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	2	1
9	Suite	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	7	1
10	Duplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	10	1
11	Suite	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	1	1
12	Triplex	f	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	4	1
13	Duplex	t	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	1	1
14	Suite	f	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	4	1
15	Pet-Friendly	t	t	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	2	1
16	Quarto	f	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	8	1
17	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	6	1
18	Pet-Friendly	f	t	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	8	1
19	Quarto	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	5	1
20	Triplex	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	10	1
21	Suite	t	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	8	1
22	Suite	f	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	2	1
23	Suite	t	f	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	9	1
24	Pet-Friendly	t	f	99.00	Check-out até 12h, proibido fumar, pets permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	9	1
25	Duplex	f	t	99.00	Check-out até 12h, proibido fumar, pets não permitidos, danos serão cobrados, somente hóspedes, itens de frigobar pagos no Check-out, proibido pendurar roupas nas janelas, proibido mudar móveis ou objetos de lugar	4	1
\.


--
-- TOC entry 5167 (class 0 OID 41374)
-- Dependencies: 220
-- Data for Name: amenidade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.amenidade (id_amenidade, tipo, manutencao, id_acomodacao) FROM stdin;
\.


--
-- TOC entry 5169 (class 0 OID 41381)
-- Dependencies: 222
-- Data for Name: atividade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.atividade (id_atividade, nome, tipo, idade_min, idade_max, data_atv, sazonalidade, duracao, capacidade_max, id_parceiro, id_unidade) FROM stdin;
1	Aula de Natação	Piscina	5	60	2023-06-15	Calor	60	15	1	1
2	Zumba ao Ar Livre	Dança	10	50	2022-11-20	Calor	45	20	3	1
3	Torneio de Futebol	Esporte	8	40	2024-03-05	Calor	90	22	2	1
4	Show Acústico	Música	12	99	2023-09-18	Chuva	120	3	4	1
5	Workshop de Gastronomia	Culinária	15	70	2024-01-22	Frio	180	12	5	1
6	Aventura de Escalada	Radical	12	50	2022-10-10	Frio	150	10	1	1
7	Yoga na Praia	Ar livre	16	99	2023-05-25	Calor	60	30	4	1
8	Dança de Salão	Dança	18	70	2022-12-12	Chuva	90	25	4	1
9	Cinema ao Ar Livre	Teatro	5	99	2024-07-30	Calor	120	100	6	1
10	Canoagem	Esporte	10	50	2023-03-15	Frio	120	12	2	1
11	Show de Jazz	Música	16	99	2024-04-10	Chuva	120	40	7	1
12	Treinamento Funcional	Esporte	12	60	2023-02-08	Frio	45	18	4	1
13	Curso de Pintura	Artes	8	70	2022-09-14	Chuva	90	15	6	1
14	Palestra de Mindfulness	Teatro	18	70	2023-11-25	Frio	60	30	8	1
15	Corrida na Trilha	Esporte	10	40	2022-06-18	Calor	60	50	3	1
16	Festival Gastronômico	Culinária	16	99	2024-05-14	Frio	180	200	5	1
17	Luau na Praia	Música	12	99	2023-08-20	Calor	120	50	3	1
18	Oficina de Esculturas	Artes	10	50	2022-07-22	Chuva	90	20	7	1
19	Patinação no Gelo	Radical	8	50	2024-01-09	Frio	90	25	1	1
20	Dança Folclórica	Dança	12	70	2023-10-05	Chuva	60	30	4	1
\.


--
-- TOC entry 5170 (class 0 OID 41387)
-- Dependencies: 223
-- Data for Name: avalia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.avalia (id_atividade, id_hospede, nota, comentario, data_avaliacao) FROM stdin;
3	1	10	Show!!	2024-03-05 00:00:00
17	1	8	Muito legal, ótima oportunidade de conhecer novas pessoas	2023-08-20 00:00:00
6	2	7	ótima ideia de atividade, a escalada foi ótima! só um pouco dificil	2022-10-10 00:00:00
7	2	8	Muito legal, adorei	2023-05-25 00:00:00
7	5	10	A atividade de yoga foi excelente! Ambiente calmo e instrutores dedicados.	2023-05-25 00:00:00
9	3	6	O cinema ao ar livre foi uma boa ideia, mas o áudio estava baixo demais.	2024-07-30 00:00:00
5	3	6	A aula de culinária foi divertida, mas senti falta de mais receitas para aprender.	2024-01-22 00:00:00
1	5	9	Aula muito boa	2023-06-15 00:00:00
18	5	9	Adorei a oficina de escultura! Os instrutores eram ótimos e me diverti muito.	2022-07-22 00:00:00
8	5	7	A aula de dança foi muito animada, mas gostaria que houvesse mais variedade nas músicas.	2022-12-12 00:00:00
\.


--
-- TOC entry 5172 (class 0 OID 41393)
-- Dependencies: 225
-- Data for Name: carro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carro (id_carro, placa, entrada, saida, id_reserva) FROM stdin;
\.


--
-- TOC entry 5174 (class 0 OID 41400)
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
-- TOC entry 5176 (class 0 OID 41407)
-- Dependencies: 229
-- Data for Name: condominio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.condominio (id_condominio, id_unidade, qntd_lojas) FROM stdin;
\.


--
-- TOC entry 5177 (class 0 OID 41415)
-- Dependencies: 230
-- Data for Name: conduz; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.conduz (id_atividade, id_transporte) FROM stdin;
\.


--
-- TOC entry 5214 (class 0 OID 41565)
-- Dependencies: 267
-- Data for Name: consome; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.consome (id_produto_frigobar, id_reserva, data, quantidade) FROM stdin;
\.


--
-- TOC entry 5178 (class 0 OID 41420)
-- Dependencies: 231
-- Data for Name: cozinha; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cozinha (id_dependencia, local, tipo_culinaria) FROM stdin;
\.


--
-- TOC entry 5180 (class 0 OID 41426)
-- Dependencies: 233
-- Data for Name: dependencia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dependencia (id_dependencia, manutencao, tamanho, hr__hr_inicio, hr__hr_fim, id_unidade) FROM stdin;
\.


--
-- TOC entry 5181 (class 0 OID 41432)
-- Dependencies: 234
-- Data for Name: dirige; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dirige (id_motorista, id_transporte) FROM stdin;
\.


--
-- TOC entry 5182 (class 0 OID 41437)
-- Dependencies: 235
-- Data for Name: entrada; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.entrada (id_transacao, id_reserva, emissor, valor_entrada, id_loja) FROM stdin;
\.


--
-- TOC entry 5184 (class 0 OID 41445)
-- Dependencies: 237
-- Data for Name: entrega_robo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.entrega_robo (id_entrega, robo, emissor, data, hora, id_acomodacao) FROM stdin;
\.


--
-- TOC entry 5186 (class 0 OID 41452)
-- Dependencies: 239
-- Data for Name: equipamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.equipamento (id_equipamento, nome, quantidade, desgaste) FROM stdin;
\.


--
-- TOC entry 5187 (class 0 OID 41458)
-- Dependencies: 240
-- Data for Name: estaciona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estaciona (id_carro, data_inicio, diarias, tipo_vaga, id_dependencia) FROM stdin;
\.


--
-- TOC entry 5188 (class 0 OID 41463)
-- Dependencies: 241
-- Data for Name: estacionamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estacionamento (id_dependencia, local, vaga_coberta, vaga_ar_livre, custo_coberta, custo_ar_livre) FROM stdin;
\.


--
-- TOC entry 5189 (class 0 OID 41470)
-- Dependencies: 242
-- Data for Name: evento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.evento (id_dependencia, nome, tipo_uso, capacidade) FROM stdin;
\.


--
-- TOC entry 5190 (class 0 OID 41475)
-- Dependencies: 243
-- Data for Name: externa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.externa (id_atividade, local, distancia) FROM stdin;
\.


--
-- TOC entry 5192 (class 0 OID 41481)
-- Dependencies: 245
-- Data for Name: funcionario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.funcionario (id_funcionario, cpf, nome, contrato, cargo, salario, va, vr, vt, plano_saude, id_unidade) FROM stdin;
\.


--
-- TOC entry 5193 (class 0 OID 41487)
-- Dependencies: 246
-- Data for Name: geral; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.geral (id_requisicao) FROM stdin;
\.


--
-- TOC entry 5195 (class 0 OID 41493)
-- Dependencies: 248
-- Data for Name: hospede; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hospede (id_hospede, cpf, id_reserva) FROM stdin;
1	12345678901	4
2	98765432109	18
3	23456789012	7
4	45678901234	9
5	56789012345	2
\.


--
-- TOC entry 5196 (class 0 OID 41499)
-- Dependencies: 249
-- Data for Name: lavanderia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lavanderia (id_dependencia, tipo_acesso, quantidade_maq) FROM stdin;
\.


--
-- TOC entry 5198 (class 0 OID 41505)
-- Dependencies: 251
-- Data for Name: loja; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.loja (id_loja, valor_aluguel, tipo, id_condominio) FROM stdin;
\.


--
-- TOC entry 5200 (class 0 OID 41512)
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
-- TOC entry 5202 (class 0 OID 41519)
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
-- TOC entry 5204 (class 0 OID 41526)
-- Dependencies: 257
-- Data for Name: ocorrencia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ocorrencia (id_ocorrencia, categoria, descricao, gravidade, status, atendente, id_atividade) FROM stdin;
\.


--
-- TOC entry 5208 (class 0 OID 41540)
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
-- TOC entry 5210 (class 0 OID 41547)
-- Dependencies: 263
-- Data for Name: particular; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.particular (id_requisicao, cpf_autor) FROM stdin;
\.


--
-- TOC entry 5211 (class 0 OID 41553)
-- Dependencies: 264
-- Data for Name: piscina; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.piscina (id_dependencia, capacidade, profundidade, data_ult_limpeza) FROM stdin;
\.


--
-- TOC entry 5213 (class 0 OID 41559)
-- Dependencies: 266
-- Data for Name: produto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produto (id_produto, nome, valor, estoque, id_dependencia) FROM stdin;
\.


--
-- TOC entry 5206 (class 0 OID 41533)
-- Dependencies: 259
-- Data for Name: produto_frigobar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produto_frigobar (id_produto_frigobar, nome, valor, estoque, id_acomodacao) FROM stdin;
\.


--
-- TOC entry 5216 (class 0 OID 41571)
-- Dependencies: 269
-- Data for Name: requisicao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.requisicao (id_requisicao, status, tipo, atendente, texto_requisicao, data_abertura, data_fechamento, id_cliente) FROM stdin;
\.


--
-- TOC entry 5218 (class 0 OID 41578)
-- Dependencies: 271
-- Data for Name: reserva; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reserva (id_reserva, valor, per_dt_inicio, per_dt_fim, id_cliente, id_acomodacao) FROM stdin;
1	16450.00	2022-10-03	2022-10-15	8	1
2	6236.00	2023-05-22	2023-06-02	10	2
3	11505.00	2022-02-20	2022-02-28	1	3
4	13196.00	2023-08-25	2023-09-10	6	4
5	5095.00	2023-02-17	2023-02-22	12	5
6	12370.00	2022-05-18	2022-05-30	15	6
7	9812.00	2024-07-30	2024-07-10	19	7
8	10063.00	2021-04-24	2021-05-03	14	8
9	19157.00	2023-12-13	2023-12-25	1	9
10	13444.00	2021-07-12	2021-07-23	17	10
11	12334.00	2023-06-06	2023-06-18	12	11
12	7412.00	2021-10-21	2021-10-28	3	12
13	11615.00	2022-07-19	2022-07-30	2	13
14	1699.00	2022-06-06	2022-06-07	7	14
15	1002.00	2023-06-01	2023-06-02	14	15
16	17320.00	2021-06-17	2021-07-10	5	16
17	2178.00	2022-05-08	2022-05-10	4	17
18	9622.00	2021-09-10	2021-09-28	11	18
19	4697.00	2023-01-15	2023-01-19	8	19
20	14883.00	2022-02-02	2022-02-14	3	20
\.


--
-- TOC entry 5220 (class 0 OID 41585)
-- Dependencies: 273
-- Data for Name: saida; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.saida (id_transacao, id_parceiro, receptor, valor_saida, id_funcionario) FROM stdin;
\.


--
-- TOC entry 5221 (class 0 OID 41591)
-- Dependencies: 274
-- Data for Name: solicita; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.solicita (id_produto, id_reserva, quantidade) FROM stdin;
\.


--
-- TOC entry 5222 (class 0 OID 41596)
-- Dependencies: 275
-- Data for Name: supervisiona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.supervisiona (id_atividade, id_monitor) FROM stdin;
\.


--
-- TOC entry 5224 (class 0 OID 41602)
-- Dependencies: 277
-- Data for Name: transacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transacao (id_transacao, data, motivo, id_nota_fiscal) FROM stdin;
\.


--
-- TOC entry 5225 (class 0 OID 41608)
-- Dependencies: 278
-- Data for Name: transacao_extorno; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transacao_extorno (id_transacao, data_extorno, motivo_extorno) FROM stdin;
\.


--
-- TOC entry 5227 (class 0 OID 41616)
-- Dependencies: 280
-- Data for Name: transporte; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transporte (id_transporte, placa, modelo, capacidade) FROM stdin;
\.


--
-- TOC entry 5229 (class 0 OID 41623)
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
-- TOC entry 5230 (class 0 OID 41629)
-- Dependencies: 283
-- Data for Name: utiliza; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.utiliza (id_atividade, id_equipamento, obrigatoriedade) FROM stdin;
\.


--
-- TOC entry 5261 (class 0 OID 0)
-- Dependencies: 217
-- Name: acomodacao_id_acomodacao_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.acomodacao_id_acomodacao_seq', 25, true);


--
-- TOC entry 5262 (class 0 OID 0)
-- Dependencies: 219
-- Name: amenidade_id_amenidade_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.amenidade_id_amenidade_seq', 1, false);


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

SELECT pg_catalog.setval('public.carro_id_carro_seq', 1, false);


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

SELECT pg_catalog.setval('public.condominio_id_condominio_seq', 1, false);


--
-- TOC entry 5267 (class 0 OID 0)
-- Dependencies: 232
-- Name: dependencia_id_dependencia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dependencia_id_dependencia_seq', 1, false);


--
-- TOC entry 5268 (class 0 OID 0)
-- Dependencies: 236
-- Name: entrega_robo_id_entrega_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.entrega_robo_id_entrega_seq', 1, false);


--
-- TOC entry 5269 (class 0 OID 0)
-- Dependencies: 238
-- Name: equipamento_id_equipamento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.equipamento_id_equipamento_seq', 1, false);


--
-- TOC entry 5270 (class 0 OID 0)
-- Dependencies: 244
-- Name: funcionario_id_funcionario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.funcionario_id_funcionario_seq', 1, false);


--
-- TOC entry 5271 (class 0 OID 0)
-- Dependencies: 247
-- Name: hospede_id_hospede_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hospede_id_hospede_seq', 5, true);


--
-- TOC entry 5272 (class 0 OID 0)
-- Dependencies: 250
-- Name: loja_id_loja_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.loja_id_loja_seq', 1, false);


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

SELECT pg_catalog.setval('public.ocorrencia_id_ocorrencia_seq', 1, false);


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

SELECT pg_catalog.setval('public.produto_frigobar_id_produto_frigobar_seq', 1, false);


--
-- TOC entry 5279 (class 0 OID 0)
-- Dependencies: 265
-- Name: produto_id_produto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produto_id_produto_seq', 1, false);


--
-- TOC entry 5280 (class 0 OID 0)
-- Dependencies: 268
-- Name: requisicao_id_requisicao_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.requisicao_id_requisicao_seq', 1, false);


--
-- TOC entry 5281 (class 0 OID 0)
-- Dependencies: 270
-- Name: reserva_id_reserva_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reserva_id_reserva_seq', 20, true);


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

SELECT pg_catalog.setval('public.transporte_id_transporte_seq', 1, false);


--
-- TOC entry 5285 (class 0 OID 0)
-- Dependencies: 281
-- Name: unidade_id_unidade_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.unidade_id_unidade_seq', 15, true);


--
-- TOC entry 4907 (class 2606 OID 41479)
-- Name: externa fkati_ext_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.externa
    ADD CONSTRAINT fkati_ext_id PRIMARY KEY (id_atividade);


--
-- TOC entry 4890 (class 2606 OID 41443)
-- Name: entrada fkcheckout_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entrada
    ADD CONSTRAINT fkcheckout_id UNIQUE (id_reserva);


--
-- TOC entry 4882 (class 2606 OID 41424)
-- Name: cozinha fkdep_coz_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cozinha
    ADD CONSTRAINT fkdep_coz_id PRIMARY KEY (id_dependencia);


--
-- TOC entry 4903 (class 2606 OID 41469)
-- Name: estacionamento fkdep_est_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estacionamento
    ADD CONSTRAINT fkdep_est_id PRIMARY KEY (id_dependencia);


--
-- TOC entry 4905 (class 2606 OID 41474)
-- Name: evento fkdep_eve_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento
    ADD CONSTRAINT fkdep_eve_id PRIMARY KEY (id_dependencia);


--
-- TOC entry 4917 (class 2606 OID 41503)
-- Name: lavanderia fkdep_lav_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lavanderia
    ADD CONSTRAINT fkdep_lav_id PRIMARY KEY (id_dependencia);


--
-- TOC entry 4935 (class 2606 OID 41557)
-- Name: piscina fkdep_pis_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.piscina
    ADD CONSTRAINT fkdep_pis_id PRIMARY KEY (id_dependencia);


--
-- TOC entry 4900 (class 2606 OID 41462)
-- Name: estaciona fkest_car_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estaciona
    ADD CONSTRAINT fkest_car_id PRIMARY KEY (id_carro);


--
-- TOC entry 4875 (class 2606 OID 41414)
-- Name: condominio fkestabelece_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.condominio
    ADD CONSTRAINT fkestabelece_id UNIQUE (id_unidade);


--
-- TOC entry 4912 (class 2606 OID 41491)
-- Name: geral fkreq_ger_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.geral
    ADD CONSTRAINT fkreq_ger_id PRIMARY KEY (id_requisicao);


--
-- TOC entry 4933 (class 2606 OID 41552)
-- Name: particular fkreq_par_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.particular
    ADD CONSTRAINT fkreq_par_id PRIMARY KEY (id_requisicao);


--
-- TOC entry 4961 (class 2606 OID 41614)
-- Name: transacao_extorno fkretorna_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transacao_extorno
    ADD CONSTRAINT fkretorna_id UNIQUE (id_transacao);


--
-- TOC entry 4892 (class 2606 OID 41441)
-- Name: entrada fktra_ent_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entrada
    ADD CONSTRAINT fktra_ent_id PRIMARY KEY (id_transacao);


--
-- TOC entry 4950 (class 2606 OID 41590)
-- Name: saida fktra_sai_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.saida
    ADD CONSTRAINT fktra_sai_id PRIMARY KEY (id_transacao);


--
-- TOC entry 4858 (class 2606 OID 41372)
-- Name: acomodacao id_acomodacao_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acomodacao
    ADD CONSTRAINT id_acomodacao_id PRIMARY KEY (id_acomodacao);


--
-- TOC entry 4860 (class 2606 OID 41379)
-- Name: amenidade id_amenidade; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.amenidade
    ADD CONSTRAINT id_amenidade PRIMARY KEY (id_amenidade);


--
-- TOC entry 4864 (class 2606 OID 41386)
-- Name: atividade id_atividade_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atividade
    ADD CONSTRAINT id_atividade_id PRIMARY KEY (id_atividade);


--
-- TOC entry 4867 (class 2606 OID 41391)
-- Name: avalia id_avalia; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.avalia
    ADD CONSTRAINT id_avalia PRIMARY KEY (id_hospede, id_atividade);


--
-- TOC entry 4870 (class 2606 OID 41398)
-- Name: carro id_carro_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carro
    ADD CONSTRAINT id_carro_id PRIMARY KEY (id_carro);


--
-- TOC entry 4873 (class 2606 OID 41405)
-- Name: cliente id_cliente; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT id_cliente PRIMARY KEY (id_cliente);


--
-- TOC entry 4877 (class 2606 OID 41412)
-- Name: condominio id_condominio; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.condominio
    ADD CONSTRAINT id_condominio PRIMARY KEY (id_condominio);


--
-- TOC entry 4880 (class 2606 OID 41419)
-- Name: conduz id_conduz; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conduz
    ADD CONSTRAINT id_conduz PRIMARY KEY (id_atividade, id_transporte);


--
-- TOC entry 4941 (class 2606 OID 41569)
-- Name: consome id_consome; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consome
    ADD CONSTRAINT id_consome PRIMARY KEY (id_reserva, id_produto_frigobar, data);


--
-- TOC entry 4885 (class 2606 OID 41431)
-- Name: dependencia id_dependencia; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dependencia
    ADD CONSTRAINT id_dependencia PRIMARY KEY (id_dependencia);


--
-- TOC entry 4888 (class 2606 OID 41436)
-- Name: dirige id_dirige; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dirige
    ADD CONSTRAINT id_dirige PRIMARY KEY (id_motorista, id_transporte);


--
-- TOC entry 4895 (class 2606 OID 41450)
-- Name: entrega_robo id_entrega_robo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entrega_robo
    ADD CONSTRAINT id_entrega_robo PRIMARY KEY (id_entrega);


--
-- TOC entry 4898 (class 2606 OID 41457)
-- Name: equipamento id_equipamento_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipamento
    ADD CONSTRAINT id_equipamento_id PRIMARY KEY (id_equipamento);


--
-- TOC entry 4910 (class 2606 OID 41486)
-- Name: funcionario id_funcionario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT id_funcionario PRIMARY KEY (id_funcionario);


--
-- TOC entry 4915 (class 2606 OID 41498)
-- Name: hospede id_hospede; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hospede
    ADD CONSTRAINT id_hospede PRIMARY KEY (id_hospede);


--
-- TOC entry 4919 (class 2606 OID 41510)
-- Name: loja id_loja; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loja
    ADD CONSTRAINT id_loja PRIMARY KEY (id_loja);


--
-- TOC entry 4922 (class 2606 OID 41517)
-- Name: monitor id_monitor_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.monitor
    ADD CONSTRAINT id_monitor_id PRIMARY KEY (id_monitor);


--
-- TOC entry 4924 (class 2606 OID 41524)
-- Name: motorista id_motorista_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.motorista
    ADD CONSTRAINT id_motorista_id PRIMARY KEY (id_motorista);


--
-- TOC entry 4926 (class 2606 OID 41531)
-- Name: ocorrencia id_ocorrencia; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ocorrencia
    ADD CONSTRAINT id_ocorrencia PRIMARY KEY (id_ocorrencia);


--
-- TOC entry 4931 (class 2606 OID 41545)
-- Name: parceiro id_parceiro_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parceiro
    ADD CONSTRAINT id_parceiro_id PRIMARY KEY (id_parceiro);


--
-- TOC entry 4937 (class 2606 OID 41564)
-- Name: produto id_produto; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT id_produto PRIMARY KEY (id_produto);


--
-- TOC entry 4929 (class 2606 OID 41538)
-- Name: produto_frigobar id_produto_frigobar; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto_frigobar
    ADD CONSTRAINT id_produto_frigobar PRIMARY KEY (id_produto_frigobar);


--
-- TOC entry 4943 (class 2606 OID 41576)
-- Name: requisicao id_requisicao; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.requisicao
    ADD CONSTRAINT id_requisicao PRIMARY KEY (id_requisicao);


--
-- TOC entry 4946 (class 2606 OID 41583)
-- Name: reserva id_reserva_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT id_reserva_id PRIMARY KEY (id_reserva);


--
-- TOC entry 4953 (class 2606 OID 41595)
-- Name: solicita id_solicita; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicita
    ADD CONSTRAINT id_solicita PRIMARY KEY (id_reserva, id_produto);


--
-- TOC entry 4957 (class 2606 OID 41600)
-- Name: supervisiona id_supervisiona; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supervisiona
    ADD CONSTRAINT id_supervisiona PRIMARY KEY (id_atividade, id_monitor);


--
-- TOC entry 4959 (class 2606 OID 41607)
-- Name: transacao id_transacao; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transacao
    ADD CONSTRAINT id_transacao PRIMARY KEY (id_transacao);


--
-- TOC entry 4963 (class 2606 OID 41612)
-- Name: transacao_extorno id_transacao_extorno; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transacao_extorno
    ADD CONSTRAINT id_transacao_extorno PRIMARY KEY (id_transacao, data_extorno);


--
-- TOC entry 4965 (class 2606 OID 41621)
-- Name: transporte id_transporte_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transporte
    ADD CONSTRAINT id_transporte_id PRIMARY KEY (id_transporte);


--
-- TOC entry 4967 (class 2606 OID 41628)
-- Name: unidade id_unidade_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.unidade
    ADD CONSTRAINT id_unidade_id PRIMARY KEY (id_unidade);


--
-- TOC entry 4969 (class 2606 OID 41633)
-- Name: utiliza id_utiliza; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utiliza
    ADD CONSTRAINT id_utiliza PRIMARY KEY (id_equipamento, id_atividade);


--
-- TOC entry 4856 (class 1259 OID 41874)
-- Name: equ_acomo_unida_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX equ_acomo_unida_ind ON public.acomodacao USING btree (id_unidade);


--
-- TOC entry 4862 (class 1259 OID 41876)
-- Name: equ_ativi_parce_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX equ_ativi_parce_ind ON public.atividade USING btree (id_parceiro);


--
-- TOC entry 4878 (class 1259 OID 41880)
-- Name: equ_condu_trans_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX equ_condu_trans_ind ON public.conduz USING btree (id_transporte);


--
-- TOC entry 4883 (class 1259 OID 41881)
-- Name: equ_depen_unida_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX equ_depen_unida_ind ON public.dependencia USING btree (id_unidade);


--
-- TOC entry 4886 (class 1259 OID 41882)
-- Name: equ_dirig_trans_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX equ_dirig_trans_ind ON public.dirige USING btree (id_transporte);


--
-- TOC entry 4908 (class 1259 OID 41886)
-- Name: equ_funci_unida_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX equ_funci_unida_ind ON public.funcionario USING btree (id_unidade);


--
-- TOC entry 4913 (class 1259 OID 41887)
-- Name: equ_hospe_reser_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX equ_hospe_reser_ind ON public.hospede USING btree (id_reserva);


--
-- TOC entry 4955 (class 1259 OID 41897)
-- Name: equ_super_monit_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX equ_super_monit_ind ON public.supervisiona USING btree (id_monitor);


--
-- TOC entry 4939 (class 1259 OID 41891)
-- Name: fkcon_pro_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fkcon_pro_ind ON public.consome USING btree (id_produto_frigobar);


--
-- TOC entry 4927 (class 1259 OID 41889)
-- Name: fkguarda_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fkguarda_ind ON public.produto_frigobar USING btree (id_acomodacao);


--
-- TOC entry 4861 (class 1259 OID 41875)
-- Name: ref_ameni_acomo_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ref_ameni_acomo_ind ON public.amenidade USING btree (id_acomodacao);


--
-- TOC entry 4865 (class 1259 OID 41877)
-- Name: ref_ativi_unida_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ref_ativi_unida_ind ON public.atividade USING btree (id_unidade);


--
-- TOC entry 4868 (class 1259 OID 41878)
-- Name: ref_avali_ativi_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ref_avali_ativi_ind ON public.avalia USING btree (id_atividade);


--
-- TOC entry 4871 (class 1259 OID 41879)
-- Name: ref_carro_reser_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ref_carro_reser_ind ON public.carro USING btree (id_reserva);


--
-- TOC entry 4893 (class 1259 OID 41883)
-- Name: ref_entra_loja_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ref_entra_loja_ind ON public.entrada USING btree (id_loja);


--
-- TOC entry 4896 (class 1259 OID 41884)
-- Name: ref_entre_acomo_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ref_entre_acomo_ind ON public.entrega_robo USING btree (id_acomodacao);


--
-- TOC entry 4901 (class 1259 OID 41885)
-- Name: ref_estac_estac_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ref_estac_estac_ind ON public.estaciona USING btree (id_dependencia);


--
-- TOC entry 4920 (class 1259 OID 41888)
-- Name: ref_loja_condo_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ref_loja_condo_ind ON public.loja USING btree (id_condominio);


--
-- TOC entry 4938 (class 1259 OID 41890)
-- Name: ref_produ_cozin_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ref_produ_cozin_ind ON public.produto USING btree (id_dependencia);


--
-- TOC entry 4944 (class 1259 OID 41892)
-- Name: ref_requi_clien_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ref_requi_clien_ind ON public.requisicao USING btree (id_cliente);


--
-- TOC entry 4947 (class 1259 OID 41894)
-- Name: ref_reser_acomo_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ref_reser_acomo_ind ON public.reserva USING btree (id_acomodacao);


--
-- TOC entry 4948 (class 1259 OID 41893)
-- Name: ref_reser_clien_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ref_reser_clien_ind ON public.reserva USING btree (id_cliente);


--
-- TOC entry 4951 (class 1259 OID 41895)
-- Name: ref_saida_funci_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ref_saida_funci_ind ON public.saida USING btree (id_funcionario);


--
-- TOC entry 4954 (class 1259 OID 41896)
-- Name: ref_solic_produ_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ref_solic_produ_ind ON public.solicita USING btree (id_produto);


--
-- TOC entry 4970 (class 1259 OID 41898)
-- Name: ref_utili_ativi_ind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ref_utili_ativi_ind ON public.utiliza USING btree (id_atividade);


--
-- TOC entry 4971 (class 2606 OID 41634)
-- Name: acomodacao equ_acomo_unida_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acomodacao
    ADD CONSTRAINT equ_acomo_unida_fk FOREIGN KEY (id_unidade) REFERENCES public.unidade(id_unidade);


--
-- TOC entry 4973 (class 2606 OID 41644)
-- Name: atividade equ_ativi_parce_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atividade
    ADD CONSTRAINT equ_ativi_parce_fk FOREIGN KEY (id_parceiro) REFERENCES public.parceiro(id_parceiro);


--
-- TOC entry 4979 (class 2606 OID 41679)
-- Name: conduz equ_condu_exter; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conduz
    ADD CONSTRAINT equ_condu_exter FOREIGN KEY (id_atividade) REFERENCES public.externa(id_atividade);


--
-- TOC entry 4980 (class 2606 OID 41674)
-- Name: conduz equ_condu_trans_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conduz
    ADD CONSTRAINT equ_condu_trans_fk FOREIGN KEY (id_transporte) REFERENCES public.transporte(id_transporte);


--
-- TOC entry 4982 (class 2606 OID 41689)
-- Name: dependencia equ_depen_unida_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dependencia
    ADD CONSTRAINT equ_depen_unida_fk FOREIGN KEY (id_unidade) REFERENCES public.unidade(id_unidade);


--
-- TOC entry 4983 (class 2606 OID 41699)
-- Name: dirige equ_dirig_motor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dirige
    ADD CONSTRAINT equ_dirig_motor FOREIGN KEY (id_motorista) REFERENCES public.motorista(id_motorista);


--
-- TOC entry 4984 (class 2606 OID 41694)
-- Name: dirige equ_dirig_trans_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dirige
    ADD CONSTRAINT equ_dirig_trans_fk FOREIGN KEY (id_transporte) REFERENCES public.transporte(id_transporte);


--
-- TOC entry 4994 (class 2606 OID 41749)
-- Name: funcionario equ_funci_unida_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT equ_funci_unida_fk FOREIGN KEY (id_unidade) REFERENCES public.unidade(id_unidade);


--
-- TOC entry 4996 (class 2606 OID 41759)
-- Name: hospede equ_hospe_reser_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hospede
    ADD CONSTRAINT equ_hospe_reser_fk FOREIGN KEY (id_reserva) REFERENCES public.reserva(id_reserva);


--
-- TOC entry 5014 (class 2606 OID 41854)
-- Name: supervisiona equ_super_ativi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supervisiona
    ADD CONSTRAINT equ_super_ativi FOREIGN KEY (id_atividade) REFERENCES public.atividade(id_atividade);


--
-- TOC entry 5015 (class 2606 OID 41849)
-- Name: supervisiona equ_super_monit_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supervisiona
    ADD CONSTRAINT equ_super_monit_fk FOREIGN KEY (id_monitor) REFERENCES public.monitor(id_monitor);


--
-- TOC entry 5017 (class 2606 OID 41864)
-- Name: utiliza equ_utili_equip; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utiliza
    ADD CONSTRAINT equ_utili_equip FOREIGN KEY (id_equipamento) REFERENCES public.equipamento(id_equipamento);


--
-- TOC entry 5004 (class 2606 OID 41804)
-- Name: consome fkcon_pro_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consome
    ADD CONSTRAINT fkcon_pro_fk FOREIGN KEY (id_produto_frigobar) REFERENCES public.produto_frigobar(id_produto_frigobar);


--
-- TOC entry 5005 (class 2606 OID 41799)
-- Name: consome fkcon_res; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consome
    ADD CONSTRAINT fkcon_res FOREIGN KEY (id_reserva) REFERENCES public.reserva(id_reserva);


--
-- TOC entry 5000 (class 2606 OID 41779)
-- Name: produto_frigobar fkguarda_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto_frigobar
    ADD CONSTRAINT fkguarda_fk FOREIGN KEY (id_acomodacao) REFERENCES public.acomodacao(id_acomodacao);


--
-- TOC entry 4981 (class 2606 OID 41684)
-- Name: cozinha id_cozin_depen_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cozinha
    ADD CONSTRAINT id_cozin_depen_fk FOREIGN KEY (id_dependencia) REFERENCES public.dependencia(id_dependencia);


--
-- TOC entry 4985 (class 2606 OID 41704)
-- Name: entrada id_entra_trans_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entrada
    ADD CONSTRAINT id_entra_trans_fk FOREIGN KEY (id_transacao) REFERENCES public.transacao(id_transacao);


--
-- TOC entry 4989 (class 2606 OID 41724)
-- Name: estaciona id_estac_carro_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estaciona
    ADD CONSTRAINT id_estac_carro_fk FOREIGN KEY (id_carro) REFERENCES public.carro(id_carro);


--
-- TOC entry 4991 (class 2606 OID 41734)
-- Name: estacionamento id_estac_depen_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estacionamento
    ADD CONSTRAINT id_estac_depen_fk FOREIGN KEY (id_dependencia) REFERENCES public.dependencia(id_dependencia);


--
-- TOC entry 4992 (class 2606 OID 41739)
-- Name: evento id_event_depen_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento
    ADD CONSTRAINT id_event_depen_fk FOREIGN KEY (id_dependencia) REFERENCES public.dependencia(id_dependencia);


--
-- TOC entry 4993 (class 2606 OID 41744)
-- Name: externa id_exter_ativi_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.externa
    ADD CONSTRAINT id_exter_ativi_fk FOREIGN KEY (id_atividade) REFERENCES public.atividade(id_atividade);


--
-- TOC entry 4995 (class 2606 OID 41754)
-- Name: geral id_geral_requi_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.geral
    ADD CONSTRAINT id_geral_requi_fk FOREIGN KEY (id_requisicao) REFERENCES public.requisicao(id_requisicao);


--
-- TOC entry 4997 (class 2606 OID 41764)
-- Name: lavanderia id_lavan_depen_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lavanderia
    ADD CONSTRAINT id_lavan_depen_fk FOREIGN KEY (id_dependencia) REFERENCES public.dependencia(id_dependencia);


--
-- TOC entry 5001 (class 2606 OID 41784)
-- Name: particular id_parti_requi_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.particular
    ADD CONSTRAINT id_parti_requi_fk FOREIGN KEY (id_requisicao) REFERENCES public.requisicao(id_requisicao);


--
-- TOC entry 5002 (class 2606 OID 41789)
-- Name: piscina id_pisci_depen_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.piscina
    ADD CONSTRAINT id_pisci_depen_fk FOREIGN KEY (id_dependencia) REFERENCES public.dependencia(id_dependencia);


--
-- TOC entry 5009 (class 2606 OID 41824)
-- Name: saida id_saida_trans_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.saida
    ADD CONSTRAINT id_saida_trans_fk FOREIGN KEY (id_transacao) REFERENCES public.transacao(id_transacao);


--
-- TOC entry 4972 (class 2606 OID 41639)
-- Name: amenidade ref_ameni_acomo_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.amenidade
    ADD CONSTRAINT ref_ameni_acomo_fk FOREIGN KEY (id_acomodacao) REFERENCES public.acomodacao(id_acomodacao);


--
-- TOC entry 4974 (class 2606 OID 41649)
-- Name: atividade ref_ativi_unida_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atividade
    ADD CONSTRAINT ref_ativi_unida_fk FOREIGN KEY (id_unidade) REFERENCES public.unidade(id_unidade);


--
-- TOC entry 4975 (class 2606 OID 41659)
-- Name: avalia ref_avali_ativi_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.avalia
    ADD CONSTRAINT ref_avali_ativi_fk FOREIGN KEY (id_atividade) REFERENCES public.atividade(id_atividade);


--
-- TOC entry 4976 (class 2606 OID 41654)
-- Name: avalia ref_avali_hospe; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.avalia
    ADD CONSTRAINT ref_avali_hospe FOREIGN KEY (id_hospede) REFERENCES public.hospede(id_hospede);


--
-- TOC entry 4977 (class 2606 OID 41664)
-- Name: carro ref_carro_reser_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carro
    ADD CONSTRAINT ref_carro_reser_fk FOREIGN KEY (id_reserva) REFERENCES public.reserva(id_reserva);


--
-- TOC entry 4986 (class 2606 OID 41709)
-- Name: entrada ref_entra_loja_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entrada
    ADD CONSTRAINT ref_entra_loja_fk FOREIGN KEY (id_loja) REFERENCES public.loja(id_loja);


--
-- TOC entry 4988 (class 2606 OID 41719)
-- Name: entrega_robo ref_entre_acomo_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entrega_robo
    ADD CONSTRAINT ref_entre_acomo_fk FOREIGN KEY (id_acomodacao) REFERENCES public.acomodacao(id_acomodacao);


--
-- TOC entry 4990 (class 2606 OID 41729)
-- Name: estaciona ref_estac_estac_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estaciona
    ADD CONSTRAINT ref_estac_estac_fk FOREIGN KEY (id_dependencia) REFERENCES public.estacionamento(id_dependencia);


--
-- TOC entry 4998 (class 2606 OID 41769)
-- Name: loja ref_loja_condo_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loja
    ADD CONSTRAINT ref_loja_condo_fk FOREIGN KEY (id_condominio) REFERENCES public.condominio(id_condominio);


--
-- TOC entry 4999 (class 2606 OID 41774)
-- Name: ocorrencia ref_ocorr_ativi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ocorrencia
    ADD CONSTRAINT ref_ocorr_ativi FOREIGN KEY (id_atividade) REFERENCES public.atividade(id_atividade);


--
-- TOC entry 5003 (class 2606 OID 41794)
-- Name: produto ref_produ_cozin_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT ref_produ_cozin_fk FOREIGN KEY (id_dependencia) REFERENCES public.cozinha(id_dependencia);


--
-- TOC entry 5006 (class 2606 OID 41809)
-- Name: requisicao ref_requi_clien_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.requisicao
    ADD CONSTRAINT ref_requi_clien_fk FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);


--
-- TOC entry 5007 (class 2606 OID 41819)
-- Name: reserva ref_reser_acomo_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT ref_reser_acomo_fk FOREIGN KEY (id_acomodacao) REFERENCES public.acomodacao(id_acomodacao);


--
-- TOC entry 5008 (class 2606 OID 41814)
-- Name: reserva ref_reser_clien_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT ref_reser_clien_fk FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);


--
-- TOC entry 5010 (class 2606 OID 41829)
-- Name: saida ref_saida_funci_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.saida
    ADD CONSTRAINT ref_saida_funci_fk FOREIGN KEY (id_funcionario) REFERENCES public.funcionario(id_funcionario);


--
-- TOC entry 5012 (class 2606 OID 41844)
-- Name: solicita ref_solic_produ_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicita
    ADD CONSTRAINT ref_solic_produ_fk FOREIGN KEY (id_produto) REFERENCES public.produto(id_produto);


--
-- TOC entry 5013 (class 2606 OID 41839)
-- Name: solicita ref_solic_reser; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicita
    ADD CONSTRAINT ref_solic_reser FOREIGN KEY (id_reserva) REFERENCES public.reserva(id_reserva);


--
-- TOC entry 5018 (class 2606 OID 41869)
-- Name: utiliza ref_utili_ativi_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utiliza
    ADD CONSTRAINT ref_utili_ativi_fk FOREIGN KEY (id_atividade) REFERENCES public.atividade(id_atividade);


--
-- TOC entry 4978 (class 2606 OID 41669)
-- Name: condominio sid_condo_unida_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.condominio
    ADD CONSTRAINT sid_condo_unida_fk FOREIGN KEY (id_unidade) REFERENCES public.unidade(id_unidade);


--
-- TOC entry 4987 (class 2606 OID 41714)
-- Name: entrada sid_entra_reser_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entrada
    ADD CONSTRAINT sid_entra_reser_fk FOREIGN KEY (id_reserva) REFERENCES public.reserva(id_reserva);


--
-- TOC entry 5011 (class 2606 OID 41834)
-- Name: saida sid_saida_parce_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.saida
    ADD CONSTRAINT sid_saida_parce_fk FOREIGN KEY (id_parceiro) REFERENCES public.parceiro(id_parceiro);


--
-- TOC entry 5016 (class 2606 OID 41859)
-- Name: transacao_extorno sid_trans_entra_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transacao_extorno
    ADD CONSTRAINT sid_trans_entra_fk FOREIGN KEY (id_transacao) REFERENCES public.entrada(id_transacao);


-- Completed on 2024-11-27 23:06:46

--
-- PostgreSQL database dump complete
--

