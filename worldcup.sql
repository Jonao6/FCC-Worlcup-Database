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
    round character varying(60) NOT NULL,
    winner_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_goals integer NOT NULL,
    opponent_id integer NOT NULL
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

INSERT INTO public.games VALUES (490, 2018, 'Final', 4, 523, 2, 522);
INSERT INTO public.games VALUES (491, 2018, 'Third Place', 2, 525, 0, 524);
INSERT INTO public.games VALUES (492, 2018, 'Semi-Final', 2, 522, 1, 524);
INSERT INTO public.games VALUES (493, 2018, 'Semi-Final', 1, 523, 0, 525);
INSERT INTO public.games VALUES (494, 2018, 'Quarter-Final', 3, 522, 2, 526);
INSERT INTO public.games VALUES (495, 2018, 'Quarter-Final', 2, 524, 0, 527);
INSERT INTO public.games VALUES (496, 2018, 'Quarter-Final', 2, 525, 1, 528);
INSERT INTO public.games VALUES (497, 2018, 'Quarter-Final', 2, 523, 0, 529);
INSERT INTO public.games VALUES (498, 2018, 'Eighth-Final', 2, 524, 1, 530);
INSERT INTO public.games VALUES (499, 2018, 'Eighth-Final', 1, 527, 0, 531);
INSERT INTO public.games VALUES (500, 2018, 'Eighth-Final', 3, 525, 2, 532);
INSERT INTO public.games VALUES (501, 2018, 'Eighth-Final', 2, 528, 0, 533);
INSERT INTO public.games VALUES (502, 2018, 'Eighth-Final', 2, 522, 1, 534);
INSERT INTO public.games VALUES (503, 2018, 'Eighth-Final', 2, 526, 1, 535);
INSERT INTO public.games VALUES (504, 2018, 'Eighth-Final', 2, 529, 1, 536);
INSERT INTO public.games VALUES (505, 2018, 'Eighth-Final', 4, 523, 3, 537);
INSERT INTO public.games VALUES (506, 2014, 'Final', 1, 538, 0, 537);
INSERT INTO public.games VALUES (507, 2014, 'Third Place', 3, 539, 0, 528);
INSERT INTO public.games VALUES (508, 2014, 'Semi-Final', 1, 537, 0, 539);
INSERT INTO public.games VALUES (509, 2014, 'Semi-Final', 7, 538, 1, 528);
INSERT INTO public.games VALUES (510, 2014, 'Quarter-Final', 1, 539, 0, 540);
INSERT INTO public.games VALUES (511, 2014, 'Quarter-Final', 1, 537, 0, 525);
INSERT INTO public.games VALUES (512, 2014, 'Quarter-Final', 2, 528, 1, 530);
INSERT INTO public.games VALUES (513, 2014, 'Quarter-Final', 1, 538, 0, 523);
INSERT INTO public.games VALUES (514, 2014, 'Eighth-Final', 2, 528, 1, 541);
INSERT INTO public.games VALUES (515, 2014, 'Eighth-Final', 2, 530, 0, 529);
INSERT INTO public.games VALUES (516, 2014, 'Eighth-Final', 2, 523, 0, 542);
INSERT INTO public.games VALUES (517, 2014, 'Eighth-Final', 2, 538, 1, 543);
INSERT INTO public.games VALUES (518, 2014, 'Eighth-Final', 2, 539, 1, 533);
INSERT INTO public.games VALUES (519, 2014, 'Eighth-Final', 2, 540, 1, 544);
INSERT INTO public.games VALUES (520, 2014, 'Eighth-Final', 1, 537, 0, 531);
INSERT INTO public.games VALUES (521, 2014, 'Eighth-Final', 2, 525, 1, 545);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (522, 'Croatia');
INSERT INTO public.teams VALUES (523, 'France');
INSERT INTO public.teams VALUES (524, 'England');
INSERT INTO public.teams VALUES (525, 'Belgium');
INSERT INTO public.teams VALUES (526, 'Russia');
INSERT INTO public.teams VALUES (527, 'Sweden');
INSERT INTO public.teams VALUES (528, 'Brazil');
INSERT INTO public.teams VALUES (529, 'Uruguay');
INSERT INTO public.teams VALUES (530, 'Colombia');
INSERT INTO public.teams VALUES (531, 'Switzerland');
INSERT INTO public.teams VALUES (532, 'Japan');
INSERT INTO public.teams VALUES (533, 'Mexico');
INSERT INTO public.teams VALUES (534, 'Denmark');
INSERT INTO public.teams VALUES (535, 'Spain');
INSERT INTO public.teams VALUES (536, 'Portugal');
INSERT INTO public.teams VALUES (537, 'Argentina');
INSERT INTO public.teams VALUES (538, 'Germany');
INSERT INTO public.teams VALUES (539, 'Netherlands');
INSERT INTO public.teams VALUES (540, 'Costa Rica');
INSERT INTO public.teams VALUES (541, 'Chile');
INSERT INTO public.teams VALUES (542, 'Nigeria');
INSERT INTO public.teams VALUES (543, 'Algeria');
INSERT INTO public.teams VALUES (544, 'Greece');
INSERT INTO public.teams VALUES (545, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 521, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 545, true);


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
-- Name: games fk_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

