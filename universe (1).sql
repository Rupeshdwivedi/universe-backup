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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth numeric(10,5),
    galaxy_types character varying(30) NOT NULL,
    size integer
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
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    moon_des character varying(30) NOT NULL,
    oxygen boolean
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
    name character varying(30) NOT NULL,
    planet_types text,
    planet_des character varying(30) NOT NULL,
    age integer
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
-- Name: satelite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satelite (
    satelite_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_types text,
    planet_des character varying(30) NOT NULL
);


ALTER TABLE public.satelite OWNER TO freecodecamp;

--
-- Name: satelite_satelite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satelite_satelite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satelite_satelite_id_seq OWNER TO freecodecamp;

--
-- Name: satelite_satelite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satelite_satelite_id_seq OWNED BY public.satelite.satelite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_spherical boolean,
    has_life character varying(30) NOT NULL,
    glowing boolean
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: satelite satelite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelite ALTER COLUMN satelite_id SET DEFAULT nextval('public.satelite_satelite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1899.22000, 'Intro Media', 774);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 1899.22000, 'Intro Media', 774);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 1899.22000, 'Intro Media', 774);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 1899.22000, 'Intro Media', 774);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 1899.22000, 'Intro Media', 774);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 1899.22000, 'Intro Media', 774);
INSERT INTO public.galaxy VALUES (7, 'Pinwheel', 1899.22000, 'Intro Media', 774);
INSERT INTO public.galaxy VALUES (8, 'Black Eye', 1899.22000, 'Intro Media', 774);
INSERT INTO public.galaxy VALUES (9, 'Messier 87', 1899.22000, 'Intro Media', 774);
INSERT INTO public.galaxy VALUES (10, 'Large Magellanic Cloud', 1899.22000, 'Intro Media', 774);
INSERT INTO public.galaxy VALUES (11, 'Small Magellanic Cloud', 1899.22000, 'Intro Media', 774);
INSERT INTO public.galaxy VALUES (12, 'Messier 81', 1899.22000, 'Intro Media', 774);
INSERT INTO public.galaxy VALUES (13, 'Messier 82', 1899.22000, 'Intro Media', 774);
INSERT INTO public.galaxy VALUES (14, 'Centaurus A', 1899.22000, 'Intro Media', 774);
INSERT INTO public.galaxy VALUES (15, 'NGC 1300', 1899.22000, 'Intro Media', 774);
INSERT INTO public.galaxy VALUES (16, 'NGC 6744', 1899.22000, 'Intro Media', 774);
INSERT INTO public.galaxy VALUES (17, 'IC 1101', 1899.22000, 'Intro Media', 774);
INSERT INTO public.galaxy VALUES (18, 'Hoag’s Object', 1899.22000, 'Intro Media', 774);
INSERT INTO public.galaxy VALUES (19, 'Tadpole Galaxy', 1899.22000, 'Intro Media', 774);
INSERT INTO public.galaxy VALUES (20, 'Sunflower Galaxy', 1899.22000, 'Intro Media', 774);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Milky Way', 384400, 'Earth’s natural satellite.', true);
INSERT INTO public.moon VALUES (2, 'Andromeda', 785000, 'A barren rocky moon.', false);
INSERT INTO public.moon VALUES (3, 'Triangulum', 620000, 'An icy moon with craters.', false);
INSERT INTO public.moon VALUES (4, 'Sombrero', 450000, 'Covered in volcanic plains.', true);
INSERT INTO public.moon VALUES (5, 'Whirlpool', 970000, 'A dense atmosphere moon.', false);
INSERT INTO public.moon VALUES (6, 'Cartwheel', 850000, 'Known for frozen lakes.', false);
INSERT INTO public.moon VALUES (7, 'Pinwheel', 720000, 'Rich in metals and minerals.', false);
INSERT INTO public.moon VALUES (8, 'Black Eye', 630000, 'Craters from asteroids.', true);
INSERT INTO public.moon VALUES (9, 'Messier 87', 940000, 'Smooth surface moon.', false);
INSERT INTO public.moon VALUES (10, 'Large Magellanic Cloud', 810000, 'Rocky with high cliffs.', true);
INSERT INTO public.moon VALUES (11, 'Small Magellanic Cloud', 670000, 'Dusty and barren surface.', false);
INSERT INTO public.moon VALUES (12, 'Messier 81', 590000, 'Highly reflective moon.', true);
INSERT INTO public.moon VALUES (13, 'Messier 82', 980000, 'Active geysers on surface.', false);
INSERT INTO public.moon VALUES (14, 'Centaurus A', 770000, 'Cold and icy terrain.', true);
INSERT INTO public.moon VALUES (15, 'NGC 1300', 650000, 'Frequent meteor showers.', false);
INSERT INTO public.moon VALUES (16, 'NGC 6744', 880000, 'Volcanic activity present.', true);
INSERT INTO public.moon VALUES (17, 'IC 1101', 500000, 'Dark and rocky appearance.', false);
INSERT INTO public.moon VALUES (18, 'Hoag’s Object', 720000, 'Features underground caves.', false);
INSERT INTO public.moon VALUES (19, 'Tadpole Galaxy', 820000, 'Greenish glowing surface.', true);
INSERT INTO public.moon VALUES (20, 'Sunflower Galaxy', 680000, 'Frozen methane spots.', false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Milky Way', 'Terrestrial', 'A rocky planet.', 5);
INSERT INTO public.planet VALUES (2, 'Andromeda', 'Gas Giant', 'A massive gas planet.', 5);
INSERT INTO public.planet VALUES (3, 'Triangulum', 'Ice Giant', 'A frozen surface.', 4);
INSERT INTO public.planet VALUES (4, 'Sombrero', 'Dwarf', 'Small with low gravity.', 2);
INSERT INTO public.planet VALUES (5, 'Whirlpool', 'Terrestrial', 'Dense rocky terrain.', 4);
INSERT INTO public.planet VALUES (6, 'Cartwheel', 'Gas Giant', 'Thick gas layers.', 6);
INSERT INTO public.planet VALUES (7, 'Pinwheel', 'Terrestrial', 'Rich in minerals.', 5);
INSERT INTO public.planet VALUES (8, 'Black Eye', 'Ice Giant', 'Covered in ice.', 4);
INSERT INTO public.planet VALUES (9, 'Messier 87', 'Gas Giant', 'Hydrogen and helium.', 5);
INSERT INTO public.planet VALUES (10, 'Large Magellanic Cloud', 'Terrestrial', 'Rocky surface.', 4);
INSERT INTO public.planet VALUES (11, 'Small Magellanic Cloud', 'Dwarf', 'Barren surface.', 2);
INSERT INTO public.planet VALUES (12, 'Messier 81', 'Terrestrial', 'Land and water.', 5);
INSERT INTO public.planet VALUES (13, 'Messier 82', 'Gas Giant', 'Storms and thick gases.', 6);
INSERT INTO public.planet VALUES (14, 'Centaurus A', 'Ice Giant', 'Methane and water ice.', 4);
INSERT INTO public.planet VALUES (15, 'NGC 1300', 'Terrestrial', 'Rugged mountains.', 4);
INSERT INTO public.planet VALUES (16, 'NGC 6744', 'Gas Giant', 'Rapid currents.', 6);
INSERT INTO public.planet VALUES (17, 'IC 1101', 'Dwarf', 'Tiny and rocky.', 2);
INSERT INTO public.planet VALUES (18, 'Hoag’s Object', 'Ice Giant', 'Icy surface.', 4);
INSERT INTO public.planet VALUES (19, 'Tadpole Galaxy', 'Terrestrial', 'Diverse landscapes.', 5);
INSERT INTO public.planet VALUES (20, 'Sunflower Galaxy', 'Gas Giant', 'Swirling gases.', 6);


--
-- Data for Name: satelite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satelite VALUES (1, 'MilkyW', 'Rocky', 'Terrestrial sat. Earth');
INSERT INTO public.satelite VALUES (2, 'Androm', 'Gaseous', 'Gas sat. distant planet');
INSERT INTO public.satelite VALUES (3, 'Triang', 'Icy', 'Icy sat. frozen terrain');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Milky Way', true, 'false', true);
INSERT INTO public.star VALUES (2, 'Andromeda', true, 'false', true);
INSERT INTO public.star VALUES (3, 'Triangulum', true, 'false', true);
INSERT INTO public.star VALUES (4, 'Sombrero', true, 'false', true);
INSERT INTO public.star VALUES (5, 'Whirlpool', true, 'false', true);
INSERT INTO public.star VALUES (6, 'Cartwheel', true, 'false', true);
INSERT INTO public.star VALUES (7, 'Pinwheel', true, 'false', true);
INSERT INTO public.star VALUES (8, 'Black Eye', true, 'false', true);
INSERT INTO public.star VALUES (9, 'Messier 87', true, 'false', true);
INSERT INTO public.star VALUES (10, 'Large Magellanic Cloud', true, 'false', true);
INSERT INTO public.star VALUES (11, 'Small Magellanic Cloud', true, 'false', true);
INSERT INTO public.star VALUES (12, 'Messier 81', true, 'false', true);
INSERT INTO public.star VALUES (13, 'Messier 82', true, 'false', true);
INSERT INTO public.star VALUES (14, 'Centaurus A', true, 'false', true);
INSERT INTO public.star VALUES (15, 'NGC 1300', true, 'false', true);
INSERT INTO public.star VALUES (16, 'NGC 6744', true, 'false', true);
INSERT INTO public.star VALUES (17, 'IC 1101', true, 'false', true);
INSERT INTO public.star VALUES (18, 'Hoag’s Object', true, 'false', true);
INSERT INTO public.star VALUES (19, 'Tadpole Galaxy', true, 'false', true);
INSERT INTO public.star VALUES (20, 'Sunflower Galaxy', true, 'false', true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: satelite_satelite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satelite_satelite_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: satelite satelite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelite
    ADD CONSTRAINT satelite_name_key UNIQUE (name);


--
-- Name: satelite satelite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelite
    ADD CONSTRAINT satelite_pkey PRIMARY KEY (satelite_id);


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
-- Name: moon moon_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_fkey FOREIGN KEY (name) REFERENCES public.moon(name);


--
-- Name: moon moon_name_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_fkey1 FOREIGN KEY (name) REFERENCES public.planet(name);


--
-- Name: planet planet_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_fkey FOREIGN KEY (name) REFERENCES public.star(name);


--
-- Name: star star_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_fkey FOREIGN KEY (name) REFERENCES public.galaxy(name);


--
-- PostgreSQL database dump complete
--

