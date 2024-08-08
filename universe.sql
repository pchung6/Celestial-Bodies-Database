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
    comet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    year_discovered integer NOT NULL,
    distance_to_earth bigint,
    comet_type character varying(20)
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_type character varying(40) NOT NULL,
    year_discovered integer,
    brightness_in_magnitude numeric
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
    is_spherical boolean NOT NULL,
    distance_to_closest_planet integer,
    closest_planet character varying(30),
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
    name character varying(30) NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL,
    closest_star character varying(30),
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
    name character varying(30) NOT NULL,
    star_type character varying(20) NOT NULL,
    in_what_galaxy character varying(30) NOT NULL,
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Halley''s Comet', 1758, 2800000, 'Short-Period Comet');
INSERT INTO public.comet VALUES (2, 'Hale–Bopp', 1995, 122000000, 'Long-Period Comet');
INSERT INTO public.comet VALUES (3, 'Borrelly', 1904, 513000000, 'Jupiter-Family Comet');
INSERT INTO public.comet VALUES (4, 'Encke', 1786, 215000000, 'Encke-Type Comet');
INSERT INTO public.comet VALUES (5, 'Hyakutake', 1996, 4800000000, 'Long-Period Comet');
INSERT INTO public.comet VALUES (6, 'Wild 2', 1978, 55000000, 'Fresh Periodic Comet');
INSERT INTO public.comet VALUES (7, 'Tempel 1', 1867, 48000000, 'Jupiter-Family Comet');
INSERT INTO public.comet VALUES (8, 'Lovejoy', 2011, 45500000, 'Long-Period Comet');
INSERT INTO public.comet VALUES (9, 'Biela''s Comet', 1826, 3700000, 'Jupiter-Family Comet');
INSERT INTO public.comet VALUES (10, 'Brooks 2', 1889, 199700000, 'Jupiter-Family Comet');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (3, 'Large Magellanic Cloud', 'Dwarf Irregular Satellite', 1519, 0.9);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 'Barred Spiral', 1924, 3.4);
INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Barred Spiral', 1610, -5.1);
INSERT INTO public.galaxy VALUES (4, 'Small Magellanic Cloud', 'Dwarf Irregular', 1521, 2.7);
INSERT INTO public.galaxy VALUES (5, 'Hoag''s Object', 'Ring', 1950, 16.2);
INSERT INTO public.galaxy VALUES (6, 'Baby Boom Galaxy', 'Starburst', 2008, 27.8);
INSERT INTO public.galaxy VALUES (7, 'Cartwheel Galaxy', 'Lenticular Ring', 1941, 15.2);
INSERT INTO public.galaxy VALUES (8, 'Cigar Galaxy', 'Starburst', 1774, 8.4);
INSERT INTO public.galaxy VALUES (9, 'Triangulum Galaxy', 'Spiral', 1654, 5.7);
INSERT INTO public.galaxy VALUES (10, 'Whirlpool Galaxy', 'Spiral', 1773, 8.4);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', true, 238900, 'Earth', 3);
INSERT INTO public.moon VALUES (2, 'Titan', true, 759000, 'Saturn', 6);
INSERT INTO public.moon VALUES (3, 'Hyperion', false, 933000, 'Saturn', 6);
INSERT INTO public.moon VALUES (4, 'Proteus', false, 73000, 'Neptune', 8);
INSERT INTO public.moon VALUES (5, 'Ganymede', true, 665000, 'Jupiter', 5);
INSERT INTO public.moon VALUES (6, 'Europa', true, 417000, 'Jupiter', 5);
INSERT INTO public.moon VALUES (7, 'Miranda', true, 80000, 'Uranus', 7);
INSERT INTO public.moon VALUES (8, 'Triton', true, 220500, 'Neptune', 8);
INSERT INTO public.moon VALUES (9, 'Phobos', false, 3700, 'Mars', 4);
INSERT INTO public.moon VALUES (10, 'Deimos', false, 14500, 'Mars', 4);
INSERT INTO public.moon VALUES (11, 'Atlas', false, 85500, 'Saturn', 6);
INSERT INTO public.moon VALUES (12, 'Callisto', true, 1170000, 'Jupiter', 5);
INSERT INTO public.moon VALUES (13, 'Dione', true, 234500, 'Saturn', 6);
INSERT INTO public.moon VALUES (14, 'Enceladus', true, 148000, 'Saturn', 6);
INSERT INTO public.moon VALUES (15, 'Thalassa', false, 31000, 'Neptune', 8);
INSERT INTO public.moon VALUES (16, 'Titania', true, 270000, 'Uranus', 7);
INSERT INTO public.moon VALUES (17, 'Epimetheus', false, 94000, 'Saturn', 6);
INSERT INTO public.moon VALUES (18, 'Io', true, 262000, 'Jupiter', 5);
INSERT INTO public.moon VALUES (19, 'Mimas', true, 115000, 'Saturn', 6);
INSERT INTO public.moon VALUES (20, 'Iapetus', true, 2213000, 'Saturn', 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'The smallest planet in our solar system, and the nearest to the Sun.', false, 'Sol', 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'The second planet from the Sun, and Earth''s closest planetary neighbor.', false, 'Sol', 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Our home planet. The third planet from the Sun, and the fifth largest planet.', true, 'Sol', 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'The fourth planet from the Sun. A dusty, cold, desert world with a very thin atmosphere.', false, 'Sol', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'The fifth planet from the Sun. The largest planet in our solar system.', false, 'Sol', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'The sixth planet from the Sun, the second-largest planet in our solar system.', false, 'Sol', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'The seventh planet from the Sun. It has the third largest diameter of planets in our solar system.', false, 'Sol', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'The eighth and most distant planet in our solar system.', false, 'Sol', 1);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', 'An exoplanet orbiting the Sun-like star Kepler-22. It''s located about 620 light-years from Earth.', false, 'Kepler-22', 5);
INSERT INTO public.planet VALUES (10, 'Kepler-186f', 'An Earth-sized exoplanet orbiting the red dwarf star Kepler-186. It''s located about 580 light-years from Earth.', false, 'Kepler-186', 6);
INSERT INTO public.planet VALUES (11, '14 Andromedae b', 'A gas giant exoplanet that is orbiting the giant star Veritate. It''s located about 250 light-years from Earth.', false, 'Veritate', 7);
INSERT INTO public.planet VALUES (12, 'Gliese 96 b', 'An exoplanet that orbits the red dwarf star Gliese 96. It''s located about 40 light-years from Earth.', false, 'Gliese 96', 8);
INSERT INTO public.planet VALUES (13, 'Kepler-20b', 'An exoplanet orbiting the yellow dwarf star Kepler-20. It''s located about 922 light-years from Earth.', false, 'Kepler-20', 9);
INSERT INTO public.planet VALUES (14, 'HD 16175 b', 'An exoplanet orbiting the yellow dwarf star Buna. It''s located about 195 light-years from Earth.', false, 'Buna', 10);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 'Yellow Dwarf', 'Milky Way', 1);
INSERT INTO public.star VALUES (2, 'UY Scuti', 'Red Hypergiant', 'Milky Way', 1);
INSERT INTO public.star VALUES (3, 'Arcturus', 'Red Giant', 'Milky Way', 1);
INSERT INTO public.star VALUES (4, 'Alpheratz', 'Blue-White Subgiant', 'Andromeda Galaxy', 2);
INSERT INTO public.star VALUES (5, 'Kepler-22', 'Yellow Dwarf', 'Milky Way', 1);
INSERT INTO public.star VALUES (6, 'Kepler-186', 'Red Dwarf', 'Milky Way', 1);
INSERT INTO public.star VALUES (7, 'Veritate', 'Giant', 'Andromeda Galaxy', 2);
INSERT INTO public.star VALUES (8, 'Gliese 96', 'Red Dwarf', 'Andromeda Galaxy', 2);
INSERT INTO public.star VALUES (9, 'Kepler-20', 'Yellow Dwarf', 'Milky Way', 1);
INSERT INTO public.star VALUES (10, 'Buna', 'Yellow Dwarf', 'Andromeda Galaxy', 2);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 10, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


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
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

