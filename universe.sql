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
-- Name: combine; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.combine (
    combine_id integer NOT NULL,
    name character varying,
    maening text NOT NULL,
    star_id integer
);


ALTER TABLE public.combine OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    galaxy_type boolean,
    age_in_millions_of_years integer,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    diameter numeric,
    name character varying NOT NULL,
    planet_id integer,
    yr_discovered integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    has_life boolean,
    star_id integer,
    name character varying NOT NULL,
    planet_type text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    distance_from_earth numeric,
    brightness numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: combine; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.combine VALUES (1, 'aquarius', 'water bearer', 1);
INSERT INTO public.combine VALUES (2, 'aries', 'ram', 2);
INSERT INTO public.combine VALUES (3, 'bootes', 'herdsman', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'backward galaxy', false, 6, 'rotate in opposite direction');
INSERT INTO public.galaxy VALUES (2, 'black eye galaxy', false, 4, 'look like a eye');
INSERT INTO public.galaxy VALUES (3, 'centaurus A', false, 3, 'named on its location');
INSERT INTO public.galaxy VALUES (4, 'coma pinwheel galaxy', false, 7, 'look like paper pinwheel');
INSERT INTO public.galaxy VALUES (5, 'malin', true, 7, 'named on david malin');
INSERT INTO public.galaxy VALUES (6, 'mice galaxies', false, 4, 'have long tails');
INSERT INTO public.galaxy VALUES (7, 'needle galaxy', false, 5, 'thin appearance');
INSERT INTO public.galaxy VALUES (8, 'butterfly galaxy', false, 9, 'pair of butterfly');
INSERT INTO public.galaxy VALUES (9, 'milky way galaxy', true, 68, 'our own galaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 3476, 'moon', 3, 0);
INSERT INTO public.moon VALUES (2, 23, 'phobos', 4, 1877);
INSERT INTO public.moon VALUES (3, 13, 'deimos', 4, 1877);
INSERT INTO public.moon VALUES (4, 3630, 'lo', 5, 1610);
INSERT INTO public.moon VALUES (5, 3138, 'europa', 5, 1610);
INSERT INTO public.moon VALUES (6, 5262, 'ganymede', 5, 5262);
INSERT INTO public.moon VALUES (7, 4800, 'callisto', 5, 1610);
INSERT INTO public.moon VALUES (8, 200, 'amal
', 5, 1892);
INSERT INTO public.moon VALUES (9, 170, 'himalia', 5, 1904);
INSERT INTO public.moon VALUES (10, 90, 'thebe', 5, 1979);
INSERT INTO public.moon VALUES (11, 7865, 'a', 6, 1456);
INSERT INTO public.moon VALUES (12, 324, 'b', 6, 1345);
INSERT INTO public.moon VALUES (13, 4567, 'c', 6, 1435);
INSERT INTO public.moon VALUES (14, 3459, 'd', 6, 1345);
INSERT INTO public.moon VALUES (15, 2349, 'e', 6, 1208);
INSERT INTO public.moon VALUES (16, 456, 'f', 6, 1765);
INSERT INTO public.moon VALUES (17, 4569, 'g', 6, 1897);
INSERT INTO public.moon VALUES (18, 7869, 'h', 6, 1897);
INSERT INTO public.moon VALUES (19, 8976, 'i', 6, 1234);
INSERT INTO public.moon VALUES (20, 9087, 'j', 6, 1278);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, false, 13, 'mercury', 'solid');
INSERT INTO public.planet VALUES (2, false, 7, 'venus', 'solid');
INSERT INTO public.planet VALUES (3, true, 5, 'earth', 'solid');
INSERT INTO public.planet VALUES (4, false, 8, 'mars', 'solid');
INSERT INTO public.planet VALUES (5, false, 9, 'jupitar', 'gas');
INSERT INTO public.planet VALUES (6, false, 4, 'saturn', 'gas');
INSERT INTO public.planet VALUES (7, false, 2, 'uranus', 'gas');
INSERT INTO public.planet VALUES (8, false, 1, 'neptune', 'gas');
INSERT INTO public.planet VALUES (9, false, 7, 'ceres', 'solid');
INSERT INTO public.planet VALUES (10, false, 11, 'orcus', 'solid');
INSERT INTO public.planet VALUES (11, false, 11, 'pluto', 'solid');
INSERT INTO public.planet VALUES (12, false, 3, 'haumea', 'solid');
INSERT INTO public.planet VALUES (13, false, 12, 'quaocus', 'solid');
INSERT INTO public.planet VALUES (14, false, 6, 'makemake', 'solid');
INSERT INTO public.planet VALUES (15, false, 1, 'gonggong', 'solid');
INSERT INTO public.planet VALUES (16, false, 9, 'eris', 'solid');
INSERT INTO public.planet VALUES (17, false, 8, 'sedna', 'solid');
INSERT INTO public.planet VALUES (18, false, 10, 'salacia', 'solid');
INSERT INTO public.planet VALUES (19, false, 1, 'varda', 'gas');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sadalsuud', 612, 3, 9);
INSERT INTO public.star VALUES (2, 'hamal', 66, 2, 9);
INSERT INTO public.star VALUES (3, 'arcturus', 37, 1, 9);
INSERT INTO public.star VALUES (4, 'deneb algedi', 39, 3, 9);
INSERT INTO public.star VALUES (5, 'rigil', 65, 3, 9);
INSERT INTO public.star VALUES (6, 'beta', 30, 4, 9);
INSERT INTO public.star VALUES (7, 'regulus', 77, 1, 9);
INSERT INTO public.star VALUES (8, 'aldeberan', 65, 1, 9);
INSERT INTO public.star VALUES (9, 'diphda', 96, 2, 9);
INSERT INTO public.star VALUES (10, 'enif', 688, 2, 9);
INSERT INTO public.star VALUES (11, 'kaus', 145, 2, 9);
INSERT INTO public.star VALUES (12, 'rasalhague', 48, 2, 9);
INSERT INTO public.star VALUES (13, 'spica', 260, 1, 9);


--
-- Name: combine combine_combine_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.combine
    ADD CONSTRAINT combine_combine_id_key UNIQUE (combine_id);


--
-- Name: combine combine_maening_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.combine
    ADD CONSTRAINT combine_maening_key UNIQUE (maening);


--
-- Name: combine combine_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.combine
    ADD CONSTRAINT combine_pkey PRIMARY KEY (combine_id);


--
-- Name: combine combine_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.combine
    ADD CONSTRAINT combine_star_id_key UNIQUE (star_id);


--
-- Name: galaxy f_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT f_name UNIQUE (name);


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
-- Name: moon m_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT m_name UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet p_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT p_name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star s_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT s_name UNIQUE (name);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

