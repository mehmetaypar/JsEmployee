--
-- PostgreSQL database dump
--

-- Dumped from database version 13.0
-- Dumped by pg_dump version 13.0

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
-- Name: department; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.department (
    departmentid bigint NOT NULL,
    departmentname character varying(100) NOT NULL,
    departmentlocationid integer NOT NULL
);


ALTER TABLE public.department OWNER TO postgres;

--
-- Name: department_departmentid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.department_departmentid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.department_departmentid_seq OWNER TO postgres;

--
-- Name: department_departmentid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.department_departmentid_seq OWNED BY public.department.departmentid;


--
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee (
    employeeid bigint NOT NULL,
    employeename character varying(100) NOT NULL,
    employeesurname character varying(100) NOT NULL,
    employeeemail character varying(50) NOT NULL,
    employeephone character varying(20) NOT NULL,
    employeehiredate date NOT NULL,
    employeesalary real NOT NULL,
    employeemanagerid integer
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- Name: employee_employeeid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employee_employeeid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employee_employeeid_seq OWNER TO postgres;

--
-- Name: employee_employeeid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employee_employeeid_seq OWNED BY public.employee.employeeid;


--
-- Name: location; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.location (
    location_id bigint NOT NULL,
    locationname character varying(100) NOT NULL,
    locationaddress character varying(150) NOT NULL,
    locationzipcode character varying(15) NOT NULL,
    locationcity character varying(20) NOT NULL,
    locationcountry character varying(30)
);


ALTER TABLE public.location OWNER TO postgres;

--
-- Name: location_location_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.location_location_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.location_location_id_seq OWNER TO postgres;

--
-- Name: location_location_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.location_location_id_seq OWNED BY public.location.location_id;


--
-- Name: manages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.manages (
    managerid bigint NOT NULL,
    employeeid integer NOT NULL,
    departmentid integer NOT NULL,
    startdate date NOT NULL,
    enddate date NOT NULL
);


ALTER TABLE public.manages OWNER TO postgres;

--
-- Name: manages_managerid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.manages_managerid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manages_managerid_seq OWNER TO postgres;

--
-- Name: manages_managerid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.manages_managerid_seq OWNED BY public.manages.managerid;


--
-- Name: title; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.title (
    titleid bigint NOT NULL,
    titlename character varying(30) NOT NULL
);


ALTER TABLE public.title OWNER TO postgres;

--
-- Name: title_titleid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.title_titleid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.title_titleid_seq OWNER TO postgres;

--
-- Name: title_titleid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.title_titleid_seq OWNED BY public.title.titleid;


--
-- Name: worksin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.worksin (
    worksinid bigint NOT NULL,
    employeeid integer NOT NULL,
    departmentid integer NOT NULL,
    titleid integer NOT NULL,
    startdate date NOT NULL,
    enddate date NOT NULL
);


ALTER TABLE public.worksin OWNER TO postgres;

--
-- Name: worksin_worksinid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.worksin_worksinid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.worksin_worksinid_seq OWNER TO postgres;

--
-- Name: worksin_worksinid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.worksin_worksinid_seq OWNED BY public.worksin.worksinid;


--
-- Name: department departmentid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.department ALTER COLUMN departmentid SET DEFAULT nextval('public.department_departmentid_seq'::regclass);


--
-- Name: employee employeeid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee ALTER COLUMN employeeid SET DEFAULT nextval('public.employee_employeeid_seq'::regclass);


--
-- Name: location location_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.location ALTER COLUMN location_id SET DEFAULT nextval('public.location_location_id_seq'::regclass);


--
-- Name: manages managerid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.manages ALTER COLUMN managerid SET DEFAULT nextval('public.manages_managerid_seq'::regclass);


--
-- Name: title titleid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.title ALTER COLUMN titleid SET DEFAULT nextval('public.title_titleid_seq'::regclass);


--
-- Name: worksin worksinid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.worksin ALTER COLUMN worksinid SET DEFAULT nextval('public.worksin_worksinid_seq'::regclass);


--
-- Data for Name: department; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.department (departmentid, departmentname, departmentlocationid) FROM stdin;
\.


--
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employee (employeeid, employeename, employeesurname, employeeemail, employeephone, employeehiredate, employeesalary, employeemanagerid) FROM stdin;
1	Timothy	Santana	sagittis@vitae.org	1-879-770-0745	2018-12-01	26662	1
2	Tucker	Barron	et.ipsum@velit.net	1-797-212-7930	2019-07-16	80561	1
3	Macon	Mcguire	lorem.eget.mollis@adlitoratorquent.com	1-896-436-4025	2019-08-06	25860	1
4	Wing	Drake	rhoncus.id.mollis@vehiculaetrutrum.ca	1-997-667-0982	2020-05-01	56246	1
5	Sydney	Ferguson	Duis.at.lacus@ut.co.uk	1-637-743-7866	2018-11-20	43303	1
6	Zachery	Mendoza	enim@Phasellusat.edu	1-709-573-3881	2021-01-16	82076	1
7	Keefe	Goodwin	quis@consequat.com	1-330-504-4662	2018-11-04	69240	1
8	Kadeem	Cantu	justo.eu.arcu@augue.ca	1-269-282-2838	2020-11-09	77461	1
9	MacKensie	Colon	vitae.purus@Crasloremlorem.edu	1-112-391-1978	2021-04-08	94733	1
10	Summer	Roman	hendrerit.neque.In@Maecenasmalesuada.com	1-514-956-5106	2019-05-17	89655	1
11	Deborah	Mcdaniel	ante.blandit.viverra@Sednec.co.uk	1-595-637-4249	2020-08-04	4233	1
12	Xenos	Myers	elit@famesac.org	1-631-602-0610	2021-02-10	5557	1
13	Grady	Carpenter	Nulla.facilisi.Sed@luctusfelispurus.com	1-999-586-0019	2020-03-21	82984	1
14	Erasmus	Alford	senectus.et@Uttinciduntvehicula.ca	1-221-369-8920	2021-06-27	76825	1
15	Haley	Cline	ut.mi.Duis@anteMaecenas.co.uk	1-199-749-8788	2021-06-05	98439	1
16	Zeph	Houston	tortor.at.risus@nascetur.edu	1-202-473-3758	2019-10-11	15889	1
17	Basil	Taylor	nec.ante.Maecenas@ridiculusmus.net	1-468-888-5327	2020-10-15	58450	1
18	Deborah	Leach	lobortis@lobortis.co.uk	1-738-360-9704	2021-03-07	66464	1
19	Barry	Gaines	convallis@Fuscemi.ca	1-524-195-2161	2019-12-09	25787	1
20	Patrick	Frost	hendrerit.id@Crasvulputate.edu	1-167-116-4093	2021-06-13	46416	1
\.


--
-- Data for Name: location; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.location (location_id, locationname, locationaddress, locationzipcode, locationcity, locationcountry) FROM stdin;
1	Varndell	590, Varndell Street, New York, US, 4259	4259	New York	United States
2	Betton Place	150, Betton Place, Alabama, US, 6796	6796	Alabama	United States
3	Shortlands	455, Shortlands, New Hampshire, US, 3847	3847	New Hampshire	United States
4	Charterhouse	699, Charterhouse Street, Georgia, US, 4388	4388	Georgia	United States
5	Oakhill Place	366, Oakhill Place, Aargau, US, 7550	7550	Aargau	United States
6	Abbey	445, Abbey Street, Alabama, US, 6793	6793	Alabama	United States
7	Elizabeth Court	817, Elizabeth Court, New York, US, 6793	6793	New York	United States
8	Apollo Place	662, Apollo Place, New York, US, 4875	4875	New York	United States
9	Cambridge	696, Cambridge Street, Aargau, US, 4340	4340	Aargau	United States
10	Birdcage Walk	185, Birdcage Walk, New Hampshire, US, 7063	7063	New Hampshire	United States
\.


--
-- Data for Name: manages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.manages (managerid, employeeid, departmentid, startdate, enddate) FROM stdin;
\.


--
-- Data for Name: title; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.title (titleid, titlename) FROM stdin;
\.


--
-- Data for Name: worksin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.worksin (worksinid, employeeid, departmentid, titleid, startdate, enddate) FROM stdin;
\.


--
-- Name: department_departmentid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.department_departmentid_seq', 1, false);


--
-- Name: employee_employeeid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employee_employeeid_seq', 20, true);


--
-- Name: location_location_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.location_location_id_seq', 10, true);


--
-- Name: manages_managerid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.manages_managerid_seq', 1, false);


--
-- Name: title_titleid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.title_titleid_seq', 1, false);


--
-- Name: worksin_worksinid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.worksin_worksinid_seq', 1, false);


--
-- Name: department department_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_pkey PRIMARY KEY (departmentid);


--
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (employeeid);


--
-- Name: location location_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.location
    ADD CONSTRAINT location_pkey PRIMARY KEY (location_id);


--
-- Name: manages manages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.manages
    ADD CONSTRAINT manages_pkey PRIMARY KEY (managerid);


--
-- Name: title title_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.title
    ADD CONSTRAINT title_pkey PRIMARY KEY (titleid);


--
-- Name: worksin worksin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.worksin
    ADD CONSTRAINT worksin_pkey PRIMARY KEY (worksinid);


--
-- Name: employee employee_employeemanagerid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_employeemanagerid_fkey FOREIGN KEY (employeemanagerid) REFERENCES public.employee(employeeid);


--
-- Name: manages manages_departmentid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.manages
    ADD CONSTRAINT manages_departmentid_fkey FOREIGN KEY (departmentid) REFERENCES public.department(departmentid);


--
-- Name: manages manages_employeeid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.manages
    ADD CONSTRAINT manages_employeeid_fkey FOREIGN KEY (employeeid) REFERENCES public.employee(employeeid);


--
-- Name: worksin worksin_departmentid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.worksin
    ADD CONSTRAINT worksin_departmentid_fkey FOREIGN KEY (departmentid) REFERENCES public.department(departmentid);


--
-- Name: worksin worksin_employeeid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.worksin
    ADD CONSTRAINT worksin_employeeid_fkey FOREIGN KEY (employeeid) REFERENCES public.employee(employeeid);


--
-- Name: worksin worksin_titleid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.worksin
    ADD CONSTRAINT worksin_titleid_fkey FOREIGN KEY (titleid) REFERENCES public.title(titleid);


--
-- PostgreSQL database dump complete
--

