--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

-- Started on 2021-03-29 11:26:32

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- TOC entry 202 (class 1259 OID 66398)
-- Name: animais; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.animais (
nomeanimal character varying(20),
codespecie integer,
codanimal integer NOT NULL,
codanimalpai integer,
codanimalmae integer,
dtnascanimal date
);


-- ALTER TABLE public.animais OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 66401)
-- Name: consultas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.consultas (
codanimal integer NOT NULL,
matricula integer NOT NULL,
data date NOT NULL,
diagnosticoconsulta character varying(100),
codconsulta integer NOT NULL
);


-- ALTER TABLE public.consultas OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 66404)
-- Name: especies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.especies (
codespecie integer NOT NULL,
nomeespecie character varying(20),
expectativaespecie integer
);


-- ALTER TABLE public.especies OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 66407)
-- Name: funcionarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.funcionarios (
matricula integer NOT NULL,
nome character varying(20),
endereco character varying(20),
email character varying(20),
crmv integer,
especialidade character varying(30)
);


-- ALTER TABLE public.funcionarios OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 66410)
-- Name: medicamentos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.medicamentos (
codmedicamento integer NOT NULL,
nomemedicamento character varying(20)
);


-- ALTER TABLE public.medicamentos OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 66413)
-- Name: prescricao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.prescricao (
codconsulta integer NOT NULL,
codmedicamento integer NOT NULL
);


-- ALTER TABLE public.prescricao OWNER TO postgres;

--
-- TOC entry 2852 (class 0 OID 66398)
-- Dependencies: 202
-- Data for Name: animais; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.animais (nomeanimal, codespecie, codanimal, codanimalpai, codanimalmae, dtnascanimal) VALUES ('Glória', 1, 1, NULL, NULL, '2010-05-05');
INSERT INTO public.animais (nomeanimal, codespecie, codanimal, codanimalpai, codanimalmae, dtnascanimal) VALUES ('Vermelho', 1, 2, NULL, NULL, '2009-08-05');
INSERT INTO public.animais (nomeanimal, codespecie, codanimal, codanimalpai, codanimalmae, dtnascanimal) VALUES ('Juzz', 1, 3, 2, 1, '2015-05-07');
INSERT INTO public.animais (nomeanimal, codespecie, codanimal, codanimalpai, codanimalmae, dtnascanimal) VALUES ('Opalala', 1, 4, 2, 1, '2018-01-04');
INSERT INTO public.animais (nomeanimal, codespecie, codanimal, codanimalpai, codanimalmae, dtnascanimal) VALUES ('Branquinho', 2, 5, NULL, NULL, '2017-01-05');
INSERT INTO public.animais (nomeanimal, codespecie, codanimal, codanimalpai, codanimalmae, dtnascanimal) VALUES ('Quick', 2, 6, NULL, NULL, '2016-12-31');
INSERT INTO public.animais (nomeanimal, codespecie, codanimal, codanimalpai, codanimalmae, dtnascanimal) VALUES ('Morango', 2, 7, 5, 6, '2017-12-20');
INSERT INTO public.animais (nomeanimal, codespecie, codanimal, codanimalpai, codanimalmae, dtnascanimal) VALUES ('Chocolate', 2, 8, 5, 6, '2017-12-20');
INSERT INTO public.animais (nomeanimal, codespecie, codanimal, codanimalpai, codanimalmae, dtnascanimal) VALUES ('Salti', 2, 9, 5, 6, '2017-12-20');
INSERT INTO public.animais (nomeanimal, codespecie, codanimal, codanimalpai, codanimalmae, dtnascanimal) VALUES ('Jazz', 2, 10, 5, 6, '2018-02-28');
INSERT INTO public.animais (nomeanimal, codespecie, codanimal, codanimalpai, codanimalmae, dtnascanimal) VALUES ('Guto', 2, 11, 5, 6, '2018-02-28');
INSERT INTO public.animais (nomeanimal, codespecie, codanimal, codanimalpai, codanimalmae, dtnascanimal) VALUES ('Helio', 1, 12, 3, 1, '2018-03-01');
INSERT INTO public.animais (nomeanimal, codespecie, codanimal, codanimalpai, codanimalmae, dtnascanimal) VALUES ('Verduz', 2, 13, 8, 7, '2018-03-01');
INSERT INTO public.animais (nomeanimal, codespecie, codanimal, codanimalpai, codanimalmae, dtnascanimal) VALUES ('Rex', 3, 14, NULL, NULL, '2019-05-03');
INSERT INTO public.animais (nomeanimal, codespecie, codanimal, codanimalpai, codanimalmae, dtnascanimal) VALUES ('Valéria Ana Sá', 1, 15, NULL, NULL, '2015-05-07');
INSERT INTO public.animais (nomeanimal, codespecie, codanimal, codanimalpai, codanimalmae, dtnascanimal) VALUES ('Janjão', 1, 16, 4, 15, '2019-01-12');


