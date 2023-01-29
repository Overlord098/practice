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
    round character varying(20) NOT NULL,
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
    name character varying(30) NOT NULL
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

INSERT INTO public.games VALUES (42, 2018, 'Final', 319, 320, 4, 2);
INSERT INTO public.games VALUES (43, 2018, 'Third Place', 321, 322, 2, 0);
INSERT INTO public.games VALUES (44, 2018, 'Semi-Final', 320, 322, 2, 1);
INSERT INTO public.games VALUES (45, 2018, 'Semi-Final', 319, 321, 1, 0);
INSERT INTO public.games VALUES (46, 2018, 'Quarter-Final', 320, 328, 3, 2);
INSERT INTO public.games VALUES (47, 2018, 'Quarter-Final', 322, 330, 2, 0);
INSERT INTO public.games VALUES (48, 2018, 'Quarter-Final', 321, 332, 2, 1);
INSERT INTO public.games VALUES (49, 2018, 'Quarter-Final', 319, 334, 2, 0);
INSERT INTO public.games VALUES (50, 2018, 'Eighth-Final', 322, 336, 2, 1);
INSERT INTO public.games VALUES (51, 2018, 'Eighth-Final', 330, 338, 1, 0);
INSERT INTO public.games VALUES (52, 2018, 'Eighth-Final', 321, 340, 3, 2);
INSERT INTO public.games VALUES (53, 2018, 'Eighth-Final', 332, 342, 2, 0);
INSERT INTO public.games VALUES (54, 2018, 'Eighth-Final', 320, 344, 2, 1);
INSERT INTO public.games VALUES (55, 2018, 'Eighth-Final', 328, 346, 2, 1);
INSERT INTO public.games VALUES (56, 2018, 'Eighth-Final', 334, 348, 2, 1);
INSERT INTO public.games VALUES (57, 2018, 'Eighth-Final', 319, 350, 4, 3);
INSERT INTO public.games VALUES (58, 2014, 'Final', 351, 350, 1, 0);
INSERT INTO public.games VALUES (59, 2014, 'Third Place', 353, 332, 3, 0);
INSERT INTO public.games VALUES (60, 2014, 'Semi-Final', 350, 353, 1, 0);
INSERT INTO public.games VALUES (61, 2014, 'Semi-Final', 351, 332, 7, 1);
INSERT INTO public.games VALUES (62, 2014, 'Quarter-Final', 353, 360, 1, 0);
INSERT INTO public.games VALUES (63, 2014, 'Quarter-Final', 350, 321, 1, 0);
INSERT INTO public.games VALUES (64, 2014, 'Quarter-Final', 332, 336, 2, 1);
INSERT INTO public.games VALUES (65, 2014, 'Quarter-Final', 351, 319, 1, 0);
INSERT INTO public.games VALUES (66, 2014, 'Eighth-Final', 332, 368, 2, 1);
INSERT INTO public.games VALUES (67, 2014, 'Eighth-Final', 336, 334, 2, 0);
INSERT INTO public.games VALUES (68, 2014, 'Eighth-Final', 319, 372, 2, 0);
INSERT INTO public.games VALUES (69, 2014, 'Eighth-Final', 351, 374, 2, 1);
INSERT INTO public.games VALUES (70, 2014, 'Eighth-Final', 353, 342, 2, 1);
INSERT INTO public.games VALUES (71, 2014, 'Eighth-Final', 360, 378, 2, 1);
INSERT INTO public.games VALUES (72, 2014, 'Eighth-Final', 350, 338, 1, 0);
INSERT INTO public.games VALUES (73, 2014, 'Eighth-Final', 321, 382, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (319, 'France');
INSERT INTO public.teams VALUES (320, 'Croatia');
INSERT INTO public.teams VALUES (321, 'Belgium');
INSERT INTO public.teams VALUES (322, 'England');
INSERT INTO public.teams VALUES (328, 'Russia');
INSERT INTO public.teams VALUES (330, 'Sweden');
INSERT INTO public.teams VALUES (332, 'Brazil');
INSERT INTO public.teams VALUES (334, 'Uruguay');
INSERT INTO public.teams VALUES (336, 'Colombia');
INSERT INTO public.teams VALUES (338, 'Switzerland');
INSERT INTO public.teams VALUES (340, 'Japan');
INSERT INTO public.teams VALUES (342, 'Mexico');
INSERT INTO public.teams VALUES (344, 'Denmark');
INSERT INTO public.teams VALUES (346, 'Spain');
INSERT INTO public.teams VALUES (348, 'Portugal');
INSERT INTO public.teams VALUES (350, 'Argentina');
INSERT INTO public.teams VALUES (351, 'Germany');
INSERT INTO public.teams VALUES (353, 'Netherlands');
INSERT INTO public.teams VALUES (360, 'Costa Rica');
INSERT INTO public.teams VALUES (368, 'Chile');
INSERT INTO public.teams VALUES (372, 'Nigeria');
INSERT INTO public.teams VALUES (374, 'Algeria');
INSERT INTO public.teams VALUES (378, 'Greece');
INSERT INTO public.teams VALUES (382, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 73, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 382, true);


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
