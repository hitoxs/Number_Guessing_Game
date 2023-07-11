--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    number_guesses integer NOT NULL,
    user_id integer
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
    username character varying(20) NOT NULL
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

INSERT INTO public.games VALUES (1, 654, 1);
INSERT INTO public.games VALUES (2, 22, 1);
INSERT INTO public.games VALUES (3, 150, 2);
INSERT INTO public.games VALUES (4, 740, 2);
INSERT INTO public.games VALUES (5, 517, 1);
INSERT INTO public.games VALUES (6, 947, 1);
INSERT INTO public.games VALUES (7, 484, 1);
INSERT INTO public.games VALUES (8, 967, 3);
INSERT INTO public.games VALUES (9, 51, 3);
INSERT INTO public.games VALUES (10, 530, 4);
INSERT INTO public.games VALUES (11, 644, 4);
INSERT INTO public.games VALUES (12, 256, 3);
INSERT INTO public.games VALUES (13, 465, 3);
INSERT INTO public.games VALUES (14, 151, 3);
INSERT INTO public.games VALUES (15, 1, 5);
INSERT INTO public.games VALUES (16, 763, 5);
INSERT INTO public.games VALUES (17, 758, 6);
INSERT INTO public.games VALUES (18, 450, 6);
INSERT INTO public.games VALUES (19, 509, 5);
INSERT INTO public.games VALUES (20, 875, 5);
INSERT INTO public.games VALUES (21, 174, 5);
INSERT INTO public.games VALUES (22, 255, 7);
INSERT INTO public.games VALUES (23, 316, 7);
INSERT INTO public.games VALUES (24, 419, 8);
INSERT INTO public.games VALUES (25, 77, 8);
INSERT INTO public.games VALUES (26, 203, 7);
INSERT INTO public.games VALUES (27, 175, 7);
INSERT INTO public.games VALUES (28, 860, 7);
INSERT INTO public.games VALUES (29, 1, 9);
INSERT INTO public.games VALUES (30, 120, 9);
INSERT INTO public.games VALUES (31, 73, 10);
INSERT INTO public.games VALUES (32, 310, 10);
INSERT INTO public.games VALUES (33, 493, 9);
INSERT INTO public.games VALUES (34, 60, 9);
INSERT INTO public.games VALUES (35, 293, 9);
INSERT INTO public.games VALUES (36, 996, 11);
INSERT INTO public.games VALUES (37, 28, 11);
INSERT INTO public.games VALUES (38, 834, 12);
INSERT INTO public.games VALUES (39, 77, 12);
INSERT INTO public.games VALUES (40, 351, 11);
INSERT INTO public.games VALUES (41, 320, 11);
INSERT INTO public.games VALUES (42, 753, 11);
INSERT INTO public.games VALUES (43, 1, 13);
INSERT INTO public.games VALUES (44, 267, 13);
INSERT INTO public.games VALUES (45, 832, 14);
INSERT INTO public.games VALUES (46, 825, 14);
INSERT INTO public.games VALUES (47, 671, 13);
INSERT INTO public.games VALUES (48, 259, 13);
INSERT INTO public.games VALUES (49, 317, 13);
INSERT INTO public.games VALUES (50, 16, 15);
INSERT INTO public.games VALUES (51, 1, 16);
INSERT INTO public.games VALUES (52, 126, 16);
INSERT INTO public.games VALUES (53, 1, 17);
INSERT INTO public.games VALUES (54, 279, 17);
INSERT INTO public.games VALUES (55, 924, 16);
INSERT INTO public.games VALUES (56, 164, 16);
INSERT INTO public.games VALUES (57, 388, 16);
INSERT INTO public.games VALUES (58, 115, 18);
INSERT INTO public.games VALUES (59, 786, 18);
INSERT INTO public.games VALUES (60, 672, 19);
INSERT INTO public.games VALUES (61, 610, 19);
INSERT INTO public.games VALUES (62, 979, 18);
INSERT INTO public.games VALUES (63, 28, 18);
INSERT INTO public.games VALUES (64, 329, 18);
INSERT INTO public.games VALUES (65, 1, 20);
INSERT INTO public.games VALUES (66, 160, 20);
INSERT INTO public.games VALUES (67, 760, 21);
INSERT INTO public.games VALUES (68, 500, 21);
INSERT INTO public.games VALUES (69, 426, 20);
INSERT INTO public.games VALUES (70, 622, 20);
INSERT INTO public.games VALUES (71, 302, 20);
INSERT INTO public.games VALUES (72, 1, 22);
INSERT INTO public.games VALUES (73, 821, 22);
INSERT INTO public.games VALUES (74, 1, 23);
INSERT INTO public.games VALUES (75, 575, 23);
INSERT INTO public.games VALUES (76, 894, 22);
INSERT INTO public.games VALUES (77, 63, 22);
INSERT INTO public.games VALUES (78, 179, 22);
INSERT INTO public.games VALUES (79, 657, 24);
INSERT INTO public.games VALUES (80, 657, 24);
INSERT INTO public.games VALUES (81, 439, 25);
INSERT INTO public.games VALUES (82, 513, 25);
INSERT INTO public.games VALUES (83, 956, 24);
INSERT INTO public.games VALUES (84, 676, 24);
INSERT INTO public.games VALUES (85, 494, 24);
INSERT INTO public.games VALUES (86, 1, 26);
INSERT INTO public.games VALUES (87, 237, 26);
INSERT INTO public.games VALUES (88, 674, 27);
INSERT INTO public.games VALUES (89, 960, 27);
INSERT INTO public.games VALUES (90, 24, 26);
INSERT INTO public.games VALUES (91, 682, 26);
INSERT INTO public.games VALUES (92, 781, 26);
INSERT INTO public.games VALUES (93, 872, 28);
INSERT INTO public.games VALUES (94, 433, 28);
INSERT INTO public.games VALUES (95, 848, 29);
INSERT INTO public.games VALUES (96, 39, 29);
INSERT INTO public.games VALUES (97, 266, 28);
INSERT INTO public.games VALUES (98, 601, 28);
INSERT INTO public.games VALUES (99, 355, 28);
INSERT INTO public.games VALUES (100, 1, 30);
INSERT INTO public.games VALUES (101, 263, 30);
INSERT INTO public.games VALUES (102, 726, 31);
INSERT INTO public.games VALUES (103, 433, 31);
INSERT INTO public.games VALUES (104, 816, 30);
INSERT INTO public.games VALUES (105, 953, 30);
INSERT INTO public.games VALUES (106, 745, 30);
INSERT INTO public.games VALUES (107, 217, 32);
INSERT INTO public.games VALUES (108, 769, 32);
INSERT INTO public.games VALUES (109, 1, 33);
INSERT INTO public.games VALUES (110, 603, 33);
INSERT INTO public.games VALUES (111, 146, 32);
INSERT INTO public.games VALUES (112, 602, 32);
INSERT INTO public.games VALUES (113, 740, 32);
INSERT INTO public.games VALUES (114, 168, 34);
INSERT INTO public.games VALUES (115, 57, 34);
INSERT INTO public.games VALUES (116, 915, 35);
INSERT INTO public.games VALUES (117, 432, 35);
INSERT INTO public.games VALUES (118, 497, 34);
INSERT INTO public.games VALUES (119, 748, 34);
INSERT INTO public.games VALUES (120, 227, 34);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1689089719132');
INSERT INTO public.users VALUES (2, 'user_1689089719131');
INSERT INTO public.users VALUES (3, 'user_1689089795990');
INSERT INTO public.users VALUES (4, 'user_1689089795989');
INSERT INTO public.users VALUES (5, 'user_1689089829641');
INSERT INTO public.users VALUES (6, 'user_1689089829640');
INSERT INTO public.users VALUES (7, 'user_1689089846857');
INSERT INTO public.users VALUES (8, 'user_1689089846856');
INSERT INTO public.users VALUES (9, 'user_1689089859506');
INSERT INTO public.users VALUES (10, 'user_1689089859505');
INSERT INTO public.users VALUES (11, 'user_1689089865796');
INSERT INTO public.users VALUES (12, 'user_1689089865795');
INSERT INTO public.users VALUES (13, 'user_1689089873591');
INSERT INTO public.users VALUES (14, 'user_1689089873590');
INSERT INTO public.users VALUES (15, 'hitoxs');
INSERT INTO public.users VALUES (16, 'user_1689089969446');
INSERT INTO public.users VALUES (17, 'user_1689089969445');
INSERT INTO public.users VALUES (18, 'user_1689089983909');
INSERT INTO public.users VALUES (19, 'user_1689089983908');
INSERT INTO public.users VALUES (20, 'user_1689089999092');
INSERT INTO public.users VALUES (21, 'user_1689089999091');
INSERT INTO public.users VALUES (22, 'user_1689090010993');
INSERT INTO public.users VALUES (23, 'user_1689090010992');
INSERT INTO public.users VALUES (24, 'user_1689090021677');
INSERT INTO public.users VALUES (25, 'user_1689090021676');
INSERT INTO public.users VALUES (26, 'user_1689090036963');
INSERT INTO public.users VALUES (27, 'user_1689090036962');
INSERT INTO public.users VALUES (28, 'user_1689090048943');
INSERT INTO public.users VALUES (29, 'user_1689090048942');
INSERT INTO public.users VALUES (30, 'user_1689090057460');
INSERT INTO public.users VALUES (31, 'user_1689090057459');
INSERT INTO public.users VALUES (32, 'user_1689090063883');
INSERT INTO public.users VALUES (33, 'user_1689090063882');
INSERT INTO public.users VALUES (34, 'user_1689090073995');
INSERT INTO public.users VALUES (35, 'user_1689090073994');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 120, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 35, true);


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