--
-- TOC entry 2853 (class 0 OID 66401)
-- Dependencies: 203
-- Data for Name: consultas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.consultas (codanimal, matricula, data, diagnosticoconsulta, codconsulta) VALUES (1, 111, '2018-02-10', 'Dor de Barriga', 1);
INSERT INTO public.consultas (codanimal, matricula, data, diagnosticoconsulta, codconsulta) VALUES (1, 222, '2018-02-11', 'Dor de Barriga', 2);
INSERT INTO public.consultas (codanimal, matricula, data, diagnosticoconsulta, codconsulta) VALUES (7, 222, '2018-02-28', 'Hepatite B', 3);
INSERT INTO public.consultas (codanimal, matricula, data, diagnosticoconsulta, codconsulta) VALUES (7, 222, '2018-03-01', 'Hepatite B', 4);
INSERT INTO public.consultas (codanimal, matricula, data, diagnosticoconsulta, codconsulta) VALUES (2, 111, '2018-07-07', 'Unha encravada', 5);
INSERT INTO public.consultas (codanimal, matricula, data, diagnosticoconsulta, codconsulta) VALUES (1, 333, '2018-03-20', 'Dor de Barriga', 6);
INSERT INTO public.consultas (codanimal, matricula, data, diagnosticoconsulta, codconsulta) VALUES (8, 333, '2018-03-20', 'Indigestão', 7);
INSERT INTO public.consultas (codanimal, matricula, data, diagnosticoconsulta, codconsulta) VALUES (10, 111, '2018-03-22', 'Indigestão', 8);


--
-- TOC entry 2854 (class 0 OID 66404)
-- Dependencies: 204
-- Data for Name: especies; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.especies (codespecie, nomeespecie, expectativaespecie) VALUES (3, 'Mosquito', 2);
INSERT INTO public.especies (codespecie, nomeespecie, expectativaespecie) VALUES (1, 'Hipopótamo', 12);
INSERT INTO public.especies (codespecie, nomeespecie, expectativaespecie) VALUES (2, 'Coelho', 5);
INSERT INTO public.especies (codespecie, nomeespecie, expectativaespecie) VALUES (4, 'Cachorro', 12);


--
-- TOC entry 2855 (class 0 OID 66407)
-- Dependencies: 205
-- Data for Name: funcionarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.funcionarios (matricula, nome, endereco, email, crmv, especialidade) VALUES (222, 'José de Oliveira', 'Rua Verde, 58', 'jose.oliveira@zoo.br', 555, 'pediatra');
INSERT INTO public.funcionarios (matricula, nome, endereco, email, crmv, especialidade) VALUES (333, 'Ana Maria Ritz', 'Rua Azul, 12', 'ana.ritz@zoo.br', 184, 'pediatra');
INSERT INTO public.funcionarios (matricula, nome, endereco, email, crmv, especialidade) VALUES (111, 'Valéria Ana Sá', 'Rua dos Limões, 586 ', 'valeria.sa@zoo.br', 152, 'clínica geral');


--
-- TOC entry 2856 (class 0 OID 66410)
-- Dependencies: 206
-- Data for Name: medicamentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.medicamentos (codmedicamento, nomemedicamento) VALUES (55, 'Zorá 5mg');
INSERT INTO public.medicamentos (codmedicamento, nomemedicamento) VALUES (588, 'Fliur');
INSERT INTO public.medicamentos (codmedicamento, nomemedicamento) VALUES (781, 'Benafler 80');


