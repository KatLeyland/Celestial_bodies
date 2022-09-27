    fact text
);


ALTER TABLE public.moon_facts OWNER TO freecodecamp;

--
-- Name: moon_facts_moon_facts_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_facts_moon_facts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_facts_moon_facts_id_seq OWNER TO freecodecamp;

--
-- Name: moon_facts_moon_facts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_facts_moon_facts_id_seq OWNED BY public.moon_facts.moon_facts_id;


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
    name character varying(30),
    star_id integer NOT NULL,
    gas_giant boolean,
    distance_from_star integer
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
    galaxy_id integer NOT NULL,
    classification character varying(30),
    temperature_k integer
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
-- Name: moon_facts moon_facts_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_facts ALTER COLUMN moon_facts_id SET DEFAULT nextval('public.moon_facts_moon_facts_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES ('barred spiral', 1, true, 'looks like a band of light', 'Milky Way');
INSERT INTO public.galaxy VALUES ('spiral galaxies', 2, true, 'looks like insect antennae', 'Antennae Galaxy');
INSERT INTO public.galaxy VALUES ('spiral galaxy', 3, true, 'long tail like tadpole', 'Tadpole Galaxy');
INSERT INTO public.galaxy VALUES ('spiral galaxy', 4, true, 'looks like eye of Sauron from LOTR', 'Eye of Sauron');
INSERT INTO public.galaxy VALUES ('ring shaped', 5, false, 'named after discoverer Nicholas Mayall', 'Mayalls Object');
INSERT INTO public.galaxy VALUES ('face on intermediate spiral', 6, false, 'bright and colourful like a firework', 'Fireworks Galaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 1080, 'Moon', 27);
INSERT INTO public.moon VALUES (2, 5, 5270, 'Ganymede', 7);
INSERT INTO public.moon VALUES (3, 7, 5150, 'Titan', 16);
INSERT INTO public.moon VALUES (4, 5, 4820, 'Callisto', 17);
INSERT INTO public.moon VALUES (5, 5, 3643, 'Io', 2);
INSERT INTO public.moon VALUES (6, 5, 3122, 'Europa', 4);
INSERT INTO public.moon VALUES (7, 8, 2707, 'Triton', 6);
INSERT INTO public.moon VALUES (8, 6, 1578, 'Titania', 9);
INSERT INTO public.moon VALUES (9, 6, 1523, 'Oberon', 14);
INSERT INTO public.moon VALUES (10, 7, 1529, 'Rhea', 5);
INSERT INTO public.moon VALUES (37, 7, 1469, 'Iapetus', 79);
INSERT INTO public.moon VALUES (38, 12, 1207.2, 'Charon', 6);
INSERT INTO public.moon VALUES (39, 6, 1169.4, 'Umbriel', 4);
INSERT INTO public.moon VALUES (40, 6, 1157.8, 'Ariel', 3);
INSERT INTO public.moon VALUES (41, 7, 1125, 'Dione', 3);
INSERT INTO public.moon VALUES (42, 7, 1062.6, 'Tethys', 2);
INSERT INTO public.moon VALUES (43, 7, 504.6, 'Enceladus', 33);
INSERT INTO public.moon VALUES (44, 6, 471.6, 'Miranda', 1);
INSERT INTO public.moon VALUES (45, 8, 420, 'Proteus', 1);
INSERT INTO public.moon VALUES (46, 7, 396.4, 'Mimas', 1);


--
-- Data for Name: moon_facts; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon_facts VALUES (1, 'Ganymede', 2, 'The Hubble Space Telescope observed in 1996 that Ganymede has a very thin atmosphere composed of oxygen');
INSERT INTO public.moon_facts VALUES (2, 'Titan', 3, 'The name Titan comes from Greek mythology as the term for children of the sky god Uranus and Earth god Gaia.');
INSERT INTO public.moon_facts VALUES (3, 'Ariel', 40, 'Scientists have calculated that its mass is composed equally of water ice and a rocky core, with a mass around the same as all of Earths water in the oceans, lakes & rivers.');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, false, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', 1, false, 0);
INSERT INTO public.planet VALUES (3, 'Venus', 1, false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 1, false, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, true, 12);
INSERT INTO public.planet VALUES (6, 'Uranus', 1, false, 84);
INSERT INTO public.planet VALUES (7, 'Saturn', 1, true, 29);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, false, 165);
INSERT INTO public.planet VALUES (9, 'proxima centauri b', 3, false, 0);
INSERT INTO public.planet VALUES (10, 'proxima centauri c', 3, false, 0);
INSERT INTO public.planet VALUES (11, 'Fomalhaut b', 5, false, 115);
INSERT INTO public.planet VALUES (12, 'Pluto dwarf planet', 1, false, 39);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'G2V', 5810);
INSERT INTO public.star VALUES (2, 'Sirius A', 1, 'A', 9940);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 1, 'M', 3042);
INSERT INTO public.star VALUES (4, 'Aldhibah', 3, 'F7V', 6000);
INSERT INTO public.star VALUES (5, 'Fomalhaut', 4, 'A3V', 8590);
INSERT INTO public.star VALUES (6, 'KY Cygni', 6, 'M3 la', 3500);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_facts_moon_facts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_facts_moon_facts_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 46, true);


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
-- Name: moon_facts moon_facts_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_facts
    ADD CONSTRAINT moon_facts_pkey PRIMARY KEY (moon_facts_id);


--
-- Name: moon_facts moon_facts_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_facts
    ADD CONSTRAINT moon_facts_unique UNIQUE (name);


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
