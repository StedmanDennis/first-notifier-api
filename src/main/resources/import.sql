--
-- PostgreSQL database dump
--

-- Dumped from database version 17.1 (Debian 17.1-1.pgdg120+1)
-- Dumped by pg_dump version 17.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: AllianceReference; Type: TABLE DATA; Schema: public; Owner: first_notifier
--

--INSERT INTO public."AllianceReference" ("id", "name", "ColorHex") VALUES (1, 'Red', '#FF0000');
--INSERT INTO public."AllianceReference" ("id", "name", "ColorHex") VALUES (2, 'Blue', '#0000FF');


--
-- Data for Name: Schedule; Type: TABLE DATA; Schema: public; Owner: first_notifier
--

--INSERT INTO public."Schedule" ("id", "name", "status", "CurrentMatchOrder") VALUES (1, 'FIRST Tech Challenge 2024', 0, 0);


--
-- Data for Name: Match; Type: TABLE DATA; Schema: public; Owner: first_notifier
--

INSERT INTO public."match" ("id", "schedule_order", "field_number", "stage", "status") VALUES (1, 1, 1, 1, 0);
INSERT INTO public."match" ("id", "schedule_order", "field_number", "stage", "status") VALUES (2, 2, 2, 1, 0);
INSERT INTO public."match" ("id", "schedule_order", "field_number", "stage", "status") VALUES (3, 3, 1, 1, 0);
INSERT INTO public."match" ("id", "schedule_order", "field_number", "stage", "status") VALUES (4, 4, 2, 1, 0);
INSERT INTO public."match" ("id", "schedule_order", "field_number", "stage", "status") VALUES (5, 5, 1, 1, 0);
INSERT INTO public."match" ("id", "schedule_order", "field_number", "stage", "status") VALUES (6, 6, 2, 1, 0);
INSERT INTO public."match" ("id", "schedule_order", "field_number", "stage", "status") VALUES (7, 7, 1, 1, 0);
INSERT INTO public."match" ("id", "schedule_order", "field_number", "stage", "status") VALUES (8, 8, 2, 1, 0);
INSERT INTO public."match" ("id", "schedule_order", "field_number", "stage", "status") VALUES (9, 9, 1, 1, 0);
INSERT INTO public."match" ("id", "schedule_order", "field_number", "stage", "status") VALUES (10, 10, 2, 1, 0);
INSERT INTO public."match" ("id", "schedule_order", "field_number", "stage", "status") VALUES (11, 11, 1, 1, 0);
INSERT INTO public."match" ("id", "schedule_order", "field_number", "stage", "status") VALUES (12, 12, 2, 1, 0);
INSERT INTO public."match" ("id", "schedule_order", "field_number", "stage", "status") VALUES (13, 13, 1, 1, 0);
INSERT INTO public."match" ("id", "schedule_order", "field_number", "stage", "status") VALUES (14, 14, 2, 1, 0);
INSERT INTO public."match" ("id", "schedule_order", "field_number", "stage", "status") VALUES (15, 15, 1, 1, 0);
INSERT INTO public."match" ("id", "schedule_order", "field_number", "stage", "status") VALUES (16, 16, 2, 1, 0);
INSERT INTO public."match" ("id", "schedule_order", "field_number", "stage", "status") VALUES (17, 17, 1, 1, 0);
INSERT INTO public."match" ("id", "schedule_order", "field_number", "stage", "status") VALUES (18, 18, 2, 1, 0);
INSERT INTO public."match" ("id", "schedule_order", "field_number", "stage", "status") VALUES (19, 19, 1, 1, 0);
INSERT INTO public."match" ("id", "schedule_order", "field_number", "stage", "status") VALUES (20, 20, 2, 1, 0);
INSERT INTO public."match" ("id", "schedule_order", "field_number", "stage", "status") VALUES (21, 21, 1, 1, 0);
INSERT INTO public."match" ("id", "schedule_order", "field_number", "stage", "status") VALUES (22, 22, 2, 1, 0);
INSERT INTO public."match" ("id", "schedule_order", "field_number", "stage", "status") VALUES (23, 23, 1, 1, 0);
INSERT INTO public."match" ("id", "schedule_order", "field_number", "stage", "status") VALUES (24, 24, 2, 1, 0);
INSERT INTO public."match" ("id", "schedule_order", "field_number", "stage", "status") VALUES (25, 25, 1, 1, 0);
INSERT INTO public."match" ("id", "schedule_order", "field_number", "stage", "status") VALUES (26, 26, 2, 1, 0);
INSERT INTO public."match" ("id", "schedule_order", "field_number", "stage", "status") VALUES (27, 27, 1, 1, 0);
INSERT INTO public."match" ("id", "schedule_order", "field_number", "stage", "status") VALUES (28, 28, 2, 1, 0);
INSERT INTO public."match" ("id", "schedule_order", "field_number", "stage", "status") VALUES (29, 29, 1, 1, 0);
INSERT INTO public."match" ("id", "schedule_order", "field_number", "stage", "status") VALUES (30, 30, 2, 1, 0);
INSERT INTO public."match" ("id", "schedule_order", "field_number", "stage", "status") VALUES (31, 31, 1, 1, 0);
INSERT INTO public."match" ("id", "schedule_order", "field_number", "stage", "status") VALUES (32, 32, 2, 1, 0);
INSERT INTO public."match" ("id", "schedule_order", "field_number", "stage", "status") VALUES (33, 33, 1, 1, 0);


