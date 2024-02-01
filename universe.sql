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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    shape text,
    size numeric NOT NULL,
    has_black_hole boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: meteor; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meteor (
    meteor_id integer NOT NULL,
    name character varying(255) NOT NULL,
    type text,
    size numeric NOT NULL,
    is_dangerous boolean NOT NULL
);


ALTER TABLE public.meteor OWNER TO freecodecamp;

--
-- Name: meteor_meteor_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.meteor_meteor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meteor_meteor_id_seq OWNER TO freecodecamp;

--
-- Name: meteor_meteor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.meteor_meteor_id_seq OWNED BY public.meteor.meteor_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    type text,
    diameter integer,
    is_in_habitable_zone boolean NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    type text,
    radius integer,
    has_ring boolean NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    type text,
    age integer,
    is_main_sequence boolean NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: meteor meteor_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor ALTER COLUMN meteor_id SET DEFAULT nextval('public.meteor_meteor_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 100000, false);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 120000, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Irregular', 50000, false);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'Spiral', 30000, false);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'Spiral', 40000, false);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 'Elliptical', 80000, true);


--
-- Data for Name: meteor; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meteor VALUES (1, 'Chelyabinsk', 'Stony', 20, true);
INSERT INTO public.meteor VALUES (2, 'Tunguska', 'Stony-Iron', 50, true);
INSERT INTO public.meteor VALUES (3, 'Perseids', 'Asteroid Shower', 40, false);
INSERT INTO public.meteor VALUES (4, 'Leonids', 'Meteor Shower', 70, false);
INSERT INTO public.meteor VALUES (5, 'Halley''s Comet', 'Comet', 60, true);
INSERT INTO public.meteor VALUES (6, 'Apophis', 'Near-Earth Asteroid', 370, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Terrestrial', 3475, true, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Irregular', 22, false, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Irregular', 12, false, 2);
INSERT INTO public.moon VALUES (4, 'Io', 'Volcanic', 3637, true, 3);
INSERT INTO public.moon VALUES (5, 'Europa', 'Ice', 3122, true, 3);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Ice', 5268, true, 3);
INSERT INTO public.moon VALUES (7, 'Titan', 'Thick Atmosphere', 5150, true, 4);
INSERT INTO public.moon VALUES (8, 'Enceladus', 'Ice', 504, true, 4);
INSERT INTO public.moon VALUES (9, 'Triton', 'Cold', 2707, true, 5);
INSERT INTO public.moon VALUES (10, 'Titania', 'Ice', 1578, true, 6);
INSERT INTO public.moon VALUES (11, 'Oberon', 'Ice', 1522, true, 6);
INSERT INTO public.moon VALUES (12, 'Charon', 'Dwarf Moon', 606, false, 9);
INSERT INTO public.moon VALUES (13, 'Phoebe', 'Irregular', 220, false, 5);
INSERT INTO public.moon VALUES (14, 'Callisto', 'Ice', 4821, true, 3);
INSERT INTO public.moon VALUES (15, 'Rhea', 'Ice', 1528, true, 4);
INSERT INTO public.moon VALUES (16, 'Iapetus', 'Irregular', 1469, false, 4);
INSERT INTO public.moon VALUES (17, 'Miranda', 'Ice', 471, true, 5);
INSERT INTO public.moon VALUES (18, 'Ariel', 'Ice', 1157, true, 6);
INSERT INTO public.moon VALUES (19, 'Umbriel', 'Ice', 1169, true, 6);
INSERT INTO public.moon VALUES (20, 'Dione', 'Ice', 1123, true, 4);
INSERT INTO public.moon VALUES (21, 'Hyperion', 'Irregular', 360, false, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Terrestrial', 6371, false, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'Terrestrial', 3389, false, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'Gas Giant', 71492, true, 2);
INSERT INTO public.planet VALUES (4, 'Saturn', 'Gas Giant', 60268, true, 5);
INSERT INTO public.planet VALUES (5, 'Neptune', 'Ice Giant', 24622, true, 2);
INSERT INTO public.planet VALUES (6, 'Uranus', 'Ice Giant', 25362, true, 2);
INSERT INTO public.planet VALUES (7, 'Venus', 'Terrestrial', 6051, false, 1);
INSERT INTO public.planet VALUES (8, 'Mercury', 'Terrestrial', 2439, false, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Dwarf Planet', 1188, false, 2);
INSERT INTO public.planet VALUES (10, 'Mars II', 'Terrestrial', 6800, false, 3);
INSERT INTO public.planet VALUES (11, 'Jupiter II', 'Gas Giant', 82000, true, 4);
INSERT INTO public.planet VALUES (12, 'Saturn II', 'Gas Giant', 70000, true, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G-type', 50000, true, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'A-type', 20000, true, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'M-type', 10000, true, 2);
INSERT INTO public.star VALUES (4, 'Alpla Centauri', 'G-type', 6000, true, 1);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 'M-type', 5000, true, 1);
INSERT INTO public.star VALUES (6, 'Antares', 'M-type', 1200, true, 4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: meteor_meteor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.meteor_meteor_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: meteor meteor_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_name_key UNIQUE (name);


--
-- Name: meteor meteor_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_pkey PRIMARY KEY (meteor_id);


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
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id) ON DELETE CASCADE;


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id) ON DELETE CASCADE;


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

