CREATE TABLE public.constellating_group (
    constellating_group_id integer NOT NULL,
    name character varying(50) NOT NULL,
    star_count integer NOT NULL
);


ALTER TABLE public.constellating_group OWNER TO freecodecamp;

--
-- Name: constellating_group_constellating_group_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellating_group_constellating_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellating_group_constellating_group_id_seq OWNER TO freecodecamp;

--
-- Name: constellating_group_constellating_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellating_group_constellating_group_id_seq OWNED BY public.constellating_group.constellating_group_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer
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
    name character varying(50) NOT NULL,
    planet_id integer NOT NULL,
    is_spherical boolean NOT NULL,
    radius_in_km integer
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
    name character varying(50) NOT NULL,
    star_id integer NOT NULL,
    has_life boolean NOT NULL,
    planet_types character varying(30)
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
    name character varying(50) NOT NULL,
    galaxy_id integer NOT NULL,
    is_spherical boolean NOT NULL,
    distance_from_earth numeric
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
-- Name: constellating_group constellating_group_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellating_group ALTER COLUMN constellating_group_id SET DEFAULT nextval('public.constellating_group_constellating_group_id_seq'::regclass);


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
-- Data for Name: constellating_group; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellating_group VALUES (1, 'Ursa Major', 7);
INSERT INTO public.constellating_group VALUES (2, 'Orion', 8);
INSERT INTO public.constellating_group VALUES (3, 'Cassiopeia', 5);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', true, 13600);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest major galaxy', false, 10000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Third largest in local group', false, 12000);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'Unusual central bulge', false, 13000);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'Classic spiral galaxy', false, 400);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 'Face-on spiral galaxy', false, 1000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, true, 1737);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, false, 11);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, false, 6);
INSERT INTO public.moon VALUES (4, 'Io', 3, true, 1821);
INSERT INTO public.moon VALUES (5, 'Europa', 3, true, 1560);
INSERT INTO public.moon VALUES (6, 'Ganymede', 3, true, 2634);
INSERT INTO public.moon VALUES (7, 'Callisto', 3, true, 2410);
INSERT INTO public.moon VALUES (8, 'Titan', 4, true, 2574);
INSERT INTO public.moon VALUES (9, 'Enceladus', 4, true, 252);
INSERT INTO public.moon VALUES (10, 'Mimas', 4, true, 198);
INSERT INTO public.moon VALUES (11, 'Hyperion', 4, false, 135);
INSERT INTO public.moon VALUES (12, 'Iapetus', 4, true, 734);
INSERT INTO public.moon VALUES (13, 'Dione', 4, true, 561);
INSERT INTO public.moon VALUES (14, 'Rhea', 4, true, 763);
INSERT INTO public.moon VALUES (15, 'Tethys', 4, true, 531);
INSERT INTO public.moon VALUES (16, 'Miranda', 7, true, 235);
INSERT INTO public.moon VALUES (17, 'Ariel', 7, true, 578);
INSERT INTO public.moon VALUES (18, 'Umbriel', 7, true, 584);
INSERT INTO public.moon VALUES (19, 'Titania', 7, true, 788);
INSERT INTO public.moon VALUES (20, 'Oberon', 7, true, 761);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, true, 'Terrestrial');
INSERT INTO public.planet VALUES (2, 'Mars', 1, false, 'Terrestrial');
INSERT INTO public.planet VALUES (3, 'Jupiter', 1, false, 'Gas Giant');
INSERT INTO public.planet VALUES (4, 'Saturn', 1, false, 'Gas Giant');
INSERT INTO public.planet VALUES (5, 'Venus', 1, false, 'Terrestrial');
INSERT INTO public.planet VALUES (6, 'Mercury', 1, false, 'Terrestrial');
INSERT INTO public.planet VALUES (7, 'Uranus', 1, false, 'Ice Giant');
INSERT INTO public.planet VALUES (8, 'Neptune', 1, false, 'Ice Giant');
INSERT INTO public.planet VALUES (9, 'Proxima b', 2, false, 'Super Earth');
INSERT INTO public.planet VALUES (10, 'Proxima c', 2, false, 'Gas Mini');
INSERT INTO public.planet VALUES (11, 'Sirius b Planet', 3, false, 'Exoplanet');
INSERT INTO public.planet VALUES (12, 'Betelgeuse Prime', 4, false, 'Exoplanet');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, true, 0.000015);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 1, true, 4.246);
INSERT INTO public.star VALUES (3, 'Sirius', 1, true, 8.611);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 1, true, 642.5);
INSERT INTO public.star VALUES (5, 'Alpha Andromeda', 2, true, 97.0);
INSERT INTO public.star VALUES (6, 'Mirach', 2, true, 197.0);


--
-- Name: constellating_group_constellating_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellating_group_constellating_group_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: constellating_group constellating_group_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellating_group
    ADD CONSTRAINT constellating_group_name_key UNIQUE (name);


--
-- Name: constellating_group constellating_group_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellating_group
    ADD CONSTRAINT constellating_group_pkey PRIMARY KEY (constellating_group_id);


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
