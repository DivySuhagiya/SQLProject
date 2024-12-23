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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(60) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(60) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (139, 2018, 'Final', 337, 338, 4, 2);
INSERT INTO public.games VALUES (140, 2018, 'Third Place', 339, 340, 2, 0);
INSERT INTO public.games VALUES (141, 2018, 'Semi-Final', 338, 340, 2, 1);
INSERT INTO public.games VALUES (142, 2018, 'Semi-Final', 337, 339, 1, 0);
INSERT INTO public.games VALUES (143, 2018, 'Quarter-Final', 338, 341, 3, 2);
INSERT INTO public.games VALUES (144, 2018, 'Quarter-Final', 340, 342, 2, 0);
INSERT INTO public.games VALUES (145, 2018, 'Quarter-Final', 339, 343, 2, 1);
INSERT INTO public.games VALUES (146, 2018, 'Quarter-Final', 337, 344, 2, 0);
INSERT INTO public.games VALUES (147, 2018, 'Eighth-Final', 340, 345, 2, 1);
INSERT INTO public.games VALUES (148, 2018, 'Eighth-Final', 342, 346, 1, 0);
INSERT INTO public.games VALUES (149, 2018, 'Eighth-Final', 339, 347, 3, 2);
INSERT INTO public.games VALUES (150, 2018, 'Eighth-Final', 343, 348, 2, 0);
INSERT INTO public.games VALUES (151, 2018, 'Eighth-Final', 338, 349, 2, 1);
INSERT INTO public.games VALUES (152, 2018, 'Eighth-Final', 341, 350, 2, 1);
INSERT INTO public.games VALUES (153, 2018, 'Eighth-Final', 344, 351, 2, 1);
INSERT INTO public.games VALUES (154, 2018, 'Eighth-Final', 337, 352, 4, 3);
INSERT INTO public.games VALUES (155, 2014, 'Final', 353, 352, 1, 0);
INSERT INTO public.games VALUES (156, 2014, 'Third Place', 354, 343, 3, 0);
INSERT INTO public.games VALUES (157, 2014, 'Semi-Final', 352, 354, 1, 0);
INSERT INTO public.games VALUES (158, 2014, 'Semi-Final', 353, 343, 7, 1);
INSERT INTO public.games VALUES (159, 2014, 'Quarter-Final', 354, 355, 1, 0);
INSERT INTO public.games VALUES (160, 2014, 'Quarter-Final', 352, 339, 1, 0);
INSERT INTO public.games VALUES (161, 2014, 'Quarter-Final', 343, 345, 2, 1);
INSERT INTO public.games VALUES (162, 2014, 'Quarter-Final', 353, 337, 1, 0);
INSERT INTO public.games VALUES (163, 2014, 'Eighth-Final', 343, 356, 2, 1);
INSERT INTO public.games VALUES (164, 2014, 'Eighth-Final', 345, 344, 2, 0);
INSERT INTO public.games VALUES (165, 2014, 'Eighth-Final', 337, 357, 2, 0);
INSERT INTO public.games VALUES (166, 2014, 'Eighth-Final', 353, 358, 2, 1);
INSERT INTO public.games VALUES (167, 2014, 'Eighth-Final', 354, 348, 2, 1);
INSERT INTO public.games VALUES (168, 2014, 'Eighth-Final', 355, 359, 2, 1);
INSERT INTO public.games VALUES (169, 2014, 'Eighth-Final', 352, 346, 1, 0);
INSERT INTO public.games VALUES (170, 2014, 'Eighth-Final', 339, 360, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (337, 'France');
INSERT INTO public.teams VALUES (338, 'Croatia');
INSERT INTO public.teams VALUES (339, 'Belgium');
INSERT INTO public.teams VALUES (340, 'England');
INSERT INTO public.teams VALUES (341, 'Russia');
INSERT INTO public.teams VALUES (342, 'Sweden');
INSERT INTO public.teams VALUES (343, 'Brazil');
INSERT INTO public.teams VALUES (344, 'Uruguay');
INSERT INTO public.teams VALUES (345, 'Colombia');
INSERT INTO public.teams VALUES (346, 'Switzerland');
INSERT INTO public.teams VALUES (347, 'Japan');
INSERT INTO public.teams VALUES (348, 'Mexico');
INSERT INTO public.teams VALUES (349, 'Denmark');
INSERT INTO public.teams VALUES (350, 'Spain');
INSERT INTO public.teams VALUES (351, 'Portugal');
INSERT INTO public.teams VALUES (352, 'Argentina');
INSERT INTO public.teams VALUES (353, 'Germany');
INSERT INTO public.teams VALUES (354, 'Netherlands');
INSERT INTO public.teams VALUES (355, 'Costa Rica');
INSERT INTO public.teams VALUES (356, 'Chile');
INSERT INTO public.teams VALUES (357, 'Nigeria');
INSERT INTO public.teams VALUES (358, 'Algeria');
INSERT INTO public.teams VALUES (359, 'Greece');
INSERT INTO public.teams VALUES (360, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 170, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 360, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