--
-- TOC entry 2857 (class 0 OID 66413)
-- Dependencies: 207
-- Data for Name: prescricao; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.prescricao (codconsulta, codmedicamento) VALUES (1, 55);
INSERT INTO public.prescricao (codconsulta, codmedicamento) VALUES (1, 781);
INSERT INTO public.prescricao (codconsulta, codmedicamento) VALUES (2, 781);
INSERT INTO public.prescricao (codconsulta, codmedicamento) VALUES (3, 588);
INSERT INTO public.prescricao (codconsulta, codmedicamento) VALUES (4, 588);
INSERT INTO public.prescricao (codconsulta, codmedicamento) VALUES (4, 55);
INSERT INTO public.prescricao (codconsulta, codmedicamento) VALUES (4, 781);
INSERT INTO public.prescricao (codconsulta, codmedicamento) VALUES (7, 588);


--
-- TOC entry 2706 (class 2606 OID 66417)
-- Name: animais animais_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animais
ADD CONSTRAINT animais_pkey PRIMARY KEY (codanimal);


--
-- TOC entry 2713 (class 2606 OID 66419)
-- Name: especies especies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.especies
ADD CONSTRAINT especies_pkey PRIMARY KEY (codespecie);


--
-- TOC entry 2715 (class 2606 OID 66421)
-- Name: funcionarios funcionarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionarios
ADD CONSTRAINT funcionarios_pkey PRIMARY KEY (matricula);


--
-- TOC entry 2717 (class 2606 OID 66423)
-- Name: medicamentos medicamentos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamentos
ADD CONSTRAINT medicamentos_pkey PRIMARY KEY (codmedicamento);


--
-- TOC entry 2711 (class 2606 OID 66425)
-- Name: consultas pk_codconsulta; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consultas
ADD CONSTRAINT pk_codconsulta PRIMARY KEY (codconsulta);


--
-- TOC entry 2719 (class 2606 OID 66427)
-- Name: prescricao prescricao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prescricao
ADD CONSTRAINT prescricao_pkey PRIMARY KEY (codconsulta, codmedicamento);


--
-- TOC entry 2707 (class 1259 OID 66428)
-- Name: fki_especie; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_especie ON public.animais USING btree (codespecie);


--
-- TOC entry 2708 (class 1259 OID 66429)
-- Name: fki_mae; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_mae ON public.animais USING btree (codanimalmae);


--
-- TOC entry 2709 (class 1259 OID 66430)
-- Name: fki_pai; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_pai ON public.animais USING btree (codanimalpai);


--
-- TOC entry 2723 (class 2606 OID 66431)
-- Name: consultas consultas_codanimal_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consultas
ADD CONSTRAINT consultas_codanimal_fkey FOREIGN KEY (codanimal) REFERENCES public.animais(codanimal);


--
-- TOC entry 2724 (class 2606 OID 66436)
-- Name: consultas consultas_matricula_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consultas
ADD CONSTRAINT consultas_matricula_fkey FOREIGN KEY (matricula) REFERENCES public.funcionarios(matricula);


--
-- TOC entry 2720 (class 2606 OID 66441)
-- Name: animais fk_especie; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animais
ADD CONSTRAINT fk_especie FOREIGN KEY (codespecie) REFERENCES public.especies(codespecie);


--
-- TOC entry 2721 (class 2606 OID 66446)
-- Name: animais fk_mae; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animais
ADD CONSTRAINT fk_mae FOREIGN KEY (codanimalmae) REFERENCES public.animais(codanimal);


--
-- TOC entry 2722 (class 2606 OID 66451)
-- Name: animais fk_pai; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animais
ADD CONSTRAINT fk_pai FOREIGN KEY (codanimalpai) REFERENCES public.animais(codanimal);


--
-- TOC entry 2725 (class 2606 OID 66456)
-- Name: prescricao prescricao_codmedicamento_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prescricao
ADD CONSTRAINT prescricao_codmedicamento_fkey FOREIGN KEY (codmedicamento) REFERENCES public.medicamentos(codmedicamento);


-- Completed on 2021-03-29 11:26:32

--
-- PostgreSQL database dump complete
--

CREATE SEQUENCE animais_codanimal_seq START 100;
ALTER TABLE animais ALTER COLUMN codanimal SET DEFAULT nextval('animais_codanimal_seq');
ALTER SEQUENCE animais_codanimal_seq OWNED BY animais.codanimal;

CREATE SEQUENCE especie_codespecie_seq START 100;
ALTER TABLE especies ALTER COLUMN codespecie SET DEFAULT nextval('especie_codespecie_seq');
ALTER SEQUENCE especie_codespecie_seq OWNED BY especies.codespecie;
