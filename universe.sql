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
    name character varying(30) NOT NULL,
    gal_col_bool boolean,
    gal_col_int1 integer,
    gal_col_int2 integer,
    gal_col_num numeric(3,1),
    gal_col_text1 character varying(50),
    gal_col_text2 character varying(50),
    galaxy_id integer NOT NULL,
    galaxy_descp text
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
    name character varying(30) NOT NULL,
    mon_col_bool boolean,
    mon_col_int1 integer,
    mon_col_int2 integer,
    mon_col_num numeric(3,1),
    mon_col_text1 character varying(50),
    mon_col_text2 character varying(50),
    moon_id integer NOT NULL,
    moon_descp text,
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
    name character varying(30) NOT NULL,
    plan_col_bool boolean,
    plan_col_int1 integer,
    plan_col_int2 integer,
    plan_col_num numeric(3,1),
    plan_col_text1 character varying(50),
    plan_col_text2 character varying(50),
    planet_id integer NOT NULL,
    planet_descp text,
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
    name character varying(30) NOT NULL,
    star_col_bool boolean,
    star_col_int1 integer,
    star_col_int2 integer,
    star_col_num numeric(3,1),
    star_col_text1 character varying(50),
    star_col_text2 character varying(50),
    star_id integer NOT NULL,
    star_descp text,
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
-- Name: table5; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.table5 (
    table5_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.table5 OWNER TO freecodecamp;

--
-- Name: table5_table5_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.table5_table5_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.table5_table5_id_seq OWNER TO freecodecamp;

--
-- Name: table5_table5_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.table5_table5_id_seq OWNED BY public.table5.table5_id;


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
-- Name: table5 table5_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table5 ALTER COLUMN table5_id SET DEFAULT nextval('public.table5_table5_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('a1', true, 100, 200, 3.1, 'b1', 'c1', 1, 'dummy 1');
INSERT INTO public.galaxy VALUES ('a2', false, 101, 201, 3.2, 'b2', 'c2', 2, 'dummy 2');
INSERT INTO public.galaxy VALUES ('a3', false, 102, 203, 4.2, 'b6', 'c6', 3, 'dumy 2');
INSERT INTO public.galaxy VALUES ('a4', true, 104, 203, 3.4, 'b4', 'c4', 5, 'dummy 2');
INSERT INTO public.galaxy VALUES ('a5', true, 105, 205, 8.1, 'b6', 'c7', 6, 'dummy 3');
INSERT INTO public.galaxy VALUES ('a6', false, 104, 204, 4.2, 'b3', 'c4', 4, 'dummy 4');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('M1', false, 111, 222, 3.3, 'ABC', 'DEF', 1, 'GHIJKLMN', 1);
INSERT INTO public.moon VALUES ('M2', true, 111, 222, 3.3, 'ABC', 'DEF', 2, 'GHIJKLMN', 2);
INSERT INTO public.moon VALUES ('M4', true, 111, 222, 3.3, 'ABC', 'DEF', 4, 'GHIJKLMN', 4);
INSERT INTO public.moon VALUES ('M5', false, 111, 222, 3.3, 'ABC', 'DEF', 5, 'GHIJKLMN', 5);
INSERT INTO public.moon VALUES ('M6', true, 111, 222, 3.3, 'ABC', 'DEF', 6, 'GHIJKLMN', 6);
INSERT INTO public.moon VALUES ('M7', true, 111, 222, 3.3, 'ABC', 'DEF', 7, 'GHIJKLMN', 7);
INSERT INTO public.moon VALUES ('M8', true, 111, 222, 3.3, 'ABC', 'DEF', 8, 'GHIJKLMN', 8);
INSERT INTO public.moon VALUES ('M9', true, 111, 222, 3.3, 'ABC', 'DEF', 9, 'GHIJKLMN', 9);
INSERT INTO public.moon VALUES ('M10', true, 111, 222, 3.3, 'ABC', 'DEF', 10, 'GHIJKLMN', 10);
INSERT INTO public.moon VALUES ('M11', true, 111, 222, 3.3, 'ABC', 'DEF', 11, 'GHIJKLMN', 11);
INSERT INTO public.moon VALUES ('M12', true, 111, 222, 3.3, 'ABC', 'DEF', 12, 'GHIJKLMN', 12);
INSERT INTO public.moon VALUES ('M3', false, 987, 654, 5.4, 'qwe', 'rty', 3, 'UiOp', 3);
INSERT INTO public.moon VALUES ('MM1', false, 111, 222, 3.3, 'ABC', 'DEF', 13, 'GHIJKLMN', 1);
INSERT INTO public.moon VALUES ('MM2', true, 111, 222, 3.3, 'ABC', 'DEF', 22, 'GHIJKLMN', 2);
INSERT INTO public.moon VALUES ('MM4', true, 111, 222, 3.3, 'ABC', 'DEF', 14, 'GHIJKLMN', 4);
INSERT INTO public.moon VALUES ('MM5', false, 111, 222, 3.3, 'ABC', 'DEF', 15, 'GHIJKLMN', 5);
INSERT INTO public.moon VALUES ('MM6', true, 111, 222, 3.3, 'ABC', 'DEF', 16, 'GHIJKLMN', 6);
INSERT INTO public.moon VALUES ('MM7', true, 111, 222, 3.3, 'ABC', 'DEF', 17, 'GHIJKLMN', 7);
INSERT INTO public.moon VALUES ('MM8', true, 111, 222, 3.3, 'ABC', 'DEF', 18, 'GHIJKLMN', 8);
INSERT INTO public.moon VALUES ('MM9', true, 111, 222, 3.3, 'ABC', 'DEF', 19, 'GHIJKLMN', 9);
INSERT INTO public.moon VALUES ('MM10', true, 111, 222, 3.3, 'ABC', 'DEF', 20, 'GHIJKLMN', 10);
INSERT INTO public.moon VALUES ('MM11', true, 111, 222, 3.3, 'ABC', 'DEF', 21, 'GHIJKLMN', 11);
INSERT INTO public.moon VALUES ('MM12', true, 111, 222, 3.3, 'ABC', 'DEF', 26, 'GHIJKLMN', 12);
INSERT INTO public.moon VALUES ('MM3', false, 987, 654, 5.4, 'qwe', 'rty', 33, 'UiOp', 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('P1', true, 111, 222, 3.3, 'ABC', 'DEF', 1, 'GHIJKLMN', 1);
INSERT INTO public.planet VALUES ('P2', false, 111, 222, 3.3, 'ABC', 'DEF', 2, 'GHIJKLMN', 2);
INSERT INTO public.planet VALUES ('P3', true, 111, 222, 3.3, 'ABC', 'DEF', 3, 'GHIJKLMN', 3);
INSERT INTO public.planet VALUES ('P4', true, 111, 222, 3.3, 'ABC', 'DEF', 4, 'GHIJKLMN', 4);
INSERT INTO public.planet VALUES ('P5', false, 111, 222, 3.3, 'ABC', 'DEF', 5, 'GHIJKLMN', 5);
INSERT INTO public.planet VALUES ('P6', true, 111, 222, 3.3, 'ABC', 'DEF', 6, 'GHIJKLMN', 6);
INSERT INTO public.planet VALUES ('P7', true, 111, 222, 3.3, 'ABC', 'DEF', 7, 'GHIJKLMN', 1);
INSERT INTO public.planet VALUES ('P8', true, 111, 222, 3.3, 'ABC', 'DEF', 8, 'GHIJKLMN', 2);
INSERT INTO public.planet VALUES ('P9', true, 111, 222, 3.3, 'ABC', 'DEF', 9, 'GHIJKLMN', 3);
INSERT INTO public.planet VALUES ('P10', true, 111, 222, 3.3, 'ABC', 'DEF', 10, 'GHIJKLMN', 4);
INSERT INTO public.planet VALUES ('P11', true, 111, 222, 3.3, 'ABC', 'DEF', 11, 'GHIJKLMN', 5);
INSERT INTO public.planet VALUES ('P12', true, 111, 222, 3.3, 'ABC', 'DEF', 12, 'GHIJKLMN', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sitara1', true, 121, 131, 1.1, 'Ye tara', 'Vo tara', 1, 'Taraaaaaaaaa', 1);
INSERT INTO public.star VALUES ('Sitara2', false, 122, 132, 2.1, 'Har tara', 'Har tara', 2, 'Taraaaaaaaaa', 2);
INSERT INTO public.star VALUES ('Sitara3', false, 123, 134, 1.2, 'Dekho Jise Bhi', 'Lage Pyaara', 3, 'Taraaaaaaaaa', 3);
INSERT INTO public.star VALUES ('Sitara4', true, 124, 134, 1.5, 'Par Sb', 'Sath me', 4, 'Taraaaaaaaaa', 4);
INSERT INTO public.star VALUES ('Sitara5', false, 125, 135, 5.1, 'Jo hai', 'TRaat me', 5, 'Taraaaaaaaaa', 5);
INSERT INTO public.star VALUES ('Sitara6', true, 126, 136, 6.1, 'Jagmagaya', 'Aasman Saaraaaa', 6, 'Taraaaaaaaaa', 6);


--
-- Data for Name: table5; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.table5 VALUES (1, 'ITEM1', 'DETAILS 123');
INSERT INTO public.table5 VALUES (2, 'ITEM2', 'DETAILS 234');
INSERT INTO public.table5 VALUES (3, 'ITEM3', 'DETIALS 345');
INSERT INTO public.table5 VALUES (4, 'ITEM4', 'DETIALS 456');


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
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: table5_table5_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.table5_table5_id_seq', 4, true);


--
-- Name: galaxy galaxy_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_name_key UNIQUE (name);


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
-- Name: planet planet_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_name_key UNIQUE (name);


--
-- Name: table5 table5_item_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table5
    ADD CONSTRAINT table5_item_name_key UNIQUE (name);


--
-- Name: table5 table5_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table5
    ADD CONSTRAINT table5_pkey PRIMARY KEY (table5_id);


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

