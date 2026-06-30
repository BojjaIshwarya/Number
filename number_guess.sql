--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    game_id integer NOT NULL,
    user_id integer,
    guesses integer NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 64);
INSERT INTO public.games VALUES (2, 1, 263);
INSERT INTO public.games VALUES (3, 2, 336);
INSERT INTO public.games VALUES (4, 2, 571);
INSERT INTO public.games VALUES (5, 1, 319);
INSERT INTO public.games VALUES (6, 1, 646);
INSERT INTO public.games VALUES (7, 1, 449);
INSERT INTO public.games VALUES (8, 3, 232);
INSERT INTO public.games VALUES (9, 3, 540);
INSERT INTO public.games VALUES (10, 4, 687);
INSERT INTO public.games VALUES (11, 4, 315);
INSERT INTO public.games VALUES (12, 3, 386);
INSERT INTO public.games VALUES (13, 3, 445);
INSERT INTO public.games VALUES (14, 3, 89);
INSERT INTO public.games VALUES (15, 5, 535);
INSERT INTO public.games VALUES (16, 5, 91);
INSERT INTO public.games VALUES (17, 6, 43);
INSERT INTO public.games VALUES (18, 6, 594);
INSERT INTO public.games VALUES (19, 5, 547);
INSERT INTO public.games VALUES (20, 5, 18);
INSERT INTO public.games VALUES (21, 5, 329);
INSERT INTO public.games VALUES (22, 7, 326);
INSERT INTO public.games VALUES (23, 7, 21);
INSERT INTO public.games VALUES (24, 8, 134);
INSERT INTO public.games VALUES (25, 8, 621);
INSERT INTO public.games VALUES (26, 7, 131);
INSERT INTO public.games VALUES (27, 7, 137);
INSERT INTO public.games VALUES (28, 7, 782);
INSERT INTO public.games VALUES (29, 9, 766);
INSERT INTO public.games VALUES (30, 9, 963);
INSERT INTO public.games VALUES (31, 10, 322);
INSERT INTO public.games VALUES (32, 10, 411);
INSERT INTO public.games VALUES (33, 9, 467);
INSERT INTO public.games VALUES (34, 9, 176);
INSERT INTO public.games VALUES (35, 9, 435);
INSERT INTO public.games VALUES (36, 11, 664);
INSERT INTO public.games VALUES (37, 11, 802);
INSERT INTO public.games VALUES (38, 12, 828);
INSERT INTO public.games VALUES (39, 12, 217);
INSERT INTO public.games VALUES (40, 11, 809);
INSERT INTO public.games VALUES (41, 11, 326);
INSERT INTO public.games VALUES (42, 11, 215);
INSERT INTO public.games VALUES (43, 13, 681);
INSERT INTO public.games VALUES (44, 13, 627);
INSERT INTO public.games VALUES (45, 14, 918);
INSERT INTO public.games VALUES (46, 14, 986);
INSERT INTO public.games VALUES (47, 13, 490);
INSERT INTO public.games VALUES (48, 13, 352);
INSERT INTO public.games VALUES (49, 13, 937);
INSERT INTO public.games VALUES (50, 15, 390);
INSERT INTO public.games VALUES (51, 15, 444);
INSERT INTO public.games VALUES (52, 16, 455);
INSERT INTO public.games VALUES (53, 16, 884);
INSERT INTO public.games VALUES (54, 15, 361);
INSERT INTO public.games VALUES (55, 15, 243);
INSERT INTO public.games VALUES (56, 15, 862);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1782816957359');
INSERT INTO public.users VALUES (2, 'user_1782816957358');
INSERT INTO public.users VALUES (3, 'user_1782817164377');
INSERT INTO public.users VALUES (4, 'user_1782817164376');
INSERT INTO public.users VALUES (5, 'user_1782817275465');
INSERT INTO public.users VALUES (6, 'user_1782817275464');
INSERT INTO public.users VALUES (7, 'user_1782817315785');
INSERT INTO public.users VALUES (8, 'user_1782817315784');
INSERT INTO public.users VALUES (9, 'user_1782817324846');
INSERT INTO public.users VALUES (10, 'user_1782817324845');
INSERT INTO public.users VALUES (11, 'user_1782817338691');
INSERT INTO public.users VALUES (12, 'user_1782817338690');
INSERT INTO public.users VALUES (13, 'user_1782817350933');
INSERT INTO public.users VALUES (14, 'user_1782817350932');
INSERT INTO public.users VALUES (15, 'user_1782817469453');
INSERT INTO public.users VALUES (16, 'user_1782817469452');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 56, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 16, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

