--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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
    round character varying(50) NOT NULL,
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
    name character varying(50) NOT NULL
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

INSERT INTO public.games VALUES (48, 2018, 'Final', 40, 41, 4, 2);
INSERT INTO public.games VALUES (49, 2018, 'Third Place', 42, 43, 2, 0);
INSERT INTO public.games VALUES (50, 2018, 'Semi-Final', 41, 43, 2, 1);
INSERT INTO public.games VALUES (51, 2018, 'Semi-Final', 40, 42, 1, 0);
INSERT INTO public.games VALUES (52, 2018, 'Quarter-Final', 41, 44, 3, 2);
INSERT INTO public.games VALUES (53, 2018, 'Quarter-Final', 43, 45, 2, 0);
INSERT INTO public.games VALUES (54, 2018, 'Quarter-Final', 42, 46, 2, 1);
INSERT INTO public.games VALUES (55, 2018, 'Quarter-Final', 40, 47, 2, 0);
INSERT INTO public.games VALUES (56, 2018, 'Eighth-Final', 43, 48, 2, 1);
INSERT INTO public.games VALUES (57, 2018, 'Eighth-Final', 45, 49, 1, 0);
INSERT INTO public.games VALUES (58, 2018, 'Eighth-Final', 42, 50, 3, 2);
INSERT INTO public.games VALUES (59, 2018, 'Eighth-Final', 46, 51, 2, 0);
INSERT INTO public.games VALUES (60, 2018, 'Eighth-Final', 41, 52, 2, 1);
INSERT INTO public.games VALUES (61, 2018, 'Eighth-Final', 44, 53, 2, 1);
INSERT INTO public.games VALUES (62, 2018, 'Eighth-Final', 47, 54, 2, 1);
INSERT INTO public.games VALUES (63, 2018, 'Eighth-Final', 40, 55, 4, 3);
INSERT INTO public.games VALUES (64, 2014, 'Final', 56, 55, 1, 0);
INSERT INTO public.games VALUES (65, 2014, 'Third Place', 57, 46, 3, 0);
INSERT INTO public.games VALUES (66, 2014, 'Semi-Final', 55, 57, 1, 0);
INSERT INTO public.games VALUES (67, 2014, 'Semi-Final', 56, 46, 7, 1);
INSERT INTO public.games VALUES (68, 2014, 'Quarter-Final', 57, 58, 1, 0);
INSERT INTO public.games VALUES (69, 2014, 'Quarter-Final', 55, 42, 1, 0);
INSERT INTO public.games VALUES (70, 2014, 'Quarter-Final', 46, 48, 2, 1);
INSERT INTO public.games VALUES (71, 2014, 'Quarter-Final', 56, 40, 1, 0);
INSERT INTO public.games VALUES (72, 2014, 'Eighth-Final', 46, 59, 2, 1);
INSERT INTO public.games VALUES (73, 2014, 'Eighth-Final', 48, 47, 2, 0);
INSERT INTO public.games VALUES (74, 2014, 'Eighth-Final', 40, 60, 2, 0);
INSERT INTO public.games VALUES (75, 2014, 'Eighth-Final', 56, 61, 2, 1);
INSERT INTO public.games VALUES (76, 2014, 'Eighth-Final', 57, 51, 2, 1);
INSERT INTO public.games VALUES (77, 2014, 'Eighth-Final', 58, 62, 2, 1);
INSERT INTO public.games VALUES (78, 2014, 'Eighth-Final', 55, 49, 1, 0);
INSERT INTO public.games VALUES (79, 2014, 'Eighth-Final', 42, 63, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (40, 'France');
INSERT INTO public.teams VALUES (41, 'Croatia');
INSERT INTO public.teams VALUES (42, 'Belgium');
INSERT INTO public.teams VALUES (43, 'England');
INSERT INTO public.teams VALUES (44, 'Russia');
INSERT INTO public.teams VALUES (45, 'Sweden');
INSERT INTO public.teams VALUES (46, 'Brazil');
INSERT INTO public.teams VALUES (47, 'Uruguay');
INSERT INTO public.teams VALUES (48, 'Colombia');
INSERT INTO public.teams VALUES (49, 'Switzerland');
INSERT INTO public.teams VALUES (50, 'Japan');
INSERT INTO public.teams VALUES (51, 'Mexico');
INSERT INTO public.teams VALUES (52, 'Denmark');
INSERT INTO public.teams VALUES (53, 'Spain');
INSERT INTO public.teams VALUES (54, 'Portugal');
INSERT INTO public.teams VALUES (55, 'Argentina');
INSERT INTO public.teams VALUES (56, 'Germany');
INSERT INTO public.teams VALUES (57, 'Netherlands');
INSERT INTO public.teams VALUES (58, 'Costa Rica');
INSERT INTO public.teams VALUES (59, 'Chile');
INSERT INTO public.teams VALUES (60, 'Nigeria');
INSERT INTO public.teams VALUES (61, 'Algeria');
INSERT INTO public.teams VALUES (62, 'Greece');
INSERT INTO public.teams VALUES (63, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 79, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 63, true);


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

