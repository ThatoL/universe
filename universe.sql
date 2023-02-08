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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: data; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.data (
    name character varying(30) NOT NULL,
    galaxy_id integer,
    data_id integer NOT NULL
);


ALTER TABLE public.data OWNER TO freecodecamp;

--
-- Name: data_data_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.data_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_data_id_seq OWNER TO freecodecamp;

--
-- Name: data_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.data_data_id_seq OWNED BY public.data.data_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    age_in_mill_years numeric,
    description text,
    has_life boolean NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_new_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_new_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_new_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_new_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_new_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    age_in_mill_years numeric,
    description text,
    has_life boolean NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_new_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_new_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_new_id_seq OWNER TO freecodecamp;

--
-- Name: moon_new_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_new_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    age_in_mill_years numeric,
    description text,
    has_life boolean NOT NULL,
    planet_id integer NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_new_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_new_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_new_id_seq OWNER TO freecodecamp;

--
-- Name: planet_new_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_new_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    age_in_mill_years numeric,
    description text,
    star_id integer NOT NULL,
    isdead boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_new_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_new_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_new_id_seq OWNER TO freecodecamp;

--
-- Name: star_new_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_new_id_seq OWNED BY public.star.star_id;


--
-- Name: data data_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.data ALTER COLUMN data_id SET DEFAULT nextval('public.data_data_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_new_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_new_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_new_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_new_id_seq'::regclass);


--
-- Data for Name: data; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.data VALUES ('something', 3, 1);
INSERT INTO public.data VALUES ('something a', 3, 2);
INSERT INTO public.data VALUES ('something b', 3, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('andromeda', 2, 10000, 'spiral galaxy', true, 3);
INSERT INTO public.galaxy VALUES ('triangulum', 3, 10000, 'spiral galaxy smaller than andromeda', true, 4);
INSERT INTO public.galaxy VALUES ('whirlpool', 23, 10000, 'spiral galaxy known for spiral structure', true, 5);
INSERT INTO public.galaxy VALUES ('31-1-a', 200, 20, 'rick and morty world', true, 6);
INSERT INTO public.galaxy VALUES ('31-2-a', 200, 20, 'rick and morty world', true, 7);
INSERT INTO public.galaxy VALUES ('31-3-a', 200, 20, 'rick and morty world', true, 8);
INSERT INTO public.galaxy VALUES ('31-4-a', 200, 20, 'rick and morty world', true, 9);
INSERT INTO public.galaxy VALUES ('31-5-a', 200, 20, 'rick and morty world', true, 10);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moon 1-a', 20, 2000, 'earth orbiting moon', false, 1, 1);
INSERT INTO public.moon VALUES ('moon 2-a', 20, 2000, 'earth orbiting moon', false, 3, 1);
INSERT INTO public.moon VALUES ('moon 3-a', 20, 2000, 'earth orbiting moon', false, 4, 1);
INSERT INTO public.moon VALUES ('moon 4-a', 20, 2000, 'earth orbiting moon', false, 5, 1);
INSERT INTO public.moon VALUES ('moon 5-a', 20, 2000, 'earth orbiting moon', false, 6, 1);
INSERT INTO public.moon VALUES ('moon 6-a', 20, 2000, 'earth orbiting moon', false, 7, 1);
INSERT INTO public.moon VALUES ('moon 7-a', 20, 2000, 'earth orbiting moon', false, 8, 1);
INSERT INTO public.moon VALUES ('moon 8-a', 20, 2000, 'earth orbiting moon', false, 9, 1);
INSERT INTO public.moon VALUES ('moon 9-a', 20, 2000, 'earth orbiting moon', false, 10, 1);
INSERT INTO public.moon VALUES ('moon 10-a', 20, 2000, 'earth orbiting moon', false, 11, 1);
INSERT INTO public.moon VALUES ('moon 10-b', 20, 2000, 'earth orbiting moon', false, 12, 1);
INSERT INTO public.moon VALUES ('moon 1-b', 20, 2000, 'earth orbiting moon', false, 13, 1);
INSERT INTO public.moon VALUES ('moon 2-b', 20, 2000, 'earth orbiting moon', false, 14, 1);
INSERT INTO public.moon VALUES ('moon 3-b', 20, 2000, 'earth orbiting moon', false, 15, 1);
INSERT INTO public.moon VALUES ('moon 4-b', 20, 2000, 'earth orbiting moon', false, 16, 1);
INSERT INTO public.moon VALUES ('moon 5-b', 20, 2000, 'earth orbiting moon', false, 17, 1);
INSERT INTO public.moon VALUES ('moon 6-b', 20, 2000, 'earth orbiting moon', false, 18, 1);
INSERT INTO public.moon VALUES ('moon 7-b', 20, 2000, 'earth orbiting moon', false, 19, 1);
INSERT INTO public.moon VALUES ('moon 8-b', 20, 2000, 'earth orbiting moon', false, 20, 1);
INSERT INTO public.moon VALUES ('moon 9-b', 20, 2000, 'earth orbiting moon', false, 21, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('earth', 0, 200, 'planet with life', true, 1, 2);
INSERT INTO public.planet VALUES ('mars', 0, 200, 'planet with life', false, 2, 2);
INSERT INTO public.planet VALUES ('venus', 2000, 200, 'planet with life', false, 3, 2);
INSERT INTO public.planet VALUES ('jupiter', 2000, 200, 'planet with life', false, 4, 2);
INSERT INTO public.planet VALUES ('saturm', 2000, 200, 'planet with life', false, 5, 2);
INSERT INTO public.planet VALUES ('namek', 2000, 200, 'planet with life', false, 6, 2);
INSERT INTO public.planet VALUES ('planet vegeta', 2000, 200, 'planet with life', false, 7, 2);
INSERT INTO public.planet VALUES ('planet vegeta a', 2000, 200, 'planet with life', false, 8, 2);
INSERT INTO public.planet VALUES ('planet vegeta b', 2000, 200, 'planet with life', false, 9, 2);
INSERT INTO public.planet VALUES ('planet vegeta c', 2000, 200, 'planet with life', false, 10, 2);
INSERT INTO public.planet VALUES ('planet vegeta d', 2000, 200, 'planet with life', false, 11, 2);
INSERT INTO public.planet VALUES ('planet c', 2000, 200, 'planet with life', false, 12, 2);
INSERT INTO public.planet VALUES ('planet b', 2000, 200, 'planet with life', false, 13, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('thato', 200, 'the thato star', 2, false, 3);
INSERT INTO public.star VALUES ('king 1', 29, 'king star', 3, true, 3);
INSERT INTO public.star VALUES ('king 2', 29, 'king star', 4, true, 3);
INSERT INTO public.star VALUES ('king 3', 29, 'king star', 5, true, 3);
INSERT INTO public.star VALUES ('king 4', 29, 'king star', 6, true, 3);
INSERT INTO public.star VALUES ('king 5', 29, 'king star', 7, true, 3);
INSERT INTO public.star VALUES ('king 6', 29, 'king star', 8, true, 3);


--
-- Name: data_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.data_data_id_seq', 3, true);


--
-- Name: galaxy_new_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_new_id_seq', 10, true);


--
-- Name: moon_new_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_new_id_seq', 22, true);


--
-- Name: planet_new_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_new_id_seq', 13, true);


--
-- Name: star_new_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_new_id_seq', 8, true);


--
-- Name: data data_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.data
    ADD CONSTRAINT data_pkey PRIMARY KEY (data_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key1 UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key1 UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: data unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.data
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: data fk_gkid; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.data
    ADD CONSTRAINT fk_gkid FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