--
-- Data for Name: MatchAlliance; Type: TABLE DATA; Schema: public; Owner: first_notifier
--

INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (1, 1, 'Blue');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (2, 1, 'Red');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (3, 2, 'Blue');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (4, 2, 'Red');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (5, 3, 'Blue');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (6, 3, 'Red');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (7, 4, 'Blue');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (8, 4, 'Red');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (9, 5, 'Blue');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (10, 5, 'Red');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (11, 6, 'Blue');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (12, 6, 'Red');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (13, 7, 'Blue');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (14, 7, 'Red');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (15, 8, 'Blue');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (16, 8, 'Red');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (17, 9, 'Blue');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (18, 9, 'Red');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (19, 10, 'Blue');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (20, 10, 'Red');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (21, 11, 'Blue');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (22, 11, 'Red');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (23, 12, 'Blue');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (24, 12, 'Red');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (25, 13, 'Blue');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (26, 13, 'Red');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (27, 14, 'Blue');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (28, 14, 'Red');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (29, 15, 'Blue');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (30, 15, 'Red');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (31, 16, 'Blue');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (32, 16, 'Red');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (33, 17, 'Blue');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (34, 17, 'Red');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (35, 18, 'Blue');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (36, 18, 'Red');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (37, 19, 'Blue');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (38, 19, 'Red');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (39, 20, 'Blue');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (40, 20, 'Red');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (41, 21, 'Blue');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (42, 21, 'Red');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (43, 22, 'Blue');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (44, 22, 'Red');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (45, 23, 'Blue');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (46, 23, 'Red');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (47, 24, 'Blue');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (48, 24, 'Red');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (49, 25, 'Blue');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (50, 25, 'Red');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (51, 26, 'Blue');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (52, 26, 'Red');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (53, 27, 'Blue');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (54, 27, 'Red');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (55, 28, 'Blue');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (56, 28, 'Red');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (57, 29, 'Blue');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (58, 29, 'Red');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (59, 30, 'Blue');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (60, 30, 'Red');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (61, 31, 'Blue');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (62, 31, 'Red');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (63, 32, 'Blue');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (64, 32, 'Red');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (65, 33, 'Blue');
INSERT INTO public."match_alliance" ("id", "match_id", "alliance_color") VALUES (66, 33, 'Red');


--
-- Data for Name: Queuer; Type: TABLE DATA; Schema: public; Owner: first_notifier
--

INSERT INTO public."queuer" ("id", "name") VALUES (1, 'Queuer A');
INSERT INTO public."queuer" ("id", "name") VALUES (2, 'Queuer B');
INSERT INTO public."queuer" ("id", "name") VALUES (3, 'Queuer C');
INSERT INTO public."queuer" ("id", "name") VALUES (4, 'Queuer D');
INSERT INTO public."queuer" ("id", "name") VALUES (5, 'Queuer E');
INSERT INTO public."queuer" ("id", "name") VALUES (6, 'Queuer F');
INSERT INTO public."queuer" ("id", "name") VALUES (7, 'Queuer G');
INSERT INTO public."queuer" ("id", "name") VALUES (8, 'Queuer H');


