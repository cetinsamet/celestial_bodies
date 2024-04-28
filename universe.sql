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
-- Name: extra; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra (
    extra_id integer NOT NULL,
    name character varying(30) NOT NULL,
    notes text NOT NULL,
    mass numeric(10,2),
    a integer,
    b integer,
    c boolean,
    d boolean
);


ALTER TABLE public.extra OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extra_extra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extra_extra_id_seq OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extra_extra_id_seq OWNED BY public.extra.extra_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    is_explored boolean NOT NULL,
    has_black_hole boolean,
    number_of_stars integer,
    distance_from_earth integer,
    mass_in_solar_masses numeric(10,2),
    notes text
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
    name character varying(60) NOT NULL,
    planet_id integer,
    diameter integer NOT NULL,
    orbital_period integer,
    mass_in_earth_masses numeric(10,2),
    notes text,
    is_a boolean,
    is_b boolean
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
    name character varying(60) NOT NULL,
    star_id integer,
    diameter integer NOT NULL,
    orbital_period integer,
    mass_in_earth_masses numeric(10,2),
    notes text,
    is_a boolean,
    is_b boolean
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
    name character varying(60) NOT NULL,
    luminosity integer NOT NULL,
    temperature integer,
    galaxy_id integer,
    mass_in_solar_masses numeric(10,2),
    notes text,
    is_a boolean,
    is_b boolean
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
-- Name: extra extra_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra ALTER COLUMN extra_id SET DEFAULT nextval('public.extra_extra_id_seq'::regclass);


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
-- Data for Name: extra; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extra VALUES (1, 'a', 'blank', 1.00, 1, 0, true, false);
INSERT INTO public.extra VALUES (2, 'b', 'blank', 1.00, 1, 0, true, false);
INSERT INTO public.extra VALUES (3, 'c', 'blank', 1.00, 1, 0, true, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, false, 2000000, 26000, 850.00, 'blank');
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', false, true, 1000000, 2200000, 1200.00, 'blank');
INSERT INTO public.galaxy VALUES (3, 'Whirlpool Galaxy', true, false, 300000, 24000, 35.50, 'blank');
INSERT INTO public.galaxy VALUES (4, 'Sombrero Galaxy', true, false, 10000000, 32, 13.75, 'blank');
INSERT INTO public.galaxy VALUES (5, 'Pinwheel Galaxy', false, true, 500000, 21, 9.50, 'blank');
INSERT INTO public.galaxy VALUES (6, 'Cigar Galaxy', true, false, 20000, 7, 1.15, 'blank');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (8, 'Moon', 20, 3475, 27, 0.01, 'blank', true, true);
INSERT INTO public.moon VALUES (9, 'Koon', 21, 3475, 27, 0.01, 'blank', true, true);
INSERT INTO public.moon VALUES (10, 'Joon', 21, 3475, 27, 0.01, 'blank', true, true);
INSERT INTO public.moon VALUES (11, 'Loon', 21, 3475, 27, 0.01, 'blank', true, true);
INSERT INTO public.moon VALUES (12, 'Qoon', 21, 3475, 27, 0.01, 'blank', true, true);
INSERT INTO public.moon VALUES (13, 'Woon', 21, 3475, 27, 0.01, 'blank', true, true);
INSERT INTO public.moon VALUES (14, 'Toon', 21, 3475, 27, 0.01, 'blank', true, true);
INSERT INTO public.moon VALUES (15, 'Toonadsdasd', 21, 3475, 27, 0.01, 'blank', true, true);
INSERT INTO public.moon VALUES (16, 'Toonadsdaslklasd', 21, 3475, 27, 0.01, 'blank', true, true);
INSERT INTO public.moon VALUES (17, 'Toonadsgew', 21, 3475, 27, 0.01, 'blank', true, true);
INSERT INTO public.moon VALUES (18, 'Toonadsdadasdasdasdasd', 21, 3475, 27, 0.01, 'blank', true, true);
INSERT INTO public.moon VALUES (19, 'Toonadsdadasdasdassdasd', 21, 3475, 27, 0.01, 'blank', true, true);
INSERT INTO public.moon VALUES (20, 'Tooneqw', 21, 3475, 27, 0.01, 'blank', true, true);
INSERT INTO public.moon VALUES (21, 'Toonveqw', 21, 3475, 27, 0.01, 'blank', true, true);
INSERT INTO public.moon VALUES (22, 'Toonvbeqw', 21, 3475, 27, 0.01, 'blank', true, true);
INSERT INTO public.moon VALUES (23, 'Toonvnbeqw', 21, 3475, 27, 0.01, 'blank', true, true);
INSERT INTO public.moon VALUES (24, 'Toonvnbaeqw', 21, 3475, 27, 0.01, 'blank', true, true);
INSERT INTO public.moon VALUES (25, 'Toonvnbaeeqweqw', 21, 3475, 27, 0.01, 'blank', true, true);
INSERT INTO public.moon VALUES (26, 'Toonvnbaeaeqweqw', 21, 3475, 27, 0.01, 'blank', true, true);
INSERT INTO public.moon VALUES (27, 'Toonvnbaeaesqweqw', 21, 3475, 27, 0.01, 'blank', true, true);
INSERT INTO public.moon VALUES (28, 'Toonvnbaeaesdqweqw', 21, 3475, 27, 0.01, 'blank', true, true);
INSERT INTO public.moon VALUES (29, 'Toonvnbaeaesdqwxeqw', 21, 3475, 27, 0.01, 'blank', true, true);
INSERT INTO public.moon VALUES (30, 'Toonvnbaxeaesdqwxeqw', 21, 3475, 27, 0.01, 'blank', true, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (13, 'Earth', 1, 12742, 365, 1.00, 'Home sweet home', true, true);
INSERT INTO public.planet VALUES (14, 'Mars', 2, 67, 687, 0.11, 'Red and barren', true, true);
INSERT INTO public.planet VALUES (15, 'Venus', 3, 12100, 225, 0.82, 'Hot and dense', true, true);
INSERT INTO public.planet VALUES (16, 'Mercury', 4, 4879, 88, 0.38, 'Closest to the sun', true, true);
INSERT INTO public.planet VALUES (17, 'Neptune', 5, 51400, 165, 17.20, 'Ice giant', true, true);
INSERT INTO public.planet VALUES (18, 'Uranus', 6, 51118, 84, 15.20, 'Tilted planet', true, true);
INSERT INTO public.planet VALUES (19, 'Saturn', 1, 116460, 29, 95.10, 'Ringmaster', true, true);
INSERT INTO public.planet VALUES (20, 'Jupiter', 2, 142984, 10, 318.00, 'Gas giant', true, true);
INSERT INTO public.planet VALUES (21, 'Mercury Jr.', 3, 3000, 50, 0.05, 'Mini Mercury', true, true);
INSERT INTO public.planet VALUES (22, 'Venus Jr.', 3, 6000, 100, 0.10, 'Mini Venus', true, true);
INSERT INTO public.planet VALUES (23, 'Mars Jr.', 4, 2000, 80, 0.02, 'Mini Mars', true, true);
INSERT INTO public.planet VALUES (24, 'Neptune Jr.', 5, 4000, 120, 0.20, 'Mini Neptune', true, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 25, 55, 1, 2.00, 'blank', true, true);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 24, 35, 2, 10.00, 'blank', true, true);
INSERT INTO public.star VALUES (3, 'Sirius A', 24, 97, 3, 2.00, 'blank', true, true);
INSERT INTO public.star VALUES (4, 'Rigel', 25, 12000, 4, 15.00, 'blank', true, true);
INSERT INTO public.star VALUES (5, 'Alpha Centauri A', 24, 58, 5, 2.00, 'blank', true, true);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 23, 55, 6, 1.50, 'blank', true, true);


--
-- Name: extra_extra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extra_extra_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 30, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: extra extra_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_name_key UNIQUE (name);


--
-- Name: extra extra_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_pkey PRIMARY KEY (extra_id);


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

