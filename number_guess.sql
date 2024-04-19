--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    user_id integer,
    guesses integer,
    game_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: stats; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.stats (
    user_id integer,
    best_game integer,
    games_played integer
);


ALTER TABLE public.stats OWNER TO freecodecamp;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (15, 827, 1);
INSERT INTO public.games VALUES (15, 919, 2);
INSERT INTO public.games VALUES (16, 784, 3);
INSERT INTO public.games VALUES (16, 439, 4);
INSERT INTO public.games VALUES (15, 999, 5);
INSERT INTO public.games VALUES (15, 434, 6);
INSERT INTO public.games VALUES (15, 106, 7);
INSERT INTO public.games VALUES (17, 994, 8);
INSERT INTO public.games VALUES (17, 75, 9);
INSERT INTO public.games VALUES (18, 401, 10);
INSERT INTO public.games VALUES (18, 385, 11);
INSERT INTO public.games VALUES (17, 245, 12);
INSERT INTO public.games VALUES (17, 855, 13);
INSERT INTO public.games VALUES (17, 709, 14);
INSERT INTO public.games VALUES (19, 633, 15);
INSERT INTO public.games VALUES (19, 601, 16);
INSERT INTO public.games VALUES (20, 510, 17);
INSERT INTO public.games VALUES (20, 301, 18);
INSERT INTO public.games VALUES (19, 247, 19);
INSERT INTO public.games VALUES (19, 156, 20);
INSERT INTO public.games VALUES (19, 390, 21);
INSERT INTO public.games VALUES (8, 4, 22);
INSERT INTO public.games VALUES (8, 7, 23);
INSERT INTO public.games VALUES (21, 39, 24);
INSERT INTO public.games VALUES (21, 558, 25);
INSERT INTO public.games VALUES (22, 75, 26);
INSERT INTO public.games VALUES (22, 351, 27);
INSERT INTO public.games VALUES (21, 177, 28);
INSERT INTO public.games VALUES (21, 434, 29);
INSERT INTO public.games VALUES (21, 399, 30);
INSERT INTO public.games VALUES (23, 987, 31);
INSERT INTO public.games VALUES (23, 976, 32);
INSERT INTO public.games VALUES (24, 402, 33);
INSERT INTO public.games VALUES (24, 127, 34);
INSERT INTO public.games VALUES (23, 969, 35);
INSERT INTO public.games VALUES (23, 475, 36);
INSERT INTO public.games VALUES (23, 499, 37);


--
-- Data for Name: stats; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1713543022012');
INSERT INTO public.users VALUES (2, 'user_1713543022011');
INSERT INTO public.users VALUES (3, 'user_1713544530987');
INSERT INTO public.users VALUES (4, 'user_1713544530986');
INSERT INTO public.users VALUES (5, 'asdf');
INSERT INTO public.users VALUES (6, 'user_1713544640834');
INSERT INTO public.users VALUES (7, 'user_1713544640833');
INSERT INTO public.users VALUES (8, 'test');
INSERT INTO public.users VALUES (9, 'sdf');
INSERT INTO public.users VALUES (10, 'fd');
INSERT INTO public.users VALUES (11, '123');
INSERT INTO public.users VALUES (12, 'ASDE');
INSERT INTO public.users VALUES (13, 'e');
INSERT INTO public.users VALUES (14, 'a');
INSERT INTO public.users VALUES (15, 'user_1713547183550');
INSERT INTO public.users VALUES (16, 'user_1713547183549');
INSERT INTO public.users VALUES (17, 'user_1713555100540');
INSERT INTO public.users VALUES (18, 'user_1713555100539');
INSERT INTO public.users VALUES (19, 'user_1713555166774');
INSERT INTO public.users VALUES (20, 'user_1713555166773');
INSERT INTO public.users VALUES (21, 'user_1713555828656');
INSERT INTO public.users VALUES (22, 'user_1713555828655');
INSERT INTO public.users VALUES (23, 'user_1713556423424');
INSERT INTO public.users VALUES (24, 'user_1713556423423');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 37, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 24, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