--
-- Data for Name: School; Type: TABLE DATA; Schema: public; Owner: first_notifier
--

INSERT INTO public."school" ("id", "name") VALUES (1, 'Jamaica College');
INSERT INTO public."school" ("id", "name") VALUES (2, 'Kingston College');
INSERT INTO public."school" ("id", "name") VALUES (3, 'Saint Georges College');
INSERT INTO public."school" ("id", "name") VALUES (4, 'Calabar High School');
INSERT INTO public."school" ("id", "name") VALUES (5, 'Immaculate Conception High School');
INSERT INTO public."school" ("id", "name") VALUES (6, 'Convent of Mercy Academy "Alpha"');
INSERT INTO public."school" ("id", "name") VALUES (7, 'Saint Jago High');
INSERT INTO public."school" ("id", "name") VALUES (8, 'Campion College');
INSERT INTO public."school" ("id", "name") VALUES (9, 'Meadowbrook High School');
INSERT INTO public."school" ("id", "name") VALUES (10, 'York Castle High School');
INSERT INTO public."school" ("id", "name") VALUES (11, 'Glenmuir High School');
INSERT INTO public."school" ("id", "name") VALUES (12, 'Munro College');
INSERT INTO public."school" ("id", "name") VALUES (13, 'Tarrant High School');
INSERT INTO public."school" ("id", "name") VALUES (14, 'Holy Childhood High School');
INSERT INTO public."school" ("id", "name") VALUES (15, 'Maggotty High School');
INSERT INTO public."school" ("id", "name") VALUES (16, 'Manchester High School');
INSERT INTO public."school" ("id", "name") VALUES (17, 'Saint Hilda''s High School');
INSERT INTO public."school" ("id", "name") VALUES (18, 'American International School of Kingston');
INSERT INTO public."school" ("id", "name") VALUES (19, 'Clarendon College');
INSERT INTO public."school" ("id", "name") VALUES (20, 'McGrath High School');
INSERT INTO public."school" ("id", "name") VALUES (21, 'Saint Elizabeth Technical High School');
INSERT INTO public."school" ("id", "name") VALUES (22, 'York Castle High School');
INSERT INTO public."school" ("id", "name") VALUES (23, 'Innswood High School');
INSERT INTO public."school" ("id", "name") VALUES (24, 'Wolmer''s Boys');
INSERT INTO public."school" ("id", "name") VALUES (25, 'Hillel Academy');
INSERT INTO public."school" ("id", "name") VALUES (26, 'Fairfield Academy');
INSERT INTO public."school" ("id", "name") VALUES (27, 'Mona High School');


--
-- Data for Name: Team; Type: TABLE DATA; Schema: public; Owner: first_notifier
--

