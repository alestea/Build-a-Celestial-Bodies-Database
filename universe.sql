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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    name character varying NOT NULL,
    comet_id integer NOT NULL,
    description text,
    is_spherical boolean
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life integer,
    wikipedia_no numeric(5,1),
    description text,
    is_spherical boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life integer,
    wikipedia_no numeric(5,1),
    description text,
    is_spherical boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life integer,
    wikipedia_no numeric(5,1),
    description text,
    is_spherical boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life integer,
    wikipedia_no numeric(5,1),
    description text,
    is_spherical boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES ('Halley', 1, NULL, NULL);
INSERT INTO public.comet VALUES ('Wild 2', 2, NULL, NULL);
INSERT INTO public.comet VALUES ('Cornet', 3, NULL, NULL);
INSERT INTO public.comet VALUES ('Tempel 1', 4, NULL, NULL);
INSERT INTO public.comet VALUES ('Borrolley', 5, NULL, NULL);
INSERT INTO public.comet VALUES ('Holmes', 6, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Jupyter', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Mars', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Venus', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Mercury', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Uranus', NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Callisto', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Wolf', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, 'Strawberry', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (4, 'beaver', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (5, 'Ayla', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'Ellara', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, 'Harvest', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (8, 'Helene', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (9, 'Oberon', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (10, 'Artemis', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (11, 'Titan', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (12, 'Belinay', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (13, 'Aadhira', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (14, 'Caliban', NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (15, 'Sturgeon', NULL, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (16, 'Flower', NULL, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (17, 'Worm', NULL, NULL, NULL, NULL, 11);
INSERT INTO public.moon VALUES (18, 'Buck', NULL, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES (19, 'Europa', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (20, 'Hunter', NULL, NULL, NULL, NULL, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Atehria', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, 'Azuron', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (4, 'Arctara', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (5, 'Andoria', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (6, 'Aquivar', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (7, 'Alpharion', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (8, 'Aureon', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (9, 'Astraia', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (10, 'Azenoth', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (11, 'Arkadia', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (12, 'Avalara', NULL, NULL, NULL, NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Antares', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'Acamar', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 'Altair', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (4, 'Acubens', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (5, 'Astra', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 'Orion', NULL, NULL, NULL, NULL, 6);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


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

