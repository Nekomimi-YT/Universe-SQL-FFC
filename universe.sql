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
-- Name: cosmic; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.cosmic (
    cosmic_id integer NOT NULL,
    name character varying(25) NOT NULL,
    description text,
    is_theoretical boolean
);


ALTER TABLE public.cosmic OWNER TO freecodecamp;

--
-- Name: cosmic_cosmic_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.cosmic_cosmic_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cosmic_cosmic_id_seq OWNER TO freecodecamp;

--
-- Name: cosmic_cosmic_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.cosmic_cosmic_id_seq OWNED BY public.cosmic.cosmic_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    type character varying(25) NOT NULL,
    discoverer character varying(25),
    discovery_year integer,
    visible_unaided boolean
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20),
    planet_id integer NOT NULL,
    discovery_year integer,
    discoverer character varying(30)
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
    name character varying(20),
    distance_from_sun_millions_km integer,
    num_of_moons integer,
    density_g_cm3 numeric(3,2),
    description text NOT NULL,
    has_life boolean,
    has_rings boolean,
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
    name character varying(20) NOT NULL,
    galaxy_id integer,
    discovery_year integer,
    visible_unaided boolean
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
-- Name: cosmic cosmic_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cosmic ALTER COLUMN cosmic_id SET DEFAULT nextval('public.cosmic_cosmic_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: cosmic; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.cosmic VALUES (1, 'black holes', 'super dense objects that light cannot escape', false);
INSERT INTO public.cosmic VALUES (2, 'comets', 'can stay far away from my planet thank you', false);
INSERT INTO public.cosmic VALUES (3, 'dark matter', 'strange invisible stuff, but is it real?', true);
INSERT INTO public.cosmic VALUES (4, 'aliens', 'beings not from earth', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'barred spiral', 'Galileo', 1610, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'barred spiral', 'Abd al-Rahman al-Sufi', 964, true);
INSERT INTO public.galaxy VALUES (3, 'Barnards Galaxy', 'barred irregular', 'Barnard', 1884, false);
INSERT INTO public.galaxy VALUES (4, 'Cetus Dwarf', 'dwarf spheroidal', 'Irwin', 1999, false);
INSERT INTO public.galaxy VALUES (5, 'Triangulum Galaxy', 'spiral', 'Hodierna', 1654, true);
INSERT INTO public.galaxy VALUES (6, 'GR 8', 'dwarf irregular', 'Lick Observatory', 1947, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Io', 6, 1610, 'Galileo');
INSERT INTO public.moon VALUES (2, 'Europa', 6, 1610, 'Galileo');
INSERT INTO public.moon VALUES (3, 'Callisto', 6, 1610, 'Galileo');
INSERT INTO public.moon VALUES (4, 'Ganymede', 6, 1610, 'Galileo');
INSERT INTO public.moon VALUES (5, 'Pandia', 6, 2017, 'Sheppard et al');
INSERT INTO public.moon VALUES (6, 'Leda', 6, 1974, 'Kowal');
INSERT INTO public.moon VALUES (7, 'Metis', 6, 1979, 'Synnott (Voyager 1)');
INSERT INTO public.moon VALUES (8, 'Deimos', 5, 1877, 'Hall');
INSERT INTO public.moon VALUES (9, 'Phobos', 5, 1877, 'Hall');
INSERT INTO public.moon VALUES (10, 'Prometheus', 7, 1980, 'Voyager 1');
INSERT INTO public.moon VALUES (11, 'Atlas', 7, 1980, 'Voyager 1');
INSERT INTO public.moon VALUES (12, 'Pandora', 7, 1980, 'Voyager 1');
INSERT INTO public.moon VALUES (13, 'Janus', 7, 1966, 'Dollfus');
INSERT INTO public.moon VALUES (14, 'Pan', 7, 1990, 'Showalter');
INSERT INTO public.moon VALUES (15, 'Calypso', 7, 1980, 'Pascu et al');
INSERT INTO public.moon VALUES (16, 'Titan', 7, 1655, 'Huygens');
INSERT INTO public.moon VALUES (17, 'Oberon', 8, 1787, 'Herschel');
INSERT INTO public.moon VALUES (18, 'MTitania', 8, 1787, 'Herschel');
INSERT INTO public.moon VALUES (19, 'Miranda', 8, 1948, 'Kulper');
INSERT INTO public.moon VALUES (20, 'Triton', 9, 1846, 'Lassell');
INSERT INTO public.moon VALUES (21, 'Proteus', 9, 1989, 'Voyager Science Team');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Mercury', 58, 0, 5.43, 'hot hot hot number 1', false, false, 6);
INSERT INTO public.planet VALUES (3, 'Venus', 108, 0, 5.24, 'Second from our sun', false, false, 6);
INSERT INTO public.planet VALUES (4, 'Earth', 150, 1, 5.51, 'Happy blue planet', true, false, 6);
INSERT INTO public.planet VALUES (5, 'Mars', 228, 2, 3.93, 'Red number 4', false, false, 6);
INSERT INTO public.planet VALUES (6, 'Jupiter', 778, 80, 1.33, 'the largest planet here', false, true, 6);
INSERT INTO public.planet VALUES (7, 'Saturn', 1427, 83, 0.69, 'sixth planet', false, true, 6);
INSERT INTO public.planet VALUES (8, 'Uranus', 2871, 27, 1.27, 'planet of jokes', false, true, 6);
INSERT INTO public.planet VALUES (9, 'Neptune', 4497, 14, 1.64, 'Eighth and blue and chilly', false, true, 6);
INSERT INTO public.planet VALUES (20, 'Ross 128 B', 990000, NULL, NULL, 'Earth sized, but rocky. Inhabitable?', NULL, NULL, 3);
INSERT INTO public.planet VALUES (21, 'Lalande 21185 C', 722700, NULL, NULL, 'Disputed but confirmed in 2021', NULL, NULL, 4);
INSERT INTO public.planet VALUES (18, 'Proxima Centauri B', 384300, NULL, NULL, 'Orbits red dwarf star Proxima Centauri', NULL, NULL, 5);
INSERT INTO public.planet VALUES (19, 'Gliese 393 B', 2065500, NULL, NULL, 'Discovered only in 2021', NULL, NULL, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Luytens Star', 1, 1935, false);
INSERT INTO public.star VALUES (3, 'Ross 128', 1, 1926, false);
INSERT INTO public.star VALUES (4, 'Lalande 21185', 1, 1801, false);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 1, 1915, false);
INSERT INTO public.star VALUES (6, 'The Sun', 1, NULL, true);
INSERT INTO public.star VALUES (2, 'Gliese 393', 1, NULL, false);


--
-- Name: cosmic_cosmic_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.cosmic_cosmic_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 21, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: cosmic cosmic_cosmic_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cosmic
    ADD CONSTRAINT cosmic_cosmic_id_key UNIQUE (cosmic_id);


--
-- Name: cosmic cosmic_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cosmic
    ADD CONSTRAINT cosmic_pkey PRIMARY KEY (cosmic_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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