INSERT INTO public."team" ("team_number", "name", "school_id") VALUES ('3981', 'The Giffins', 1);
INSERT INTO public."team" ("team_number", "name", "school_id") VALUES ('6899', 'The Bluebots', 1);
INSERT INTO public."team" ("team_number", "name", "school_id") VALUES ('14807', 'Kingston College Robotics', 2);
INSERT INTO public."team" ("team_number", "name", "school_id") VALUES ('14896', 'Knight Bots', 3);
INSERT INTO public."team" ("team_number", "name", "school_id") VALUES ('15059', 'Cyber Lions', 4);
INSERT INTO public."team" ("team_number", "name", "school_id") VALUES ('15060', 'Blue Flames', 5);
INSERT INTO public."team" ("team_number", "name", "school_id") VALUES ('15239', 'Convent of Mercy Academy', 6);
INSERT INTO public."team" ("team_number", "name", "school_id") VALUES ('15352', 'Iterations', 7);
INSERT INTO public."team" ("team_number", "name", "school_id") VALUES ('16075', 'Crimson Crocs', 8);
INSERT INTO public."team" ("team_number", "name", "school_id") VALUES ('16076', 'Team Instinct', 9);
INSERT INTO public."team" ("team_number", "name", "school_id") VALUES ('16187', 'YCHS Stingers', 10);
INSERT INTO public."team" ("team_number", "name", "school_id") VALUES ('17852', 'Phoenix Requiem', 11);
INSERT INTO public."team" ("team_number", "name", "school_id") VALUES ('17853', 'Monro College', 12);
INSERT INTO public."team" ("team_number", "name", "school_id") VALUES ('17865', 'Tarrant High', 13);
INSERT INTO public."team" ("team_number", "name", "school_id") VALUES ('17878', 'HCHS ROBOTICS', 14);
INSERT INTO public."team" ("team_number", "name", "school_id") VALUES ('17882', 'Maggotrons', 15);
INSERT INTO public."team" ("team_number", "name", "school_id") VALUES ('17883', 'Lever-Edge!', 16);
INSERT INTO public."team" ("team_number", "name", "school_id") VALUES ('17884', 'LadyBots', 17);
INSERT INTO public."team" ("team_number", "name", "school_id") VALUES ('17980', 'AISK Hurricanes', 18);
INSERT INTO public."team" ("team_number", "name", "school_id") VALUES ('22638', 'Chapelton Torch 1', 19);
INSERT INTO public."team" ("team_number", "name", "school_id") VALUES ('22647', 'McGrath Flames', 20);
INSERT INTO public."team" ("team_number", "name", "school_id") VALUES ('22701', 'Lions', 7);
INSERT INTO public."team" ("team_number", "name", "school_id") VALUES ('22705', 'Golden Gears', 21);
INSERT INTO public."team" ("team_number", "name", "school_id") VALUES ('22707', 'Drones', 22);
INSERT INTO public."team" ("team_number", "name", "school_id") VALUES ('22726', 'ALPHA TECH', 23);
INSERT INTO public."team" ("team_number", "name", "school_id") VALUES ('22755', 'Team Circle', 24);
INSERT INTO public."team" ("team_number", "name", "school_id") VALUES ('24994', 'Hillel Panthers', 25);
INSERT INTO public."team" ("team_number", "name", "school_id") VALUES ('25292', 'FIA ROBOTICS', 26);
INSERT INTO public."team" ("team_number", "name", "school_id") VALUES ('25406', 'Sub Bakery', 27);


--
-- Data for Name: MatchAllianceTeam; Type: TABLE DATA; Schema: public; Owner: first_notifier
--

INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (1, '15060', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (1, '15352', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (2, '15059', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (2, '17980', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (3, '14807', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (3, '22638', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (4, '16076', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (4, '22755', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (5, '6899', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (5, '15239', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (6, '16187', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (6, '17878', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (7, '22707', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (7, '22726', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (8, '17884', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (8, '22701', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (9, '22647', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (9, '24994', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (10, '14896', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (10, '25406', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (11, '17852', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (11, '17865', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (12, '16075', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (12, '25292', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (13, '3981', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (13, '17980', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (14, '22705', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (14, '22755', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (15, '22638', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (15, '22701', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (16, '15060', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (16, '15239', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (17, '16076', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (17, '17884', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (18, '6899', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (18, '25406', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (19, '16075', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (19, '17878', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (20, '22707', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (20, '24994', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (21, '22647', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (21, '22705', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (22, '15352', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (22, '17865', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (23, '16187', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (23, '22726', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (24, '3981', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (24, '17852', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (25, '14896', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (25, '25292', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (26, '14807', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (26, '15059', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (27, '15060', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (27, '17884', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (28, '22755', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (28, '24994', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (29, '16076', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (29, '17980', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (30, '15239', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (30, '16075', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (31, '15352', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (31, '17878', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (32, '3981', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (32, '22638', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (33, '17865', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (33, '22707', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (34, '15059', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (34, '16187', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (35, '22705', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (35, '25406', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (36, '14807', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (36, '17852', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (37, '22647', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (37, '25292', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (38, '6899', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (38, '22726', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (39, '14896', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (39, '17980', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (40, '17878', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (40, '22701', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (41, '3981', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (41, '15060', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (42, '16076', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (42, '17865', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (43, '15059', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (43, '24994', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (44, '15239', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (44, '17852', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (45, '14807', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (45, '16187', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (46, '17884', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (46, '22647', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (47, '14896', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (47, '22726', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (48, '22638', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (48, '22705', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (49, '6899', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (49, '15352', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (50, '16075', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (50, '22701', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (51, '22755', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (51, '25406', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (52, '22707', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (52, '25292', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (53, '15060', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (53, '17852', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (54, '17878', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (54, '22647', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (55, '17865', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (55, '17884', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (56, '17980', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (56, '22638', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (57, '16187', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (57, '22701', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (58, '16076', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (58, '24994', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (59, '15059', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (59, '16075', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (60, '22726', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (60, '25406', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (61, '3981', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (61, '22707', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (62, '6899', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (62, '14807', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (63, '15239', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (63, '22755', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (64, '14896', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (64, '15352', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (65, '22705', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (65, '24994', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (66, '15060', NULL);
INSERT INTO public."match_alliance_team" ("match_alliance_id", "team_number", "assigned_queuer_id") VALUES (66, '25292', NULL);

INSERT INTO public."team_position" ("team_number", "x", "y") VALUES ('3981', '40', '240');
INSERT INTO public."team_position" ("team_number", "x", "y") VALUES ('6899', '80', '240');
INSERT INTO public."team_position" ("team_number", "x", "y") VALUES ('14807', '240', '240');
INSERT INTO public."team_position" ("team_number", "x", "y") VALUES ('14896', '120', '240');
INSERT INTO public."team_position" ("team_number", "x", "y") VALUES ('15059', '320', '240');
INSERT INTO public."team_position" ("team_number", "x", "y") VALUES ('15060', '0', '210');
INSERT INTO public."team_position" ("team_number", "x", "y") VALUES ('15239', '320', '20');
INSERT INTO public."team_position" ("team_number", "x", "y") VALUES ('15352', '320', '180');
INSERT INTO public."team_position" ("team_number", "x", "y") VALUES ('16075', '0', '150');
INSERT INTO public."team_position" ("team_number", "x", "y") VALUES ('16076', '0', '180');
INSERT INTO public."team_position" ("team_number", "x", "y") VALUES ('16187', '200', '240');
INSERT INTO public."team_position" ("team_number", "x", "y") VALUES ('17852', '280', '150');
INSERT INTO public."team_position" ("team_number", "x", "y") VALUES ('17853', '0', '240');
INSERT INTO public."team_position" ("team_number", "x", "y") VALUES ('17865', '320', '150');
INSERT INTO public."team_position" ("team_number", "x", "y") VALUES ('17878', '320', '50');
INSERT INTO public."team_position" ("team_number", "x", "y") VALUES ('17883', '40', '210');
INSERT INTO public."team_position" ("team_number", "x", "y") VALUES ('17884', '280', '20');
INSERT INTO public."team_position" ("team_number", "x", "y") VALUES ('17980', '280', '210');
INSERT INTO public."team_position" ("team_number", "x", "y") VALUES ('22638', '40', '180');
INSERT INTO public."team_position" ("team_number", "x", "y") VALUES ('22647', '40', '120');
INSERT INTO public."team_position" ("team_number", "x", "y") VALUES ('22701', '320', '210');
INSERT INTO public."team_position" ("team_number", "x", "y") VALUES ('22705', '240', '210');
INSERT INTO public."team_position" ("team_number", "x", "y") VALUES ('22707', '200', '210');
INSERT INTO public."team_position" ("team_number", "x", "y") VALUES ('22726', '280', '180');
INSERT INTO public."team_position" ("team_number", "x", "y") VALUES ('22755', '280', '240');
INSERT INTO public."team_position" ("team_number", "x", "y") VALUES ('24994', '80', '210');
INSERT INTO public."team_position" ("team_number", "x", "y") VALUES ('25292', '40', '150');
INSERT INTO public."team_position" ("team_number", "x", "y") VALUES ('25406', '280', '50');

--
-- PostgreSQL database dump complete
--

