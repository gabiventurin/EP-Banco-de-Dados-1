PGDMP                  
    |            Backup6    17.2    17.2 2   q           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            r           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            s           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            t           1262    16923    Backup6    DATABASE     �   CREATE DATABASE "Backup6" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "Backup6";
                     postgres    false            �            1259    16925 
   acomodacao    TABLE     E  CREATE TABLE public.acomodacao (
    id_acomodacao integer NOT NULL,
    tipo character varying(15) NOT NULL,
    status boolean NOT NULL,
    limpeza boolean NOT NULL,
    preco numeric(10,2) NOT NULL,
    politica_uso character varying(300) NOT NULL,
    capacidade_max integer NOT NULL,
    id_unidade integer NOT NULL
);
    DROP TABLE public.acomodacao;
       public         heap r       postgres    false            �            1259    16924    acomodacao_id_acomodacao_seq    SEQUENCE     �   CREATE SEQUENCE public.acomodacao_id_acomodacao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.acomodacao_id_acomodacao_seq;
       public               postgres    false    218            u           0    0    acomodacao_id_acomodacao_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.acomodacao_id_acomodacao_seq OWNED BY public.acomodacao.id_acomodacao;
          public               postgres    false    217            �            1259    16932 	   amenidade    TABLE     �   CREATE TABLE public.amenidade (
    id_amenidade integer NOT NULL,
    tipo character varying(50) NOT NULL,
    manutencao boolean NOT NULL,
    id_acomodacao integer NOT NULL
);
    DROP TABLE public.amenidade;
       public         heap r       postgres    false            �            1259    16931    amenidade_id_amenidade_seq    SEQUENCE     �   CREATE SEQUENCE public.amenidade_id_amenidade_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.amenidade_id_amenidade_seq;
       public               postgres    false    220            v           0    0    amenidade_id_amenidade_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.amenidade_id_amenidade_seq OWNED BY public.amenidade.id_amenidade;
          public               postgres    false    219            �            1259    16939 	   atividade    TABLE     �  CREATE TABLE public.atividade (
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
    DROP TABLE public.atividade;
       public         heap r       postgres    false            �            1259    16938    atividade_id_atividade_seq    SEQUENCE     �   CREATE SEQUENCE public.atividade_id_atividade_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.atividade_id_atividade_seq;
       public               postgres    false    222            w           0    0    atividade_id_atividade_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.atividade_id_atividade_seq OWNED BY public.atividade.id_atividade;
          public               postgres    false    221            �            1259    16945    avalia    TABLE     �   CREATE TABLE public.avalia (
    id_atividade integer NOT NULL,
    id_hospede integer NOT NULL,
    nota integer NOT NULL,
    comentario character varying(300) NOT NULL,
    data_avaliacao timestamp without time zone NOT NULL
);
    DROP TABLE public.avalia;
       public         heap r       postgres    false            �            1259    16951    carro    TABLE     �   CREATE TABLE public.carro (
    id_carro integer NOT NULL,
    placa character(7) NOT NULL,
    entrada timestamp without time zone NOT NULL,
    saida timestamp without time zone NOT NULL,
    id_reserva integer NOT NULL
);
    DROP TABLE public.carro;
       public         heap r       postgres    false            �            1259    16950    carro_id_carro_seq    SEQUENCE     �   CREATE SEQUENCE public.carro_id_carro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.carro_id_carro_seq;
       public               postgres    false    225            x           0    0    carro_id_carro_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.carro_id_carro_seq OWNED BY public.carro.id_carro;
          public               postgres    false    224            �            1259    16958    cliente    TABLE     �   CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    cpf character(11) NOT NULL,
    nome character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    ponto_fidelidade integer NOT NULL,
    visitas integer NOT NULL
);
    DROP TABLE public.cliente;
       public         heap r       postgres    false            �            1259    16957    cliente_id_cliente_seq    SEQUENCE     �   CREATE SEQUENCE public.cliente_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.cliente_id_cliente_seq;
       public               postgres    false    227            y           0    0    cliente_id_cliente_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.cliente_id_cliente_seq OWNED BY public.cliente.id_cliente;
          public               postgres    false    226            �            1259    16965 
   condominio    TABLE     �   CREATE TABLE public.condominio (
    id_condominio integer NOT NULL,
    id_unidade integer NOT NULL,
    qntd_lojas integer NOT NULL
);
    DROP TABLE public.condominio;
       public         heap r       postgres    false            �            1259    16964    condominio_id_condominio_seq    SEQUENCE     �   CREATE SEQUENCE public.condominio_id_condominio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.condominio_id_condominio_seq;
       public               postgres    false    229            z           0    0    condominio_id_condominio_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.condominio_id_condominio_seq OWNED BY public.condominio.id_condominio;
          public               postgres    false    228            �            1259    16973    conduz    TABLE     f   CREATE TABLE public.conduz (
    id_atividade integer NOT NULL,
    id_transporte integer NOT NULL
);
    DROP TABLE public.conduz;
       public         heap r       postgres    false                       1259    17123    consome    TABLE     �   CREATE TABLE public.consome (
    id_produto_frigobar integer NOT NULL,
    id_reserva integer NOT NULL,
    data timestamp without time zone NOT NULL,
    quantidade integer NOT NULL
);
    DROP TABLE public.consome;
       public         heap r       postgres    false            �            1259    16978    cozinha    TABLE     �   CREATE TABLE public.cozinha (
    id_dependencia integer NOT NULL,
    local character varying(30) NOT NULL,
    tipo_culinaria character varying(20) NOT NULL
);
    DROP TABLE public.cozinha;
       public         heap r       postgres    false            �            1259    16984    dependencia    TABLE       CREATE TABLE public.dependencia (
    id_dependencia integer NOT NULL,
    manutencao boolean NOT NULL,
    tamanho integer NOT NULL,
    hr__hr_inicio time without time zone NOT NULL,
    hr__hr_fim time without time zone NOT NULL,
    id_unidade integer NOT NULL
);
    DROP TABLE public.dependencia;
       public         heap r       postgres    false            �            1259    16983    dependencia_id_dependencia_seq    SEQUENCE     �   CREATE SEQUENCE public.dependencia_id_dependencia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.dependencia_id_dependencia_seq;
       public               postgres    false    233            {           0    0    dependencia_id_dependencia_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.dependencia_id_dependencia_seq OWNED BY public.dependencia.id_dependencia;
          public               postgres    false    232            �            1259    16990    dirige    TABLE     f   CREATE TABLE public.dirige (
    id_motorista integer NOT NULL,
    id_transporte integer NOT NULL
);
    DROP TABLE public.dirige;
       public         heap r       postgres    false            �            1259    16995    entrada    TABLE     �   CREATE TABLE public.entrada (
    id_transacao integer NOT NULL,
    id_reserva integer,
    emissor character varying(50) NOT NULL,
    valor_entrada real NOT NULL,
    id_loja integer
);
    DROP TABLE public.entrada;
       public         heap r       postgres    false            �            1259    17003    entrega_robo    TABLE     �   CREATE TABLE public.entrega_robo (
    id_entrega integer NOT NULL,
    robo integer NOT NULL,
    emissor character varying(50) NOT NULL,
    data date NOT NULL,
    hora time without time zone NOT NULL,
    id_acomodacao integer NOT NULL
);
     DROP TABLE public.entrega_robo;
       public         heap r       postgres    false            �            1259    17002    entrega_robo_id_entrega_seq    SEQUENCE     �   CREATE SEQUENCE public.entrega_robo_id_entrega_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.entrega_robo_id_entrega_seq;
       public               postgres    false    237            |           0    0    entrega_robo_id_entrega_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.entrega_robo_id_entrega_seq OWNED BY public.entrega_robo.id_entrega;
          public               postgres    false    236            �            1259    17010    equipamento    TABLE     �   CREATE TABLE public.equipamento (
    id_equipamento integer NOT NULL,
    nome character varying(30) NOT NULL,
    quantidade integer NOT NULL,
    desgaste character varying(15) NOT NULL
);
    DROP TABLE public.equipamento;
       public         heap r       postgres    false            �            1259    17009    equipamento_id_equipamento_seq    SEQUENCE     �   CREATE SEQUENCE public.equipamento_id_equipamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.equipamento_id_equipamento_seq;
       public               postgres    false    239            }           0    0    equipamento_id_equipamento_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.equipamento_id_equipamento_seq OWNED BY public.equipamento.id_equipamento;
          public               postgres    false    238            �            1259    17016 	   estaciona    TABLE     �   CREATE TABLE public.estaciona (
    id_carro integer NOT NULL,
    data_inicio timestamp without time zone NOT NULL,
    diarias integer NOT NULL,
    tipo_vaga character varying(15) NOT NULL,
    id_dependencia integer NOT NULL
);
    DROP TABLE public.estaciona;
       public         heap r       postgres    false            �            1259    17021    estacionamento    TABLE     �  CREATE TABLE public.estacionamento (
    id_dependencia integer NOT NULL,
    local character varying(30) NOT NULL,
    vaga_coberta integer NOT NULL,
    vaga_ar_livre integer NOT NULL,
    custo_coberta numeric(10,2) NOT NULL,
    custo_ar_livre numeric(10,2) NOT NULL,
    CONSTRAINT pp_ar_livre CHECK ((custo_coberta >= (0)::numeric)),
    CONSTRAINT pp_coberta CHECK ((custo_coberta >= (0)::numeric))
);
 "   DROP TABLE public.estacionamento;
       public         heap r       postgres    false            �            1259    17028    evento    TABLE     �   CREATE TABLE public.evento (
    id_dependencia integer NOT NULL,
    nome character varying(30) NOT NULL,
    tipo_uso character varying(15) NOT NULL,
    capacidade integer NOT NULL
);
    DROP TABLE public.evento;
       public         heap r       postgres    false            �            1259    17033    externa    TABLE     �   CREATE TABLE public.externa (
    id_atividade integer NOT NULL,
    local character varying(30) NOT NULL,
    distancia integer NOT NULL
);
    DROP TABLE public.externa;
       public         heap r       postgres    false            �            1259    17039    funcionario    TABLE     �  CREATE TABLE public.funcionario (
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
    DROP TABLE public.funcionario;
       public         heap r       postgres    false            �            1259    17038    funcionario_id_funcionario_seq    SEQUENCE     �   CREATE SEQUENCE public.funcionario_id_funcionario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.funcionario_id_funcionario_seq;
       public               postgres    false    245            ~           0    0    funcionario_id_funcionario_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.funcionario_id_funcionario_seq OWNED BY public.funcionario.id_funcionario;
          public               postgres    false    244            �            1259    17045    geral    TABLE     B   CREATE TABLE public.geral (
    id_requisicao integer NOT NULL
);
    DROP TABLE public.geral;
       public         heap r       postgres    false            �            1259    17051    hospede    TABLE     �   CREATE TABLE public.hospede (
    id_hospede integer NOT NULL,
    cpf character(11) NOT NULL,
    id_reserva integer NOT NULL
);
    DROP TABLE public.hospede;
       public         heap r       postgres    false            �            1259    17050    hospede_id_hospede_seq    SEQUENCE     �   CREATE SEQUENCE public.hospede_id_hospede_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.hospede_id_hospede_seq;
       public               postgres    false    248                       0    0    hospede_id_hospede_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.hospede_id_hospede_seq OWNED BY public.hospede.id_hospede;
          public               postgres    false    247            �            1259    17057 
   lavanderia    TABLE     �   CREATE TABLE public.lavanderia (
    id_dependencia integer NOT NULL,
    tipo_acesso character varying(15) NOT NULL,
    quantidade_maq integer NOT NULL
);
    DROP TABLE public.lavanderia;
       public         heap r       postgres    false            �            1259    17063    loja    TABLE     �   CREATE TABLE public.loja (
    id_loja integer NOT NULL,
    valor_aluguel numeric(10,2) NOT NULL,
    tipo character varying(15) NOT NULL,
    id_condominio integer NOT NULL
);
    DROP TABLE public.loja;
       public         heap r       postgres    false            �            1259    17062    loja_id_loja_seq    SEQUENCE     �   CREATE SEQUENCE public.loja_id_loja_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.loja_id_loja_seq;
       public               postgres    false    251            �           0    0    loja_id_loja_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.loja_id_loja_seq OWNED BY public.loja.id_loja;
          public               postgres    false    250            �            1259    17070    monitor    TABLE       CREATE TABLE public.monitor (
    id_monitor integer NOT NULL,
    cpf character(11) NOT NULL,
    nome character varying(30) NOT NULL,
    idade integer NOT NULL,
    sexo character varying(15) NOT NULL,
    tipo character varying(15) NOT NULL,
    telefone character(13) NOT NULL
);
    DROP TABLE public.monitor;
       public         heap r       postgres    false            �            1259    17069    monitor_id_monitor_seq    SEQUENCE     �   CREATE SEQUENCE public.monitor_id_monitor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.monitor_id_monitor_seq;
       public               postgres    false    253            �           0    0    monitor_id_monitor_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.monitor_id_monitor_seq OWNED BY public.monitor.id_monitor;
          public               postgres    false    252            �            1259    17077 	   motorista    TABLE     �   CREATE TABLE public.motorista (
    id_motorista integer NOT NULL,
    cpf character(11) NOT NULL,
    nome character varying(30) NOT NULL,
    telefone character(13) NOT NULL
);
    DROP TABLE public.motorista;
       public         heap r       postgres    false            �            1259    17076    motorista_id_motorista_seq    SEQUENCE     �   CREATE SEQUENCE public.motorista_id_motorista_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.motorista_id_motorista_seq;
       public               postgres    false    255            �           0    0    motorista_id_motorista_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.motorista_id_motorista_seq OWNED BY public.motorista.id_motorista;
          public               postgres    false    254                       1259    17084 
   ocorrencia    TABLE     @  CREATE TABLE public.ocorrencia (
    id_ocorrencia integer NOT NULL,
    categoria character varying(15) NOT NULL,
    descricao character varying(300) NOT NULL,
    gravidade integer NOT NULL,
    status character varying(15) NOT NULL,
    atendente character varying(15) NOT NULL,
    id_atividade integer NOT NULL
);
    DROP TABLE public.ocorrencia;
       public         heap r       postgres    false                        1259    17083    ocorrencia_id_ocorrencia_seq    SEQUENCE     �   CREATE SEQUENCE public.ocorrencia_id_ocorrencia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.ocorrencia_id_ocorrencia_seq;
       public               postgres    false    257            �           0    0    ocorrencia_id_ocorrencia_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.ocorrencia_id_ocorrencia_seq OWNED BY public.ocorrencia.id_ocorrencia;
          public               postgres    false    256                       1259    17098    parceiro    TABLE     �   CREATE TABLE public.parceiro (
    id_parceiro integer NOT NULL,
    nome character varying(30) NOT NULL,
    ramo character varying(30) NOT NULL
);
    DROP TABLE public.parceiro;
       public         heap r       postgres    false                       1259    17097    parceiro_id_parceiro_seq    SEQUENCE     �   CREATE SEQUENCE public.parceiro_id_parceiro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.parceiro_id_parceiro_seq;
       public               postgres    false    261            �           0    0    parceiro_id_parceiro_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.parceiro_id_parceiro_seq OWNED BY public.parceiro.id_parceiro;
          public               postgres    false    260                       1259    17105 
   particular    TABLE     m   CREATE TABLE public.particular (
    id_requisicao integer NOT NULL,
    cpf_autor character(11) NOT NULL
);
    DROP TABLE public.particular;
       public         heap r       postgres    false                       1259    17104    particular_id_requisicao_seq    SEQUENCE     �   CREATE SEQUENCE public.particular_id_requisicao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.particular_id_requisicao_seq;
       public               postgres    false    263            �           0    0    particular_id_requisicao_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.particular_id_requisicao_seq OWNED BY public.particular.id_requisicao;
          public               postgres    false    262                       1259    17111    piscina    TABLE     �   CREATE TABLE public.piscina (
    id_dependencia integer NOT NULL,
    capacidade integer NOT NULL,
    profundidade integer NOT NULL,
    data_ult_limpeza date NOT NULL
);
    DROP TABLE public.piscina;
       public         heap r       postgres    false            
           1259    17117    produto    TABLE     �   CREATE TABLE public.produto (
    id_produto integer NOT NULL,
    nome character varying(30) NOT NULL,
    valor numeric(10,2) NOT NULL,
    estoque integer NOT NULL,
    id_dependencia integer NOT NULL
);
    DROP TABLE public.produto;
       public         heap r       postgres    false                       1259    17091    produto_frigobar    TABLE     �   CREATE TABLE public.produto_frigobar (
    id_produto_frigobar integer NOT NULL,
    nome character(30) NOT NULL,
    valor numeric(10,2) NOT NULL,
    estoque integer NOT NULL,
    id_acomodacao integer NOT NULL
);
 $   DROP TABLE public.produto_frigobar;
       public         heap r       postgres    false                       1259    17090 (   produto_frigobar_id_produto_frigobar_seq    SEQUENCE     �   CREATE SEQUENCE public.produto_frigobar_id_produto_frigobar_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.produto_frigobar_id_produto_frigobar_seq;
       public               postgres    false    259            �           0    0 (   produto_frigobar_id_produto_frigobar_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.produto_frigobar_id_produto_frigobar_seq OWNED BY public.produto_frigobar.id_produto_frigobar;
          public               postgres    false    258            	           1259    17116    produto_id_produto_seq    SEQUENCE     �   CREATE SEQUENCE public.produto_id_produto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.produto_id_produto_seq;
       public               postgres    false    266            �           0    0    produto_id_produto_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.produto_id_produto_seq OWNED BY public.produto.id_produto;
          public               postgres    false    265                       1259    17129 
   requisicao    TABLE     �  CREATE TABLE public.requisicao (
    id_requisicao integer NOT NULL,
    status character varying(15) NOT NULL,
    tipo character varying(15) NOT NULL,
    atendente character varying(30) NOT NULL,
    texto_requisicao character varying(300) NOT NULL,
    data_abertura timestamp without time zone NOT NULL,
    data_fechamento timestamp without time zone NOT NULL,
    id_cliente integer NOT NULL
);
    DROP TABLE public.requisicao;
       public         heap r       postgres    false                       1259    17128    requisicao_id_requisicao_seq    SEQUENCE     �   CREATE SEQUENCE public.requisicao_id_requisicao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.requisicao_id_requisicao_seq;
       public               postgres    false    269            �           0    0    requisicao_id_requisicao_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.requisicao_id_requisicao_seq OWNED BY public.requisicao.id_requisicao;
          public               postgres    false    268                       1259    17136    reserva    TABLE     �   CREATE TABLE public.reserva (
    id_reserva integer NOT NULL,
    valor numeric(10,2) NOT NULL,
    per_dt_inicio date NOT NULL,
    per_dt_fim date NOT NULL,
    id_cliente integer NOT NULL,
    id_acomodacao integer NOT NULL
);
    DROP TABLE public.reserva;
       public         heap r       postgres    false                       1259    17135    reserva_id_reserva_seq    SEQUENCE     �   CREATE SEQUENCE public.reserva_id_reserva_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.reserva_id_reserva_seq;
       public               postgres    false    271            �           0    0    reserva_id_reserva_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.reserva_id_reserva_seq OWNED BY public.reserva.id_reserva;
          public               postgres    false    270                       1259    17143    saida    TABLE     �   CREATE TABLE public.saida (
    id_transacao integer NOT NULL,
    id_parceiro integer,
    receptor character varying(30) NOT NULL,
    valor_saida numeric(10,2) NOT NULL,
    id_funcionario integer
);
    DROP TABLE public.saida;
       public         heap r       postgres    false                       1259    17142    saida_id_transacao_seq    SEQUENCE     �   CREATE SEQUENCE public.saida_id_transacao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.saida_id_transacao_seq;
       public               postgres    false    273            �           0    0    saida_id_transacao_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.saida_id_transacao_seq OWNED BY public.saida.id_transacao;
          public               postgres    false    272                       1259    17149    solicita    TABLE     �   CREATE TABLE public.solicita (
    id_produto integer NOT NULL,
    id_reserva integer NOT NULL,
    quantidade integer NOT NULL
);
    DROP TABLE public.solicita;
       public         heap r       postgres    false                       1259    17154    supervisiona    TABLE     i   CREATE TABLE public.supervisiona (
    id_atividade integer NOT NULL,
    id_monitor integer NOT NULL
);
     DROP TABLE public.supervisiona;
       public         heap r       postgres    false                       1259    17160 	   transacao    TABLE     �   CREATE TABLE public.transacao (
    id_transacao integer NOT NULL,
    data timestamp without time zone NOT NULL,
    motivo character varying(50) NOT NULL,
    id_nota_fiscal numeric(44,0) NOT NULL
);
    DROP TABLE public.transacao;
       public         heap r       postgres    false                       1259    17166    transacao_extorno    TABLE     �   CREATE TABLE public.transacao_extorno (
    id_transacao integer NOT NULL,
    data_extorno timestamp without time zone NOT NULL,
    motivo_extorno character varying(50) NOT NULL
);
 %   DROP TABLE public.transacao_extorno;
       public         heap r       postgres    false                       1259    17159    transacao_id_transacao_seq    SEQUENCE     �   CREATE SEQUENCE public.transacao_id_transacao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.transacao_id_transacao_seq;
       public               postgres    false    277            �           0    0    transacao_id_transacao_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.transacao_id_transacao_seq OWNED BY public.transacao.id_transacao;
          public               postgres    false    276                       1259    17174 
   transporte    TABLE     �   CREATE TABLE public.transporte (
    id_transporte integer NOT NULL,
    placa character varying(7) NOT NULL,
    modelo character varying(10) NOT NULL,
    capacidade integer NOT NULL
);
    DROP TABLE public.transporte;
       public         heap r       postgres    false                       1259    17173    transporte_id_transporte_seq    SEQUENCE     �   CREATE SEQUENCE public.transporte_id_transporte_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.transporte_id_transporte_seq;
       public               postgres    false    280            �           0    0    transporte_id_transporte_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.transporte_id_transporte_seq OWNED BY public.transporte.id_transporte;
          public               postgres    false    279                       1259    17181    unidade    TABLE       CREATE TABLE public.unidade (
    id_unidade integer NOT NULL,
    nome_fantasia character varying(30) NOT NULL,
    tipo character varying(30) NOT NULL,
    setor character varying(30) NOT NULL,
    cep character(15) NOT NULL,
    numero integer NOT NULL
);
    DROP TABLE public.unidade;
       public         heap r       postgres    false                       1259    17180    unidade_id_unidade_seq    SEQUENCE     �   CREATE SEQUENCE public.unidade_id_unidade_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.unidade_id_unidade_seq;
       public               postgres    false    282            �           0    0    unidade_id_unidade_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.unidade_id_unidade_seq OWNED BY public.unidade.id_unidade;
          public               postgres    false    281                       1259    17187    utiliza    TABLE     �   CREATE TABLE public.utiliza (
    id_atividade integer NOT NULL,
    id_equipamento integer NOT NULL,
    obrigatoriedade boolean NOT NULL
);
    DROP TABLE public.utiliza;
       public         heap r       postgres    false            �           2604    16928    acomodacao id_acomodacao    DEFAULT     �   ALTER TABLE ONLY public.acomodacao ALTER COLUMN id_acomodacao SET DEFAULT nextval('public.acomodacao_id_acomodacao_seq'::regclass);
 G   ALTER TABLE public.acomodacao ALTER COLUMN id_acomodacao DROP DEFAULT;
       public               postgres    false    217    218    218            �           2604    16935    amenidade id_amenidade    DEFAULT     �   ALTER TABLE ONLY public.amenidade ALTER COLUMN id_amenidade SET DEFAULT nextval('public.amenidade_id_amenidade_seq'::regclass);
 E   ALTER TABLE public.amenidade ALTER COLUMN id_amenidade DROP DEFAULT;
       public               postgres    false    219    220    220            �           2604    16942    atividade id_atividade    DEFAULT     �   ALTER TABLE ONLY public.atividade ALTER COLUMN id_atividade SET DEFAULT nextval('public.atividade_id_atividade_seq'::regclass);
 E   ALTER TABLE public.atividade ALTER COLUMN id_atividade DROP DEFAULT;
       public               postgres    false    221    222    222            �           2604    16954    carro id_carro    DEFAULT     p   ALTER TABLE ONLY public.carro ALTER COLUMN id_carro SET DEFAULT nextval('public.carro_id_carro_seq'::regclass);
 =   ALTER TABLE public.carro ALTER COLUMN id_carro DROP DEFAULT;
       public               postgres    false    224    225    225            �           2604    16961    cliente id_cliente    DEFAULT     x   ALTER TABLE ONLY public.cliente ALTER COLUMN id_cliente SET DEFAULT nextval('public.cliente_id_cliente_seq'::regclass);
 A   ALTER TABLE public.cliente ALTER COLUMN id_cliente DROP DEFAULT;
       public               postgres    false    227    226    227            �           2604    16968    condominio id_condominio    DEFAULT     �   ALTER TABLE ONLY public.condominio ALTER COLUMN id_condominio SET DEFAULT nextval('public.condominio_id_condominio_seq'::regclass);
 G   ALTER TABLE public.condominio ALTER COLUMN id_condominio DROP DEFAULT;
       public               postgres    false    228    229    229            �           2604    16987    dependencia id_dependencia    DEFAULT     �   ALTER TABLE ONLY public.dependencia ALTER COLUMN id_dependencia SET DEFAULT nextval('public.dependencia_id_dependencia_seq'::regclass);
 I   ALTER TABLE public.dependencia ALTER COLUMN id_dependencia DROP DEFAULT;
       public               postgres    false    232    233    233            �           2604    17006    entrega_robo id_entrega    DEFAULT     �   ALTER TABLE ONLY public.entrega_robo ALTER COLUMN id_entrega SET DEFAULT nextval('public.entrega_robo_id_entrega_seq'::regclass);
 F   ALTER TABLE public.entrega_robo ALTER COLUMN id_entrega DROP DEFAULT;
       public               postgres    false    236    237    237            �           2604    17013    equipamento id_equipamento    DEFAULT     �   ALTER TABLE ONLY public.equipamento ALTER COLUMN id_equipamento SET DEFAULT nextval('public.equipamento_id_equipamento_seq'::regclass);
 I   ALTER TABLE public.equipamento ALTER COLUMN id_equipamento DROP DEFAULT;
       public               postgres    false    239    238    239            �           2604    17042    funcionario id_funcionario    DEFAULT     �   ALTER TABLE ONLY public.funcionario ALTER COLUMN id_funcionario SET DEFAULT nextval('public.funcionario_id_funcionario_seq'::regclass);
 I   ALTER TABLE public.funcionario ALTER COLUMN id_funcionario DROP DEFAULT;
       public               postgres    false    244    245    245            �           2604    17054    hospede id_hospede    DEFAULT     x   ALTER TABLE ONLY public.hospede ALTER COLUMN id_hospede SET DEFAULT nextval('public.hospede_id_hospede_seq'::regclass);
 A   ALTER TABLE public.hospede ALTER COLUMN id_hospede DROP DEFAULT;
       public               postgres    false    248    247    248            �           2604    17066    loja id_loja    DEFAULT     l   ALTER TABLE ONLY public.loja ALTER COLUMN id_loja SET DEFAULT nextval('public.loja_id_loja_seq'::regclass);
 ;   ALTER TABLE public.loja ALTER COLUMN id_loja DROP DEFAULT;
       public               postgres    false    250    251    251            �           2604    17073    monitor id_monitor    DEFAULT     x   ALTER TABLE ONLY public.monitor ALTER COLUMN id_monitor SET DEFAULT nextval('public.monitor_id_monitor_seq'::regclass);
 A   ALTER TABLE public.monitor ALTER COLUMN id_monitor DROP DEFAULT;
       public               postgres    false    252    253    253            �           2604    17080    motorista id_motorista    DEFAULT     �   ALTER TABLE ONLY public.motorista ALTER COLUMN id_motorista SET DEFAULT nextval('public.motorista_id_motorista_seq'::regclass);
 E   ALTER TABLE public.motorista ALTER COLUMN id_motorista DROP DEFAULT;
       public               postgres    false    255    254    255            �           2604    17087    ocorrencia id_ocorrencia    DEFAULT     �   ALTER TABLE ONLY public.ocorrencia ALTER COLUMN id_ocorrencia SET DEFAULT nextval('public.ocorrencia_id_ocorrencia_seq'::regclass);
 G   ALTER TABLE public.ocorrencia ALTER COLUMN id_ocorrencia DROP DEFAULT;
       public               postgres    false    256    257    257            �           2604    17101    parceiro id_parceiro    DEFAULT     |   ALTER TABLE ONLY public.parceiro ALTER COLUMN id_parceiro SET DEFAULT nextval('public.parceiro_id_parceiro_seq'::regclass);
 C   ALTER TABLE public.parceiro ALTER COLUMN id_parceiro DROP DEFAULT;
       public               postgres    false    261    260    261            �           2604    17108    particular id_requisicao    DEFAULT     �   ALTER TABLE ONLY public.particular ALTER COLUMN id_requisicao SET DEFAULT nextval('public.particular_id_requisicao_seq'::regclass);
 G   ALTER TABLE public.particular ALTER COLUMN id_requisicao DROP DEFAULT;
       public               postgres    false    262    263    263            �           2604    17120    produto id_produto    DEFAULT     x   ALTER TABLE ONLY public.produto ALTER COLUMN id_produto SET DEFAULT nextval('public.produto_id_produto_seq'::regclass);
 A   ALTER TABLE public.produto ALTER COLUMN id_produto DROP DEFAULT;
       public               postgres    false    266    265    266            �           2604    17094 $   produto_frigobar id_produto_frigobar    DEFAULT     �   ALTER TABLE ONLY public.produto_frigobar ALTER COLUMN id_produto_frigobar SET DEFAULT nextval('public.produto_frigobar_id_produto_frigobar_seq'::regclass);
 S   ALTER TABLE public.produto_frigobar ALTER COLUMN id_produto_frigobar DROP DEFAULT;
       public               postgres    false    258    259    259            �           2604    17132    requisicao id_requisicao    DEFAULT     �   ALTER TABLE ONLY public.requisicao ALTER COLUMN id_requisicao SET DEFAULT nextval('public.requisicao_id_requisicao_seq'::regclass);
 G   ALTER TABLE public.requisicao ALTER COLUMN id_requisicao DROP DEFAULT;
       public               postgres    false    269    268    269            �           2604    17139    reserva id_reserva    DEFAULT     x   ALTER TABLE ONLY public.reserva ALTER COLUMN id_reserva SET DEFAULT nextval('public.reserva_id_reserva_seq'::regclass);
 A   ALTER TABLE public.reserva ALTER COLUMN id_reserva DROP DEFAULT;
       public               postgres    false    270    271    271            �           2604    17146    saida id_transacao    DEFAULT     x   ALTER TABLE ONLY public.saida ALTER COLUMN id_transacao SET DEFAULT nextval('public.saida_id_transacao_seq'::regclass);
 A   ALTER TABLE public.saida ALTER COLUMN id_transacao DROP DEFAULT;
       public               postgres    false    272    273    273            �           2604    17163    transacao id_transacao    DEFAULT     �   ALTER TABLE ONLY public.transacao ALTER COLUMN id_transacao SET DEFAULT nextval('public.transacao_id_transacao_seq'::regclass);
 E   ALTER TABLE public.transacao ALTER COLUMN id_transacao DROP DEFAULT;
       public               postgres    false    277    276    277            �           2604    17177    transporte id_transporte    DEFAULT     �   ALTER TABLE ONLY public.transporte ALTER COLUMN id_transporte SET DEFAULT nextval('public.transporte_id_transporte_seq'::regclass);
 G   ALTER TABLE public.transporte ALTER COLUMN id_transporte DROP DEFAULT;
       public               postgres    false    280    279    280            �           2604    17184    unidade id_unidade    DEFAULT     x   ALTER TABLE ONLY public.unidade ALTER COLUMN id_unidade SET DEFAULT nextval('public.unidade_id_unidade_seq'::regclass);
 A   ALTER TABLE public.unidade ALTER COLUMN id_unidade DROP DEFAULT;
       public               postgres    false    281    282    282            -          0    16925 
   acomodacao 
   TABLE DATA           {   COPY public.acomodacao (id_acomodacao, tipo, status, limpeza, preco, politica_uso, capacidade_max, id_unidade) FROM stdin;
    public               postgres    false    218   �{      /          0    16932 	   amenidade 
   TABLE DATA           R   COPY public.amenidade (id_amenidade, tipo, manutencao, id_acomodacao) FROM stdin;
    public               postgres    false    220   (�      1          0    16939 	   atividade 
   TABLE DATA           �   COPY public.atividade (id_atividade, nome, tipo, idade_min, idade_max, data_atv, sazonalidade, duracao, capacidade_max, id_parceiro, id_unidade) FROM stdin;
    public               postgres    false    222   4�      2          0    16945    avalia 
   TABLE DATA           \   COPY public.avalia (id_atividade, id_hospede, nota, comentario, data_avaliacao) FROM stdin;
    public               postgres    false    223   ҉      4          0    16951    carro 
   TABLE DATA           L   COPY public.carro (id_carro, placa, entrada, saida, id_reserva) FROM stdin;
    public               postgres    false    225   ��      6          0    16958    cliente 
   TABLE DATA           Z   COPY public.cliente (id_cliente, cpf, nome, email, ponto_fidelidade, visitas) FROM stdin;
    public               postgres    false    227   ��      8          0    16965 
   condominio 
   TABLE DATA           K   COPY public.condominio (id_condominio, id_unidade, qntd_lojas) FROM stdin;
    public               postgres    false    229   ��      9          0    16973    conduz 
   TABLE DATA           =   COPY public.conduz (id_atividade, id_transporte) FROM stdin;
    public               postgres    false    230   �      ^          0    17123    consome 
   TABLE DATA           T   COPY public.consome (id_produto_frigobar, id_reserva, data, quantidade) FROM stdin;
    public               postgres    false    267   o�      :          0    16978    cozinha 
   TABLE DATA           H   COPY public.cozinha (id_dependencia, local, tipo_culinaria) FROM stdin;
    public               postgres    false    231   ��      <          0    16984    dependencia 
   TABLE DATA           q   COPY public.dependencia (id_dependencia, manutencao, tamanho, hr__hr_inicio, hr__hr_fim, id_unidade) FROM stdin;
    public               postgres    false    233   ��      =          0    16990    dirige 
   TABLE DATA           =   COPY public.dirige (id_motorista, id_transporte) FROM stdin;
    public               postgres    false    234   �      >          0    16995    entrada 
   TABLE DATA           \   COPY public.entrada (id_transacao, id_reserva, emissor, valor_entrada, id_loja) FROM stdin;
    public               postgres    false    235   j�      @          0    17003    entrega_robo 
   TABLE DATA           \   COPY public.entrega_robo (id_entrega, robo, emissor, data, hora, id_acomodacao) FROM stdin;
    public               postgres    false    237   3�      B          0    17010    equipamento 
   TABLE DATA           Q   COPY public.equipamento (id_equipamento, nome, quantidade, desgaste) FROM stdin;
    public               postgres    false    239   h�      C          0    17016 	   estaciona 
   TABLE DATA           ^   COPY public.estaciona (id_carro, data_inicio, diarias, tipo_vaga, id_dependencia) FROM stdin;
    public               postgres    false    240   �      D          0    17021    estacionamento 
   TABLE DATA           {   COPY public.estacionamento (id_dependencia, local, vaga_coberta, vaga_ar_livre, custo_coberta, custo_ar_livre) FROM stdin;
    public               postgres    false    241   4�      E          0    17028    evento 
   TABLE DATA           L   COPY public.evento (id_dependencia, nome, tipo_uso, capacidade) FROM stdin;
    public               postgres    false    242   ��      F          0    17033    externa 
   TABLE DATA           A   COPY public.externa (id_atividade, local, distancia) FROM stdin;
    public               postgres    false    243   ��      H          0    17039    funcionario 
   TABLE DATA              COPY public.funcionario (id_funcionario, cpf, nome, contrato, cargo, salario, va, vr, vt, plano_saude, id_unidade) FROM stdin;
    public               postgres    false    245   `�      I          0    17045    geral 
   TABLE DATA           .   COPY public.geral (id_requisicao) FROM stdin;
    public               postgres    false    246   `�      K          0    17051    hospede 
   TABLE DATA           >   COPY public.hospede (id_hospede, cpf, id_reserva) FROM stdin;
    public               postgres    false    248   ��      L          0    17057 
   lavanderia 
   TABLE DATA           Q   COPY public.lavanderia (id_dependencia, tipo_acesso, quantidade_maq) FROM stdin;
    public               postgres    false    249   '      N          0    17063    loja 
   TABLE DATA           K   COPY public.loja (id_loja, valor_aluguel, tipo, id_condominio) FROM stdin;
    public               postgres    false    251   �      P          0    17070    monitor 
   TABLE DATA           U   COPY public.monitor (id_monitor, cpf, nome, idade, sexo, tipo, telefone) FROM stdin;
    public               postgres    false    253   �      R          0    17077 	   motorista 
   TABLE DATA           F   COPY public.motorista (id_motorista, cpf, nome, telefone) FROM stdin;
    public               postgres    false    255   Q      T          0    17084 
   ocorrencia 
   TABLE DATA           u   COPY public.ocorrencia (id_ocorrencia, categoria, descricao, gravidade, status, atendente, id_atividade) FROM stdin;
    public               postgres    false    257   (      X          0    17098    parceiro 
   TABLE DATA           ;   COPY public.parceiro (id_parceiro, nome, ramo) FROM stdin;
    public               postgres    false    261   !	      Z          0    17105 
   particular 
   TABLE DATA           >   COPY public.particular (id_requisicao, cpf_autor) FROM stdin;
    public               postgres    false    263   �	      [          0    17111    piscina 
   TABLE DATA           ]   COPY public.piscina (id_dependencia, capacidade, profundidade, data_ult_limpeza) FROM stdin;
    public               postgres    false    264   >
      ]          0    17117    produto 
   TABLE DATA           S   COPY public.produto (id_produto, nome, valor, estoque, id_dependencia) FROM stdin;
    public               postgres    false    266   %      V          0    17091    produto_frigobar 
   TABLE DATA           d   COPY public.produto_frigobar (id_produto_frigobar, nome, valor, estoque, id_acomodacao) FROM stdin;
    public               postgres    false    259   8*      `          0    17129 
   requisicao 
   TABLE DATA           �   COPY public.requisicao (id_requisicao, status, tipo, atendente, texto_requisicao, data_abertura, data_fechamento, id_cliente) FROM stdin;
    public               postgres    false    269   D      b          0    17136    reserva 
   TABLE DATA           j   COPY public.reserva (id_reserva, valor, per_dt_inicio, per_dt_fim, id_cliente, id_acomodacao) FROM stdin;
    public               postgres    false    271   5I      d          0    17143    saida 
   TABLE DATA           a   COPY public.saida (id_transacao, id_parceiro, receptor, valor_saida, id_funcionario) FROM stdin;
    public               postgres    false    273   U      e          0    17149    solicita 
   TABLE DATA           F   COPY public.solicita (id_produto, id_reserva, quantidade) FROM stdin;
    public               postgres    false    274   �c      f          0    17154    supervisiona 
   TABLE DATA           @   COPY public.supervisiona (id_atividade, id_monitor) FROM stdin;
    public               postgres    false    275   gm      h          0    17160 	   transacao 
   TABLE DATA           O   COPY public.transacao (id_transacao, data, motivo, id_nota_fiscal) FROM stdin;
    public               postgres    false    277   �m      i          0    17166    transacao_extorno 
   TABLE DATA           W   COPY public.transacao_extorno (id_transacao, data_extorno, motivo_extorno) FROM stdin;
    public               postgres    false    278   ��      k          0    17174 
   transporte 
   TABLE DATA           N   COPY public.transporte (id_transporte, placa, modelo, capacidade) FROM stdin;
    public               postgres    false    280   E�      m          0    17181    unidade 
   TABLE DATA           V   COPY public.unidade (id_unidade, nome_fantasia, tipo, setor, cep, numero) FROM stdin;
    public               postgres    false    282   �      n          0    17187    utiliza 
   TABLE DATA           P   COPY public.utiliza (id_atividade, id_equipamento, obrigatoriedade) FROM stdin;
    public               postgres    false    283   ��      �           0    0    acomodacao_id_acomodacao_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.acomodacao_id_acomodacao_seq', 200, true);
          public               postgres    false    217            �           0    0    amenidade_id_amenidade_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.amenidade_id_amenidade_seq', 233, true);
          public               postgres    false    219            �           0    0    atividade_id_atividade_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.atividade_id_atividade_seq', 20, true);
          public               postgres    false    221            �           0    0    carro_id_carro_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.carro_id_carro_seq', 55, true);
          public               postgres    false    224            �           0    0    cliente_id_cliente_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.cliente_id_cliente_seq', 20, true);
          public               postgres    false    226            �           0    0    condominio_id_condominio_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.condominio_id_condominio_seq', 15, true);
          public               postgres    false    228            �           0    0    dependencia_id_dependencia_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.dependencia_id_dependencia_seq', 103, true);
          public               postgres    false    232            �           0    0    entrega_robo_id_entrega_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.entrega_robo_id_entrega_seq', 999, true);
          public               postgres    false    236            �           0    0    equipamento_id_equipamento_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.equipamento_id_equipamento_seq', 23, true);
          public               postgres    false    238            �           0    0    funcionario_id_funcionario_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.funcionario_id_funcionario_seq', 253, true);
          public               postgres    false    244            �           0    0    hospede_id_hospede_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.hospede_id_hospede_seq', 364, true);
          public               postgres    false    247            �           0    0    loja_id_loja_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.loja_id_loja_seq', 50, true);
          public               postgres    false    250            �           0    0    monitor_id_monitor_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.monitor_id_monitor_seq', 7, true);
          public               postgres    false    252            �           0    0    motorista_id_motorista_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.motorista_id_motorista_seq', 5, true);
          public               postgres    false    254            �           0    0    ocorrencia_id_ocorrencia_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.ocorrencia_id_ocorrencia_seq', 5, true);
          public               postgres    false    256            �           0    0    parceiro_id_parceiro_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.parceiro_id_parceiro_seq', 8, true);
          public               postgres    false    260            �           0    0    particular_id_requisicao_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.particular_id_requisicao_seq', 1, false);
          public               postgres    false    262            �           0    0 (   produto_frigobar_id_produto_frigobar_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.produto_frigobar_id_produto_frigobar_seq', 800, true);
          public               postgres    false    258            �           0    0    produto_id_produto_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.produto_id_produto_seq', 876, true);
          public               postgres    false    265            �           0    0    requisicao_id_requisicao_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.requisicao_id_requisicao_seq', 10, true);
          public               postgres    false    268            �           0    0    reserva_id_reserva_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.reserva_id_reserva_seq', 260, true);
          public               postgres    false    270            �           0    0    saida_id_transacao_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.saida_id_transacao_seq', 1, false);
          public               postgres    false    272            �           0    0    transacao_id_transacao_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.transacao_id_transacao_seq', 1, false);
          public               postgres    false    276            �           0    0    transporte_id_transporte_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.transporte_id_transporte_seq', 25, true);
          public               postgres    false    279            �           0    0    unidade_id_unidade_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.unidade_id_unidade_seq', 15, true);
          public               postgres    false    281            +           2606    17037    externa fkati_ext_id 
   CONSTRAINT     \   ALTER TABLE ONLY public.externa
    ADD CONSTRAINT fkati_ext_id PRIMARY KEY (id_atividade);
 >   ALTER TABLE ONLY public.externa DROP CONSTRAINT fkati_ext_id;
       public                 postgres    false    243                       2606    17001    entrada fkcheckout_id 
   CONSTRAINT     V   ALTER TABLE ONLY public.entrada
    ADD CONSTRAINT fkcheckout_id UNIQUE (id_reserva);
 ?   ALTER TABLE ONLY public.entrada DROP CONSTRAINT fkcheckout_id;
       public                 postgres    false    235                       2606    16982    cozinha fkdep_coz_id 
   CONSTRAINT     ^   ALTER TABLE ONLY public.cozinha
    ADD CONSTRAINT fkdep_coz_id PRIMARY KEY (id_dependencia);
 >   ALTER TABLE ONLY public.cozinha DROP CONSTRAINT fkdep_coz_id;
       public                 postgres    false    231            '           2606    17027    estacionamento fkdep_est_id 
   CONSTRAINT     e   ALTER TABLE ONLY public.estacionamento
    ADD CONSTRAINT fkdep_est_id PRIMARY KEY (id_dependencia);
 E   ALTER TABLE ONLY public.estacionamento DROP CONSTRAINT fkdep_est_id;
       public                 postgres    false    241            )           2606    17032    evento fkdep_eve_id 
   CONSTRAINT     ]   ALTER TABLE ONLY public.evento
    ADD CONSTRAINT fkdep_eve_id PRIMARY KEY (id_dependencia);
 =   ALTER TABLE ONLY public.evento DROP CONSTRAINT fkdep_eve_id;
       public                 postgres    false    242            5           2606    17061    lavanderia fkdep_lav_id 
   CONSTRAINT     a   ALTER TABLE ONLY public.lavanderia
    ADD CONSTRAINT fkdep_lav_id PRIMARY KEY (id_dependencia);
 A   ALTER TABLE ONLY public.lavanderia DROP CONSTRAINT fkdep_lav_id;
       public                 postgres    false    249            G           2606    17115    piscina fkdep_pis_id 
   CONSTRAINT     ^   ALTER TABLE ONLY public.piscina
    ADD CONSTRAINT fkdep_pis_id PRIMARY KEY (id_dependencia);
 >   ALTER TABLE ONLY public.piscina DROP CONSTRAINT fkdep_pis_id;
       public                 postgres    false    264            $           2606    17020    estaciona fkest_car_id 
   CONSTRAINT     Z   ALTER TABLE ONLY public.estaciona
    ADD CONSTRAINT fkest_car_id PRIMARY KEY (id_carro);
 @   ALTER TABLE ONLY public.estaciona DROP CONSTRAINT fkest_car_id;
       public                 postgres    false    240                       2606    16972    condominio fkestabelece_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.condominio
    ADD CONSTRAINT fkestabelece_id UNIQUE (id_unidade);
 D   ALTER TABLE ONLY public.condominio DROP CONSTRAINT fkestabelece_id;
       public                 postgres    false    229            0           2606    17049    geral fkreq_ger_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.geral
    ADD CONSTRAINT fkreq_ger_id PRIMARY KEY (id_requisicao);
 <   ALTER TABLE ONLY public.geral DROP CONSTRAINT fkreq_ger_id;
       public                 postgres    false    246            E           2606    17110    particular fkreq_par_id 
   CONSTRAINT     `   ALTER TABLE ONLY public.particular
    ADD CONSTRAINT fkreq_par_id PRIMARY KEY (id_requisicao);
 A   ALTER TABLE ONLY public.particular DROP CONSTRAINT fkreq_par_id;
       public                 postgres    false    263            a           2606    17172    transacao_extorno fkretorna_id 
   CONSTRAINT     a   ALTER TABLE ONLY public.transacao_extorno
    ADD CONSTRAINT fkretorna_id UNIQUE (id_transacao);
 H   ALTER TABLE ONLY public.transacao_extorno DROP CONSTRAINT fkretorna_id;
       public                 postgres    false    278                       2606    16999    entrada fktra_ent_id 
   CONSTRAINT     \   ALTER TABLE ONLY public.entrada
    ADD CONSTRAINT fktra_ent_id PRIMARY KEY (id_transacao);
 >   ALTER TABLE ONLY public.entrada DROP CONSTRAINT fktra_ent_id;
       public                 postgres    false    235            V           2606    17148    saida fktra_sai_id 
   CONSTRAINT     Z   ALTER TABLE ONLY public.saida
    ADD CONSTRAINT fktra_sai_id PRIMARY KEY (id_transacao);
 <   ALTER TABLE ONLY public.saida DROP CONSTRAINT fktra_sai_id;
       public                 postgres    false    273            �           2606    16930    acomodacao id_acomodacao_id 
   CONSTRAINT     d   ALTER TABLE ONLY public.acomodacao
    ADD CONSTRAINT id_acomodacao_id PRIMARY KEY (id_acomodacao);
 E   ALTER TABLE ONLY public.acomodacao DROP CONSTRAINT id_acomodacao_id;
       public                 postgres    false    218            �           2606    16937    amenidade id_amenidade 
   CONSTRAINT     ^   ALTER TABLE ONLY public.amenidade
    ADD CONSTRAINT id_amenidade PRIMARY KEY (id_amenidade);
 @   ALTER TABLE ONLY public.amenidade DROP CONSTRAINT id_amenidade;
       public                 postgres    false    220                        2606    16944    atividade id_atividade_id 
   CONSTRAINT     a   ALTER TABLE ONLY public.atividade
    ADD CONSTRAINT id_atividade_id PRIMARY KEY (id_atividade);
 C   ALTER TABLE ONLY public.atividade DROP CONSTRAINT id_atividade_id;
       public                 postgres    false    222                       2606    16949    avalia id_avalia 
   CONSTRAINT     d   ALTER TABLE ONLY public.avalia
    ADD CONSTRAINT id_avalia PRIMARY KEY (id_hospede, id_atividade);
 :   ALTER TABLE ONLY public.avalia DROP CONSTRAINT id_avalia;
       public                 postgres    false    223    223                       2606    16956    carro id_carro_id 
   CONSTRAINT     U   ALTER TABLE ONLY public.carro
    ADD CONSTRAINT id_carro_id PRIMARY KEY (id_carro);
 ;   ALTER TABLE ONLY public.carro DROP CONSTRAINT id_carro_id;
       public                 postgres    false    225            	           2606    16963    cliente id_cliente 
   CONSTRAINT     X   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT id_cliente PRIMARY KEY (id_cliente);
 <   ALTER TABLE ONLY public.cliente DROP CONSTRAINT id_cliente;
       public                 postgres    false    227                       2606    16970    condominio id_condominio 
   CONSTRAINT     a   ALTER TABLE ONLY public.condominio
    ADD CONSTRAINT id_condominio PRIMARY KEY (id_condominio);
 B   ALTER TABLE ONLY public.condominio DROP CONSTRAINT id_condominio;
       public                 postgres    false    229                       2606    16977    conduz id_conduz 
   CONSTRAINT     g   ALTER TABLE ONLY public.conduz
    ADD CONSTRAINT id_conduz PRIMARY KEY (id_atividade, id_transporte);
 :   ALTER TABLE ONLY public.conduz DROP CONSTRAINT id_conduz;
       public                 postgres    false    230    230            M           2606    17127    consome id_consome 
   CONSTRAINT     s   ALTER TABLE ONLY public.consome
    ADD CONSTRAINT id_consome PRIMARY KEY (id_reserva, id_produto_frigobar, data);
 <   ALTER TABLE ONLY public.consome DROP CONSTRAINT id_consome;
       public                 postgres    false    267    267    267                       2606    16989    dependencia id_dependencia 
   CONSTRAINT     d   ALTER TABLE ONLY public.dependencia
    ADD CONSTRAINT id_dependencia PRIMARY KEY (id_dependencia);
 D   ALTER TABLE ONLY public.dependencia DROP CONSTRAINT id_dependencia;
       public                 postgres    false    233                       2606    16994    dirige id_dirige 
   CONSTRAINT     g   ALTER TABLE ONLY public.dirige
    ADD CONSTRAINT id_dirige PRIMARY KEY (id_motorista, id_transporte);
 :   ALTER TABLE ONLY public.dirige DROP CONSTRAINT id_dirige;
       public                 postgres    false    234    234                       2606    17008    entrega_robo id_entrega_robo 
   CONSTRAINT     b   ALTER TABLE ONLY public.entrega_robo
    ADD CONSTRAINT id_entrega_robo PRIMARY KEY (id_entrega);
 F   ALTER TABLE ONLY public.entrega_robo DROP CONSTRAINT id_entrega_robo;
       public                 postgres    false    237            "           2606    17015    equipamento id_equipamento_id 
   CONSTRAINT     g   ALTER TABLE ONLY public.equipamento
    ADD CONSTRAINT id_equipamento_id PRIMARY KEY (id_equipamento);
 G   ALTER TABLE ONLY public.equipamento DROP CONSTRAINT id_equipamento_id;
       public                 postgres    false    239            .           2606    17044    funcionario id_funcionario 
   CONSTRAINT     d   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT id_funcionario PRIMARY KEY (id_funcionario);
 D   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT id_funcionario;
       public                 postgres    false    245            3           2606    17056    hospede id_hospede 
   CONSTRAINT     X   ALTER TABLE ONLY public.hospede
    ADD CONSTRAINT id_hospede PRIMARY KEY (id_hospede);
 <   ALTER TABLE ONLY public.hospede DROP CONSTRAINT id_hospede;
       public                 postgres    false    248            7           2606    17068    loja id_loja 
   CONSTRAINT     O   ALTER TABLE ONLY public.loja
    ADD CONSTRAINT id_loja PRIMARY KEY (id_loja);
 6   ALTER TABLE ONLY public.loja DROP CONSTRAINT id_loja;
       public                 postgres    false    251            :           2606    17075    monitor id_monitor_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.monitor
    ADD CONSTRAINT id_monitor_id PRIMARY KEY (id_monitor);
 ?   ALTER TABLE ONLY public.monitor DROP CONSTRAINT id_monitor_id;
       public                 postgres    false    253            <           2606    17082    motorista id_motorista_id 
   CONSTRAINT     a   ALTER TABLE ONLY public.motorista
    ADD CONSTRAINT id_motorista_id PRIMARY KEY (id_motorista);
 C   ALTER TABLE ONLY public.motorista DROP CONSTRAINT id_motorista_id;
       public                 postgres    false    255            >           2606    17089    ocorrencia id_ocorrencia 
   CONSTRAINT     a   ALTER TABLE ONLY public.ocorrencia
    ADD CONSTRAINT id_ocorrencia PRIMARY KEY (id_ocorrencia);
 B   ALTER TABLE ONLY public.ocorrencia DROP CONSTRAINT id_ocorrencia;
       public                 postgres    false    257            C           2606    17103    parceiro id_parceiro_id 
   CONSTRAINT     ^   ALTER TABLE ONLY public.parceiro
    ADD CONSTRAINT id_parceiro_id PRIMARY KEY (id_parceiro);
 A   ALTER TABLE ONLY public.parceiro DROP CONSTRAINT id_parceiro_id;
       public                 postgres    false    261            I           2606    17122    produto id_produto 
   CONSTRAINT     X   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT id_produto PRIMARY KEY (id_produto);
 <   ALTER TABLE ONLY public.produto DROP CONSTRAINT id_produto;
       public                 postgres    false    266            A           2606    17096 $   produto_frigobar id_produto_frigobar 
   CONSTRAINT     s   ALTER TABLE ONLY public.produto_frigobar
    ADD CONSTRAINT id_produto_frigobar PRIMARY KEY (id_produto_frigobar);
 N   ALTER TABLE ONLY public.produto_frigobar DROP CONSTRAINT id_produto_frigobar;
       public                 postgres    false    259            O           2606    17134    requisicao id_requisicao 
   CONSTRAINT     a   ALTER TABLE ONLY public.requisicao
    ADD CONSTRAINT id_requisicao PRIMARY KEY (id_requisicao);
 B   ALTER TABLE ONLY public.requisicao DROP CONSTRAINT id_requisicao;
       public                 postgres    false    269            R           2606    17141    reserva id_reserva_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT id_reserva_id PRIMARY KEY (id_reserva);
 ?   ALTER TABLE ONLY public.reserva DROP CONSTRAINT id_reserva_id;
       public                 postgres    false    271            Y           2606    17153    solicita id_solicita 
   CONSTRAINT     f   ALTER TABLE ONLY public.solicita
    ADD CONSTRAINT id_solicita PRIMARY KEY (id_reserva, id_produto);
 >   ALTER TABLE ONLY public.solicita DROP CONSTRAINT id_solicita;
       public                 postgres    false    274    274            ]           2606    17158    supervisiona id_supervisiona 
   CONSTRAINT     p   ALTER TABLE ONLY public.supervisiona
    ADD CONSTRAINT id_supervisiona PRIMARY KEY (id_atividade, id_monitor);
 F   ALTER TABLE ONLY public.supervisiona DROP CONSTRAINT id_supervisiona;
       public                 postgres    false    275    275            _           2606    17165    transacao id_transacao 
   CONSTRAINT     ^   ALTER TABLE ONLY public.transacao
    ADD CONSTRAINT id_transacao PRIMARY KEY (id_transacao);
 @   ALTER TABLE ONLY public.transacao DROP CONSTRAINT id_transacao;
       public                 postgres    false    277            c           2606    17170 &   transacao_extorno id_transacao_extorno 
   CONSTRAINT     |   ALTER TABLE ONLY public.transacao_extorno
    ADD CONSTRAINT id_transacao_extorno PRIMARY KEY (id_transacao, data_extorno);
 P   ALTER TABLE ONLY public.transacao_extorno DROP CONSTRAINT id_transacao_extorno;
       public                 postgres    false    278    278            e           2606    17179    transporte id_transporte_id 
   CONSTRAINT     d   ALTER TABLE ONLY public.transporte
    ADD CONSTRAINT id_transporte_id PRIMARY KEY (id_transporte);
 E   ALTER TABLE ONLY public.transporte DROP CONSTRAINT id_transporte_id;
       public                 postgres    false    280            g           2606    17186    unidade id_unidade_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.unidade
    ADD CONSTRAINT id_unidade_id PRIMARY KEY (id_unidade);
 ?   ALTER TABLE ONLY public.unidade DROP CONSTRAINT id_unidade_id;
       public                 postgres    false    282            i           2606    17191    utiliza id_utiliza 
   CONSTRAINT     j   ALTER TABLE ONLY public.utiliza
    ADD CONSTRAINT id_utiliza PRIMARY KEY (id_equipamento, id_atividade);
 <   ALTER TABLE ONLY public.utiliza DROP CONSTRAINT id_utiliza;
       public                 postgres    false    283    283            �           1259    17432    equ_acomo_unida_ind    INDEX     P   CREATE INDEX equ_acomo_unida_ind ON public.acomodacao USING btree (id_unidade);
 '   DROP INDEX public.equ_acomo_unida_ind;
       public                 postgres    false    218            �           1259    17434    equ_ativi_parce_ind    INDEX     P   CREATE INDEX equ_ativi_parce_ind ON public.atividade USING btree (id_parceiro);
 '   DROP INDEX public.equ_ativi_parce_ind;
       public                 postgres    false    222                       1259    17438    equ_condu_trans_ind    INDEX     O   CREATE INDEX equ_condu_trans_ind ON public.conduz USING btree (id_transporte);
 '   DROP INDEX public.equ_condu_trans_ind;
       public                 postgres    false    230                       1259    17439    equ_depen_unida_ind    INDEX     Q   CREATE INDEX equ_depen_unida_ind ON public.dependencia USING btree (id_unidade);
 '   DROP INDEX public.equ_depen_unida_ind;
       public                 postgres    false    233                       1259    17440    equ_dirig_trans_ind    INDEX     O   CREATE INDEX equ_dirig_trans_ind ON public.dirige USING btree (id_transporte);
 '   DROP INDEX public.equ_dirig_trans_ind;
       public                 postgres    false    234            ,           1259    17444    equ_funci_unida_ind    INDEX     Q   CREATE INDEX equ_funci_unida_ind ON public.funcionario USING btree (id_unidade);
 '   DROP INDEX public.equ_funci_unida_ind;
       public                 postgres    false    245            1           1259    17445    equ_hospe_reser_ind    INDEX     M   CREATE INDEX equ_hospe_reser_ind ON public.hospede USING btree (id_reserva);
 '   DROP INDEX public.equ_hospe_reser_ind;
       public                 postgres    false    248            [           1259    17455    equ_super_monit_ind    INDEX     R   CREATE INDEX equ_super_monit_ind ON public.supervisiona USING btree (id_monitor);
 '   DROP INDEX public.equ_super_monit_ind;
       public                 postgres    false    275            K           1259    17449    fkcon_pro_ind    INDEX     P   CREATE INDEX fkcon_pro_ind ON public.consome USING btree (id_produto_frigobar);
 !   DROP INDEX public.fkcon_pro_ind;
       public                 postgres    false    267            ?           1259    17447    fkguarda_ind    INDEX     R   CREATE INDEX fkguarda_ind ON public.produto_frigobar USING btree (id_acomodacao);
     DROP INDEX public.fkguarda_ind;
       public                 postgres    false    259            �           1259    17433    ref_ameni_acomo_ind    INDEX     R   CREATE INDEX ref_ameni_acomo_ind ON public.amenidade USING btree (id_acomodacao);
 '   DROP INDEX public.ref_ameni_acomo_ind;
       public                 postgres    false    220                       1259    17435    ref_ativi_unida_ind    INDEX     O   CREATE INDEX ref_ativi_unida_ind ON public.atividade USING btree (id_unidade);
 '   DROP INDEX public.ref_ativi_unida_ind;
       public                 postgres    false    222                       1259    17436    ref_avali_ativi_ind    INDEX     N   CREATE INDEX ref_avali_ativi_ind ON public.avalia USING btree (id_atividade);
 '   DROP INDEX public.ref_avali_ativi_ind;
       public                 postgres    false    223                       1259    17437    ref_carro_reser_ind    INDEX     K   CREATE INDEX ref_carro_reser_ind ON public.carro USING btree (id_reserva);
 '   DROP INDEX public.ref_carro_reser_ind;
       public                 postgres    false    225                       1259    17441    ref_entra_loja_ind    INDEX     I   CREATE INDEX ref_entra_loja_ind ON public.entrada USING btree (id_loja);
 &   DROP INDEX public.ref_entra_loja_ind;
       public                 postgres    false    235                        1259    17442    ref_entre_acomo_ind    INDEX     U   CREATE INDEX ref_entre_acomo_ind ON public.entrega_robo USING btree (id_acomodacao);
 '   DROP INDEX public.ref_entre_acomo_ind;
       public                 postgres    false    237            %           1259    17443    ref_estac_estac_ind    INDEX     S   CREATE INDEX ref_estac_estac_ind ON public.estaciona USING btree (id_dependencia);
 '   DROP INDEX public.ref_estac_estac_ind;
       public                 postgres    false    240            8           1259    17446    ref_loja_condo_ind    INDEX     L   CREATE INDEX ref_loja_condo_ind ON public.loja USING btree (id_condominio);
 &   DROP INDEX public.ref_loja_condo_ind;
       public                 postgres    false    251            J           1259    17448    ref_produ_cozin_ind    INDEX     Q   CREATE INDEX ref_produ_cozin_ind ON public.produto USING btree (id_dependencia);
 '   DROP INDEX public.ref_produ_cozin_ind;
       public                 postgres    false    266            P           1259    17450    ref_requi_clien_ind    INDEX     P   CREATE INDEX ref_requi_clien_ind ON public.requisicao USING btree (id_cliente);
 '   DROP INDEX public.ref_requi_clien_ind;
       public                 postgres    false    269            S           1259    17452    ref_reser_acomo_ind    INDEX     P   CREATE INDEX ref_reser_acomo_ind ON public.reserva USING btree (id_acomodacao);
 '   DROP INDEX public.ref_reser_acomo_ind;
       public                 postgres    false    271            T           1259    17451    ref_reser_clien_ind    INDEX     M   CREATE INDEX ref_reser_clien_ind ON public.reserva USING btree (id_cliente);
 '   DROP INDEX public.ref_reser_clien_ind;
       public                 postgres    false    271            W           1259    17453    ref_saida_funci_ind    INDEX     O   CREATE INDEX ref_saida_funci_ind ON public.saida USING btree (id_funcionario);
 '   DROP INDEX public.ref_saida_funci_ind;
       public                 postgres    false    273            Z           1259    17454    ref_solic_produ_ind    INDEX     N   CREATE INDEX ref_solic_produ_ind ON public.solicita USING btree (id_produto);
 '   DROP INDEX public.ref_solic_produ_ind;
       public                 postgres    false    274            j           1259    17456    ref_utili_ativi_ind    INDEX     O   CREATE INDEX ref_utili_ativi_ind ON public.utiliza USING btree (id_atividade);
 '   DROP INDEX public.ref_utili_ativi_ind;
       public                 postgres    false    283            k           2606    17192    acomodacao equ_acomo_unida_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.acomodacao
    ADD CONSTRAINT equ_acomo_unida_fk FOREIGN KEY (id_unidade) REFERENCES public.unidade(id_unidade);
 G   ALTER TABLE ONLY public.acomodacao DROP CONSTRAINT equ_acomo_unida_fk;
       public               postgres    false    282    218    4967            m           2606    17202    atividade equ_ativi_parce_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.atividade
    ADD CONSTRAINT equ_ativi_parce_fk FOREIGN KEY (id_parceiro) REFERENCES public.parceiro(id_parceiro);
 F   ALTER TABLE ONLY public.atividade DROP CONSTRAINT equ_ativi_parce_fk;
       public               postgres    false    4931    222    261            s           2606    17237    conduz equ_condu_exter    FK CONSTRAINT     �   ALTER TABLE ONLY public.conduz
    ADD CONSTRAINT equ_condu_exter FOREIGN KEY (id_atividade) REFERENCES public.externa(id_atividade);
 @   ALTER TABLE ONLY public.conduz DROP CONSTRAINT equ_condu_exter;
       public               postgres    false    4907    230    243            t           2606    17232    conduz equ_condu_trans_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.conduz
    ADD CONSTRAINT equ_condu_trans_fk FOREIGN KEY (id_transporte) REFERENCES public.transporte(id_transporte);
 C   ALTER TABLE ONLY public.conduz DROP CONSTRAINT equ_condu_trans_fk;
       public               postgres    false    280    4965    230            v           2606    17247    dependencia equ_depen_unida_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.dependencia
    ADD CONSTRAINT equ_depen_unida_fk FOREIGN KEY (id_unidade) REFERENCES public.unidade(id_unidade);
 H   ALTER TABLE ONLY public.dependencia DROP CONSTRAINT equ_depen_unida_fk;
       public               postgres    false    4967    282    233            w           2606    17257    dirige equ_dirig_motor    FK CONSTRAINT     �   ALTER TABLE ONLY public.dirige
    ADD CONSTRAINT equ_dirig_motor FOREIGN KEY (id_motorista) REFERENCES public.motorista(id_motorista);
 @   ALTER TABLE ONLY public.dirige DROP CONSTRAINT equ_dirig_motor;
       public               postgres    false    255    234    4924            x           2606    17252    dirige equ_dirig_trans_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.dirige
    ADD CONSTRAINT equ_dirig_trans_fk FOREIGN KEY (id_transporte) REFERENCES public.transporte(id_transporte);
 C   ALTER TABLE ONLY public.dirige DROP CONSTRAINT equ_dirig_trans_fk;
       public               postgres    false    280    4965    234            �           2606    17307    funcionario equ_funci_unida_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT equ_funci_unida_fk FOREIGN KEY (id_unidade) REFERENCES public.unidade(id_unidade);
 H   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT equ_funci_unida_fk;
       public               postgres    false    282    245    4967            �           2606    17317    hospede equ_hospe_reser_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.hospede
    ADD CONSTRAINT equ_hospe_reser_fk FOREIGN KEY (id_reserva) REFERENCES public.reserva(id_reserva);
 D   ALTER TABLE ONLY public.hospede DROP CONSTRAINT equ_hospe_reser_fk;
       public               postgres    false    271    4946    248            �           2606    17412    supervisiona equ_super_ativi    FK CONSTRAINT     �   ALTER TABLE ONLY public.supervisiona
    ADD CONSTRAINT equ_super_ativi FOREIGN KEY (id_atividade) REFERENCES public.atividade(id_atividade);
 F   ALTER TABLE ONLY public.supervisiona DROP CONSTRAINT equ_super_ativi;
       public               postgres    false    275    4864    222            �           2606    17407    supervisiona equ_super_monit_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.supervisiona
    ADD CONSTRAINT equ_super_monit_fk FOREIGN KEY (id_monitor) REFERENCES public.monitor(id_monitor);
 I   ALTER TABLE ONLY public.supervisiona DROP CONSTRAINT equ_super_monit_fk;
       public               postgres    false    275    4922    253            �           2606    17422    utiliza equ_utili_equip    FK CONSTRAINT     �   ALTER TABLE ONLY public.utiliza
    ADD CONSTRAINT equ_utili_equip FOREIGN KEY (id_equipamento) REFERENCES public.equipamento(id_equipamento);
 A   ALTER TABLE ONLY public.utiliza DROP CONSTRAINT equ_utili_equip;
       public               postgres    false    4898    283    239            �           2606    17362    consome fkcon_pro_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.consome
    ADD CONSTRAINT fkcon_pro_fk FOREIGN KEY (id_produto_frigobar) REFERENCES public.produto_frigobar(id_produto_frigobar);
 >   ALTER TABLE ONLY public.consome DROP CONSTRAINT fkcon_pro_fk;
       public               postgres    false    267    259    4929            �           2606    17357    consome fkcon_res    FK CONSTRAINT     }   ALTER TABLE ONLY public.consome
    ADD CONSTRAINT fkcon_res FOREIGN KEY (id_reserva) REFERENCES public.reserva(id_reserva);
 ;   ALTER TABLE ONLY public.consome DROP CONSTRAINT fkcon_res;
       public               postgres    false    4946    271    267            �           2606    17337    produto_frigobar fkguarda_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.produto_frigobar
    ADD CONSTRAINT fkguarda_fk FOREIGN KEY (id_acomodacao) REFERENCES public.acomodacao(id_acomodacao);
 F   ALTER TABLE ONLY public.produto_frigobar DROP CONSTRAINT fkguarda_fk;
       public               postgres    false    218    4858    259            u           2606    17242    cozinha id_cozin_depen_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cozinha
    ADD CONSTRAINT id_cozin_depen_fk FOREIGN KEY (id_dependencia) REFERENCES public.dependencia(id_dependencia);
 C   ALTER TABLE ONLY public.cozinha DROP CONSTRAINT id_cozin_depen_fk;
       public               postgres    false    231    233    4885            y           2606    17262    entrada id_entra_trans_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.entrada
    ADD CONSTRAINT id_entra_trans_fk FOREIGN KEY (id_transacao) REFERENCES public.transacao(id_transacao);
 C   ALTER TABLE ONLY public.entrada DROP CONSTRAINT id_entra_trans_fk;
       public               postgres    false    277    235    4959            }           2606    17282    estaciona id_estac_carro_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.estaciona
    ADD CONSTRAINT id_estac_carro_fk FOREIGN KEY (id_carro) REFERENCES public.carro(id_carro);
 E   ALTER TABLE ONLY public.estaciona DROP CONSTRAINT id_estac_carro_fk;
       public               postgres    false    4870    225    240                       2606    17292     estacionamento id_estac_depen_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.estacionamento
    ADD CONSTRAINT id_estac_depen_fk FOREIGN KEY (id_dependencia) REFERENCES public.dependencia(id_dependencia);
 J   ALTER TABLE ONLY public.estacionamento DROP CONSTRAINT id_estac_depen_fk;
       public               postgres    false    4885    233    241            �           2606    17297    evento id_event_depen_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.evento
    ADD CONSTRAINT id_event_depen_fk FOREIGN KEY (id_dependencia) REFERENCES public.dependencia(id_dependencia);
 B   ALTER TABLE ONLY public.evento DROP CONSTRAINT id_event_depen_fk;
       public               postgres    false    242    4885    233            �           2606    17302    externa id_exter_ativi_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.externa
    ADD CONSTRAINT id_exter_ativi_fk FOREIGN KEY (id_atividade) REFERENCES public.atividade(id_atividade);
 C   ALTER TABLE ONLY public.externa DROP CONSTRAINT id_exter_ativi_fk;
       public               postgres    false    222    4864    243            �           2606    17312    geral id_geral_requi_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.geral
    ADD CONSTRAINT id_geral_requi_fk FOREIGN KEY (id_requisicao) REFERENCES public.requisicao(id_requisicao);
 A   ALTER TABLE ONLY public.geral DROP CONSTRAINT id_geral_requi_fk;
       public               postgres    false    246    4943    269            �           2606    17322    lavanderia id_lavan_depen_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lavanderia
    ADD CONSTRAINT id_lavan_depen_fk FOREIGN KEY (id_dependencia) REFERENCES public.dependencia(id_dependencia);
 F   ALTER TABLE ONLY public.lavanderia DROP CONSTRAINT id_lavan_depen_fk;
       public               postgres    false    249    4885    233            �           2606    17342    particular id_parti_requi_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.particular
    ADD CONSTRAINT id_parti_requi_fk FOREIGN KEY (id_requisicao) REFERENCES public.requisicao(id_requisicao);
 F   ALTER TABLE ONLY public.particular DROP CONSTRAINT id_parti_requi_fk;
       public               postgres    false    263    269    4943            �           2606    17347    piscina id_pisci_depen_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.piscina
    ADD CONSTRAINT id_pisci_depen_fk FOREIGN KEY (id_dependencia) REFERENCES public.dependencia(id_dependencia);
 C   ALTER TABLE ONLY public.piscina DROP CONSTRAINT id_pisci_depen_fk;
       public               postgres    false    4885    233    264            �           2606    17382    saida id_saida_trans_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.saida
    ADD CONSTRAINT id_saida_trans_fk FOREIGN KEY (id_transacao) REFERENCES public.transacao(id_transacao);
 A   ALTER TABLE ONLY public.saida DROP CONSTRAINT id_saida_trans_fk;
       public               postgres    false    273    4959    277            l           2606    17197    amenidade ref_ameni_acomo_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.amenidade
    ADD CONSTRAINT ref_ameni_acomo_fk FOREIGN KEY (id_acomodacao) REFERENCES public.acomodacao(id_acomodacao);
 F   ALTER TABLE ONLY public.amenidade DROP CONSTRAINT ref_ameni_acomo_fk;
       public               postgres    false    4858    220    218            n           2606    17207    atividade ref_ativi_unida_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.atividade
    ADD CONSTRAINT ref_ativi_unida_fk FOREIGN KEY (id_unidade) REFERENCES public.unidade(id_unidade);
 F   ALTER TABLE ONLY public.atividade DROP CONSTRAINT ref_ativi_unida_fk;
       public               postgres    false    4967    222    282            o           2606    17217    avalia ref_avali_ativi_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.avalia
    ADD CONSTRAINT ref_avali_ativi_fk FOREIGN KEY (id_atividade) REFERENCES public.atividade(id_atividade);
 C   ALTER TABLE ONLY public.avalia DROP CONSTRAINT ref_avali_ativi_fk;
       public               postgres    false    223    222    4864            p           2606    17212    avalia ref_avali_hospe    FK CONSTRAINT     �   ALTER TABLE ONLY public.avalia
    ADD CONSTRAINT ref_avali_hospe FOREIGN KEY (id_hospede) REFERENCES public.hospede(id_hospede);
 @   ALTER TABLE ONLY public.avalia DROP CONSTRAINT ref_avali_hospe;
       public               postgres    false    223    4915    248            q           2606    17222    carro ref_carro_reser_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.carro
    ADD CONSTRAINT ref_carro_reser_fk FOREIGN KEY (id_reserva) REFERENCES public.reserva(id_reserva);
 B   ALTER TABLE ONLY public.carro DROP CONSTRAINT ref_carro_reser_fk;
       public               postgres    false    4946    225    271            z           2606    17267    entrada ref_entra_loja_fk    FK CONSTRAINT     |   ALTER TABLE ONLY public.entrada
    ADD CONSTRAINT ref_entra_loja_fk FOREIGN KEY (id_loja) REFERENCES public.loja(id_loja);
 C   ALTER TABLE ONLY public.entrada DROP CONSTRAINT ref_entra_loja_fk;
       public               postgres    false    251    235    4919            |           2606    17277    entrega_robo ref_entre_acomo_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.entrega_robo
    ADD CONSTRAINT ref_entre_acomo_fk FOREIGN KEY (id_acomodacao) REFERENCES public.acomodacao(id_acomodacao);
 I   ALTER TABLE ONLY public.entrega_robo DROP CONSTRAINT ref_entre_acomo_fk;
       public               postgres    false    237    4858    218            ~           2606    17287    estaciona ref_estac_estac_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.estaciona
    ADD CONSTRAINT ref_estac_estac_fk FOREIGN KEY (id_dependencia) REFERENCES public.estacionamento(id_dependencia);
 F   ALTER TABLE ONLY public.estaciona DROP CONSTRAINT ref_estac_estac_fk;
       public               postgres    false    240    241    4903            �           2606    17327    loja ref_loja_condo_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.loja
    ADD CONSTRAINT ref_loja_condo_fk FOREIGN KEY (id_condominio) REFERENCES public.condominio(id_condominio);
 @   ALTER TABLE ONLY public.loja DROP CONSTRAINT ref_loja_condo_fk;
       public               postgres    false    4877    251    229            �           2606    17332    ocorrencia ref_ocorr_ativi    FK CONSTRAINT     �   ALTER TABLE ONLY public.ocorrencia
    ADD CONSTRAINT ref_ocorr_ativi FOREIGN KEY (id_atividade) REFERENCES public.atividade(id_atividade);
 D   ALTER TABLE ONLY public.ocorrencia DROP CONSTRAINT ref_ocorr_ativi;
       public               postgres    false    257    222    4864            �           2606    17352    produto ref_produ_cozin_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT ref_produ_cozin_fk FOREIGN KEY (id_dependencia) REFERENCES public.cozinha(id_dependencia);
 D   ALTER TABLE ONLY public.produto DROP CONSTRAINT ref_produ_cozin_fk;
       public               postgres    false    231    4882    266            �           2606    17367    requisicao ref_requi_clien_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.requisicao
    ADD CONSTRAINT ref_requi_clien_fk FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);
 G   ALTER TABLE ONLY public.requisicao DROP CONSTRAINT ref_requi_clien_fk;
       public               postgres    false    4873    227    269            �           2606    17377    reserva ref_reser_acomo_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT ref_reser_acomo_fk FOREIGN KEY (id_acomodacao) REFERENCES public.acomodacao(id_acomodacao);
 D   ALTER TABLE ONLY public.reserva DROP CONSTRAINT ref_reser_acomo_fk;
       public               postgres    false    271    218    4858            �           2606    17372    reserva ref_reser_clien_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT ref_reser_clien_fk FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);
 D   ALTER TABLE ONLY public.reserva DROP CONSTRAINT ref_reser_clien_fk;
       public               postgres    false    4873    271    227            �           2606    17387    saida ref_saida_funci_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.saida
    ADD CONSTRAINT ref_saida_funci_fk FOREIGN KEY (id_funcionario) REFERENCES public.funcionario(id_funcionario);
 B   ALTER TABLE ONLY public.saida DROP CONSTRAINT ref_saida_funci_fk;
       public               postgres    false    273    4910    245            �           2606    17402    solicita ref_solic_produ_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.solicita
    ADD CONSTRAINT ref_solic_produ_fk FOREIGN KEY (id_produto) REFERENCES public.produto(id_produto);
 E   ALTER TABLE ONLY public.solicita DROP CONSTRAINT ref_solic_produ_fk;
       public               postgres    false    274    4937    266            �           2606    17397    solicita ref_solic_reser    FK CONSTRAINT     �   ALTER TABLE ONLY public.solicita
    ADD CONSTRAINT ref_solic_reser FOREIGN KEY (id_reserva) REFERENCES public.reserva(id_reserva);
 B   ALTER TABLE ONLY public.solicita DROP CONSTRAINT ref_solic_reser;
       public               postgres    false    274    4946    271            �           2606    17427    utiliza ref_utili_ativi_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.utiliza
    ADD CONSTRAINT ref_utili_ativi_fk FOREIGN KEY (id_atividade) REFERENCES public.atividade(id_atividade);
 D   ALTER TABLE ONLY public.utiliza DROP CONSTRAINT ref_utili_ativi_fk;
       public               postgres    false    283    222    4864            r           2606    17227    condominio sid_condo_unida_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.condominio
    ADD CONSTRAINT sid_condo_unida_fk FOREIGN KEY (id_unidade) REFERENCES public.unidade(id_unidade);
 G   ALTER TABLE ONLY public.condominio DROP CONSTRAINT sid_condo_unida_fk;
       public               postgres    false    229    282    4967            {           2606    17272    entrada sid_entra_reser_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.entrada
    ADD CONSTRAINT sid_entra_reser_fk FOREIGN KEY (id_reserva) REFERENCES public.reserva(id_reserva);
 D   ALTER TABLE ONLY public.entrada DROP CONSTRAINT sid_entra_reser_fk;
       public               postgres    false    271    235    4946            �           2606    17392    saida sid_saida_parce_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.saida
    ADD CONSTRAINT sid_saida_parce_fk FOREIGN KEY (id_parceiro) REFERENCES public.parceiro(id_parceiro);
 B   ALTER TABLE ONLY public.saida DROP CONSTRAINT sid_saida_parce_fk;
       public               postgres    false    273    4931    261            �           2606    17417 $   transacao_extorno sid_trans_entra_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.transacao_extorno
    ADD CONSTRAINT sid_trans_entra_fk FOREIGN KEY (id_transacao) REFERENCES public.entrada(id_transacao);
 N   ALTER TABLE ONLY public.transacao_extorno DROP CONSTRAINT sid_trans_entra_fk;
       public               postgres    false    278    235    4892            -   >  x��]Kr�F]Ϝ�]��u\^'�,��LH�#,L%��*kAKwCi˛X�oaU���ݯo��8�o?L�a�y����ִ��9������i���������0�ۛ�f�nO�~���L��̟�t�~?��0=�5vǛ�׏��n��Cw���x6����������o��;�w����{��/<�w���i<z~��}���C�xjw��#��Ͽ�c7�����0��=��~2�x� gCd����O��=h��� 'C�F@3'(3C�f(��$[��'�z��T[����a����G�M���E�5���03�b���L&Z��i�f�Ex��� ��K��d�"�lI*(}M7����
��L����U6���=X��w��]M���Jֻ���YX���� �se��=Rt��Y��v3�*����X9�K�Q��3������HcsE͘f%a��Oo�e!,��#.ڐ�_�Tlk�ޣ�>�����:D��v��\��C���|q��g3Նef������톅9�h�C��DAL�j>��&���bsH;�fc�
SE�Ș�\v1�9�� ��ڹ������$47�	�Q%�*X�X�`N�H�b`ɐM�߬;^L�XYj#)Al53�
�@&�
X��k����	j"_X��oҔ˄��.P�~���˄g~�*�2����`d��	�%��*����#i2K�+T|�%�ֈ���␘�H
�C��������Α�W�d_�V����H��`�x[�&�
3풡���J�����`�/]~-�uM��a吅#s%,��:ۊՇ,������P��2�f�i�u���TP3�����Z��T�bKg�o4�=�
Ռ=��(LѰ򳉶a�0��6,m��YU����X����5X?�Q7����Tڱ5�R���M�J�Pw0��/��R��jLJ��\���\0G,G����KP�ڃ&�&���A)����poё�dAU�	k]R5�	lZ_��<Z�b��}�~+Q�b��@C����bQ�Z��t���0*�I�%h"�N�^����^�CP�9Kv�:�A\���T.�7y���&���R�Xn��X��z{&���_w/���ёa��iLK?jB��"�K�c��� G���٤����T&
`�cQxFJ��B'
*L�k��s� Uc�.,��[��z2������bW:)1�pl�1cIZK'�x�t� f��Bb�*�xc�T.J�tه( $�����?Y:��-[	k�_v�(aQ���;E��2˜I+�%��$��ʨ��g�}��i���\:I	��o��`zcI�w���H'����+-4,�IB3�؅�Ќ%����d<�1���|%@�*ZB�K<�K���/�@]�4nR��EX٥?�+�@]�(e�/���[9�v����#d*kR�1ҟ����)`�AJ'�Ayo�XjÒ�Z�*d�`Y�ڕK�bI���1U�~�f��i箂�+UޙjA*�3�@�����:(jk<2j����W���`�%N�p
�dU�w�_�j41�Ƙ�/�r�ֈif�*��V��֠�\��TuLD�}g��� �      /   �  x���MnG��S��	����u�����f"��&�� ����r],�e��=��74�����t�n>/��<]&�ޟ���q~~��Gd&~�z>�5�������i}F�%L?�/����c�8}�tY�O��(i���|��[qN��/�e~<==���L����0?.8������岞q��?��j����NT��O����n>������+UQ��=_��O��-�[?�,��Nχ����e>_Z5Q?}s~��?��E�8�B�h�[�&Ѽ]�fѲ]��J+�*�h)�Ĕ�b���b����͘��� oڌE��݌%��ٌe�2��������v3މ��f��7ڌǯ���x/>l6s?� >~��(>�nϒ���<���M��E|�n�W	n���$���F��I�*�(F*H �B��X�$��
Y���+T���N���J���h���%n銸-F�b��KWL���%]�Hd�b��t%'��J*��J&�]�K�BW
�n�+�^$�R���+eI#]�Hڥ+U�DWv�������l����%�L��v39Jާ�p��҅GY�mt�"���U����l�**e����]���Bt� ��*Q
�U����ս����T���N���J���jR���n�A�HW�Rw�I*�U�T�����t���f�pFƀጌ��5��O�`�xxh�>K��hNHFܐ!�1��7#!贙�2vڜC<mڡ�bӦJ�6mޡ�^n��C��޴��ކ�6GQ�G(��%���-2���y�0?��"�o�#L��CA(���~/Q(E��A�a��'q{(�zn�1r{H�zn+Q���%�=tD=��������ơ��C:4p{x�n����C3^n������=�C��th�����ޡ��C74r{h���B 8CHg��S�a�g�f����.��ʠ�����"�.�l)tf�=еи�'p��R��}�l���h@8�l�uf�*p��`�5<���a�#���<r��e�#���<�x�(~����<J�(y����R<��:�Qm��������78*�olTn���7���s�\��Hn�f�=�0��a��=����j���Pls�.m��æ�q{�)��M[���G�r�ܾ�w�dڴ���Ӧ�=�6��!(�iw��M�{6m�_
��f�=a6��!8�Y��f�n�������[���ͺ9��Y�;\��.�lV��y�e��k�a6�ݧ��|w���_��� w
A�      1   �  x�m�Mn�0���S�*H����p� E�M��E7����d@I.��]� ��[]�CJ�\��!��|��{��^%���u��`��F[�J��,�e*
ؠq>��Z@�$|���K�>��'��-��Ap(�Y�
�J>��ڃV,�{��.Ho�N=8W���
�x8O9i��5�I�t7����'�f��v�qpKݐ����j�SQ��П�vP�A�>9��=�� |�m�uG��鍶�OK�o5@�K�z�@T<�O����Iٮ��U۠�=�G�S&�6���.�=Z(�
>�'L,&;��H�L�'ʥ�"��3NԬ��;4���y5UM��z�
:*2V�F[u�ױ{�Ā�u��U�͆p�s(A�L�]��I�V��΂Wn�TFT�`B�fQ����e��\��h���_A��{�(�GB�(%������P��j��
jX2�����!�����T���|aE-�P0�ڡQ�H�V��co�j��w#>u>U�t��q��}���ks�Kl��_Ɯ�6�|�-���9���c��eN/��sN%yVD�+��_���I��	�c	dwux	���& l'�#N���q��LԄ����UI�K��q����q�x=�>�UР�%Sз�4f��C�s���"j�SB��c�/�IE�      2   �  x�m�=��@���)Z�Phh3����Nf���U0#��>�F>�fN��{ ��	`h���^D)E.��;o����S&�,A���l�J<բ�"-^U���+P��ޭѐV�Oc�t`l�<��{�|j�=묐Kۣ8U�s#�H*uP�����oT������?|A��nccAӅj��r�g!T� ��[i��ʬ(���h�y�!��^'>~4آ	��s�F�	x��\���?����1'q*�Q�@CY�����;1������:����51���gE,���	U�a%��dK��hk[2ç�I��]`�����j�X����)���)��F���YQ�VD��8�s�u�ݬ`V���2բ(R�GlS~f�rڱ�q�/�/Kѩn���t�0��S���z�Zӂ-he�_��iHex�\-����n6����=�������L��Y������q��      4   �  x���In$9E��)�n��(�v��y6���h��;���
�'�ϯ'b9<:Fb)TIP�����?�(}�TNNϚv��z1p9��t����":��DR��o0η�պQ�A+�w�(�v�lE�I�����	���:���򊆾�{V��?���0�����!Q2b����f����JNм� �ӳsR�Y�mn�	 ���+2��|C%I��\�on��,K�J��`b��r_��ǧgns�s-������}�w���p����O6���R-G@+_�GRe�er=�����THx2�e6��j9;���[�O� B{yu-*npR)���;1��"����6���U$����Q�O��B\�׷�&-�!?Ñ�(����մ�����}`�Y��!yQ-ff�Z�Y�ĕ�*i
����u�WE���@\����nX"Yրi XM}.˽�B  �k�ɢ7�x��� ��C�#0ܥ�R���HX�����@ ��7,�,#`$�j8�m��(�g(6�d��c���R�M��3ٳ� 06��{�<��Р��mX�����c��,ـ2��౓�׏�!9��6�����(s8��Ȯ>g벚B�8���qq���`r�i��-��ʁ���Kr��B����*�p	C�?��\���� h4��X�Ve�j
�d�ex���8�7�I�&�ʋ�ns�b/MPy���p�{5���� �(s      6     x�]�Mn�F���S�	�s'Y�d(�HAV���3m�]I� ���E�EV�x�G�<�	�����+J��Q^ji��%��c��QtQ<����Ԁ=���9�?]�i0���0�V
�m\��o����ď񐲸*����>��/~�=��Pi^c�m���U��ݓ��˄�!Q'��X���o7��2�W�{�qZ��	�5)�D�oN��GOTJ�?�8/_/v'c|e�u�	A��Kx7o�J���ĳ�qJ8����	>��')y�$���&4���U���ǰ:y�xE����n=��s'�%x�F;��qҽ�7˗M"��拆�3���}�S�'b<c �Ւc���վ��d��Ȃ6%e2��>��#1��LN U��Zi�W-+��8�#.{�#�{�ڱ�~�b�zS�LgP|%�JK�p6�|�'ʉ��F�0��t���d�Z�\I��8��L8}&���̙\��|\6���V|w�,��4pփ�qK,�}���t6Á��Ŋ�%���ҋ���2?R���{<0�S�|���{킶�	�����G6�t_��p�F�r��~��T�kب�MP�Z�y�}G�p���$����Á��6X�x��o�6�-�vO���T��/Z:^���Lq���o��n�ܧ��g?���z݅# Ό��d ��6�7��<ҧu��-^�o-����`���V�np��X�rU��e���R�,_Ǔ�)�j pc�k��
.w3�%� n)/ax�dD^!�Q��1���Ǻ��� @��      8   N   x����0���T!�<v��sԩ�0�}��N�A�%��QqM��U���a؏�'e"]6Q���Mw��(���H� �:      9   Q   x�%���0�7S׉�]��5�ĉ������'Ա���&�6�Fic����#U�h%�iT��9���6iF٭�^$?�4      ^    
  x�]Yّ�8����zK<t9��Pn[���H�@5]��C�꧌��?��U�Qφ�2f��>E�ʼ�\�r��a�:�h�+~���D�?�N?��D/������v�{]���{nX��iգ3&��{�.�:Ϣ�w��{ri����Y���'�; f�1vH����_���`�AqN����;ʸ��b��������z��S:V�}����v��M���OV�
Nr*#�9A�-����l+��N�j���9�!_�G�O,v|R׹!(��WpX �����Ta!7Bz�S�͝��u\Ո9r<��H��s��0/>8+2)wPsピc*�\��t��u�A�C��g}	R<rR�ʜԉm�����\�ob�q3����*v*/9�o"����op��+�UF���āl���Z��T��	�� Z��ҹm�N����q�+��_��Px3�<�rؗ$�#`��������g�+ՙO=;��$�ĞL�3ԉ}EHi$��
��_��[�KxO|ؿ�¼�3 d���aY�qM�'Y-�WdS�{X��!�®��ܲޞ�hН�&1�����y��xh� vK(z��χ"��+��B����0� W9�<�&�B%F P�uB}"<�cRP_��:5^�$��U�A���,���z�	!(����ke{��¥8k��n:ңsi�PO��t&3��A�[yr�����4@���"a΂�_h02�����ٔ��.�E�h�\�	+d,�_��+���ֈ,t�Z{�[�N���(��d�<�D�#8�ӂ\+Ԃڎ?i7I���`����ZjlCH��`W�_tY4�%���j�D��=g�!�!]�ޕ�M%DR�ή����J /K����4�>$s��Ķ��iѤC)2��Ԡ���l@���@3����	��{P�A�jf�QҁfH����nlYT��54���!�<meg`+�4��>��Bh�EPh/B$_eY�j���Q�(���C�1G�?�<��	�k�=��j��H�����D�3a��*�T����`-P�LMI,�7������o��:�1@����F~�M9�<��Av?TR(&N33���S�\�-m��1v"�R̞���(?��z�=)l�dQ48?�L�FѣoV��d9�B[h8�P�Q�z_�4�(E�-����RJd����2&e��p�����C�G#w�p�G�ւ�v�r�G5|Kx��<����(�ߝ����� YD�~f�"�s0y�P��Hު�0�wݫ������"b)Zei���ƨ�؛��'�nXM��XIc�����*��a�H���$G��jO �̽z���ѲÌĻS�x(F�x�0�;+eF�z#Em���w��S�߅���h�y*��a�:w�;���\�T���$�[	��4�I��ɗ��`��ҍU�|��^z�νt�9��A���~�%�H���^��s����i��; �~Y��!8�V/��FgG#t.M:��RGU�R�c���$ӭ',�1At�b#q���;�܀����!�TF}��(ۋ����z{z���'�J�Ɂ�$�T�AX��.+�I���c4�ںߗn�%��u�9u=R�3h��;�X��z��\:R,�w�!"��jrc\7��5J-?Q�]`s�[�4,"�nH����������k���:G��\��p+��nHit�zwF��fU��5�3OucU��c�Ĵ΍G��k�il596\���Pؠ��y3�4�I�\(U�����5�@yr�%�C�s ��_����8�4FQ&$FKN
�@sǞmT����W<��F|Ki��Z��:ʤ���ѧ��QfU� ���	+|��3-�^6KΝ%&{7 4zr��l�ō�����Ek��I��b���:�D�I�ݗǄQcX�?�6Q�jU��Fg)�1�*�XY��DHaaKL'`��μ��>�I�.2rb^��\?Y��{�x	��	�Z��ݜ7J��^Li|*�����a,����{<;��צ�����L������Jftz�ݢM<O2J6�εB�W����M6鄱���N9�W�.ߝy��S��w�M�yԋW����7�ͨ�yҥӰaz�}gfU�D�vF�a�V�3ZdM{썲{u!�DV~����uʠ��x�7�	���2c
�%!I���z�$?�g����2���z�a��ΖȮa���<�;7��k��xܚ��X�m�PmP�#���Jc��F	�q�߹����B�c������B%�����#[I�]�H�"�hw�1��S�<�w�|��(�Vڦ�rK��v?�5b%��n�1)���,���z��5*�f�%9���w�4�ɒ�Q�[�Q:X����f��k
Mu�[�>�$��/K:���O�-�VDcm�Iǆ2�
���7[�n�7J��ў�8�<ӣ gp_���p������m/�[n�	+<��9��bД9�y��롐���wcĳ�8^#t�]j��kp�:S�:�ynYӴ-�Ԓ�����̝'�4bp`��5:M�f�W�a-�������?Bg��      :   �   x���M
�0F�z���hR��m��B���v��%F�:=K/�h������f��7����Y�h�����l"v����A��g��H]�T�d4R�,A;fC1gJNȖBN�RNI;9�Bi�_fx��#jkƀ��#x��(���p����8�LpR��L�Qo�SH��|��RB�w9��	�Q��w-�W����U���E�� 䱊��h��      <   {  x�mVA�9<7�� �[����a�F��e�#T�d&��χ��篆�?d�70�G��	2��>�=S=�W�~B@<*��5�	*hd6j'�|2�G�y6�%~LQ-�}p�+��ⓜ��Ķ�-0=Ȃ�NH�0�%���zw��<*}}�c�PoT�'��w���v�`ۭ�d/SN� �%iBϥ�]0�W��3P��t�F# 6-�A�,?�]�Ẅ́@3�Z�qD��
�|���d�Oc�S��ʀ�Y��M
N>��3��5� T�~��=q�%�K�:�,�;߼�$u=em�Ň-y.ɍ�����X�3���B�T����S[�j]�7�'�%�R�DK��z���R�]�!?�[�kJ��hI�~��wH����i �����$��{�H�{.���]�H�jܣnbA+�v�\��Wc����V#+��%9U�C���X�̥���zY��i�Ů�'ʔb�+�ɫ6f����&\܊g��T1Tk9����O�YhO����ѤVS-2;N���Z<��C-�ۚ�u��E��V�S���K)=�R�'O�=��̷(�'P,����(1*�s}�C��b�g�^S���j��z�Jf]Gm�Q��J&�^f�,�/Z��F��=3L���'��C,8$��m���Nz�����>�/+�@i�.���3����&���QM���៵Gz�n�"=>5+��Ve��P�w� {�9Q��깁UG���s�!E/�XC�`�hYQ�l�*o�+��Q��0Z�<F�P����7�{�r�@�%�������#�n�fF���o���v��!���w�������Z`���,g@�@٨'��&P���5�h���q`M?S.������U߻"�N^q/�ز�����_Y��      =   M   x����@�RL�P/&���:��*���\�z2�P�BGJ%􊰅���9G�%J[�x����i�Ry���o��      >   �  x���Mr�6��=��	X �KE��r,;e�����S#��·q��*��`.��Gr2n*+��o�����M,i�������C�����q�ۑ��m�����G�.��8��.7��qK:�����i�6���7�y�ͺC���ܼ�Z�&Va K?~�+���8��~I{��H�^u����nB���Əyj�t����ָ*N���m���mn~ɛ�y�g,N)�Z{�DE�^v�u�N��.�l��XS�w�s�6�U�v��m���XŖ+�h(-��Z�����x?]�Sրu,���n��G����"�����T�D�t��})v���۱y��vy=R���I3��ߌ�O�}?4���U�v��<?|�؏�W$���H�IHBhռ̈́3���O}��z���&3�t�F�[�ڤ��ɻ��d��;��a�y��}/mZ]_�4�U�y3�v顐Ѳ�m�e�LF����,�=sp�6��������6�Ȱ��hck�.��d��m���H���^���a"��E?��Uj~�6����8��-�t4;+�g�R�b�h�@XX��U����lrm犌�t�J��K��Z�����7��U�,����8�?�o]V|w|�]������E����#�=�/:�D�9?]�;� �{�R�\��Pߎ8`�*h�S;cA&��p5�����Dds2r����VF�����,޸RU�,��B{ZX${f}��A`�v�W���n��N�f�j��'nme�H����z���γ�XF8���g�"�Y�zmm���p����j^k g��fK�����ßys�Q5�/q��3�)̍����w�9�.("�9��n�.��ʎ�ʵbĥ�9�rB5���֝A$:��d��*G�||2�̼�;�x�4?���U��kݼ����^���=lz1��i;��~S�j4��GXx�m�}|�t�a��u�b$n߳���f�cs5�n�n��غ(���up�r�J���à7'豻����������� /c|s�_'i��4^��(D\{�(�"�2�:Y��$¼�%��&I\�U�;%��Rr0F�HK�2��Dh��({'hX^ttؽV����`6�N�������!i�&�ƣAۉ�Q�"5h;�6�#�+D"n�F*&o/�0  i��"o��h�
�^$���CU!�[��7@�e{c�Q��̽���%��{��hY�нl�r40�u/R���2ꂺ�〝 e�=��1b$�0�d��[�9�Â�q�A`"v|�$|2�;���*�AĞ�3'��:�_�tU���P�#ԃH�cX�pĠD�H'-ʭ8�قL���dP�"up�aУ=Q��z\�z�ؗ�(CǅW0��(BG��Уm!�S�z�c��-�G:\� G)P�"�2�a�����=(4�I�zya((T�,z��$bGve T��j���      @      x�}}۲]�q��Z_��)�/�-�'��8��:/�D[�Ȥ��_z��E�	�r������ݣ�G7�-��/~��[
�|�Wi��x	��[��t���|�!���w�|���K./9���o����O�<��B�'��h��y������߾<c`Hi/�����=���߿�2$cH��[��vK����o~����!���|��%�[��~�����̣݂M"�D�h-��G���Oo���O_F�G&��Kh�hӝ���}��?���폯�ɦ���y�#o?���7����}��?_V'���ǥr��Vo���7�}�e��vy�����)8/��~|��%�C[�ے��Y���x��%�6�ֻ���o?�ӯ>�}���~�61�z�w�j���ß���ˊ����Rǭ�{l������w�?�Z����;mcF��$m%�|�Ӈ�d����-v�ҸMg�m�l���Ά�*LL��o����"�������|��,�߽��Ϳ~�����*J<Ow����Wa`��-��<�mC�����ݗG�%�ɖ;�3Oɶ
�+Ul���>і������?����7��wA��ج �_}�����6����~��(����7���f��w�w0N
N�%��}A����__D&a�M�b�7����������%����J{�y�߿����c�qzL��KӸ�a׹��W�"`k��&�l��~F!��ž�aN8����ǗdS���|�������o_�$n[��l��������[	���=큦���?>�a�ه��Vv��tA����Fկ~��o�]�W��l�#�m���ȱ�L�Y����<�����1��V���,�_���o���w����U�.��{�/���Ƿ_�~�n����x����x�R��z�>_��襔�w�qL'{⠘�ڔ����o~���k�L�V��TH���6�1�d�e_9�}����MN��:�{馝\k뛗��^�M��������۷����RM��ҶO�q�����YnSo��J���6��e�X� ��*�+w!A��ÎS��6��O��k��9��f(�C��J�ְ��e��ޡ����~x���N�?�@�M���6��α��D�-���͸��0�:m=���ж2��ej`����t[���?kB�T�]�ݔu3��wo>^4ʄ@+�����H%՛}�����-޲����nluJ����9�Bkm"�ļOKB\?����dR:���½U���A��1�FM�ֈj6���x�m|ē��7��,SO8��>p����7����)�<�{t���O��ӫc:�4޻�)�ADlZl{���sp���/,��Dk��?�:(P�8N�=���v�2�AL�mx?O��e��UF�a��� �H�'جKox��J�8;�+�;��"�"`&��B���-���o�E�A�P� h����&�g��3�e�>^s��H�4Y2�m�zD��}�"�*���h﫾�ٱSY��}@�_��̛-����������60G@a_��)��U�y����>��_����_�~��ENW�pN��o&��u��&��V�P[�,�^�� 6�n	�G��N�}i3
Ԓ: �� ь��scw��E�f�w%g'KP�����X�P��1�b��Zl,�q��.���ܬto�G��aU�z&M�k�9�_7�-�g?_�%�.y�鵷Q�O�
�`	�l�4 �mV�y�}��E�0}'s$B�J��������O�wF!a�9
v�����v�a8ln1@ή~PD
m�)�ߦ��������^W��2�`���Ɏ�KH�򰑆�`�O���`)�;�n�'[�F`�����:�a��hs3�* ��>	�j:�A4�,�n�`0�m�Rѯ��C��f��<��Ώ�����pBc�5H��FW����֓ ��ޒlɡ Ӂ� 0U�!"���[�@����l�`��g�L�#�iHl~եa��y�A{���z"�>:"���5��l�հ7C��)>L�I�^�7���/`W�1m��i���;�*c]�F��ۿ~�����t��at���d �bR���8 c	��*�l�ܚ��0�<��M������r@� �YU�.�T�+J�3�H����=#3����'L�l��}�8 �;P���W��V0��܆��~�ӛ�����\�ƣ���#sy���T�;t��`��!�&]��4<�mJE���D؀n��2`R�5]3�f������Dsocƺ9�]���w������� A���1���Ѻ4؈43sY ,W+P}5'0;^p�<�@2�c�/��>�c𤠀����ÚF���|%%wHG�(�9@�Sq,��F.t}ıIx�⾪V�� 1���a9�WEؗh�Rl��ql��`��e�E��\����X �q̜��Մ�6��l+kq�w��b��$�ԉ&�d���dtL��g\�Gs��ƻ�tBW��`�d���ӛ]N:��8D�K�3�jd��" J�{j5IV�4z1	�����ٿr��W�b<� B4�5yKA�(,Ec�}��D�;3�nink:t��122m�[;Tx���GMz�Ѽ�7�/P�����1{��kE0i��k�������aD'�<���*�׺�~��cp##����*ė�0���qM{d�6�?4���\���ڢ���G~�	)NP粻A���|S�0r`��A�Kr�q�����p;B��p�z_U� ,�`�}ߑ���@ ���Q�����p�7�/=��J332�"�>'�*�P�a�c{�e��y�q�;z�M�  ��N0�GF�#m �ȋ�[�q���N �͔F�[����<�i��Lf@�c+������l)9#���<C.<V=$`�Y�%����^Gsj�9�P�L��dz�|�yF$2?ӭV���%�$2��4���L�qC���Ŝ��[�*�}6h�}H3]tTD���0a�t����m�Ml�C	;N/�7P�.&{��tN��nN���M@�I����Q��m��dA��(̶C�xA Xi�H�w��{��L����C�#�|01�	��I�Q�c&�Y�¥�R�S���p�͍N0&�s�E���̑L8�g�2S2�b�R��4��LC�v�"���L���t:���{�+0{��w��E�::6�����$�e��6�s#�����H���ps�U0���S8*��
j��f�n����r)`��OOp�ْ���aeHg�4"`U�%���C��]LĘ�� ,d2;ɼ��<��(�f�`��X���c����p7_;�e�a����!�N�G���ɔ��N�C'���C4*�O���G�ȍ8��A��p.6)g�^9O	㧴	w{�X�E���,R���oC<���z;i��'œڭzA>̈́G�abHHyI����}H@[�I)��p����ѓ�{n�����X�B%�d�M���ث�^6��[�<M	�Y  �kq*<;�jt)�J���c��U�:<6Ln���є^M�
����L<2�t�I+�~�7d�W1�/K�x�K��]�d�ӱ�a�^;�.�\GIq�X9�2��aM�e��2n����D �Ȉ�"���c[�;<��hR����I@��H�"1�k
}"c��>p2���nH`�������{}b$��&	Dv�*�Ϲh�ԦF$������+RV�%1Z���u�Ô���,�r���x+���[c�1䲈�(0ٚ��M��ΰ�[ȃf�Mff/���B�P8X�F��>��]!��68�XFaź���|:� �L#���]"4�p�$�	�܋�~xF�fr�왛=��0ڼ`g'�fS$��-����:���M<�����A�{��;�6Y��?�u�v!���M��� �p��$�D �@X��:p���X�cvC����4<M@��|:�2B��%0�|H��p�*�i�r�<�W�xq �����(֑I�ܶ�-�A���V1�=C
6F��zU{�%��G#�1o&S�ps$d�^�D�N��    �(2p���̽��+-\
���O���蜂R��e�=��I��lg|��{a�I�z�О9PF,W���4���|�@�Ln5��t����B�0[���L&�FK:���XI%x�aE|�Igk�8�$n����`hgCa���P��s^�A)��tl n�Aq�-sB�7� !S���3'н����S��<"�ɴ�{�!|��%�Ø���[�J8�~"�DP��G*6��i���p.�E!x�������H�)%�L�nA����)j,)��H�2�{��:�Be�@�4'?Gr����9���l���`!I.��D�W���{6�0Q��ͦm�U?+�)�#���$<l�Z[�\�Wj�,v[QQ��� �83���O2@�AD d�@��Jj�f�e��n����F�Ӟ�n6��0�`2�&��d3�a@	�j��wc<�-�xTA��̻1��&٘z� ܚ�8�,��;�?�56!�j�a8��a�,���>����q�58�[��&�sY��z�0�הQ�Ge���P����6�Q	��HB*<�sΤQ\u��"�_m�!�^��NOz @�3#;����������d�;�_�l���̃~��-?V	@<e�^�N�?o@�/`�P���Htg�����q����n�"\��g�2�t��c����� ef]fmN�w粑:�}��_i�ƪ!�x��6.|�Lc��L�A���^E<�&=v!�\Qv�	�~6i?8p�:��	�os&3��՞t�<��}(<�j�"4�9y�,Ox][T��2"��Sϋ>O`�B�J
�6rm�D��"
s�2J��x�NO��%֏����u�xF�*T���L<���Ӵ�:�L{.�k
Dy�͗m�a¦�UN��`6y�(#@�C�Ȼ�]0�l��X|uTeL�Nh[V{�S4�S�^����6��6���ǐ���g���Z���ɄA:��`�T�(Z�/T�J�B!	ܾ��9�Sd2�+�k�gA�O�id���� ��ݡ"7LA�"�?{	�����7�e�K�
�4ӄlc��C�6Z���@���S�m1�q�8Τ�=��8�}��[�S��̗M>{�����8�`�|�r�M���Avb�d"��!���B'cș�@3�c��I��W�1�L��Ul�\�3�0��y�d1�d�&ן�U��`�E��TA^�9�I���!��( �4e�EL�./�!2Jf�Z�w{�J�l,*���	��L \[�.Yr�4�I�$5�%-�w�V�o5�� �0$�1p����L�m��u�t�Dd��3
���z��O��k5�*H�c[4��:�>a��$���I;�f�)0�.Ka�8��^���g	Ĝ��]H��`�IL���<Y�fi
�����F"�U%�Ӈ������q.DEU� i���(?�a[�|ITE����4����b�3��73�^bp�d�^�ɷ=��ujYNf��u���	+C	.ۙH�^b��U���F�N��S;R�&p@'�X�u�8�Q�93 ��%�Evs����	��/������.8�g� �2.�
<g�x��	Y�����H�l*�R#�T;�.+C��
�W�Dd ���k�$���Y���QcY������T�%+�84�ɐe��l�N�A�E8�bPӘX=xI�ʳB	����p1�[{��G(��/w���,�VӉcD���#L@��JJVf}
�Q�'#+>J]PkzU��9e��䒋jd����zar҄�,�ʹgn2J�'+;��w�sr�#���:��| `��XNyR"�@M}��
H�G0�LsT�O)�<9k�I�]��Ί>�Ea�	e��q���y��F��I��J2�qd��vM%��@� �F����e��M��y�x���Ŕ���%�>�#���)�#�/2���	�H��u}_e���ʃ뤤`gDB��1X��$!<��,�ɣb Yf��\�C�Wg��lP=�ǟSm��61���鸠�	��>��쫖��WTF�l��Y��!tg^��q�.��Xg�Y�������j�ᴟ �%�Ёl��hi�JA�A?��Ve�HNdw��Jc��Z"�큓V����΃�B�1����@���W���}ndz�"�2"!E	�3��X�(s޸���<�y�/�ark�&"�k�Yj�Nx�[U��xH鉱���4�Xdg�gf�� -BY.���Ӗ�u�EҺ򴧟IRY`��J���2�<1�
�ٻӡ@T&�@��c�>�F�U��48%&�WP��UЁ��^}6�e��e����c�2Ӌ���߅�0D]\B8��z/��&di�H�=*uZ�t�"��CB�:�;�W.V�P%M��~|+�y�DB�6`��:�,`��$\�zk+l�P�	�d_�����������9(�8.��Zq&e;_G5$�}�G��ԉ�$� ��Ip��`��y@��G~oد�����H��Na_̻�x����Ldȯ8v�orh:�CB�Yv"砑o`��"U{�!�(&�bEUR�L�JŰ�f�7�
j&�2�W��ph�T$�`9j �qR��>mPVd�\���<".fe��$��@W/cN�Gg��h��kr���^ r`3)�������O&?���2Bv��dVS"9fC���+�jA���2_{������fB��l�+IIK ���!gr�O�II �@W��N����&�E�Nc�A�Nd�����Cc��b�X�,6Fb@S�:4P���CU�W��jB���92P ����XD��}��5l[3��nxZ%��s���"=Kh�^X'��dz�	~PM��(\?QL�U��9Qûf�a��V��o;�We�:�=�kT��%�)B):,�UU��*��d�'����+�#%%n$�����I"�*�g��G<�g��@u%C���8YA�MlQ����0F�*�"QI�>jg�%X��M^��d��|���Vw��t&�Yl��U��3i��w�0�
��:��� ߃l���@E���#s_�)Q�y��=+��2���.�&�Jl�O.g7�+dQA�s�Ώ�
��L��w��P�-I�2�Z���F��u�WS��NW��u2I�ۗ�XI���nAn�!$��V��i��*LB����@cA�aV�v��sv�VΠ3M�u�>9)��֊�ɶ�����XK�`��O�&�xГT	)k�_��VS�HI�̔�"�j�*i�kI�SՖ[�&z�I�Pxo�������L�d}�a����=JT'�������bxa�n|��GfV���\�w�X��3�����y�3'�6 �L����VTS7]�SQ�,#HlW��3T-[� [\{t���4[HYw�~���ze�0�F]�Ϥ�w'X^��r"
�eƀ�FV �HC8��3�v�9͕�@
	�R��3�X���~�=��+A4:���H�y5��iȨA2�uW�*S���0��(�[n6W�D(5$o�܂"�H-����=��A��w�9�\%?����f��4�d[AB��vV���<���u<�=�j�v��g�ܧ��I5ʐ1�n$i�0�rE`*�ަSO��q{ߌ1�Q�:U@
���S��K" �������T���.��=�p��@�v0�_Uw����j*8���4��4p�ȵ������G̛��B6is��ʋ��f�xȘ�*�55Ԙ�=EH4`��Uo�)��2B��bD�I���/X�ҠW#�߁B�Eg9䶫�<\�+�IC�6�*}v=xj*:����xmv�$��7��9������m�b!��!yZ`����A�o�V�?�{c��]�mFUr���v�1��[�s�l`�a��"*�	���c]�o���귝WD���r�y�.��}
]�0Z�M��X|V#�,�=m1�5�v66��9�iE�*[�Q�BN�����l1$ј
{�?��,��씶�>H
Ţߐ�����Ko����t��O�$�^��#��R��W����cj,��3�Cx!��F4�Ӹ�n����Ĝ�?�0�}��&亞�=�C@�h�3M�U��k"��4s�n_A�5R�@:�    ɡ��Ko�%�氡�gNݤ.
����\�: ���|��?�re��c���v�3
��-�8���T��l�џ�hSW�Q�=O,���&��
q/]y���n2O�D����:�Fe�m
�9�'8P�Gc�ʙ8c� ֓�SYׂX1��MS�r�\ã3w`�R��'�����5�uM@�R"VW�-S��#[X�P��ɲj�Za�5*��]u?6&,����I�A"U�)ǻ�k��1j�ome��I#�[0LDg�s#!��6sEu� �4�Bf[5���ۀ�p�{�IQ�x�*��Y�a�~3?�yQ-[�,����%�W�\e#޳2���F���� [D {�<���A|E�h.]���tA�0T����gE��+9�W2��4�g�,t+�r���ԡ�������t�hY{Okͧx��@�T{�ƎG{��d	���X1�d3"k��d|�<PD\���Y��𤍗P���55L>Ye�!���������(��>�^�� S{h��|�UՌ-��JD���xqS���>����q@���%��.�/��!��3%
���S�gí|f�RD��3F؋T�i��g�"���m�`�Ǎc9W�:h:l�⃎�r�)H�(�S��J�����^
'�"�(K�7�	#�,p��QiߍU���8Pi�ǐ�x��=�(�����xXt�s,C7�7��e����Bt' �� ��P
Ԃ*s�}fVD-PE�&�V�g碢�6��\	��o*+�a6H)���qqҭ���\>؞��K�V���E�(�r���e�>��9`e_d���͹��%Е|��yP�Q���b��aщ��y; %�5ѣ920�FQ��μ�hY�'�H*�^�L�h�o��>�<͊�b����;�AB&Oz��>�{
�bz�a�E��"DeZ���J�+�D�ǖv��e�:�{4��#��e1\ȵ�� ��$�������Wq��^{��s�e530�؉<�>�*�@:��0y�b>�}	��w�U>����n����Y��s:��NO�G���}�;�E��k�;��A	�D�!)j[���Ѕ���
w�Vw��ߙ�0��WZ�d����ѱ�Bb�P�m�*=5���7�u���eJ4-�i��Y�:�]������i	I��w�7D����2��:b��)�{���U�J�m51��֏S^Pc�@G�(�{pQԌ{$���.,{v�mLz��~^�����לV�a��Ui�X����w`<�{ag4���؜�Lc�*��ʢ�C�G��N��ś�G2��ue���\�^V?�ky�=�3���O.lY�y�8��^h�,Hk>C%�k�zA�O����Fu
��p�ҏ���
�c��W��L�94�J'�܌5{��Qoe��ذ�!�E�ygE�5`)�N����P=�¬�=!0q3?�<���]1_H���/�0�U��:�,ʅ��`1�Kmg���R�����s�M%hU_�az���pB���U	^�@�&Ol�Rx1 �fg�)������5����	M�XYubfoɹ��^��A5�7)O�V� �C�x�1]�Wp�y���S������}�)�^2�aL�$ج��s�������0�cLo�afE�f�+D7QU��kkEU&�}[w�
�6�;ɭ��@^��d�ٍ������������c�Ww�[8X!c��������;�5e~��*�d���v�%.���{;����ҙ��Gpډ}v�iN.(�g�y\��t9 ��`�cp�*�m�gF��[�@܀m��R0TUq�����,��}�y�5e���]�j�QtYQ\��@�E)�J>u��u��kQk������5E���t�����!/�	�'�~9�2���S�Of�xgx\� ̠�S��t�aQ[��N�{�g�ju 6<�>��)++��M"}�=��h�h����dn��BCϱ�{9(����r�����ԟ���`�<��G�������!���� �-ڸ��aWR&��<��:3�s_YOc��* �(���� s?��7r�U�?x���q]��G,ǃ�p!��Vb��Q�+��Ub_����ؗ�o�� � �V�x����P��eBC�Dt��H"1����`�p#�h0#w\Ŧ���|̈e�*�j���ܫ%�?��7FX�$>�v�(�?T�����^��:�5����*���qc�Q	cfGDl9��㌋�þA�.:�|fgà�,��U5���G�NH]jXUk�-!��y��� ��M&�Zo���� ��k��S��l+���EY-˔�6�4 j�
��Yx~`M���D]
us�g��&f�0l�弖٨�B������ݣ�'R�#�d�����e5�[�\�PɑŬ`vO����۸��]!�V�<g(�ǫ��BL�<�ګ:��&�t���2@\�x!�EVb5��X	~CZzo��7@O(�{~�5Ff�jj�zR9�JZ9�������7���Lt�2tƽ
	Yb)�Y���E;��T��45+���=�z'���~CM����%���.�	����<���ahx�-�='�U �w��G�Y��6j�j��	Ё����r�%
���5ŴZR]�Q�"�[f^�+D�bc�so���� ŕ��-��W?�g�������x�����M�kHm+�d��K�F�� x�ۃv�J�A�[i���+*ut��9������������)2�q�GUc	+G;��s�	\῏V�5�c؏�	� �n���(St ox��&y���͉m8TX咩�xaĀ��s�p�h��J�Of��0V�V��9N(v=�t*��KQ�+�Kx������&��-�ݵ�+���	F���.�P�H=��j�|�r�2#0}��&�̺n$�9R���W=z� qy�\\�� �^���@��JU��^T��1���T�X6�������TNj��du�:o�ifJGq8����C<�1a�[(��� �0F{Z~����x`��a+�2֠����g���rTX�1���JP��$�q�np+�j��G�l3���ʃ����eu���\WVq���2L��:�L����uSW�]a�1�q]}x���\�,�w�2��;X���e�Y9
�>Lj8��h�y]>j�Q7=ɚ�o�h�Rܻ(���6��g��My\��[�L�LF&֧�<�J�f�!;�Ue����v������%�ā�[��z]�����sg!\C ��f�M�[*7�­{�Fyu*rK�3��d����)�K0S2yE��`#�N���ٴ�z�ѭ݉O�N��W�T�4����V 7��T��(9וd0N����U�$02�8YO��k*��T���%g"a��t��ߏ#��x�x���x�T�j/L�4~���udx;����U��V�	�q�	䅠���g�Ϋ�:��$���<�$o����Z���f���gDEugO��2��^���{D�3M>Y���Ǯ�z>[߁���f�����
�L���Tw�򲤚��l�w�� {�p��*�4�!,UG���< �8��*X4�9y��n��B�|�s}z[E^��J�MvP���������&Uwm���VY�?l��Pfxw�;AY������!$v�(Dd�D������p��]�7(YC�,p������R��\Yk�Wv�(�fsϪ�:�V��*v�!{��i�#��ؤ{6����.\���'�g$�������X4�J�(H^����:��E���n��+V)~L�(V6�`[��d�}���Ⱥu����]��u==��
m��W���#;+UώXe��cd[���6�Iިv6lx��N�t��?݉U3,�^z���e͟�c@�63U���35��,��2F��7��\�:y�i�YI�Z�f����'�'~�{��^��i"+�٦�Ը�5����g��E���:Lմ�Ɩ�~á��> �6�&; '���3�W�+�a����=S�]��,�6� �_O�ku��`$�泋Ax�Ev :7���9f����h�*�y}O���u�h�z
w���d$��t]���z���   =������$����̸>J����N���aμ�
�b�y�l��t�"��H~�x>Ĩ3k>��NQ7^�(u��O2I*DQKF��^�L|�������z�+����5;,*�}uV{������C6��M��3�v����pu����m�&jI�.5�aM$���N4W����[��p&�7�eb���z�'5��_
i���ȣ0�j�?�}��Q
kpN�j-������;�(�N�dVf��|��zp�ʑ$َ
�9�$���Ǟ&���������x��      B   �  x�]R�N�@>O����-��h��AML����n{�m<�x�x1�-J�<����Ka
ϐK<}��`��^J��D����w���L�L<�t�q���.;}Z� ��T�uaā<t�{����`؃i�(����ogU��H��jS�5����w�/�{���B8�&����!�ѧz�xJ+�n��E���+�)G0�&5�X�����QH������~�đ1�P`�mjS�7�&�	������q��Z�)�f����Gӭ�kw�E��0(k�ޫfJ����{���1}�1��l���L�c�.̑Y�m9�-T�	�@ݝ�{���i�7�MzMZa��}�1�5�A����T�� e��Z�f���B�����g]J6?���bo�5���,��_��      C     x����j�0���S��x�ǽ��F/���B�J��i��29~hf�q�����]j}��
�����]���Q8S���_>޿�{#U���HI�TMN�_Ƒub��(uNiě3m22��7Җ��C.I�����|����Q#N����k�O/-z>�W���~���ˇA[j��I� ����S�a�J�i=x8�aa��:�YCG�%�"-�zz	Z��)�x��ÊXҫ�
H׽œpxDђ��-�d��Z�G�ٴN���xD5u��w�-}i�죏oOD��D�      D   �   x�M�90k�1({������	���l"�DQ&�zm������3D�9n%�d�c"iꄃ��Lh#x�F��*.�;j�J��$�,�O����?��q#��a�O8pz<',9`��.F�G�p-�F&{�$VR�pAeP�=oK%�E�0�f:2��ZT"�qsg+�[��w�2������R�?ZGQ      E   �  x�]�Mn�0�ףS��-�Zd!�A�醵�5�4���m��f�ۢ'��:�lwGo޼�f����«����y�1zDrᅴ�BDe	Ͱ�>�ᏸ%m6z�:X>��፫!"�r�R��oH�7+�pe�W~ i�v5<"�
o�;�d�GY5�~�������D\&Uh<ٓ���[O�ϖ����!�Y�\�d��ʩ~z��Y�{}z�^Z����E[���g�d�U]:��s�U�R��덅c�ד����4�v�=���yT�W3<js��G`�U5��ظ���ό
����>`j���
$O_��&��ŗ|s��|���L�l0�\�f	�(�ς���N)�,�<��w<�ɫ*�9��|/u	mx�|SC�(n��^����|���7O��v�Xwz$�v(Er$~�
nQ��wQ�؛      F   �   x�e�M
�0���@��.Kq[Cݸ�hKI[��q�Az1�����d� B#�Ÿ�G�#VP�� �Tb����՞:�e@�S�"��_�<?�'��*��DH��z�Q� ��y��U�ۤd�]O͊UE�u����˵N�ێ�?ĸ65      H      x��\�n$��]3�B_��ɥ��j�����f%���2ʙʂ�v��=�0l�������9��"�Py �d0����3����T�������o7��M{����?���������X�����*�m�+�ះ�/����c|'���z�te-��?����/����������]sq����\fx������$��	��d7����v���K6��������]�t�x��wX�ձ�kN�P��NH��X�>�8����yж�����_������m�7�}����c{[c̈́�4�8��Om}���OO��^w�۶m���t�Î�����/�Y4L���T�]���{�<����co�C}�>��S�O̥V잎͛���,S�px��;���갻��p�mw�-���a���Swq�ܟ�t�h���J���������׋��⺻}��Cs8��x݉����'˞y#d�������8���^��IL����~���+��9l�ۊ�lp�w��Ň�����n��f��u��=<І��~�96_�N8�C�i�,�Z9���C}l뇋��yh	�J�8�e���b����]*�!���k.��ͱ��@c��q���FؔL:�\UFx��^o�}�% r���)L& ¶�Y))�E��}k_	%�/��a������¤�1��fFp'���0����p>^����m���8O]%�#l�S#��-{��X?���۷s(���a:��C�X�Q��*Dk�,N�c}�L��4:��s\�<Y@�V�����]���Đ���s�vk拰�!����+m�7ʱ��w��|�c��[Ek#��NT���i��e��P_7�����=�éf�Ho�D�>��F�t�-^��|�!̛Π�
�@O�`FW�e�������~���q
��l3"�(,�E,!h�Vpy�T�}s<��P�����"U�kԈ5x�ީ5^��t�pw�������cxN�n�H,��/�Ƣ�K�������$&/"2&Lx%���B[Ϯ�?����c{�  �>�Jw�K�9#V-�>���aokB|6�&���-9g�O�v�T�,(Gz��:�d�Ȅ+mX���A�buT
�$���0��~��e��[VG�ʝĿ�RT�y�5C�������h1>���ӓȀ	ۜ���8H8�/��b���T֩~��l��|6��Jv���P��RR����#D$a�(��J;����|[��(*U��7S�a_1	�uG�&����p�5����Mc(b�"��XCY������8^�F�"s�R �E��^C2|J�H�US����(�e˴2Tn�$8����x�5�Ό!Ti��#�X�
�8����a�?=4��{:܌'38�?=a<��`Z	5��[����T.�\�J�"R�TŔD:cp�V�����-������@]#�q4�-x��#l#[*��e�7R̀I�S�$��'M��Q�G�GX���K 	���ʃ#%v�����c{���شO��b��uPr@�>rG�)5��S�w�y� -����&9VY.���1"�
)p.�S�]<�|b3�I}f$�d GY��
��w8R ��aH�nΟ������/Ae�Rz����E�;��!����~�@�r��<z!J[/%�0�� 5m���S{������j�~�!�f�J"Z	'��j�~n.~����?C�Pس.��M���2�x��A���v{�Ð��raL!��zOXF
���Hf�C�L/�t�c�����*πL���i�uF�z���!7^J��E��M�u��)���M�u	�r4�"�'T¼b6�L@��������Qb͠{�֠x���p^�HQ�#n�KX4�K�R!%�,��G��涋�G��%g���l@��8�P%S>�n����*�"�@��|rǡ@D;�|"�0�9!��%��`G��r�+mH���ay�؋�PZ�JdD�ٙ
oJI>z�`r���&� Z�g���D� �aL�㗶&Ss���hw��<0',��ޟ��~���f]mQUO� �`F�  ���Hv�̫�O�a���S��1a�%tpf�H/ؐ��>r���y�k��2���9!Y
��oNu}k�&���ܼ,Y3$�.�F=�Μ�*U)�4g������0m�4��P�>l���?��jV.��a݁
*�D�)�%��_��"¤g��Xyo����Rl�n?ͩ�B�[#(��m��P!)�-�����{Z�k��cY��2��c�����̡�|u�3�/\	TŅRj�;+�CV��/�v��9Pˣ�x�}����4�3����z��V2�("nA�K:�zL����FV��u,%�B;Abe�7Q���?�*�;��L �ʁI:�,�)��6,�';c��^x����/�Ż�zE���3,$fq�ó�fə�¦�
qZ"�^��cs�+���U�k"��p0Ɛ�B\�N���S�0��5��$���z���p
�^ţ�~�wE�}��V�b�:}�;Gz
bBW���;ӞA$����F�Oc�v�3�JW�H�|��3B�-��e���#D��	��\!�ł�1�n2�����oH���Lq�%�����c7�O˺�(��5�sKR�ѧ�"�"P^S��2߸+��
�V��9��x.+��C�l�,���Ly6?�$���,^"t!�.����#�Z|qw�Y<���XhDJGׇ�w���Ar�y� ��,�h�LA:���f��ōr�+ĭ���!�e��~���7k��q�+y����y)��U�.�Q��7xn�\=�K��ˍ������_/z�_ʹ��fSr	e(<��*E����4�^,�g����W�|~�@;;���?ĥ�e�*^��	�n�C� �i��U��
�\e`�������VN#g�r�o�{�y@�R�	�����Ɵ�� >{l��>A�\��R��u��D�:��S[oT#������Z^_�,l~%؎�y�\�c�J/"$��)���f�J�-	h�^�>E<����C�m`�B�.?�,�S
j��d��uH,���8�шW潁�A5sFmb�+e�����"�x,�J>˃��*�M�J���8���Z����2w;�� 	��T�������oQyf�h�5��dR�� g�s!t?��i����$�^O:VlFy)ޡ�����i+���E%{$-}	o+��AO�2M�&pWE�j���!0'�t�#�ɪE~�7�ȉH���=#�b��f��Q=�'��\K����ӢRd�2��� ^mh�X�coL�U[��l)���`$��4N0d�x����7ٜ�FzLv9�T��ꄔCwu�ԢM/
m[ $���#Xa�Ob��	<[,v���� �+r#*@���嶅wge��"������<i�o�L��I�E�a�C�����v��P¡mW����*�M�1e��o��䌳�S�;c����u٘(��EI&���H��v�� /�FY��h�ҽ�K�pG�D��pk#�
};rV���Yڰ �G�E���;C���k~jr�s�����>���&m��я�Q�d�$l�Tˌ(�!
Io�uE�
��t1�k�ߗh-����Q�q�Cx�TgTϪz[DPK&�jj�ǡ�5�2"�Y�5^�`�e 2)[!p%4\����PC�%#w3��b�Q�42���N�
���ſ����
�g�<dX��+�����L5��l���h��aˌ�y@ CU�*�󛸒��Tnβ����f��I��չ�?4��&>�x�� �`�V�$++�-��
�����t��tFzI%Ϥ�T,*'rfa�[I!���X�)�lq"���k�od�z��	+$�8R 2��>��6*�㬏l
��!��heoiz��>޶�=nub�H��w�Q�(������=S���6�Rt�R� ����Ԓ
��y�g���p����.R3�De����fp�<���{#�� �%8D�q)*M��Vَ��/Q#-�y�v�Hj��[>�F'���Lf��a�$�A��������J�{Ǝ�qf�m�AT�ͅh�n �
  ��֨&+obD+�*�<��~<	�����2�r�0���
�9�y�����{�uk����9-XJ�ܠUR�z"Q,+�� �\>�%$u|�:vo؏�����HǛ�Tm�m�O�42M�����2X��l���8*�@����P��VV�����Ȋ�����l��aJ�ic�zìp��ie^�!˖4!ԃ�S�44�?4��ٸb��Va�:T���c���?4ta���B@�K��_\"4�I�	8z���`y�P@�Һt�ű�TY�e�I���̈́��ar��I��@e�����҃��r6۫�9��Mn��`h�,_He���H�c}��b>��
F0,�F����*�O/����|-�����5h�,�S?u=w�✭���-��Lp�"�d�Y��5�Nnk��r�V4��>�����C���c6q��0�t������i�Q��o�HnP\�'PiP(l�� �٫�_����c2��ҴG�^�k��<0������"dD'yʛ+#���:$�t�ޑ�
��5�7G3��2.���<����e/�_5�ӱ��'�AZ���4�0C�V�X�
g]I�U^7������L{�i���:�0�9��������}�b����J�y��Ǳ������(�9o+�H��MQ�ɉ����T|/��z�R���:/��( ����O�l��٪{���E,MgQ��b��z��N����d�r�AJ��)�������U����p�<�U�2;�����QȌ���F�a���h�*��ϛ0w�sUT�_2`�	L@P"����l�*B���$X��X�4}%��:\��#_��1�eı�@Z���V�ĝ�<�'2:N�*)|��	�����M�%F��K�=G��e��Ƹ�cӓl01a>�1�SaXHa�����|>��(]}O�Pe$��3��������	�żI����r�(Ҭc�N�
܌�rQ�<�_�l�Y�w�N�M=]��4B�W��� ��CU��YE�x��hB�<PG��4b6�^6����h�ϙ����w���&Z�?�|o�a�`��#[u�mM�����xL����ǑɐI:ZU�Pv��?��b��T�dT!qأ�B�prcE�ϊ�W�b�%4J 2I��ǹ�"S༗�V�qCS�څ�g�T'Lc�+�EJyd�B���X!���;�u ��QX��f�GF���yZ�D�����D�3}n�e���rք�e4C�\8��K-�.A�ʡ��N��tߝ.��M�>
RY������R�o�����]���ʘa)�Z�YI�,�.��^1]M�Ȫ�IJ���
�7 ��:�ų��Vr>Z�J�QA����P}(_L����d����f�R[���'b���7]��3�����5�F��=�x>�0ٟ�ڇdh%K�,�
K�]�b���<��ߧMK�v	7�ؠdz�ފ;H�	{I=��(�Y�'I�Hx/5U���v��h�0J��(�BZ;ŬN�uI��]N��<L#z��s�'�A��Ԏ,��6�^���MT�*�v/4׃]���k�R?g�'7LBq�E�-W�<ZF1HE(�����]׆a�!ʵ/dy�b����4W�$��\��:���M^�,z�o�ñ�ʆ�u��:H�ۙG�����҅DdB�GIM>U�j�T!��Q���|̼ө�:.�A��4T}E��]� J�U����]�`�"-��d(��ƹ�AwcL��N,����&@� �!}�"�6Aa(�XJq��'DTE
����<��fNr��Ё��&Μ������x!��>���������*8��P#���¼����W��9��&�ה
!������o)iV��	j�,n�6��5e�S6����R�͙N�:�Q�8 �!o|u�k˛L���d�A��*p� �xz�nc|ok�wW�3�i	baA�85SA�&�I���� �����W%��&�ŧd�(�'Y�k�}<2M����xObf:��,�i�]�*��t��l����c}�Y��ME�#e��e�Z��p{�B!D�iz�Lˆ��Y�˂��PQ����"gW�"yL#�B��-�%��Ð֤*."^�e�ۑUC4W9�J�s���-9��R�A�x���a"g�8�����S�p�^��8��5�z~O�[5ş*<�-����7&	Q��6h���)8�O�;(�^y�<LtELui�H_A
	�S'�B�}{ۤ�u���k��j�`��>��K���~�.�H� �h5τ�dGkH�@��zN_��'����4h[����Q^ǜq%U�_j�U�.���<�y�Γ��G��
��4�N���g�͸.�T�W0G��i�W��K�+<Q�>��G��̣1ٵ��4""�ov�	MZ��4��v[i�fZ����
|
�=��hF("���bg��ix�k�zW��� n;��YEw�}_���[d]�]�㼮X[r�y@������$,�n�r����� %�P�tw���j�QOr������e0M�a� ����=��q�r3&�X$�
�/�zE���6�gσ�ӌ�~#�(WS���[=����-�'�rt(��
�訢��E��{~#�L�+䲂.�a�Ň$� ������v��
7RS��ѡ�?x��&(�Iq,J��=W�bZ�F���A�>4B�c��db�uF[K=W�⌊Y�}�uP#�|l��:_��#����тѓTچk\�sʿ�T$��jy���@Ғ2���g�W��(��Ɖ��<�һ�n���'�w?      I      x�3�2�2������� ��      K   �	  x�]�[���K��>����Ñ�k!���P�L�B ��k�}̵��~}<�;{��3�{~k?������>�������~Ư.�_<�W�ߚ���ߋ[�g�����X��Յ������J�Ok�0��ă�4}�?-��\�a���S�7M��OC��n,F[Jw.��1ቂ�k&��'^nQ����j��<��������7�Ox���1ۅ���c4�/�����|�¿lO��V�'��N[�Dx-0��>��Z�k>m�����e���=���U�(?�U��[2?凟:��	�~���Z��Oo�i���C:?釤��Oy���.�%�=�� ���@���OzLދ������ӷ6�'�ϧ�W�¼=�6l-h<�i��N�������e��Z���F�~��\d��o=;W���
�TcݍPo#Y����xƹ[���}�{�����n�o��3�n�o�y�3�V���g���F�w'|f��Ϳr���C�\���n��
�r�^M����XJ�oC{��O�����jU����ϊ*[�A��VV�b��z�-���Y��~iV�b&I��v� iW��<�T�B�g�U���[�nU��u��rv�Ϊ[zAй{.�ǻ�=�rI:{jϪ\�P�٫*ו�>{W�tJ	��&���m�K�ğV��J'+�t��&)�rI:U���\�xH8���`��6K�pm������l�ܧ��=��Y�5�����h\k*Ц|qM���r�7���xjU{��a���j�l�S���X-�wD�w�����]/���LW`l��f���t3�Y��q�S�g��w��v���ݯRK������=G�P1x�T��&4C$���i��8)}	��C�@�o�|�m�̃����h�}�{ޭ[�,oG��>��VΝ��Y?�ʋ���XԷ�:س�z���&^|�ص����}ٕ�@�q�}�]���nbY�������g7���]A�eu����V�Gr�rR�Aq\U�%X��b=zE��.5=b�=���Y5��6�*�U�����H���+.�l���6M��ئ��C�4�����R��MS���i���6M�v9�MS�HU�����i�����n�����T����>M�5��C�B�W��S�^�M�M��,���z�*������5%����s���W��������ét���ftM�@�T�S�չNU�RO�͋�?�~�&��b�!��z�����H���OI%��O��i�կ���~���w�zxٖ:�R?�
z���H��MS��
{��_H���/�*��/I%��/�B�e���M=�N�����37�L�(��g�zz5���O�F=�]�~��nS� �R�Q�dSO�Քl�7�`S�Q��ߨ?*��^�ަ^��Q�\��a�6��KS�
SO�F��z(LE'R�Bɦ�L.�l���ɦ�h$�zϵ�ƣ$�Q�ҭ�3�{�[]c�zo�-�Yzo�=��i���Q��\��7���3���~>nwM��Ç�~F�'qM=�g��u�Y��Ch��V�h�\�(S>�w�b���(�|�B&嗏��W1���|����<���������a7�HM�a>`"��(>@�.A��*�%(�|�E����3��;*�|@F�6��H���:P�|�Kzd���Lu{�:L�GW�|�L�6嗏��b�h��(�|@͸1�6�ڔ_>�
Ccp7�4�b���p*�|��i(f> ,��m�? VY��C�)C1��uV�����13`�v��|�����| ���H˰���j颕_>��b*f>�o̸��� �T�|@����S1��C�0S�C��(S1�������X����8����c)f>�s���T��c)f>�sh\��c��J������ �qc�F�R�| �؊�([1��c+f>�4s�������|@�؊�P�X[1�u6�����qc�\Ǎ�x������(f>t��1z�������١Az������Щ���c>�vh�>�C��D}̇��4Q�������;Q��������猌��|h��W��S��D]@��}���x���|+�\S�|�/<�	�xN��5����+:jɦX����H��:cKM��s��ɣ�h:�]������N���g;w��|��'���g(f>��~3�<o�|����<�P�|��y4�<5R�A6��=1�|��C����yϯ�<O���s�*��j�9��3�<o�|�κ3:6�lm<שB�b��g*f>�y�0�xΧ'�b��go�`��ϳ+f>R'x�]1��3�;*�|��슙x�:�6��t$�b���+f>�y��<�{�b>�y���xN���S&����� �uZ�ף���93�<u�m<�_��b���T�|�����\���S1��s*f>�yN��<������9`�3      L   �   x�U�;1D��a��`;��ކ_	i�e��h���S>ͳ=�P:?^���5��t�~��~[3$;�e�M�\ ����G8H�*�¤B��iN;���h�Pae�d����,.��3Zq"0���~6�, ?�ua�      N   $  x�eTKn�@]W��D]U�]BH$$�"�ecM:�Ҍmz<sVl��bT�Rb�l��_��M�37��m��^ d��H=���4� ("S�������Ђ�N֗:`E���\JS�zpfy��~�F����,F`"~C}�`1A����X��]��!��p��w}i����sH����mߝs�N����41��PW_�?������]�ӯq~BĲ�z\7*�D^�(��M�ܯ�ihf.A\��o�a�Yy��&^<xZ$_qȪ5��ʦZ�b$���i���N]�	1���>��%��U�x64el�Ӡ5|�Tl�&��(%��	�5W�qQ���>�$����{?T�5�(�X+r����|��j���=�o�y�ݏS�W��
s�\~m�����-����E&�A�q[v�z��F�Bh�mt����j���1)B�C�b��H1�-����6<F�ڎh�p�h=��r�*��ۏ@?_��N��������`)�ˍ.��Ʀ�f�+Q��J_�	�]�%��:�_&����� ���4      P   G  x�U�MN�0FדS�U�o/��"U�E[�@l��E#�6�	�^��p1",�����9H�5�s�`�9E��{�z,�c(l��9�ciƾ�	��%�! ��Y����J���w��k8���JA�!&�M�P@y؄K��=Ric1$����Jq�w�6�#^R��=��y�0~�#H�=���[k�r�ls�1�u�m�����0ǀCN���D<a4�Z	-��J�]��Ҏ}����<�0�]��Wf�T(�����2���*V����Ӫ��<^���M�0�O._ \�B[+���[d�� ;�S��9�Ty�4��~��iQU�'�֋      R   �   x�5�=N1F��S���?�6@�b�@I3+X���g�bL����}���,��K����m��͵�u�p.�S���$�Ğ2̿?��:�Y��.Ʈk�H1e*lH/�K
��\����6�"�r&�1�� "��?�y�r�u��� �r���3$����4��ð����������� �r��|=L���P@�      T   �   x�U�=n�0Fg�<A;Ў^:tj;d�B�"@��B���+i�P"%>�o0��ı�y�S㈠��刕A qv-1�yawD�*�Y����߷5����z*���/OHl�b�h�g�3�f�*������5�N���Eg�~w���f��
�9`$�,�}�BX��k�*�\ڛN�	5ѓUf)�yu�Uz$��`��� 3$��;��[��ܩ��6��~>Xk��}      X   �   x�=��JCAE뙯�/jb�}ĘxHe3>G�석]	��U0`��v̵����s����B����`)����D]�w��c؈[䘅������?��C9�m4�8��-l��	���9�3+Ac�L�8�i������E�fs�k�� Gs�>�:�������_�,���ΰ�7s|!�/�J0      Z   @   x�ʹ� ���3�]���j�5�um��Q�cN�q�[X�n�R�?íʳH*��+�      [   �   x�mQ�m�0{K��0uk��?G�E���!	��M�d���.�K��Юh���Vs<-��_\!��	���M�%r���ƧTj�c#�-'X#|�!$
�o�bP�ɟ�JŸ���^�O&����\)C-�
3���F$� ��:{:��޻޻2����6M�H{�9z��vX��d��5�l�N�G��	~��!���o��i]�&~0�i�b�      ]      x���Ϯ�6��ת��2�ȅH����0�Lto荮���-[rd�&����=�n�y��bs�G�O�E�A�J�s,Q?��G����]�:���p�ɔ��u����8�������m�}��X���S��1��釗q��˗�[[x��4K�*��qX������n��maܓk�`��[{hw�?KT��\����E�߷�q�����4~�e̓G�ճr���g�ë'�
�4�b9�ݦgi[=iU8O�)v����o�R���J������X�}����ſ?2T����h�J�p�����8��������]Jq��.v񂧳�'��l�@��E�©��ݼ��A���Z�m����g��.�RT[l�a���o]����]Y��rE;M��p���c_X�Ě���}�k���r*���u�w-O����m�/�z*q�:�e��||�e����Xh���;-Eß-B־��RT��T�)9�pC��CQ�R�.$�.�-����p�JB�sJ|>N��|�u/7�m�Cׯ[�d�Fʋ�b��|�F��4�"%
��~�E�7+	&ΰ�ǥ�:Xyp88��d��.�#.��,�GKk_lGT벽$�� �`��9O~�OV=14e(	Bw�/������I�(I��k7X��op�>��X���g��p��Ka�s'�@&�I�\��=��	%s�^p�e�|i���2��7H_(&��
j�F��(�
!�{3�w�Wr��q)�ސ'Ἦ����*Y�F�k|��3�}�5U��
��Ͽ����{�zń?o.�D�I�k�9Nt)*�]_
�f��9%(�~��pT�~9N��k�|<�K���n���4�L�ɸ�. �1�Des2!p/�)ޮ�~�酧�<��!F������Kc�|�0ԏ��f��[>Bd�T�Pu��PM�Ы;P���(���P���2�u�P�����A��@��A�IAZ5e�sP�q7e(�1(�Yg�C��r���exT�0�;P��܃2<U�Pm�0�$�!�4���	(Cj2Pn> /3P���P���P������ex�-�q�݁2,�.�a��B�f�Z@�@�&��2�!(�if����P��&�L�%�L�g�L��C���w@~����,�z���I.�l2`C�!�l͢����p������)p�2�g��C���Z&�h�Tw-&���8\����w0-�:�i������U%Q-��g�h&kѫ��`����x-����b���A6��Yf�G݃���=j���b�`M��6]6n:�c��ϡ�B��il����ZNқ���}�����p��J��}���4�)��i�s ��� :f>�ӠR ��� N���B5pJ�1��� ���NK}�45Y�Á�M���{ �I�N�dNG�8U�8e� 85�8�:p�4�!�2p:T���=��dn�����c��.w�t�9��J}��jr ��x�bU3 A? p1�$�E�� �f .��x�� ���N\��1��۔I���2 �� \&pѫ��` �� \?p�Y���<pX5j8pq�,�Ţ� \L&pqTy������\�"���Q� .j�8eU�\4���:p1�$�E�r �M\dw�b�7 ��u��i��.T���K�ov�#kM! St]l���-�":�u��|B���Q��8��hH��j���OT�����p�O�'�PZ!�8t�#��h_����0�b� ~�C�R�W�A��m��o��4�d/Q�t��-�o� c�>�Nĺ�����0j���nʨ�>6��c���0�]Z9q�G�ză|CM��p��Э'�4��Lj��o�����c�Q��D�8�E�ߵ��7nP_V�ԤxN�q��T,;�s���=H?�6_�Z~X��������?����S"���ma�l/�z1�9��݂H-��k�*����v��C�j�԰�up��ݠg��/��يKotիK�_h+=f�[Ly�2T
�o%�.�3�/�;Z�<A�?���8EI}�ƒ�!�X�Z���?c��ꖬ���o�~��5��u��$�$D7,8zy������0
�?�la|Æ������p2�X?|<�c��Mo�_����ТnjP�����<���}m������!n�#N�:ğ���16��}��؟��	�Fzt��~C���/��qC��M�g�s]���h�M�.�r�fZ��	���L
_�D�S�3u�t�\�Αu3]�y��X�&��[7�:vt0��噀NZ�q[�h|\�/C1��o{��b3b0ףX�Lx|��_u�[$�4mI�.ȣ%�\�H(w�q�
�8v�����X`p�~Z�	w����:2I|����o�.�����ʶ�)�T#�_�B��i�x��T�vTsB<�F�Y�=��~�����a�F 1m<�:9���>��a�0�7�T�jh�]{|f&�؉T&<��nO���n��&�7nۆ �<���)#-�à�;4ė`ծ���;r�:Z�=� w�ϑ�@a�ec��=�xk(=���X,�n�]��謽ώiA<��ͷ���7�� +��kF�]�q��%ӊ'p�d�XGVn�{\��d%��!���9���1ky���òR��$�P��p5D�y���qZC5)$t/!�����u!KѢ�3�n���MHO/���h���ǀ��4��C�-F�պ��ُ��l��nzF*��?1I0�O���QTG��7��bծ��tE���0�G�G��Cg#&�Hs
�48���� �"��N���]���U��ad�8w�Fb��T��?�L�Ӏn;n��P��K����lJC�M�90�-�i.X���M�Og&���t(����9�|���[�����_b��D�5���y��(=���Ͳ@��6<�\]�vF��Q���q�|D�?����!�?'�)٤�'�+�𬝪�\�0��pJY�Mt ���:�~o�����$��/2(�$+$��&Ml]���Q�#��L�آW�����'�x�b���!���4�Eo2ĦA���Me�-�!�L�آVYb�Ŧ�-��[,>Cl1�Yb���'65�i����!�:Ml���E�"�X��Eq9b���'����Elf�M	�I[T�%�Xt�آ�<��S�[�&���ab��'�-r�#�8�;Ħɖ)b��r��N[T3Ol�0��v��Fh��c�-sPl�놁k����}~�9[DK �Dz��a�;.��0�p�#kj�8��~ԁ".1#[�\��*��bj��q�_���D����hnױ�lXc�Y�<řP؞+-��If
��h�/-s\�� �b P5�<kN�ew����~�eemƇ�E4�5�-[0�$�(ˋ��e��:��O��;�xÑ�i�e�_���q��w��&vjQ����x�iK�1�:�=���G����~���TX�����i0�A/�e��ʪׄĠ
q�|�e�ϥ��*�rc�@�ݸ�e�T���y:�M���G
7��e���-˳�z���`+{#w�n\SU,�+�A:���z�]/��}�K7�-���W5|��H�k7�~���
�}�#䇿č��Ej!m(9&)h:��3#;��J��K�%$�am�L�OnF۵k���R��.�qa?^�|��Aj9�7�\�|6��P�C�k;3Ϯ�8�$��l�X�NH#O{Z�Ec>�cY�=�r߄P�Õ����pa�nd�;$L,&#Y�ƥ�*T\sY�h���c_4B)�˭g�)�be�����p+h3�^�|<�-��/��a�bcqO�#Y�SMQ���ݮ�Nyi����@U+(M��Te9U��=��K�*s��f�*����n���T�Pg�*�f�T���8�TE�)��j���T�`sP������P��@U�,T)a���8T�"�y��f2PC5U�l�bqw�*����3TE�o�*ǛT�0e�"���*Gu�"��P[uU9n���]���$TE��PK��*媜��h��r\�B��b�@��*Uj�.T�rY���� �  *}�T)4sP����A���A���*f��,T鰳P��P���*�u�44Y����r�<��JI�J���*�*U:l��]��|�4�	�Rk�P�kZ�=��t���U�z�<n�P��JA����*��4T)��P����*�7C�����RWi�R�y��b�P�\%�J��@���T����PO=Uњ{P���@U�>Tŧg�*�����TE����e�*?U�T���A���PU= U1�T�`rPGuU9ng�*��@U~�"�9���IB�2��PMe�*=U�L�b��@UL6	U��-T��AUu�"6_C�G1/HAUdu�bӷP��s[~f�*�*U�m�"�,T��P����h�-Ty�[�����b=�`��z��t�QqK��%��	�C�n���c��3*���ʠr;�v��ҲE�>�Y���H+��öl���s����s��"Sw���ߺuwh���H�4���FR��sw��-I^r�/{�X���0��l?u{>7B��X��7�������J7��=��^��8-lx�>%{�����%D
�~�x}��/!�� .c@1i8]i����$$[��E�U��M����S7��a���|٨<N��J����:�Ê�RfFZi�{�9��@q�y����ե583�0�����Jr+=�yOt�/َ���kB ��<x��;�lx��B���A����\�+/[sD�!&��OD���%S�?�)+Y�4!�R �}�_��D=���9� �e�[L����@���U<3�6��ی���y���2�x�q!S�S��=�66>S��6���b#��T4����0�
<����M�u�r�b��ͅ3_m�R�d��8d��ٕ�sWaݛ���/�s��OJ�Q�y�.k��ݡ�07�!G�<�|d�n)!T11�:��]�L��x(�9����W��|�'��l����V�e�*rߘ	��wA�v�;�#���QS���,���� ��@��܈+w��p_���s�-����5*�]N��ޛ�}��S���xmw�����#y�e��A���(Z����Q_W��=|�(��Q��-�U��h�>�:��?�ø�j?�@1���
"�>��U@�
y��
��K���4��{�(����Go�:D��p+2%���+>��N�^�'"-��F$J/�`#�@�-�6��q�=�(��1(����i��8+�M��`��f.lv���K<M�wI�S��`���)߄��]��n�|@ӗ��dͥs���e�q�alh��%7�m\U�B��*����o1�_�a�Mؤ�{J:��l����)���!^��u[H �茐�1��'����o���U|2|��/x�C�����ML��v�ƠhQOZ�~�f8jh|����N8�83��ek�GU�!��׏��݆ϖ++#�&�R럤�Vfv�b*�Mq��z���y�Z�}]t�� �;1	A�L�P�:T<��C	�<��&v7�vk�d�0�}9�����v�������^vڜ���	oD ӝ�g's��￲��cM����v��� Ct]���7.8fO����0���n���<z��<��H�Ĳ�P�n����s1���1�������CXL��)�O���VgHH��!!�b��5	yT͒��N����%!Ws$�`gH��n����$��Α��f��P0�!!�$!U�8	i7)R�R$�h�$��&�!!�z���	�a�?CB
*ABj���<lnHȣ��cgH���.	��wHHO}KBn�$����>� !5�$!U3CB� !}6CB�.MB�>EB���$��ɐ�+�I�kh*MB���$���k��j����	Et7$��~��"Է$���	)��Q�[eH(=GBQ�	E�R$�>LB��	E�	�X'I(rs��4�e�������I(��!��<	E�7$���k�Q�'�x�[���	�⾟	ţnH(�u��"��$_5OB�l����[�q�������7IB�e� ���1�W�I(�)Ʒq�������׼�p��G�n����e�	o��Z^�o�����x���.v�s����.�7���%��;�����6�� 6\<�/�� ����Ky\��/e�/�z*�&4���H@٪*��p6\M|���Ī	���5��͆�������bs�X��/OM����J���n�u�Vb+�IW�J���x9v��$�mN��x��{"��o6� ;�M�A(Ǐ��ە�o���3�X�G�u�<_ݷ+nS�6��:�u��B+_#@�H>/��\!:�v�c�M��>}2��x� D�+����*�����7�T�*|���~��pS���ӹ@��Y�wG�9�0'xF�B"��+>Q^��\,��K4��3#��{����K��q�Q�zi�tgM���zcՓ��I�H}�p����BH1e�V��'��]h�`����A�;1:Fń��v��2K��IÖ������t)����Zy¦%5�x-Ω���M��ׁ�ش�]
n��o��{.le�~�:{�&��C���qϟ�����|0X������6h��#o�hy�Z���+̪���U+����3J�]�l�����&���AFPN6�Q���2|��	�	x�2�=m�7F0���#X�0�,V�sX��v��,Va��V)�,V��	�R3)�R�~V��Rwi�R�9��P��J���U��pX��RX���X�ä�J���U��Vy��c���4�w�JOs���2�UT��u���-Vy��`����*%7�U*~����x��*��o�^a���*-:�U�Vy���*��*e��*��<\�JC�V�ϩG�t�ViЏa�V3�U
U�t�V��V)�߁U��V�7i��5&$�Ҡ�X���c�6��*�*�U�6�U:\���}��V�`�Ǜy�B¬�A�Ҭ�`�}���Vi��X�lX��n���>�U��<V)5�X���9�RP3X�q��*u��*U���Vip3X�q?�U*u���,V����<�rX�A�������ˁ���K�T���h[�k����1�^� =q˥�J*��*�;���߰�^k\u�.Y��
����a����횡_�\$��� M�+�����mϽJ�����{
[_��V\��~;-������]o*=��΅/����)�Ү{i��Z�ܛ|F�
��p���l�VW���`�g�F.�l\T�_!J�|P��y�]���E�5I��ʀ�%�o�i������6n�����6�6R��Y�޶\�C9��Qa"�-P�e�U%�q%i��H��b����V���2]�"��T���be3�@�_��L�-?`x���[��dw�����P���~���j���nN�4�̽뗬[4��F���!���}�S|�~笒��iT��A>C�EݲC�kUHdL��|-|U��UG.P���t������3�Th��]<u,j��ڸ�M�����3l�E@�-㿏��vݘ���w����=mux��6�[<��)!��y�U
_/�>��47�xm��5sx�^�
�&�F�>�|YQ���h��E2>��ț3���w�r�
�p�v_w/�+������~X���p���!�͇���=bp�׏���O����Iq�Z�{���_�F����h�%����X
pA��^��J��/���n����=��C5�x6Tbt��u#�>w���%����&$a���/�q�]V�yZ xW������Y����y/ዟ%��7�B>R��F2��O>|�8#93      V      x��]͒^�m]�)����ߥE��ĉ�R�&�)�9�hF5$��wy�,��.o�ν@�d(�@+-0��u��sp�N�7�>�>���p��wo�o����~��qI��/���ݧۛ���wooo�}��?�?�x��,-���j������������������էˀp���o����r��Y�z��ׇ��~�����7o�����p�!,��]�t����wקۇ�כ7�oo������+�|)s�o�>�}�����柞��7�Q*duul�������w���^K�Ǉ����&���s�=oi��y��Vר�������~�Y�7��اs:O0�-e��/��Q�$�?�����O7������z�����O/~a�_XU�\���w����{]�o���܏v�طT/���ӓ.���?�����$i[jL;N��`R��Ҽ���AW��y4M7{^������7����s�~!���t[��n���N9o9]���g~�p{�ǟ�X�~ۖ�F�rf+����Y��=w���Ug��ݧ�������O�o���>�Xy��u˕��T�v���l1o�~����?t�?��-w����������Y꺒�W"v���3����}�w?~||�Rxm�ޞ�IbF*�pބ^KW�)���'=��T��t�u���ǧ��\��U�T�ܐ���S�ܘ��lg�	���V�&u�A/{3��gBk2E�i+;��i*_P�]�z���_�T5N�V{��V�1�����3�d[=�V*5Q��r�O��o�O�>����͟���|����?p)鼋ml��\�Z��{2�s���Wf�D���խ;u�~�d��*J>���5_������w���BM���/�	Q_�Z���E�s�*��ٵDO�R��-�Rg]�
�~#<S�N2��޺����{�ݞT]�G�v�W>��uO^�]���i��͹ۈV5�.�,���G3;�n�0�*Ӵd�ZZ���5���t?WB���;���5x���ӓ����Ec���ím���i����=�og�u�:?H3ii��nwNY�<�W����T�z�Җ���w�������\���l��i�~�n��6R0|�qG�9��IM���v/M�x������Զ�����Fc9�5�����[ӷ1�ݶ߈����i����͝}z��}31w�<�ٷ�/d:��H�j��ԑ)S$���#E��:T�X��O7z2���G���vu%ѵ�./��6'Wn��Gv��GS�uT�F��S2]L��Ŵt|����\���z��͂���T-�QEL{��kp���Ό�����:n��t�����L��R�ٮ�KU]T:Q�=�S��2Eo��a�"R��rZ�	̩�L����mI�nKr���/<��<a1�L�_��)=�	m�4)�d��t�'��!�h&o��Z��3sYK��Pq
�/��r	f��r��K:�
�.7
,,��G�;��v���9X��L�'="�i���S��. ҉�.�a%�M,��4u��Ŝ]��ɑ��(�n�����[�TZ0�ف��m�D��w$�wt!����X~?�AU���ٺq��[Z2ϙ��J�G�҄<O;w���
�9�u,-v3��XK��[|���u�2��=��~՝�:�N�8���.��4�����3�P�b�2����m������v�ajc�J~aFk��cc�o(��1�h��n���n۩޾��-��������ڲ�2�������i�Т��_EO�Q?�\ B�F�YS�#�i40�1h�� �0m�FX���y����_�q����E7�gZ3x�S��/��@��/�q���K�g�3�#u�:x�έ�WtT�U���S��q5�d&C,�3�ݵ"�i +:�����t�X��h�B�|������J��Cq�U�dD,�}N# Yt��1&-Ø~�ƹӕ��@t<��^'��&x���������mzB �����2N���}�o���j	��S�Z(�ڨ5[Á�l!�:�-�
\�WW�D�W��T��A�cq�%is� ���mFSq^j�_z|�����O|��?Ŝ��4s��p:�������Y��ޣU�ŷyԁ�^T�FG��nɪ47���:T���M�e���	h�}����]���A��u��:�<VGr��Ν]���C��-��Z2=���P��<+-��d��y��9WZ�0�P��4<r�|�r��-s��8=RO�@��<�q�l����٦��%4���q��c#/��,r��k�YM�P���pH� ��@u\;����4��%��.3:���'u�J`����A0�
������a3
������/4�]Č���p�7���s*ѹ2T��H�AS�45������ёO���8ȋ�Ĵ�!��k�]syι5bI�jx�ݮ�3���Fld��i6&��*����Z  �J�(٪�����rho�T���r)gx�/@H��uS'�8�`9X�mo�ɐA�[j�.�:̋бU�mX4����49�d��{;��&��骘@g�d�z��s��o�u�F�J�����k������@i:E�ϝOt�;��8���@
����c9M����æ�����s�|=��7up��sa!�kl~Q�.{d�)=�I��ͧ*����'c�B�NN�\`	ӣ��#Q����S��d��ov�����N�=@�<)�{Н0s,l�s�g�M/R����A��0�XV�4y��ɺ�x�z�Q;0UJˁ��A H*������&�R��`ٹOud�X�����N�2ϑ8>�]�B���4�)Ng����-�$Qq�j�JE�)���G�cz�%���5����-�� R�����q'��1)`"!�:�:[�D�-I����t��S�z�CM���V��N�m�}�&5�y�_5�-\=ѭ�y��k����׬�O����IΕL)����4�u�5lM��`,�T�^�1+����%�l�,�Z͘D��:�:#��Zx:�l�p�I�* 	m-�v�����o(\�WT:�='@���,�,j{��Uh:�Q��JRx6�D�ֱd���F@��PƠ'���+��:��`3J���`�R-,�R����_�e�@�AF�e���j*E��U�c����zj��b&��>Vjy��E����s��y~j8�V+��}�[4��{W9��B����5?!�|��<�P65�I-��+��4X}S���w��ꊪK�=1���5�ph�^�G*^jQa��펮bO���L6�QJ�3��I�Sk�A2(����C���d��1Z8!;r'����t~��6G� L�(��M:�)E;9C׹S�`q�,h4gK�RG�x00Jg�;x`�p�.~D�X���h��'���*�(t-_��Jt����Oխ�*����x��S DZ����4�-��嘴֖DD�!��x�c&����G`u#�� �u�#���t�h+��y�LM�4cro�-�o��&��v-����M�G�h�\v:���Zv޼� #e752T�^V�.!y,;u��}�c�V��-�z`���;�!_�����wb8�k �k,��U�$^G���NrV�*C��)���!~I��UݚD���T�QE�c`c���5ǔ(1A����<��Nq��WrRr`�#f�z���_����/+����;Lo������V���Cv�S�âUk@S/��?�c������F9�̬���.	=V1�h�Er��vb� ��4 ��9!�����E�ͪd�;��Q;B�`g�
�£��2��"<I�#¶`�Q�1�3��N�V��~� ItՖ��`���AE7����c(c����V���S���Z"��U���@ݪ�&�j��Ř~��|�����6u�R��"�c5��Y=��ʓ˳�o�J�n^�X;':F���������OO���6Z��I\�F�խ(�,*�n$�}���v�'eG�7;N7�q�
��>6�B�_J��ɉ���IahO�`�:�p���_�-xyQw�SVtC��|z��g���  �	  5���!r�����@�Y:'<<��z9z�sf�Ύ���ΚT�@7�]U�f��5 N��ZT���Xv���P$oC�ҼF���n��PF�)j�:C>�9[C���4�����4�m�z'�lP֙s��1�N�>T~��+k����W|ZG�}�#��K���Q$��r}��s+�H�Cf>әhM
''��^���G�� s�1S$y��
�I�)��=U����E31D�KK=�����s)|���:��a`18D#��s"w��*�������ó	��L�5ұ�������5q�CZ]���|,�}ӫ���~�
~,?W�Ҧ�r�EӣM���+k��!p�������:S�b.+��8A*�_�Y����EleN���9�����ý1�6�����k�ѕ{��fJ=��ZY58�)��a�8E)ˋ�'|�=х�}vh!U"c���+z����� ��$<ZZ�/�F
}����I�5�^F�Q2F�`��N�nۚ�;����@�ó=��]-t.��K�=���q���=�Lz1>�N>[�s(A�5�d=R��gh'ߘ]�G�|\�Fn�r���A�+�����i-k�*�붷�(��#j`����b�u�W�ū��	ςT�m�������*ب���+e�����6��l����
W��ne ZJ���L�KN�ӭl�ώ��N6�U}�R��w�.�1�'%�-R\�������n�1��5i�k=R�d�ԫ�r��X��?�����x��4$�ڝsм���ɗ7�L�N��>��U������c��<�/`�dՈ�Euf��W#�XG���ϝ��OrP����:�`TG��@7�Sҁ���A`�����INoI+��Yĸ�p�# ��4y�\�	�L'o<��6 ���"Ϩ4G �	#u�4�yF~�&/�; ��=�������G
q_�N����" ����C������në���t|�FK��7��s���cWqJ1�ӊJs��*�$���'k�/�,�{�»�l��h*M����}ӷ��� G"��QJ���z�ǖ�H��V�����i�����mĦ'^�[3u%��r�����y�Z	Rr
�
�-��K�mo>����d,g]v�'p����D^][���h��.���+���E�3����3��X�� ����*;oz[<G��R�Cµ���"��+�\��p��(y�4@���^L�oQZh��M�:�3��d\��Z����q�B��zK���%�� ��"�m����;)z��2��4��7)���Ew��	-�'U/ �b#�9��PT��B9�\�̶�Q�^�Ճ��.���I�����ѣ
<ζ^�ҝ��W��K����5xJ�rb�wY�r�  ���U�j���M���n���1���8�^���"�h�T��}�.6~U�0U���R������ʞ!ΑBc�5����k@�g�<Cp��Ǟq��;Gp�~�I>�[��[�=p�*����@M��pX��ߦ]ؖ�R�`��x�-�P^����i��3���Ӊ�:�!Nә���{=@~~ӱu���A��C<�5]Nc�(b���K���G1�<I]=�X~�X=}Oj��~-@E�63��X������g��o6���2 |F��#�������I�_g�"��4NZ���*3���>� ��������vWC0��]�+D�|����8QNSr�d�C���(�v��N��/h��-7�5� ��4@��h�C��g�4�f,YjC���56�JS�!0��}�p0q�����%�����'ZK���?��ǫ{z׍L�![�.x,5�G��٨�C��.�@kj�_O��ڄ�w^����z�~�`��l؂F=q�+M�[ϔy�!u�U��܇�t��
{5y�98�p?��4��fr[FX ������`s�!�|(w��ߊ_J9�/�v>��x�� @��Zg�	>~�Fڅ2�}
M��ƴ4�}��<�5'��8?�Ez�#�3��3����,˯�R��N����3�V���>,2��+9g����U�o�XQ/VC=j�.�j{�@~�7@�*d`&��v�iqhS�#M�������*}J�k9�W�ii�Ǎ�rr�3�X/S�UL^��hzsN#��;�+Jp���W�H�^)����8e<$2Pշ�)�4`�Z|e�z����j��w�V�X
%ޙF]�@㣱��qU$9�*��{���&��0�(<�ۂK Ng���d���X�_]U�z
��y���Nr�� �0�<�;V�g��4M8{��U����=qu�ՙu9��Jd�zS;}����>�eDx|&��=�|Ф���~�>�7}���Q@-��O�w-�c~��`�!��������.ڷJ�G�����7�O^�x�tF;.N0a�w�V�&Ӥ@�g���f���c�C�$i5J�c�ϣ�����31�<|T�1��S���_�m���yG�      `     x�mV�n�F>SO1/ �K�7�q�u��@N��ɵ<��KsI���=�z����%E+i���jw�����T\ۦ�ɻ������gn,ݱ;q������O�Urz[S#���ٻ��9��a����$x�������F�� ����ɩ����ʡ�Jz�-��"���w��$P�~E�/�m�����2�u���!���5�0u�*a�l���e9ƎUb�l����LVd�"�am�[��e�R�S���~�]`r��I�C�����w��]Y:������\�}��>��/�Zѭ��r?��Q>�v���<�s8�ɽű2���گ�,5�ej�fOfWd�b��Zf�d�#��C��&�"O~��#�J���qͯ��Xr'L2��7��y�Α�+���@T�%Ԫ��K����	+�:�]���vM��ԭ}������Q�a8	��[�$n}���bѲ'\;88�Ɇ3XA�л���y ���1d�E�+�"��Z��1���:��"�哷����;��x���&�X:�4��+:�J��qW�*�����Tϓ�&C��'ЇFh���tu�l[K\���瀊z��H/��A?��Q�P�mS�"�8�&[f]۬�%��&9B[�p�w�~����K7Ŀр0�?=dJA���W�ɖ*�Q<`��o�PB��Wރ��Nls���΀jt��|`z��' �P+�S�\�r��%U���a�"�*"�h{CYV��"M��b�3"�57�����'��{�>��㡚؜�FMʛ�P\���N��_����|�[	H��ʵ�F�S�.%��7%NF�Q)h�g�D3�h/����r��01��0kD���w�	D����toԈ�>�p���mVy�!κ���	~����!���z�=�kE_bR�2|�E ����q�����1��ivhu����}Db��j�����@vXkT��E�����}4�5��Ө�g�ඖ�֐Pcp%�@�cdŒ"3����8���h-�F��rդɔ h2O��Q���K�����K�n�uL�}�`"!�89^čUvf����sOrC괈8�k_b�3h��^'}=��q���c$vX���>T#�� 5��e�q�eɶ�YI�8�L�)��Gb�F���4_f�f]���61����O�c�����E��T���ɻ���8���;� bPȥ>�p��/�}S~2ߠ��V�y2NtR���ˣ���8ʰ�ve&�a�=�KG�bv4���e�a}�;I��n��j�X��;Ab      b   �  x��Zmr�(�w�-$w���c�e��ୗz���j}0�K��4�~$}R��b�i=j���)�?�>��~�IA��D,ٵ[ҏNK�z�%H�1��?j�r��Pq�-XvK�F�Z�x���a��� w�~-3/j�-�.zJ�Oj��w��`qÔj>���G˹4ZFJ����u7���2ƈ�5�R��p�^K�n-�	U��V6���P��+�B���r%
�PerNגZC�E��qK}�<�-��#L{�r1Y��@��eM������օ/#,͎J�� TBƑ=����"�KBH��J����r ��F�OJ�yFd�k��g* 3�y
��&�17��Q���0�6�\�&���k�=:�c�öA[�Z1�O�Ӽǲ�yS�TK�A&��^��R���1*�AQ���M��wI�!"U��� Ӳ���p�eƥܸ�V��4y=��a��Z�Ü���4�$����|�&8 ��!�ĜC�m�p��K�:؈�F6��կ\�8���3�\��r�k��P ��khc�	#b	ظ�&���y��
�{,��C-�n`��g	rédܞ����� șĒ �4Eϗ������:�MfN�^�J�X��}q�������Pcɡi��Q��C@a3 _4�m�)�n�M�x}�@���l�l"3�����	��l�ɬA����8?F��]l3.�)B!i���p��)�r@�Q�X<�ڵ���� <���ʇB���6����DVN��h�r(YҌ&isƦ-p3���$*���f�3#��-�O���:T�2��:Wd;\�o��K���
i��,I�A'���N�%�_�F�&�i
l�N�=Vf�<]~��@��jׅ;�ܟ�m&�UD��7��~�%��HKi>���:���)�%=��+PP�b�M�ǒF;�&��R_��o�G6�����,(�25�'�+v�s��w��Z�u��z_\{/���(���j�|�	��5��#_`��=�|:?6�ֱ��kɬr�Q������ʩT(W1|ȵsy$��굙߭�b�����ke��n�o��`T����R{����C�d�je��X�ت�U ե��$���9'6��0�x�G 2%vf����t>Q{Ykݨ���;��Z���4��2~��x,vo#�6b�",B����1X������V��b,7Q���1����s	�pc�˩_�""�:����a�ۿ����r�'��`Bn5�t���������U��uk������t��ӕ�
�q8b�ڎz���u�+4�5)�	yġ>7�]��/�<������y��Y� ] Ȧ!��7�OdG,l@-��9�+.sK����g���t��/%�������&ֹ]��c�~eY����M�n�Jc����`o�a����W��ol��������5�x�����O��*\ӝe��(p{�TN^�O��d�Rwh8ڮ����c6!�b����gp��=����|�}0�����)3�}1N+PG-;��s0#dÖ��"�B�}�] �Q�r��1\�c�,2P� ���L]u
Ī�1���qG冸T�a�R���v<2h��������/�F^4���� ��i{Ö�N6�I��e+ڌ1E#��9�0���n�5ᬉ�z.l�sZݼ��H��|�5N?s,����V�t��̣�o���A�{0��G�(��������)TK�<7X hȳ��\r�wnRXo=�ڬmE�wܶK(�/ѓ��b�4��=yѱ�,$�v��N�mh(9 ��hB�h��ܒ�Lnn���AjUac^Z�M�ǎ�'��\U��
� RA�������qz�����H�;���A��R�+�ZekE�D����{�n�Y�A�=��]�L�f�"��g��jn)!�)m�z}T�>�	5ƷG�y0�p�]:j�}Nz��Xv}�� ���MR�]�}qA�� ��ӷ�n0L���l+S�=($����U<_>^���`�nFT�鉛5V�}x�z�h���1!��yb��Ů#;�U͇'�P��� ��o���<��V�����+�ᥜ����h=c�K!�t��)q�<�?�EfA^т��ڣ�['4̓��d��*X�1����`$35����Ϳ���Q�]�7���Ѕ�F�6"�>J����]�|���)��Z��$�XDK-���sxPg]�x2|�)rq΅TeZ�]���)�|~s���>� {��n�T�/ c[p*��_��s_F�!Ȋ����b��B_F�{Mqw�zx�1۪%i(���M�@�g7�"c�hU�C�vP�����0��|n�&f�j�_�yT�k�]�P��A\v5�Q�Z��ߏW}�r@Uѷ�����9ê/�,��;Zzq.�W��e�˞�������+�Q]�#�u�	b����@�B���x���1@��VW2�,�L_TE� OX�a�i��W��|���e؋�AW�+�9%����u��/�ԗ3���������~�o9��i���
f��#�����|�[��y؇�8Z9�����|�Q�_� ��#��h՚%�A�)oZ{
;���v\���r�7���xC~l�-�9���g���̌���ߨ[4&Aat%�¬U���8o��{*������ ���7s��P�?r��b>��`�K����������sܾ[��Nѻ[SY����/^W`` ����5�c]~��s���kz�2Օ�G2;�p%p?om�[L]�����-�z!U�8��[k��[��@&�B��<+�~��c�Ϗ��ȵ����4��ӹ�r���j^�-�C6���k��<ݱ���[Uɳ*�'ʇuk���O.|岏3�ݻ �w:���u����E��پ���q��x�=�֫.�n��5V�̀8¥ �ٽ��k�ڍ�XѾ7]�7��ji��e����Boio��t$��O��?M2�      d   �  x��Z�n7>�b�@h����,+Q$E�Y�B�ښ��t;�ӂ��>�>�wA����\���#�U��>�6�����ҋ�����婝�,��_���B�e�%�B+�\�7�ϫ�._��v��uNv�Rg�������]5}�}�2o����'Z�NȚ��Y߬[��c�n�iX:W��tg��v�����8T�P���o���I?<6�"+����O��rj��vyۯ�V�*U�2'��V�^���4#{�t�g�����!�ǩ�,O�q�l�P8�N������]/����>48.����p��o��S38,
�Fi��u������"S�=����t����n�@���K��G�xح�ayb��9o.W��y�t��m�]��i�:�4�J{Do��w�4���+���p��M����������҄�����Q�K�� w����o ���[�"3!�e<��S���`+���w�u�}\�����}\5݃-�1F���f�l���?wi_�Se�p�.sy�w;�`�p�&S&�'?ݸX��)S�p�&W��{k�Y��i;����xp϶�C��?��+4�2��>b] f��J�� ~Ӧu�x�83Ǫ�U�1F|������C$��J=�'��h;&�ή˰�T��C|�bmw��uI]�����he�de�4UiF��|�.)�tŤ���#z׿�5����*-8�N����vZ��(���z��<9�a��R���f��B���,�HZ���1y�m7������*�^6�YH�,Q���"��K���u�T�UF\��\�ހ��!���yP��햯���Y� ;�K=�?��������\��Mf��r��tF5�U�Q=Gt"}��q�ψ�V�J�2���$���`��J��X����o[r�*�Քu��}�|k�U�!�@F�L�r��u��7�@�l��k��]�����Y�|ʵ�M���]�.B|�F��4�y�r嫶Gᑒ d��2y,(� �M��ܣ��A�4+D'/_���k�Yg�*�R�-��<
���J�5�F�A�VEB��N���I���*b%���*�PhU������8+�U8eaT�Rĵ.�ڮ��C�
�c s8 �1u��"gF�~�v�ݧ"%8��q��JG�aċB���c��y�qBQ���3�C~�����J�����'
f�Z����[��E"(Uj>�o'�'d�S/G��C�҄z�z�~yٿ���Ҩ2%��X�iߖT�T��P��.�:ʿ�O�엩2�S��w��2��UYP�&d�����*�{|?4�E����"�"����C?"��7e��:V�i�e�$���ZUೇ��4�8��p�*Q�������U���Ɛ]�V� �6��.��Q�G��y�Hs�0T��(pDu���T�!���O�[�U%%�'��@��BU%��%t"�r.�\D*��_����^U��g�&�:�_U�j�h-\D��@��ڃ{я�ߗ3x��Z�z��� y�j��{��A�㛬SUgT. �g��ՙ��y���(x3��ڰ��-Jހ��g,T�.gM����o��KU{|�H�!�+@Df��)���qJ !^����0�챥Q �:A��0'P�7lq�HRb�vMv(V`�=j������&��p�m7q	'8�+�홹0a�����G���LM�T����q&� �m���� `�L�:��n��P�x��#-y�zr4����߳Q#-: ��z= �[t(��#\;�E��������d�v��T�k��Ϩ36cR]�h�����No���c`�c��4��.^���-�J��Iu!�'d�+lv�ĖV�䥆5$};�ਃ�@Ƕ�S5�ԅMLn`D�a_�b���:
�ƻ���"e�K�����$�Άv�W��r��\ڄ!�n�����	��]��13����&�En�S�Y7ö��ʦ�6�0W����k z����Ů��1�I�k�N�>��E8��@C �����8y��� �z&y���AJ��U;���S�L�*�Mk�dB<e:�2�����H�e�tYu�j���L��-�y�.�9!��4I2�$2��fEFJA�J��]�LF2�����΀A�iRfg�~�I�S��L�$yI���L�*����'�~�ȃ���l�B�C�YȒ2sȡ��}�.�3�-�*�r��4�2�}ǎF!N� '��Ѿk�<5��Ȁ p�Q�Z��Ŷ��M�F#�n����,���t�y)�sb�T\ 1ɴ7�~kGV��j���������6�5��`��c���F8�4>��x�e p.=���p)���Yg��1-s��M�|;��֋�T�&wk�>\���> �4��W�;ל��;B��B����H����(;]�:mV��^3�XVB�N���H�e�I����hwk�z@V �$�hZ�r8#f�	����OlJ�b@��ݏȲ�V��xz`^�V�p�7��2���l��:	�臭��;'7S��{��F*��E�xPz�(��Gܰ��~� b��wŧI�	V����Ӥ�d��Г� >����
����%�K7�-�ء���a��Z�cp�SE���"� ����s�����
�OG�'�K�!(?M��&`^�C��*��%��xI�����R��t�ϧ3q�(;�� o׮d�!~�VqBya��l	*����On��Wk<P|�$ߝw�Ό�e��I�qV�X���I��k����f�#J8���JŲd!4�&��%����q(?�ҏ*L�U��\�2��A���^�)=u^�s�A�i��Ǟ�e� �����G�ݫ�G�;:q���;;�{�H�ȧ�� �g��čfX�G�'x�˄���x��� ���?�+ɹ_���'D־�3�p���5��|6|�<7>�*���������͖���A��`s>^�.%\��u�@ɇ*8�_da��#0�a��%=��Ұ�+�Lv �$�P�7� n� �Vu�0i!� eҀ���y������s����lx_<�q��c(���w'eЂ��vk���|2P ��z;Ƚg�c�{�3	_D�-�$d�0�=�Hd˳B*ol�E�|Yޮ����t�{�3�\H�||�g��=��#��G�0��,�e@^�h�AsW�P�G�pvn�o�*�&=x��`�4�r�����(�]�Ǒ��!�w�iWMl�%2��Lj^�˫��F\p�S�5�A�3���	!hHRk�ڭ9�-�p�c����#,��	Ot�*I��S��Q@{�"l-hH��
BO�ZАt�-
��|��<M��3��@��y�p�'y!hHR#$�-Qh���&t!�灑��db�<�<����Ġ��o���#�/m$S�A��3�J� f ����_�P:�b%'������!�$�<��P�p��3$�B�s�ݴ�|�'8� �'|f�(\���_�WV�Y�`�G�Ћ��߇���Mw�#ʰ����6��ǻ��w���3�Z,R���w��Y~g�m߹qA^�Gy�)���f���%��I�$G����Z�.��Z6˳q���� �8�.�� 7m��W�������,9�ԧ�]b+�6͇!�<�.��������E����6O��g�Htu�;��׷	]�� ������k0C�}�l�7V�?��l��UB�}��ů������|���/�K��      e   �	  x�=�[��(C����������-S�*	��$�dϧgλ�����w�����w�x�p���ɣWs?}�Mo���|�{z��'�3����=����=kh���q�?R�nO,-]:�^�����Џ~>���yzt�ͦ�Ɠ���t��S'm2W�%Gg���̩3G��.�~&������w��'c�-M����סݱp�q�ðaM����;���٤M��P$�kg� =�ws�ڽ�σ�S+C/�6R<��9R[����%��9��ga�����W� ��7^>>��Y�*tڜ�\�kKO���Cg�A���6k���v�@Fȍ��
�"��|�����
>�u�;����n�U �3	Y�g��+䣃�N.��O�qR�����.B�P(��1����#x���.�<��Cq�W��
�|Ս!/��j�mF�Sf��/8
�&�n�����h�~�f#�:�:���L�8:����l�eS1��' �j�[�e������H�&Y%X�y����T���ޭŸ(�4�C/3V����hdψa��&�|��A��%�J��'j��g�Nă�¹������`�x���$�\W`�T1@QAy0`�>)xo��k�L'��"�b3-,�PA.!hS} ��cE�p{���1P���Ň8ș�(J��Y��
�f�-����?��r?�A>�֬)���<Ex �/�	Z��u*�a���wG�~���$]��,�����{�I�H�T��2�G�I��c���!�M�ɀ�k��NƿD��e������N��W/9@���]u"{I���>�9/%w�K~�%GC�:�K�M�=?e�v�5�+�X��]�k�B������1��>D�)�L� �N=���]�%Q[��#������%�"�%O%DUL��h�ڶ�bT���K�B1�s�O�jaW� �pJX�^�ey�c���(w�ui��c����I�	�𵘴��]�iH���~7��t ���S�ٷ�COsu��C&]wP�C�ԝc2.�T@�4�$"4��T���t�Ե+�ER:�`g�N�5t��D��4�ށ(�?V��]<�zq�d)oy�w�_�K�����J��'��nȬ��#���vV8*�٨@ʁ��ҋ����34gX�$"ƛ �\�Ti�R`�:�&�b= ;�� !��:ki�>�kq�H�*}�����&7�X�bea�eM
�zKэit5�,A�^�]�N/l�pu�"pJ�Q�Y؅�ҕ�����S<�D���.K��-�h��+����]M	������*%�!���c�A�O�֙��u��Q��
��Rl�m���j+�҅n��hLפަ;|�fvN[�ӆ��@;�^��ץ�X�?����8ܞ��gb�I���*�(d�Sb�{��9qbc]�>���ۂ�?�y9BI�����uy�64����B?�ܝ;�g���d�[e�xR��;1�Z�"��H�������C�mF8�pA�
*b�����Œ�I�zuHǆW�(��Ն�b�B��)�?��u���.U�W����t�M�bX�i���p�
W��C�G+���4<�s���J|�����t��^r�fj0��O'���?B�t`4���u;�;�w��Mq��3�= �|Ɣ S�º���������o��Տ�����۠���7�Q@(�����c�Ψ���s&gL�� "Y�,��9�Ogc{/
�q��ʬq1�4�����K�Ê�ayn��Lr����4��ueU*a�� �R�Q^F(	�A�g���	�X$4��.㠵�3R1����ԣF�_�o���Uӎ/_��͞���u-�M#�Y�p�[e<��\�C�a?�-�,5U4�8���t�Kq�wLH�*�7�a�p�;����4���j�|s?a.{AX&�ui]N*�t�F�:jhY|����\v;���S�s���ۈ����!�ߦ�H0z���g�r��ƽ�ȑ7��Qi:[g��ɭ�Wܧ���0�K�Əa��$��?�a���Ƿ�z������)7���ϱ\��׊�k��1I�K�מ7�:0;�g�+�s[k���\��G}�����˖ԯ�a��f��[���jk�Y�m	�nw	Uvi��Z�gߋ@��꒙�B���t'o�zr ��/+�2�f1�8V��ʤ�.������Y�N�v�7��2e�/�雰qoe�۱��I��}�˟�褦'��qϗ#��	����$��i7*SX���{�������z/�ij-ې��)�F6�b`�{�~�-�[r�����c%
�]k��g�:�hkՖ¹���ks��Y�����uUsjj�U.������_W��v�%�O�ώ[.�����`f�LW�Q�/ԩ��rD�)��?V���c��i��}Z~G���k&ٜn���G�Fl�����?��E�      f   E   x��� !�P̍DM������E�ӹP��L�r�E%$V��k��-�[5;}�f1<�G�N-a      h      x���I�$�qE��S��b�6��� �@����}��w��J'�����Rؠ��:X�?X��{����[_�|����_���������Y�1Zʥ�B෥�����j���[j�]D����R8�J�5���c�[.#�#-�r���$�OT�qXbU�*?�G^7��A��Ϣ�x���^,��̎�n����z�b,���vX�Q���r�DY�5��i��Q�і��q�EuG'>Bú��s9�zV���I��7[��b��֏��<��ުji\a���u)1,�B�W��h�'���T��zĸ�������w���)q����8��ÏgY�{�~��uT;bZ�ؿb>�brd�J���<R�b\U>�Wwl�A�Hi2�d]e׮��uO!찦���܎�*}�_�l?V<Sh)Qt���q����:��<j,��k�p^}]W��z�EDN~��jk��tı�˸�tg�Y�J�G�8��a��������FĢS���;,���iG]��Sl������bC�wn���q�5J���#��������	6�O�������ceiw�j���~���y�z������OoZ�WBϩ��}ix��yy�j�'�ì;:[G>����6���8ZkVb�W�<��Vw�n�.��s1�}Tn�pd5��{p�EV���\J�G\)��ґ6�qgY�=�o�Qb�#	H�z�bC�އ�{L�����_M��k��ٓU� n�{^��<Ҧ����]�S8ɐ���I�Z��,�ֵGԳ���*�BߑV�3���@���8��F�#�zo����	@`/���8���V�/�脷���_��Ԛ�h�y�zڂ<� �uulu�=��>�Ŷ=?"��8,��:�#oz�=��+z�UP�ԛ�j+���y����'��{���y����qǯb�xB� *�md���د{tu�FI?�2x�-�#o�ޮ��{�G?�#����Xγ��g���c���u� pޣ{�\���6�#�Z���,�AV��=���E'<]m-�/��<ؑ7|ߗ���*�whl��1�u]���W��T��,��_-�޳�t����[.@i�%&e�9�j�w�ѧ�{M=�V#�V��h����F"�N��y�z��
�N|��B�FT�p�}��2�x�(=�eA�W�\]<������\$��{�+�s1A�|/��/��.��_}���9��G���a���}�*���/��Ї�G"RZlG]��g�m���<j�-�Ǻ��@��`_OVl�/b���+'dwb�E�)��JG����n�-���I���t"��ۣ'���L	�E���щk~�ǘ"�
�{�u�����1C#5w�J�<��p��}�(xU�kl��z�m_pN�l��Wj�!u�9�.��b �Ձ�G~��G[����/z��h�<8>j��k۪�i�Ѯ�e��p��&��h��7���_.�A
>��2:���K���X��"ɀ&)��m��jw�^�.�%v[FG��ހ'w|a�lg�]"���m�{���}\Z׷��DobZ[��|�{7�d".č�Y`�:�✲�{��s��Gr:�����7iXQL��7���W��q�/ߣ` h�=n,'���+��G�q�O�Aϩ�r�數ݷ�}��яC`��RC81���7��7�2����:��r}���+�;�Ǌ61t"7}�U�cX��..T�q�10�֣oy���_���	2+g~���+�qy�L��)b�ym�~�Y��V�\8�RC=����x�|�ٳ |�)��j�[�.:�b��������[>Ǯ� 7��l��7v��clz_�\�\�&����X�H�1V�CL����=46�g�6���q��my��Xwe����(�r+Xm�wt���c�c�%��Bp%z�y�_O5c����]_`0H`Qb�~m�[���_"�CXk��[�.�ɓZ"��Y�=B��Ї"�-�;�\�K9d<ª�x��XQ��ET�fS�
�qv��	=�CT4�rA��~
WL����c��QK0#���p�&bf5��e ;��-��n"`��Ĵ1�*U!W���@�Q��[ l��z�n<JA���	ﺀ���kr�$�5+��K�裔v� X�����g/>���mq+ݪ,��4�+�aL��!l�݆�&�b},*n�Irۊ��p�r��G�̭�9���s�~P�R:N-����V�c�Z�w�l��4��B�Cz����{��gqa��d�Q�)��V�����]@YrjR�`�3�2�������![*�b�z����oA��BRp���Z�g�ľ�\��(y���(G���.Eo���	��H%�հ���U5�m&���:�,}����k��U�&g��%���ƀ�� �JD%P����>��[q+n��\�PnB�۴�b�V�\���P��F���5�r�U�I�Kj�H%��� .N�T#W�T���Y����{i��(�N3[*;t+�W���m��tU���R�Ӏ�GL����\a� 1%\dfa�4��`k��:G�3�caRZهDg����W��
H��V�M�� �jTM�W�5�W�ؤn�����Oa��z'd�e
�[- �%?��"��JӢ�R�%;�P�G�YvH%
�T�l�ꊕ_����=�e��r:�e�{�T�Q�!sJ��jrA�����w; ���ͼZ  9�+�
�L��2��n���#S/a��,���v�ʸuf��+jۄ�Ku���um������aN����ҐZ�6W�����l��y$չ��B�fa��p����	����@�����a�P��u~m��6 .v��؞��@!���ƽ�[o6�¦eH��4�v)��ِov��h&!rڽ(#��ڰ1���
R��s@�p���lfA�؁{Z�ji�gnZ�"a:�0��E�ʕ�����Ѧ
�ڧ��f�Z�pSp��3Qi0��
�^�>�q�Y�.l� [p�2�x@�2aW�LΚs������60��3��M���r�<�J�����LE˚�[8|�s�k��f;4��8&�&]@]- q��Hʜ���)�b�rAia�n'��0��+@�ƄmI]�%�
 ̬��f�k�.��ݦX �D�S��
�´���悲��j����!VW�N��T
�*Z$��f�
`H����+p��ǳ˱�4���m��f}�Tc"��U.(�����3��j3�JX�m l�~�B��.��3�+�GGl[.Ha����˲ �Of�%t��^��k�k�N�y��l�c��oY�|~QR��:T�e�f�Ą/�֭򍎫�p~TaZʽv�4��C���X�V��	_j���+٫q�XxD��͂GQY���:p4*a[�zV�YQ7F�����+�նlhX(��&������M(����~�M��)�>2��pBh	��o��~�M� qL�E�}s��x@[\��m�!����.��
�el�� d��0�Q3����4�-稆wb����ʶl�]�� RQY�3����K�����g�j#����������m��U=WcyS�[��<���S�­�^��kCz�eCõP�ڦ�2&��(�B����7]&\*�	�Wgfo�LVwm{�b ^l�R��u��c����p-�ؔ3�H[�w���Ƅ�B�\��ᣵ��N*(���
�7�ի,}�4����^n׸�����[���Tc�������yڔ�XY��`�Q��*b�
�ݸ	�K3�7T��r�c���m� n�|=+���#lc�a)��m�
��6�?M�Մ����rq�hD)6FG^�m5�ԯ^�oFU��[M,�ȉ�-�d7:�B7��M�ז��u�k��u���Ei!j��OC����� �������H傔Fا��[�1��D��֩�rA�Z�s/`���=MZĄ����\xЈ�Q	Gы4�� ��?'�.���a�u����=w�K-�xFS��il	a�׀⳺鹉�6:�9����R �  ���gx�w��&��8��1�ܦ[៵��F)m��m!n�fV�7z&a�,]u�hd :�,��"�ŭ+b,�~~��2p�5i���l���m_�]]¯���"�
�l�	�kMؿ��5���LV�V�1����"�d=+�+(m������mĉhsnSi�0��<.��\��Y��m5ᔮ�.�N��<�|�d��ׄ�B��#/c6�G5Qe���E�\L�(p hhxp�[Mۼ6�bzd^U-2�ۆ{�?�4p�=.6���Q�Xr�:��l5'��ʴv�9�$lEAaME�n[���iW�i) l�"��0�τ�;�=�[- օV��2�ZE�:�_�.`���₟��,�,R{D����q��nDG���`M�\���Y���0��LX���6D���Tη���L�U�C5��}x�!�+�4Qվ�������fy�wEw�v�Q�����+r�_X��G�B�j�kq��;":�^ՔqlY�v�	��}�O��
�f-���oi�[6t�nS�`d�o�-W��!\g�yfB0#i�Ɖ�nþ�,w�i�M�N�q��Ι�m�k�}m%)��{�JK���aಲ_�pۢ�����:��(7��䁈��+�9�}�m�7�-�My���d�
�[M8�+�����*|F�Va��i�7��$���������m�а�;#�e��2s
a[E,_U�-�*��Cu
����m�7�+tw]PojV�qT��ѳ�&�'�-|ƒzKU��4���&����Ig%[��>�l�U���,�P�cQ�#��	�^z�7��C�*kF���j�=j���P���y����ǿ�����?��Ͽ�+��^U�1d�[��o[�����$�7 yq& 4���O{ԉM[��[ӕ;�u}�f�u�C���i��}]b����:��m_��7��lʄ�oK	�֞�`�X?��v^e���=�������i�6^˫�պs�ja�Y��)V��'��>V��[�|��S5���aL0���b��lue�F��﹣	8�m�}��G��+�����Y�;W�V�;tz��~T�Q���L/8
�҃�vB ~|$T�VV��P/��$�e�R�4x��9b��j�5W��_<^&����d�Q�N2އO�(�g�.�h�Ɔ�U^Pb��P�:�G|�ĺ�@z��X%F4����ZT�w��gMp!���Bj�ʊ�J�M��>!8��iQ���T�=?��������+;+��[4ڢ����TU�g��j�b��������Ab�:6,)X�B�;��<��Q/���zr*}�����B��b]̤����*�;'��o�-�AM�l�����������w_Y�^f
�M�u�ۣ�=�bx�n��%��C��lcG��x�����P�߈	���w䙺��jr�3A�jo��GK�/YnM��n�x�0������#U%-�{���p;��)��4���4[+�'���&��V��"�&J` �Um��ﳗo�7���ąn��ųB�������.��~���e@������2�u}��-^\9�"H��G��!x?��x +}��h˺�M9�rӯ���:`3 �(��'��{dsl��>Y���BP���QЎ����M��������� ���O�/]�N�9�Sn�=H\�m-�GM���j/��d�����	5�k��-�e�9g��m[�j��o?�"��!g�LmH��G1{����u>{7��z�N�]�}��𲡇,�P�i].K�L���	~�MYO��G�4ki�������t�P�:�X�O�qޣ����UK�WEd��/$PEu�\��=��Pzԣk��UO��ob����=ACCI~��'�R�;i�Y'\?�'Rq<Jʧ2���������!J�z#�΄����@7�բ����"��Ħ�TAj���v|�/!� ������%b��>�޵����iۡ\}�_��,�iێ3�GzT�'�OW�{t>��:�m3�`"v�G��Я��P*7��U�MC˔r�Ȳ�/��<J4���_I�C���z�/���^�x�G�S��3ʽ�DdG�YO�fܶ�$�)v��o�燞7�i�ؐ�M!d�U��g��{,m6׵�	�����<��L{��RO	�VmBz�m����W�\�)��^����=-�5�����GW�=�����Ū^AV�l�j�է��Ӷ�N�E���kD�@i�!b]1���L˝�OWB���	~�l)Ɨ_�用���e�?W�XJ��&jG�瀙^D��(z"x6�!?�z�bm����y��ކIJ	�zQ/�Ƨ��d#qv �>:����������0�W��*���zS>�Y��W1t���B�*'�,4횦IF=E��e��X��**X��'@r�w���9=�W�m齆��\��@��E�^=��k����]�?s�����v%�͑���s��w�İ���L�x{�����/�W������&�*'�8�G���'�{���s�r��U�mp�ڷ�މ$�W�:��/FbP{6��~Y~�#�%��/��o?ƮS3���,TKV���\⣇1u^c�	�\/�$;�ڹ�Gw�Χ�n-z�6c�?ao��_w�W׳GzV�]d��o��J�
�}����y����O��ء{l����z��E5m%-6�N��|Ǵ���� 
&�0�r�1�7���.�反��T��# p���kg�VN�ms^zhSMQ��J饫����9���T��Q����,Y���_q�Ĝ|��������B�����6���A��ɇ����jA���]�q�Ln�.9�̄�ӧu�($>'��~=paY�����C��:$����h���\�Z����M�Y�m��
|:�܎.�2�yYu������g�����S��#�o�ul(��=��8�mW�x�Z��:j��}����URfi�ܸ��=��� <��KVL�!Q�[xB/b6k����d|�6�l������ǟ�ˇ_]㻦���0a��}N��U��(7r�ǒ}���۞��V�S���kU~�0A�j4������߫r�s���rV�|�V�V�~o�A*���P���C��Bݜ2y�r�M$M���*m�*�bB�-��$S4� 	�A��ա�,�������f��#4�nUhq��Y��B��%}���<�>�%���2��g�A��!e��V�>���u�҃m��à����ۭ��r�F��M�i��C�I�/�gj�+U���Uw�j�ȟO�����2�C��2U���:�����P�ڠ[12R5B����DmS8AE��(��[c��Lp �srGڞ��?�V�6�NRg�p��%�C>�>W�3aZ=@�144�>>:}�A?���.t��.��6�l���\�����q�]%P姶	d�p�?ߠ�s�>����޴�ͷ���eΐgKJ��k���v閊���ݮ���M�g%����V�^'.�	��i��D�V�����'cz���є�G��)Ɨ(�kR��ɵj�#mS����ʠ��4
�^H�p���G�ȏ��JgpL��6?5d�8��:���J��6��@�x���i=��>+�!G}VE,CAp�� j{qb���%�\��2���Tk������~	n.Vf<�|�Q���6i\�~�4lĬ��p�MQ[o�Ŝ}����lE�GV�)j��<ͅ�oЭ�ǢJ%�O]G�wDmHf��׫��Y��P�]:0��i=�b?;��'�A9^`mߺ�Uy{o������{�JN����tq�]?�
sAzeKM�A�h�-������&�[��49Dm35��E]�$4[�^M3MA�a�+��ge�ʕ&qr�j���I}�$m�4�V�zQ`�b<~F������t��>O��2æ�B���������{�n� �f%q�	�l����?�3�PU֧�u�Ct����A����!)L�Y�D��N��"�QJ%��r=+x�ĳ�g|ULŋ����q���*�g��G�'`�wXG��)�����8����H�      i   �   x���M
�0F��)r����'�p�&6�H*m�<�3�b������ ��� �^ƮS��2�0[��t�j�U��ˁ�j�����σ���>8�}D����&r���k��0}8���N"�[�k������W��ub� ��W���F)� 3,X�      k   �  x�E��n�0�ϟ��OPa�U�*Q�ժ��^8`�`�`����*�����gF`��r��/����o�2&��[a�3��V)X���M�z���O�0�N�?��.u\ r�c���H��Y2�Ŷ��O&4�5�Nġ�� ��Մݨ�m3_��M�'{2��MN9�O~��?i����j+M��-��`B`[�|�bߍ�P��k	s�����U�3$���!�Q)��̘�`ک�&;���;�s\��{�Sn�&B��wb.q����.)�?:�9=-v=�K4�Η�R[�������~�L����TL&x�����o~��-aR`�2�qwJ��
RB�{��sl���{���ZE�yĩՖ��d��q+Vj�?1=?G�hӦ���	��c�/Ӛ�?      m     x�mRMn1]ۧ�����2���Z����7��W���ǀ,�c��\'ĩ��h4��{�1t�F�MF m"W)�7��/��nz��3\(j�#�q!-�裿���!��e�G�7��i;@�`e�[s ˰@��Cv������烓<����mӀ7ZQ�+����:��g߇Z���FSg�TcUn�~�����bۅ�g��!��(���2U�U�c}�ww��g݀�3�aR-�H�r(��Wę��2kL�ZB��q�E6�%�·�4�w��%d��$U�r8-�E� %�ѓ��6���|y���I��f-լQءwq��y��C��?�:mMM#jaf�	�uN�a������� �nu�֦4Ì������|ʷЧ��[�e�
V`��"��w�˰��"�k_�z�NJ�hI��^a&�Y�FX�nw�r�������Z6��:�\a��m��%琻ԗ��]l���4�*Y�¸՘)�r��ʧo��O@R4��Fט�d��+��\I�      n   @   x����P�j�0��}م�	�_�Ɩ%�ш꼵�S+5ѿ,4�M/V�gP�-���� ��     