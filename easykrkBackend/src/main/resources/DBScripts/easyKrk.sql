--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.4
-- Dumped by pg_dump version 9.4.5
-- Started on 2016-02-04 00:56:52

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- TOC entry 2889 (class 0 OID 12923420)
-- Dependencies: 172
-- Data for Name: autor_karty; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--

INSERT INTO autor_karty VALUES (1, 'Jan', 'Kowalski', 'dr inż.', 1);
INSERT INTO autor_karty VALUES (2, 'Janina', 'Pierwotna', 'dr hab. inż.', 1);
INSERT INTO autor_karty VALUES (3, 'Kacper', 'Frączkowski', 'prof. dr hab.', 1);
INSERT INTO autor_karty VALUES (4, 'Anna', 'Karenina', 'prof. dr hab. inż.', 1);
INSERT INTO autor_karty VALUES (5, 'Adam', 'Szekspir', 'mgr inż.', 1);
INSERT INTO autor_karty VALUES (6, 'Filip', 'Konopny', 'dr inż.', 1);
INSERT INTO autor_karty VALUES (7, 'Krystyna', 'Potocka', 'dr hab.', 1);
INSERT INTO autor_karty VALUES (8, 'Elżbieta', 'Potocka-Czartoryska', 'dr inż.', 1);


--
-- TOC entry 2890 (class 0 OID 12923428)
-- Dependencies: 173
-- Data for Name: cykl; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--

INSERT INTO cykl VALUES (1, '2013/2014', 1);
INSERT INTO cykl VALUES (2, '2014/2015', 1);
INSERT INTO cykl VALUES (3, '2015/2016', 1);
INSERT INTO cykl VALUES (4, '2016/2017', 1);


--
-- TOC entry 2891 (class 0 OID 12923433)
-- Dependencies: 174
-- Data for Name: forma_prowadzenia_zajec; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--

INSERT INTO forma_prowadzenia_zajec VALUES (1, false, 'Wykład', 'W', 1);
INSERT INTO forma_prowadzenia_zajec VALUES (2, true, 'Ćwiczenia', 'C', 1);
INSERT INTO forma_prowadzenia_zajec VALUES (3, true, 'Laboratorium', 'L', 1);
INSERT INTO forma_prowadzenia_zajec VALUES (5, true, 'Projekt', 'P', 1);
INSERT INTO forma_prowadzenia_zajec VALUES (4, true, 'Seminarium', 'S', 1);


--
-- TOC entry 2892 (class 0 OID 12923441)
-- Dependencies: 175
-- Data for Name: forma_studiow; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--

INSERT INTO forma_studiow VALUES (1, 'stacjonarne', 1);
INSERT INTO forma_studiow VALUES (2, 'niestacjonarne', 1);


--
-- TOC entry 2893 (class 0 OID 12923446)
-- Dependencies: 176
-- Data for Name: forma_zaliczenia; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--

INSERT INTO forma_zaliczenia VALUES (1, 'egzamin', 1);
INSERT INTO forma_zaliczenia VALUES (2, 'zaliczenie', 1);


--
-- TOC entry 2943 (class 0 OID 0)
-- Dependencies: 221
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: gfvqtnlwqrlqqw
--

SELECT pg_catalog.setval('hibernate_sequence', 1, false);


--
-- TOC entry 2894 (class 0 OID 12923451)
-- Dependencies: 177
-- Data for Name: karta_przedmiotu; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2935 (class 0 OID 12923639)
-- Dependencies: 218
-- Data for Name: wydzial; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--

INSERT INTO wydzial VALUES (1, 'Wydział Informatyki i Zarządzania', 'WIZ', 'W08', 1);
INSERT INTO wydzial VALUES (2, 'Wydział Mechaniczno-Energetyczny', 'WME', 'W09', 1);
INSERT INTO wydzial VALUES (3, 'Wydział  Chemiczny', 'WCH', 'W03', 1);


--
-- TOC entry 2900 (class 0 OID 12923484)
-- Dependencies: 183
-- Data for Name: kierunek; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--

INSERT INTO kierunek VALUES (1, 'Informatyka', 'INF', 1, 1);
INSERT INTO kierunek VALUES (2, 'Inżynieria Systemów', 'INS', 1, 1);
INSERT INTO kierunek VALUES (3, 'Zarządzanie', 'Z', 1, 1);
INSERT INTO kierunek VALUES (4, 'Chemia', 'CH', 1, 3);
INSERT INTO kierunek VALUES (5, 'Energetyka', 'EN', 1, 2);


--
-- TOC entry 2913 (class 0 OID 12923549)
-- Dependencies: 196
-- Data for Name: plan_studiow; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2916 (class 0 OID 12923560)
-- Dependencies: 199
-- Data for Name: poziom_ksztalcenia; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--

INSERT INTO poziom_ksztalcenia VALUES (1, 'stopień I', 1);
INSERT INTO poziom_ksztalcenia VALUES (2, 'stopień II', 1);
INSERT INTO poziom_ksztalcenia VALUES (3, 'stopień III', 1);


--
-- TOC entry 2918 (class 0 OID 12923568)
-- Dependencies: 201
-- Data for Name: profil_ksztalcenia; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--

INSERT INTO profil_ksztalcenia VALUES (1, 'profil ogólnoakademicki', 1);
INSERT INTO profil_ksztalcenia VALUES (2, 'profil praktyczny', 1);


--
-- TOC entry 2920 (class 0 OID 12923576)
-- Dependencies: 203
-- Data for Name: program_ksztalcenia; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2932 (class 0 OID 12923625)
-- Dependencies: 215
-- Data for Name: specjalnosc; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2907 (class 0 OID 12923515)
-- Dependencies: 190
-- Data for Name: modul_ksztalcenia; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2925 (class 0 OID 12923594)
-- Dependencies: 208
-- Data for Name: przedmiot; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2895 (class 0 OID 12923456)
-- Dependencies: 178
-- Data for Name: karta_przedmiotu_przedmioty; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2896 (class 0 OID 12923459)
-- Dependencies: 179
-- Data for Name: kategoriaek; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--

INSERT INTO kategoriaek VALUES (1, 'wiedza', 1);
INSERT INTO kategoriaek VALUES (3, 'kompetencje_społeczn', 1);
INSERT INTO kategoriaek VALUES (2, 'umiejętności', 1);


--
-- TOC entry 2897 (class 0 OID 12923464)
-- Dependencies: 180
-- Data for Name: kek; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--

INSERT INTO kek VALUES ('K1INF_W01', 'Ma podstawową wiedzę w zakresie algebry liniowej, geometrii analitycznej i analizy matematycznej, konieczną do rozwiązywania
prostych zadań obliczeniowych o charakterze inżynierskim z dyscyplin technicznych i nietechnicznych.', 1, 1, NULL, NULL);
INSERT INTO kek VALUES ('K1INF_W02', 'Ma podstawową wiedzę w zakresie matematyki dyskretnej, logiki matematycznej i statystyki matematycznej, konieczną do
rozwiązywania prostych informatycznych problemów inżynierskich.', 1, 1, NULL, NULL);
INSERT INTO kek VALUES ('K1INF_W03', 'Ma podstawową wiedzę w zakresie mechaniki klasycznej; ruchu falowego; termodynamiki fenomenologicznej; fizyki: kwantowej,
jądra atomu; astrofizyki
', 1, 1, NULL, NULL);
INSERT INTO kek VALUES ('K1INF_W05', 'Zna podstawowy zestaw dobrych praktyk wytwarzania oprogramowania', 1, 1, NULL, NULL);
INSERT INTO kek VALUES ('K1INF_W06', 'Zna podstawowe paradygmaty programowania i przykładowe języki wykorzystujące te paradygmaty ', 1, 1, NULL, NULL);
INSERT INTO kek VALUES ('K1INF_W07', 'Zna podstawowe modele cyklu życia oprogramowania, wykonywane w ich ramach procesy oraz stosowane metodyki, notacje i
narzędzia wspierające ', 1, 1, NULL, NULL);
INSERT INTO kek VALUES ('K1INF_W08', 'Ma podstawową wiedzę w zakresie budowy, organizacji i architektury komputera', 1, 1, NULL, NULL);
INSERT INTO kek VALUES ('K1INF_U01', 'Potrafi konstruować i implementować algorytmy, w tym algorytmy rozproszone, wykorzystując podstawowe strategie
algorytmiczne i struktury danych', 1, 2, NULL, NULL);
INSERT INTO kek VALUES ('K1INF_U02', 'Potrafi dobrać i ocenić przydatność paradygmatu programowania do problemu i zbudować prostą aplikację wykorzystującą ten
paradygmat', 1, 2, NULL, NULL);
INSERT INTO kek VALUES ('K1INF_U03', 'Potrafi opisać wymagania i zaprojektować – korzystając z wybranego języka modelowania – ogólną architekturę oprogramowania i
schemat bazy danych', 1, 2, NULL, NULL);
INSERT INTO kek VALUES ('K1INF_U04', 'Potrafi zaimplementować, zgodnie z projektem, oprogramowanie dla prostych, typowych zastosowań i utworzyć bazę danych oraz
zweryfikować poprawność rozwiązania.', 1, 2, NULL, NULL);
INSERT INTO kek VALUES ('K1INF_U05', 'Ma umiejętność samokształcenia, m.in. w celu podnoszenia kompetencji zawodowych ', 1, 2, NULL, NULL);
INSERT INTO kek VALUES ('K1INF_U06', 'Potrafi dobierać komponenty sprzętowe i programowe systemu komputerowego dla wskazanych zastosowań ', 1, 2, NULL, NULL);
INSERT INTO kek VALUES ('K1INF_U07', 'Potrafi zastosować wskazaną metodę analityczną oraz zaplanować i przeprowadzić prosty eksperyment inżynierski i symulację
komputerową, przeprowadzić pomiary i zanalizować wyniki, w szczególności dla wybranych komponentów systemu
informatycznego', 1, 2, NULL, NULL);
INSERT INTO kek VALUES ('K1INF_U08', 'Potrafi konfigurować podstawowe urządzenia i oprogramowanie sieciowe w sieciach komputerowych ', 1, 2, NULL, NULL);
INSERT INTO kek VALUES ('K1INF_K01', 'Rozumie potrzebę i zna możliwości ciągłego dokształcania się oraz podnoszenia własnych kompetencji zawodowych i społecznych', 1, 3, NULL, NULL);
INSERT INTO kek VALUES ('K1INF_K02', 'Ma świadomość ważności i zrozumienie pozatechnicznych aspektów i skutków działalności inżyniera-informatyka, w tym jej wpływu
na środowisko, i związanej z tym odpowiedzialności za podejmowane decyzje', 1, 3, NULL, NULL);
INSERT INTO kek VALUES ('K1INF_K03', 'Potrafi współdziałać i pracować w grupie, przyjmując w niej różne role ', 1, 3, NULL, NULL);
INSERT INTO kek VALUES ('K1INF_K04', 'Potrafi odpowiednio określić priorytety służące realizacji określonego przez siebie lub innych zadania ', 1, 3, NULL, NULL);
INSERT INTO kek VALUES ('K1INF_K05', 'Prawidłowo identyfikuje i rozstrzyga dylematy związane z wykonywaniem zawodu ', 1, 3, NULL, NULL);
INSERT INTO kek VALUES ('K1INF_K06', 'Potrafi myśleć i działać w sposób przedsiębiorczy', 1, 3, NULL, NULL);
INSERT INTO kek VALUES ('K1INF_K07', 'Ma świadomość roli społecznej absolwenta uczelni technicznej, a zwłaszcza rozumie potrzebę formułowania i przekazywania
społeczeństwu – m.in. poprzez środki masowego przekazu – informacji i opinii dotyczących osiągnięć informatyki i innych aspektów
dzia', 1, 3, NULL, NULL);


--
-- TOC entry 2908 (class 0 OID 12923524)
-- Dependencies: 191
-- Data for Name: obszar_ksztalcenia; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--

INSERT INTO obszar_ksztalcenia VALUES (1, 'nauki_techniczne', 1);
INSERT INTO obszar_ksztalcenia VALUES (2, 'nauki_przyrodnicze', 1);
INSERT INTO obszar_ksztalcenia VALUES (3, 'nauki_humanistyczne', 1);
INSERT INTO obszar_ksztalcenia VALUES (4, 'nauki_społeczne', 1);
INSERT INTO obszar_ksztalcenia VALUES (5, 'nauki_scisle', 1);
INSERT INTO obszar_ksztalcenia VALUES (6, 'nauki_medyczne', 1);
INSERT INTO obszar_ksztalcenia VALUES (7, 'nauki_rolnicze', 1);
INSERT INTO obszar_ksztalcenia VALUES (8, 'nauki_artystyczne', 1);


--
-- TOC entry 2905 (class 0 OID 12923501)
-- Dependencies: 188
-- Data for Name: mek; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--

INSERT INTO mek VALUES ('P1A_K05', 'rozumie potrzebę podnoszenia kompetencji zawodowych i osobistych', 1, 3, 2, 1, 1);
INSERT INTO mek VALUES ('X2A_K07', 'potrafi myśleć i działać w sposób przedsiębiorczy', 1, 3, 5, 2, 1);
INSERT INTO mek VALUES ('H2A_W10', 'ma podstawową wiedzę o instytucjach kultury i orientację we współczesnym życiu kulturalnym', 1, 1, 3, 2, 1);
INSERT INTO mek VALUES ('﻿A1_K01', 'rozumie potrzebę uczenia się przez całe życie', 1, 3, 8, 1, 1);
INSERT INTO mek VALUES ('A1_K02', 'samodzielnie podejmuje niezależne prace, wykazując się umiejętnościami zbierania, analizowania i interpretowania informacji, rozwijania idei i formułowania krytycznej argumentacji oraz wewnętrzną motywacją i umiejętnością organizacji pracy', 1, 3, 8, 1, 1);
INSERT INTO mek VALUES ('A1_U01', 'umie tworzyć i realizować własne koncepcje artystyczne oraz dysponować umiejętnościami potrzebnymi do ich wyrażenia', 1, 2, 8, 1, 1);
INSERT INTO mek VALUES ('A1_W01', 'zna podstawowy repertuar związany ze studiowanym kierunkiem studiów i specjalnością oraz repertuar instrumentów pokrewnych', 1, 1, 8, 1, 1);
INSERT INTO mek VALUES ('A1_W02', 'zna elementy dzieła muzycznego oraz rozumie ich wzajemne relacje, a także zna wzorce budowy formalnej utworów', 1, 1, 8, 1, 1);
INSERT INTO mek VALUES ('A2_K01', 'rozumie potrzebę uczenia się przez całe życie, potrafi inspirować i organizować proces uczenia się innych osób', 1, 3, 8, 2, 1);
INSERT INTO mek VALUES ('A2_K02', 'jest zdolna do samodzielnego integrowania nabytej wiedzy oraz podejmowania w zorganizowany sposób nowych i kompleksowych działań, także w warunkach ograniczonego dostępu do potrzebnych informacji', 1, 3, 8, 2, 1);
INSERT INTO mek VALUES ('A2_U01', 'posiada rozwiniętą osobowość artystyczną, umożliwiającą tworzenie, realizowanie i wyrażanie własnych koncepcji artystycznych', 1, 2, 8, 2, 1);
INSERT INTO mek VALUES ('A2_W01', 'ma gruntowną znajomość repertuaru związanego ze studiowanym kierunkiem studiów i specjalnością', 1, 1, 8, 2, 1);
INSERT INTO mek VALUES ('A2_W02', 'umie zastosować wiedzę dotyczącą elementów dzieła muzycznego i muzycznych wzorców formalnych do wyrażania własnych koncepcji artystycznych', 1, 1, 8, 2, 1);
INSERT INTO mek VALUES ('H1A_K01', 'rozumie potrzebę uczenia się przez całe życie', 1, 3, 3, 1, 1);
INSERT INTO mek VALUES ('H1A_K02', 'potrafi współdziałać i pracować w grupie, przyjmując w niej różne role', 1, 3, 3, 1, 1);
INSERT INTO mek VALUES ('H1A_K03', 'potrafi odpowiednio określić priorytety służące realizacji określonego przez siebie lub innych zadania', 1, 3, 3, 1, 1);
INSERT INTO mek VALUES ('H1A_K04', 'prawidłowo identyfikuje i rozstrzyga dylematy związane z wykonywaniem zawodu', 1, 3, 3, 1, 1);
INSERT INTO mek VALUES ('H1A_K05', 'ma świadomość odpowiedzialności za zachowanie dziedzictwa kulturowego regionu, kraju, Europy', 1, 3, 3, 1, 1);
INSERT INTO mek VALUES ('H1A_K06', 'uczestniczy w życiu kulturalnym, korzystając z różnych mediów i różnych jego form', 1, 3, 3, 1, 1);
INSERT INTO mek VALUES ('H1A_U01', 'potrafi wyszukiwać, analizować, oceniać, selekcjonować i użytkować informację z wykorzystaniem różnych źródeł i sposobów', 1, 2, 3, 1, 1);
INSERT INTO mek VALUES ('H1A_U02', 'posiada podstawowe umiejętności badawcze, obejmujące formułowanie i analizę problemów badawczych, dobór metod i narzędzi badawczych, opracowanie i prezentację wyników, pozwalające na rozwiązywanie problemów w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 2, 3, 1, 1);
INSERT INTO mek VALUES ('H1A_U03', 'umie samodzielnie zdobywać wiedzę i rozwijać umiejętności badawcze, kierując się wskazówkami opiekuna naukowego', 1, 2, 3, 1, 1);
INSERT INTO mek VALUES ('H1A_U04', 'potrafi posługiwać się podstawowymi ujęciami teoretycznymi, paradygmatami badawczymi i pojęciami właściwymi dla studiowanej dyscypliny w zakresie nauk humanistycznych w typowych sytuacjach profesjonalnych', 1, 2, 3, 1, 1);
INSERT INTO mek VALUES ('H2A_W08', 'zna i rozumie podstawowe pojęcia i zasady z zakresu ochrony własności przemysłowej i prawa autorskiego oraz konieczność zarządzania zasobami własności intelektualnej', 1, 1, 3, 2, 1);
INSERT INTO mek VALUES ('H1A_U05', 'potrafi rozpoznać różne rodzaje wytworów kultury właściwych dla studiowanej dyscypliny w zakresie nauk humanistycznych oraz przeprowadzić ich krytyczną analizę i interpretację z zastosowaniem typowych metod, w celu określenia ich znaczeń, od-działywania społecznego, miejsca w procesie historyczno-kul-turowym', 1, 2, 3, 1, 1);
INSERT INTO mek VALUES ('H1A_U06', 'posiada umiejętność merytorycznego argumentowania, z wykorzystaniem poglądów innych autorów, oraz formułowania wniosków', 1, 2, 3, 1, 1);
INSERT INTO mek VALUES ('H1A_W01', 'ma podstawową wiedzę o miejscu i znaczeniu nauk humanistycznych w systemie nauk oraz ich specyfice przedmiotowej i metodologicznej', 1, 1, 3, 1, 1);
INSERT INTO mek VALUES ('H1A_W02', 'zna podstawową terminologię nauk humanistycznych', 1, 1, 3, 1, 1);
INSERT INTO mek VALUES ('H1A_W03', 'ma uporządkowaną wiedzę ogólną, obejmującą terminologię, teorie i metodologię z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 3, 1, 1);
INSERT INTO mek VALUES ('H1A_W04', 'ma uporządkowaną wiedzę szczegółową z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 3, 1, 1);
INSERT INTO mek VALUES ('H1A_W05', 'ma podstawową wiedzę o powiązaniach dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów z innymi dziedzinami nauki i dyscyplinami naukowymi obszaru albo obszarów, z których został wyodrębniony studiowany kierunek studiów', 1, 1, 3, 1, 1);
INSERT INTO mek VALUES ('H1A_W06', 'ma podstawową wiedzę o głównych kierunkach rozwoju i najważniejszych nowych osiągnięciach w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 3, 1, 1);
INSERT INTO mek VALUES ('H1A_W07', 'zna i rozumie podstawowe metody analizy i interpretacji różnych wytworów kultury właściwe dla wybranych tradycji, teorii lub szkół badawczych w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 3, 1, 1);
INSERT INTO mek VALUES ('H1A_W08', 'zna i rozumie podstawowe pojęcia i zasady z zakresu ochrony własności przemysłowej i prawa autorskiego', 1, 1, 3, 1, 1);
INSERT INTO mek VALUES ('H1A_W09', 'ma świadomość kompleksowej natury języka oraz jego złożoności i historycznej zmienności jego znaczeń', 1, 1, 3, 1, 1);
INSERT INTO mek VALUES ('H1A_W10', 'ma podstawową wiedzę o instytucjach kultury i orientację we współczesnym życiu kulturalnym', 1, 1, 3, 1, 1);
INSERT INTO mek VALUES ('H1P_K01', 'rozumie potrzebę uczenia się przez całe życie', 1, 3, 3, 1, 2);
INSERT INTO mek VALUES ('H1P_K02', 'potrafi współdziałać i pracować w grupie, przyjmując w niej różne role', 1, 3, 3, 1, 2);
INSERT INTO mek VALUES ('H1P_K03', 'potrafi odpowiednio określić priorytety służące realizacji określonego przez siebie lub innych zadania', 1, 3, 3, 1, 2);
INSERT INTO mek VALUES ('H1P_K04', 'prawidłowo identyfikuje i rozstrzyga dylematy związane z wykonywaniem zawodu', 1, 3, 3, 1, 2);
INSERT INTO mek VALUES ('H1P_K05', 'ma świadomość odpowiedzialności za zachowanie dziedzictwa kulturowego regionu, kraju, Europy', 1, 3, 3, 1, 2);
INSERT INTO mek VALUES ('H1P_K06', 'uczestniczy w życiu kulturalnym, korzystając z różnych mediów i różnych jego form', 1, 3, 3, 1, 2);
INSERT INTO mek VALUES ('H1P_U01', 'potrafi wyszukiwać, analizować, oceniać, selekcjonować i użytkować informację z wykorzystaniem różnych źródeł i sposobów', 1, 2, 3, 1, 2);
INSERT INTO mek VALUES ('H1P_U02', 'umie samodzielnie zdobywać wiedzę i rozwijać umiejętności profesjonalne związane z wybraną sferą działalności kulturalnej, medialnej, promocyjno-reklamowej', 1, 2, 3, 1, 2);
INSERT INTO mek VALUES ('H1P_U03', 'samodzielnie planuje i realizuje typowe projekty związane z wybraną sferą działalności kulturalnej, medialnej, promocyjno-reklamowej', 1, 2, 3, 1, 2);
INSERT INTO mek VALUES ('H1P_U04', 'posiada podstawowe umiejętności organizacyjne pozwalające na planowanie i realizację zadań związanych z wybraną sferą działalności kulturalnej, medialnej, promocyjno-reklamowej', 1, 2, 3, 1, 2);
INSERT INTO mek VALUES ('H1P_U05', 'posiada podstawowe umiejętności w zakresie prowadzenia badań społecznych niezbędnych do opracowania diagnoz potrzeb odbiorców kultury, mediów, działań promocyjno-rekla-mowych', 1, 2, 3, 1, 2);
INSERT INTO mek VALUES ('H1P_U06', 'posiada podstawowe umiejętności w zakresie oceny jakości usług związanych z działalnością kulturalną, medialną, promo-cyjno-reklamową', 1, 2, 3, 1, 2);
INSERT INTO mek VALUES ('H1P_U07', 'potrafi w podstawowym zakresie stosować przepisy prawa odnoszącego się do instytucji związanych z wybraną sferą działalności kulturalnej, medialnej, promocyjno-reklamowej, w szczególności prawa autorskiego, i związane z zarządzaniem własnością intelektualną', 1, 2, 3, 1, 2);
INSERT INTO mek VALUES ('H1P_U08', 'potrafi sporządzić wniosek o przyznanie środków na realizację projektu profesjonalnego związanego z wybraną sferą działalności kulturalnej, medialnej, promocyjno-reklamowej', 1, 2, 3, 1, 2);
INSERT INTO mek VALUES ('H1P_U09', 'potrafi ocenić przydatność różnorodnych metod, procedur, dobrych praktyk do realizacji zadań i rozwiązywania problemów dotyczących wybranej sfery działalności kulturalnej, medialnej, promocyjno-reklamowej oraz wybrać i zastosować właściwy sposób postępowania', 1, 2, 3, 1, 2);
INSERT INTO mek VALUES ('H1P_U10', 'posiada umiejętność merytorycznego argumentowania z wykorzystaniem poglądów innych autorów oraz formułowania wniosków', 1, 2, 3, 1, 2);
INSERT INTO mek VALUES ('H1P_U11', 'potrafi porozumiewać się z wykorzystaniem różnych kanałów i technik komunikacyjnych ze specjalistami w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, w języku polskim i języku obcym', 1, 2, 3, 1, 2);
INSERT INTO mek VALUES ('H1P_U12', 'posiada umiejętność przygotowania typowych prac pisemnych w języku polskim i języku obcym uznawanym za podstawowy dla dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, dotyczących zagadnień szczegółowych, z wykorzystaniem podstawowych ujęć teoretycznych, a także różnych źródeł', 1, 2, 3, 1, 2);
INSERT INTO mek VALUES ('H1P_U13', 'posiada umiejętność przygotowania wystąpień ustnych, w języku polskim i języku obcym, dotyczących zagadnień szczegółowych, z wykorzystaniem podstawowych ujęć teoretycznych, a także różnych źródeł', 1, 2, 3, 1, 2);
INSERT INTO mek VALUES ('H1P_U14', 'ma umiejętności językowe w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, zgodne z wymaganiami określonymi dla poziomu B2 Europejskiego Systemu Opisu Kształcenia Językowego', 1, 2, 3, 1, 2);
INSERT INTO mek VALUES ('H2A_W09', 'ma pogłębioną wiedzę o kompleksowej naturze języka i historycznej zmienności jego znaczeń', 1, 1, 3, 2, 1);
INSERT INTO mek VALUES ('H1P_W01', 'ma uporządkowaną podstawową wiedzę z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, zorientowaną na zastosowania praktyczne w wybranej sferze działalności kulturalnej, medialnej, promo-cyjno-reklamowej', 1, 1, 3, 1, 2);
INSERT INTO mek VALUES ('H1P_W02', 'ma uporządkowaną wiedzę podstawową, obejmującą wybrane obszary z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, zorientowaną na zastosowania praktyczne w wybranej sferze działalności kulturalnej, medialnej, promocyjno-reklamowej', 1, 1, 3, 1, 2);
INSERT INTO mek VALUES ('H1P_W03', 'zna podstawową terminologię z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów oraz związaną z wybraną sferą działalności kulturalnej, medialnej, promocyjno-reklamowej', 1, 1, 3, 1, 2);
INSERT INTO mek VALUES ('H1P_W04', 'ma podstawową wiedzę o budowie i funkcjach systemu kultury i mediów', 1, 1, 3, 1, 2);
INSERT INTO mek VALUES ('H1P_W05', 'ma podstawową wiedzę o celach, organizacji i funkcjonowaniu instytucji związanych z wybraną sferą działalności kulturalnej, medialnej, promocyjno-reklamowej', 1, 1, 3, 1, 2);
INSERT INTO mek VALUES ('H1P_W06', 'ma podstawową wiedzę o prawnych i ekonomicznych uwarunkowaniach funkcjonowania instytucji związanych z wybraną sferą działalności kulturalnej, medialnej, promocyjno-reklamowej', 1, 1, 3, 1, 2);
INSERT INTO mek VALUES ('H1P_W07', 'ma podstawową wiedzę o metodyce wykonywania zadań, normach, procedurach i dobrych praktykach stosowanych w instytucjach związanych z wybraną sferą działalności kulturalnej, medialnej, promocyjno-reklamowej', 1, 1, 3, 1, 2);
INSERT INTO mek VALUES ('H1P_W08', 'ma podstawową wiedzę o odbiorcach kultury, mediów, działań promocyjno-reklamowych oraz podstawową wiedzę o metodach diagnozowania ich potrzeb i oceny jakości usług', 1, 1, 3, 1, 2);
INSERT INTO mek VALUES ('H1P_W09', 'ma podstawową wiedzę o bezpieczeństwie i higienie pracy w instytucjach związanych z wybraną sferą działalności kulturalnej, medialnej, promocyjno-reklamowej', 1, 1, 3, 1, 2);
INSERT INTO mek VALUES ('H1P_W10', 'zna i rozumie podstawowe pojęcia i zasady z zakresu ochrony własności przemysłowej i prawa autorskiego', 1, 1, 3, 1, 2);
INSERT INTO mek VALUES ('H2A_K01', 'rozumie potrzebę uczenia się przez całe życie, potrafi inspirować i organizować proces uczenia się innych osób', 1, 3, 3, 2, 1);
INSERT INTO mek VALUES ('H2A_K02', 'potrafi współdziałać i pracować w grupie, przyjmując w niej różne role', 1, 3, 3, 2, 1);
INSERT INTO mek VALUES ('H2A_K03', 'potrafi odpowiednio określić priorytety służące realizacji określonego przez siebie lub innych zadania', 1, 3, 3, 2, 1);
INSERT INTO mek VALUES ('H2A_K04', 'prawidłowo identyfikuje i rozstrzyga dylematy związane z wykonywaniem zawodu', 1, 3, 3, 2, 1);
INSERT INTO mek VALUES ('H2A_K05', 'aktywnie uczestniczy w działaniach na rzecz zachowania dziedzictwa kulturowego regionu, kraju, Europy', 1, 3, 3, 2, 1);
INSERT INTO mek VALUES ('H2A_K06', 'systematycznie uczestniczy wżyciu kulturalnym, interesuje się aktualnymi wydarzeniami kulturalnymi, nowatorskimi formami wyrazu artystycznego, nowymi zjawiskami w sztuce', 1, 3, 3, 2, 1);
INSERT INTO mek VALUES ('H2A_U01', 'potrafi wyszukiwać, analizować, oceniać, selekcjonować i integrować informację z wykorzystaniem różnych źródeł oraz formułować na tej podstawie krytyczne sądy', 1, 2, 3, 2, 1);
INSERT INTO mek VALUES ('H2A_U02', 'posiada pogłębione umiejętności badawcze, obejmujące analizę prac innych autorów, syntezę różnych idei i poglądów, dobór metod i konstruowanie narzędzi badawczych, opracowanie i prezentację wyników, pozwalające na oryginalne rozwiązywanie złożonych problemów w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 2, 3, 2, 1);
INSERT INTO mek VALUES ('H2A_U03', 'umie samodzielnie zdobywać wiedzę i poszerzać umiejętności badawcze oraz podejmować autonomiczne działania zmierzające do rozwijania zdolności i kierowania własną karierą zawodową', 1, 2, 3, 2, 1);
INSERT INTO mek VALUES ('H2A_U04', 'posiada umiejętność integrowania wiedzy z różnych dyscyplin w zakresie nauk humanistycznych oraz jej zastosowania w nietypowych sytuacjach profesjonalnych', 1, 2, 3, 2, 1);
INSERT INTO mek VALUES ('H2A_U05', 'potrafi przeprowadzić krytyczną analizę i interpretację różnych rodzajów wytworów kultury właściwych dla studiowanej dyscypliny w zakresie nauk humanistycznych, stosując oryginalne podejścia, uwzględniające nowe osiągnięcia humanistyki, w celu określenia ich znaczeń, oddziaływania społecznego, miejsca w procesie historyczno-kulturowym', 1, 2, 3, 2, 1);
INSERT INTO mek VALUES ('H2A_U06', 'posiada umiejętność merytorycznego argumentowania, z wykorzystaniem własnych poglądów oraz poglądów innych autorów, formułowania wniosków oraz tworzenia syntetycznych podsumowań', 1, 2, 3, 2, 1);
INSERT INTO mek VALUES ('H2A_U07', 'posiada umiejętność formułowania opinii krytycznych o wytworach kultury na podstawie wiedzy naukowej i doświadczenia oraz umiejętność prezentacji opracowań krytycznych w różnych formach i w różnych mediach', 1, 2, 3, 2, 1);
INSERT INTO mek VALUES ('H2A_W01', 'ma pogłębioną wiedzę o specyfice przedmiotowej i metodologicznej nauk humanistycznych, którą jest w stanie rozwijać i twórczo stosować w działalności profesjonalnej', 1, 1, 3, 2, 1);
INSERT INTO mek VALUES ('H2A_W02', 'zna terminologię nauk humanistycznych na poziomie rozszerzonym', 1, 1, 3, 2, 1);
INSERT INTO mek VALUES ('H2A_W03', 'ma uporządkowaną, pogłębioną wiedzę, obejmującą terminologię, teorie i metodologię z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 3, 2, 1);
INSERT INTO mek VALUES ('H2A_W04', 'ma uporządkowaną, pogłębioną, prowadzącą do specjalizacji, szczegółową wiedzę z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 3, 2, 1);
INSERT INTO mek VALUES ('H2A_W05', 'ma pogłębioną wiedzę o powiązaniach dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów z innymi dziedzinami nauki i dyscyplinami naukowymi obszaru albo obszarów, z których został wyodrębniony studiowany kierunek studiów, pozwalającą na integrowanie perspektyw właściwych dla kilku dyscyplin naukowych', 1, 1, 3, 2, 1);
INSERT INTO mek VALUES ('H2A_W06', 'ma szczegółową wiedzę o współczesnych dokonaniach, ośrodkach i szkołach badawczych obejmującą wybrane obszary dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 3, 2, 1);
INSERT INTO mek VALUES ('H2A_W07', 'zna i rozumie zaawansowane metody analizy, interpretacji, wartościowania i problematyzowania różnych wytworów kultury właściwe dla wybranych tradycji, teorii lub szkół badawczych w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 3, 2, 1);
INSERT INTO mek VALUES ('H2P_K01', 'rozumie potrzebę uczenia się przez całe życie, potrafi inspirować i organizować proces uczenia się innych osób', 1, 3, 3, 2, 2);
INSERT INTO mek VALUES ('H2P_K02', 'potrafi współdziałać i pracować w grupie, przyjmując w niej różne role', 1, 3, 3, 2, 2);
INSERT INTO mek VALUES ('H2P_K03', 'potrafi odpowiednio określić priorytety służące realizacji określonego przez siebie lub innych zadania', 1, 3, 3, 2, 2);
INSERT INTO mek VALUES ('H2P_K04', 'prawidłowo identyfikuje i rozstrzyga dylematy związane z wykonywaniem zawodu', 1, 3, 3, 2, 2);
INSERT INTO mek VALUES ('H2P_K05', 'aktywnie uczestniczy w działaniach na rzecz zachowania dziedzictwa kulturowego regionu, kraju, Europy', 1, 3, 3, 2, 2);
INSERT INTO mek VALUES ('H2P_K06', 'systematycznie uczestniczy wżyciu kulturalnym, interesuje się aktualnymi wydarzeniami kulturalnymi, nowatorskimi formami wyrazu artystycznego, nowymi zjawiskami w sztuce', 1, 3, 3, 2, 2);
INSERT INTO mek VALUES ('H2P_U01', 'potrafi wyszukiwać, analizować, oceniać, selekcjonować i integrować informację z wykorzystaniem różnych źródeł oraz formułować na tej podstawie krytyczne sądy', 1, 2, 3, 2, 2);
INSERT INTO mek VALUES ('H2P_U02', 'umie samodzielnie zdobywać wiedzę i poszerzać umiejętności profesjonalne oraz podejmować autonomiczne działania zmierzające do rozwijania zdolności i kierowania własną karierą zawodową', 1, 2, 3, 2, 2);
INSERT INTO mek VALUES ('H2P_U03', 'samodzielnie planuje i realizuje oryginalne i innowacyjne projekty związane z wybraną sferą działalności kulturalnej, medialnej, promocyjno-reklamowej', 1, 2, 3, 2, 2);
INSERT INTO mek VALUES ('H2P_U04', 'posiada pogłębione umiejętności organizacyjne pozwalające na planowanie i innowacyjne rozwiązywanie złożonych problemów związanych z wybraną sferą działalności kulturalnej, medialnej, promocyjno-reklamowej', 1, 2, 3, 2, 2);
INSERT INTO mek VALUES ('H2P_U05', 'posiada pogłębione umiejętności w zakresie prowadzenia badań społecznych niezbędnych do opracowania diagnoz potrzeb odbiorców kultury, mediów, działań promocyjno-rekla-mowych', 1, 2, 3, 2, 2);
INSERT INTO mek VALUES ('H2P_U06', 'posiada pogłębione umiejętności w zakresie oceny jakości usług związanych z działalnością kulturalną, medialną, promo-cyjno-reklamową', 1, 2, 3, 2, 2);
INSERT INTO mek VALUES ('H2P_U07', 'potrafi stosować przepisy prawa odnoszącego się do instytucji związanych z wybraną sferą działalności kulturalnej, medialnej, promocyjno-reklamowej, w szczególności prawa autorskiego, i związane z zarządzaniem własnością intelektualną', 1, 2, 3, 2, 2);
INSERT INTO mek VALUES ('H2P_U08', 'potrafi sporządzić wniosek o przyznanie środków na realizację projektu profesjonalnego związanego z wybraną sferą działalności kulturalnej, medialnej, promocyjno-reklamowej oraz kierować realizacją projektu', 1, 2, 3, 2, 2);
INSERT INTO mek VALUES ('H2P_U09', 'potrafi zaprojektować innowacyjne sposoby i procedury realizacji zadań oraz metody rozwiązywania problemów dotyczących wybranej sfery działalności kulturalnej, medialnej, promocyjno-reklamowej', 1, 2, 3, 2, 2);
INSERT INTO mek VALUES ('H2P_U10', 'posiada umiejętność merytorycznego argumentowania z wykorzystaniem własnych poglądów oraz poglądów innych autorów, formułowania wniosków oraz tworzenia syntetycznych podsumowań', 1, 2, 3, 2, 2);
INSERT INTO mek VALUES ('H2P_U11', 'potrafi porozumiewać się z wykorzystaniem różnych kanałów i technik komunikacyjnych ze specjalistami w wybranej sferze działalności kulturalnej medialnej, promocyjno-reklamowej oraz niespecjalistami, w języku polskim i języku obcym', 1, 2, 3, 2, 2);
INSERT INTO mek VALUES ('H2P_U12', 'posiada pogłębioną umiejętność przygotowania różnych prac pisemnych w języku polskim i języku obcym uznawanym za podstawowy dla dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 2, 3, 2, 2);
INSERT INTO mek VALUES ('H2P_U13', 'posiada pogłębioną umiejętność przygotowania wystąpień ustnych, w języku polskim i języku obcym, w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów lub w obszarze leżącym na pograniczu różnych dyscyplin naukowych', 1, 2, 3, 2, 2);
INSERT INTO mek VALUES ('H2P_U14', 'ma umiejętności językowe w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, zgodne z wymaganiami określonymi dla poziomu B2+ Europejskiego Systemu Opisu Kształcenia Językowego', 1, 2, 3, 2, 2);
INSERT INTO mek VALUES ('H2P_W01', 'ma uporządkowaną, pogłębioną i rozszerzoną wiedzę z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, zorientowaną na zastosowania praktyczne w wybranej sferze działalności kulturalnej, medialnej, promocyjno-reklamowej', 1, 1, 3, 2, 2);
INSERT INTO mek VALUES ('H2P_W02', 'ma uporządkowaną, pogłębioną wiedzę szczegółową, obejmującą wybrane obszary z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, zorientowaną na zastosowania praktyczne w wybranej sferze działalności kulturalnej, medialnej, promocyjno-reklamowej', 1, 1, 3, 2, 2);
INSERT INTO mek VALUES ('H2P_W03', 'zna na poziomie rozszerzonym terminologię z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów oraz związaną z wybraną sferą działalności kulturalnej, medialnej, promocyjno-reklamowej', 1, 1, 3, 2, 2);
INSERT INTO mek VALUES ('H2P_W04', 'ma rozszerzoną wiedzę o budowie i funkcjach systemu kultury i mediów, zorientowaną na tworzenie rozwiązań o charakterze systemowym, w zakresie wybranej sfery działalności kulturalnej, medialnej, promocyjno-reklamowej', 1, 1, 3, 2, 2);
INSERT INTO mek VALUES ('H2P_W05', 'ma szczegółową wiedzę o celach, organizacji i funkcjonowaniu instytucji związanych z wybraną sferą działalności kulturalnej lub edukacyjnej zorientowaną na zarządzanie tymi instytucjami', 1, 1, 3, 2, 2);
INSERT INTO mek VALUES ('H2P_W06', 'ma pogłębioną i rozszerzoną wiedzę o prawnych i ekonomicznych uwarunkowaniach funkcjonowania instytucji związanych z wybraną sferą działalności kulturalnej, medialnej, promocyjno-reklamowej, niezbędną do kierowania tymi instytucjami', 1, 1, 3, 2, 2);
INSERT INTO mek VALUES ('H2P_W07', 'ma pogłębioną wiedzę o metodyce wykonywania zadań, normach, procedurach i dobrych praktykach stosowanych w instytucjach związanych z wybraną sferą działalności kulturalnej, medialnej, promocyjno-reklamowej, zorientowaną na innowacyjne rozwiązywanie złożonych problemów w nietypowych sytuacjach profesjonalnych', 1, 1, 3, 2, 2);
INSERT INTO mek VALUES ('H2P_W08', 'ma pogłębioną wiedzę o odbiorcach kultury, mediów, działań promocyjno-reklamowych oraz pogłębioną wiedzę o metodach diagnozowania ich potrzeb i oceny jakości usług', 1, 1, 3, 2, 2);
INSERT INTO mek VALUES ('H2P_W09', 'ma podstawową wiedzę o bezpieczeństwie i higienie pracy w instytucjach związanych z wybraną sferą działalności kulturalnej, medialnej, promocyjno-reklamowej', 1, 1, 3, 2, 2);
INSERT INTO mek VALUES ('H2P_W10', 'zna i rozumie podstawowe pojęcia i zasady z zakresu ochrony własności przemysłowej i prawa autorskiego oraz konieczność zarządzania zasobami własności intelektualnej', 1, 1, 3, 2, 2);
INSERT INTO mek VALUES ('M1_K01', 'rozumie potrzebę uczenia się przez całe życie', 1, 3, 6, 1, 1);
INSERT INTO mek VALUES ('M1_K02', 'jest świadoma własnych ograniczeń i wie, kiedy zwrócić się do ekspertów', 1, 3, 6, 1, 1);
INSERT INTO mek VALUES ('M1_K03', 'okazuje szacunek wobec pacjenta, klienta, grup społecznych oraz troskę o ich dobro', 1, 3, 6, 1, 1);
INSERT INTO mek VALUES ('M1_K04', 'potrafi współdziałać i pracować w grupie, przyjmując w niej różne role', 1, 3, 6, 1, 1);
INSERT INTO mek VALUES ('M1_K05', 'potrafi odpowiednio określić priorytety służące realizacji określonego przez siebie lub innych zadania', 1, 3, 6, 1, 1);
INSERT INTO mek VALUES ('M1_K06', 'potrafi rozwiązywać najczęstsze problemy związane z wykonywaniem zawodu', 1, 3, 6, 1, 1);
INSERT INTO mek VALUES ('M1_K07', 'realizuje zadania w sposób zapewniający bezpieczeństwo własne i otoczenia, w tym przestrzega zasad bezpieczeństwa pracy', 1, 3, 6, 1, 1);
INSERT INTO mek VALUES ('M1_K08', 'potrafi formułować opinie dotyczące pacjentów, klientów, grup społecznych w kontekście związanym z wykonywaniem zawodu', 1, 3, 6, 1, 1);
INSERT INTO mek VALUES ('M1_K09', 'dba o poziom sprawności fizycznej niezbędnej dla wykonywania zadań właściwych dla działalności zawodowej związanej z kierunkiem studiów', 1, 3, 6, 1, 1);
INSERT INTO mek VALUES ('M1_U01', 'posiada umiejętności techniczne, manualne i ruchowe związane ze studiowanym kierunkiem studiów', 1, 2, 6, 1, 1);
INSERT INTO mek VALUES ('M1_U02', 'potrafi posługiwać się podstawowym sprzętem i aparaturą stosowanymi w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 2, 6, 1, 1);
INSERT INTO mek VALUES ('M1_U03', 'potrafi komunikować się z jednostką oraz grupą społeczną w zakresie związanym ze studiowanym kierunkiem studiów', 1, 2, 6, 1, 1);
INSERT INTO mek VALUES ('M1_U04', 'potrafi identyfikować problemy pacjenta, klienta oraz grupy społecznej', 1, 2, 6, 1, 1);
INSERT INTO mek VALUES ('M1_U05', 'potrafi podjąć działania diagnostyczne, profilaktyczne, pielęgnacyjne, terapeutyczne i edukacyjne odpowiadające potrzebom jednostki oraz grupy społecznej właściwe dla studiowanego kierunku studiów', 1, 2, 6, 1, 1);
INSERT INTO mek VALUES ('M1_U06', 'potrafi korzystać z technik informacyjnych w celu pozyskiwania i przechowywania danych', 1, 2, 6, 1, 1);
INSERT INTO mek VALUES ('M1_U07', 'potrafi identyfikować błędy i zaniedbania w praktyce', 1, 2, 6, 1, 1);
INSERT INTO mek VALUES ('M1_U08', 'potrafi interpretować dane liczbowe związane z zawodem właściwym dla studiowanego kierunku studiów', 1, 2, 6, 1, 1);
INSERT INTO mek VALUES ('M1_U09', 'potrafi prowadzić dokumentację dotyczącą jednostek, instytucji oraz podejmowanych działań', 1, 2, 6, 1, 1);
INSERT INTO mek VALUES ('M1_U10', 'potrafi planować, projektować i realizować działania z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, z uwzględnieniem obowiązujących norm oraz dostępnych warunków', 1, 2, 6, 1, 1);
INSERT INTO mek VALUES ('M1_U11', 'posiada specjalistyczne umiejętności ruchowe z zakresu wybranych form aktywności fizycznej (rekreacyjnych, zdrowotnych, sportowych i estetycznych) w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 2, 6, 1, 1);
INSERT INTO mek VALUES ('M1_U12', 'posiada umiejętność przygotowania pisemnego raportu w oparciu o własne działania lub dane źródłowe', 1, 2, 6, 1, 1);
INSERT INTO mek VALUES ('M1_U13', 'posiada umiejętność prezentowania w formie ustnej wyników własnych działań i przemyśleń', 1, 2, 6, 1, 1);
INSERT INTO mek VALUES ('M1_U14', 'ma umiejętności językowe w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, zgodne z wymaganiami określonymi dla poziomu B2 Europejskiego Systemu Opisu Kształcenia Językowego', 1, 2, 6, 1, 1);
INSERT INTO mek VALUES ('M1_W01', 'posiada wiedzę w zakresie fizykochemicznych i biologicznych podstaw nauk o zdrowiu oraz nauk o kulturze fizycznej w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 6, 1, 1);
INSERT INTO mek VALUES ('M1_W02', 'posiada ogólną znajomość budowy i funkcji organizmu człowieka', 1, 1, 6, 1, 1);
INSERT INTO mek VALUES ('M1_W03', 'zna metody oceny stanu zdrowia oraz objawy i przyczyny wybranych zaburzeń i zmian chorobowych w zakresie niezbędnym dla dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 6, 1, 1);
INSERT INTO mek VALUES ('M1_W04', 'zna podstawowe pojęcia i mechanizmy psychospołeczne związane ze zdrowiem i jego ochroną w zakresie niezbędnym dla dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 6, 1, 1);
INSERT INTO mek VALUES ('M1_W06', 'rozumie i diagnozuje styl życia oraz wybrane modele zachowań prozdrowotnych, kreacyjnych i rekreacyjnych podejmowanych przez człowieka oraz rozumie uwarunkowania kulturowe potrzeb i problemów jednostek oraz grup społecznych', 1, 1, 6, 2, 1);
INSERT INTO mek VALUES ('M1_W07', 'zna mechanizm działania i skutki uboczne zabiegów fizycznych i aktywności ruchowych stosowanych w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 6, 1, 1);
INSERT INTO mek VALUES ('M1_W08', 'zna prawne, organizacyjne i etyczne uwarunkowania wykonywania działalności zawodowej w ramach studiowanego kierunku studiów', 1, 1, 6, 1, 1);
INSERT INTO mek VALUES ('M1_W09', 'zna miejsce dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, w ramach organizacji systemu ochrony zdrowia na poziomie krajowym', 1, 1, 6, 1, 1);
INSERT INTO mek VALUES ('M1_W10', 'ma podstawową wiedzę i zna terminologię nauk o zdrowiu oraz nauk o kulturze fizycznej w zakresie niezbędnym dla dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 6, 1, 1);
INSERT INTO mek VALUES ('M1_W11', 'zna i rozumie podstawowe pojęcia i zasady z zakresu ochrony własności przemysłowej i prawa autorskiego', 1, 1, 6, 1, 1);
INSERT INTO mek VALUES ('M1_W12', 'zna ogólne zasady tworzenia i rozwoju form indywidualnej przedsiębiorczości, wykorzystującej wiedzę z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 6, 1, 1);
INSERT INTO mek VALUES ('M2_K01', 'rozumie potrzebę uczenia się przez całe życie, potrafi inspirować i organizować proces uczenia się innych osób', 1, 3, 6, 2, 1);
INSERT INTO mek VALUES ('M2_K02', 'jest świadoma własnych ograniczeń i wie, kiedy zwrócić się do ekspertów', 1, 3, 6, 2, 1);
INSERT INTO mek VALUES ('M2_K03', 'okazuje dbałość o prestiż związany z wykonywaniem zawodu i właściwie pojętą solidarność zawodową', 1, 3, 6, 2, 1);
INSERT INTO mek VALUES ('M2_K04', 'wykazuje przywództwo i przedsiębiorczość, potrafi zorganizować pracę zespołu', 1, 3, 6, 2, 1);
INSERT INTO mek VALUES ('M2_K05', 'potrafi odpowiednio określić priorytety służące realizacji określonego przez siebie lub innych zadania', 1, 3, 6, 2, 1);
INSERT INTO mek VALUES ('M2_K06', 'potrafi rozwiązywać złożone problemy związane z wykonywaniem zawodu', 1, 3, 6, 2, 1);
INSERT INTO mek VALUES ('M2_K07', 'potrafi dbać o bezpieczeństwo własne, otoczenia i współpracowników', 1, 3, 6, 2, 1);
INSERT INTO mek VALUES ('M2_K08', 'potrafi formułować opinie dotyczące różnych aspektów działalności zawodowej', 1, 3, 6, 2, 1);
INSERT INTO mek VALUES ('M2_K09', 'demonstruje postawę promującą zdrowie i aktywność fizyczną', 1, 3, 6, 2, 1);
INSERT INTO mek VALUES ('M2_U01', 'posiada pogłębioną umiejętność stosowania technik efektywnego komunikowania się i negocjacji', 1, 2, 6, 2, 1);
INSERT INTO mek VALUES ('M2_U02', 'potrafi posługiwać się zaawansowanym technicznie sprzętem i aparaturą stosowanymi w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 2, 6, 2, 1);
INSERT INTO mek VALUES ('M2_U03', 'potrafi prezentować i wyjaśniać problemy z zakresu ochrony zdrowia w sposób dostosowany do przygotowania osób oraz grup docelowych', 1, 2, 6, 2, 1);
INSERT INTO mek VALUES ('M2_U04', 'potrafi zidentyfikować uwarunkowania kulturowe, religijne i etniczne problemów pacjenta, klienta oraz grupy społecznej', 1, 2, 6, 2, 1);
INSERT INTO mek VALUES ('M2_U05', 'potrafi sformułować plan działań odpowiadających potrzebom pacjenta, klienta oraz grupy społecznej', 1, 2, 6, 2, 1);
INSERT INTO mek VALUES ('M2_U06', 'potrafi posługiwać się wyspecjalizowanymi narzędziami i technikami informatycznymi w celu pozyskiwania danych, a także analizować i krytycznie oceniać te dane', 1, 2, 6, 2, 1);
INSERT INTO mek VALUES ('M2_U07', 'potrafi identyfikować błędy i zaniedbania w praktyce', 1, 2, 6, 2, 1);
INSERT INTO mek VALUES ('M2_U08', 'potrafi współdziałać w planowaniu i realizacji zadań badawczych w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 2, 6, 2, 1);
INSERT INTO mek VALUES ('M2_U10', 'posiada zaawansowane umiejętności kierowania i realizowania zajęć rekreacyjnych, zdrowotnych, sportowych lub estetyki zachowań ruchowych w pracy z różnymi grupami społecznymi', 1, 2, 6, 2, 1);
INSERT INTO mek VALUES ('M2_U11', 'posiada specjalistyczne umiejętności ruchowe z zakresu wybranych form aktywności fizycznej (rekreacyjnych, zdrowotnych, sportowych i estetycznych) w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 2, 6, 2, 1);
INSERT INTO mek VALUES ('M2_U12', 'potrafi samodzielnie modyfikować i tworzyć różne formy aktywności fizycznej w zależności od warunków środowiskowych i klimatycznych', 1, 2, 6, 2, 1);
INSERT INTO mek VALUES ('M2_U13', 'posiada umiejętność przygotowania pisemnego opracowania w zakresie dyscypliny naukowej, właściwej dla studiowanego kierunku studiów', 1, 2, 6, 2, 1);
INSERT INTO mek VALUES ('M2_U14', 'posiada umiejętność przygotowania wystąpień ustnych w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 2, 6, 2, 1);
INSERT INTO mek VALUES ('M2_U15', 'ma umiejętności językowe w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, zgodne z wymaganiami określonymi dla poziomu B2+ Europejskiego Systemu Opisu Kształcenia Językowego', 1, 2, 6, 2, 1);
INSERT INTO mek VALUES ('M2_U9', 'posiada umiejętność wykorzystania wychowawczych aspektów promocji zdrowia i aktywności fizycznej w profilaktyce wykluczenia i patologii społecznych', 1, 2, 6, 2, 1);
INSERT INTO mek VALUES ('M2_W01', 'posiada rozszerzoną wiedzę w zakresie fizykochemicznych i biologicznych podstaw nauk o zdrowiu oraz nauk o kulturze fizycznej w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 6, 2, 1);
INSERT INTO mek VALUES ('M2_W02', 'posiada szczegółową znajomość budowy i funkcji organizmu człowieka w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 6, 2, 1);
INSERT INTO mek VALUES ('M2_W03', 'zna objawy i przyczyny wybranych zaburzeń i zmian chorobowych, a także dysfunkcji społecznych oraz metody ich oceny w zakresie niezbędnym dla dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 6, 2, 1);
INSERT INTO mek VALUES ('M2_W04', 'rozumie i poddaje analizie procesy psychospołeczne ważne dla zdrowia i jego ochrony lub kultury fizycznej w zakresie niezbędnym dla dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 6, 2, 1);
INSERT INTO mek VALUES ('M2_W05', 'zna zasady praktyki opartej na dowodach', 1, 1, 6, 2, 1);
INSERT INTO mek VALUES ('M2_W07', 'rozumie zasady funkcjonowania sprzętu i aparatury stosowanych w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 6, 2, 1);
INSERT INTO mek VALUES ('M2_W08', 'zna i rozumie społeczne i ekonomiczno-gospodarcze uwarunkowania wybranego obszaru działalności zawodowej', 1, 1, 6, 2, 1);
INSERT INTO mek VALUES ('M2_W09', 'ma pogłębioną wiedzę z zakresu nauk o zdrowiu oraz nauk o kulturze fizycznej oraz ich miejscu i znaczeniu w systemie nauk', 1, 1, 6, 2, 1);
INSERT INTO mek VALUES ('M2_W10', 'ma wiedzę i zna terminologię nauk o zdrowiu oraz nauk o kulturze fizycznej w zakresie niezbędnym dla dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 6, 2, 1);
INSERT INTO mek VALUES ('M2_W11', 'zna i rozumie podstawowe pojęcia i zasady z zakresu ochrony własności przemysłowej i prawa autorskiego oraz konieczność zarządzania zasobami własności intelektualnej', 1, 1, 6, 2, 1);
INSERT INTO mek VALUES ('M2_W12', 'zna ogólne zasady tworzenia i rozwoju form indywidualnej przedsiębiorczości, wykorzystującej wiedzę z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 6, 2, 1);
INSERT INTO mek VALUES ('P1A_K01', 'rozumie potrzebę uczenia się przez całe życie', 1, 3, 2, 1, 1);
INSERT INTO mek VALUES ('P1A_K02', 'potrafi współdziałać i pracować w grupie, przyjmując w niej różne role', 1, 3, 2, 1, 1);
INSERT INTO mek VALUES ('P1A_K03', 'potrafi odpowiednio określić priorytety służące realizacji określonego przez siebie lub innych zadania', 1, 3, 2, 1, 1);
INSERT INTO mek VALUES ('P1A_K04', 'prawidłowo identyfikuje i rozstrzyga dylematy związane z wykonywaniem zawodu', 1, 3, 2, 1, 1);
INSERT INTO mek VALUES ('P1A_K06', 'jest odpowiedzialny za bezpieczeństwo pracy własnej i innych; umie postępować w stanach zagrożenia', 1, 3, 2, 1, 1);
INSERT INTO mek VALUES ('P1A_K07', 'wykazuje potrzebę stałego aktualizowania wiedzy kierunkowej', 1, 3, 2, 1, 1);
INSERT INTO mek VALUES ('P1A_K08', 'potrafi myśleć i działać w sposób przedsiębiorczy', 1, 3, 2, 1, 1);
INSERT INTO mek VALUES ('P1A_U01', 'stosuje podstawowe techniki i narzędzia badawcze w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 2, 2, 1, 1);
INSERT INTO mek VALUES ('P1A_U02', 'rozumie literaturę z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, w języku polskim; czyta ze zrozumieniem nieskomplikowane teksty naukowe w języku angielskim', 1, 2, 2, 1, 1);
INSERT INTO mek VALUES ('P1A_U03', 'wykorzystuje dostępne źródła informacji, w tym źródła elektroniczne', 1, 2, 2, 1, 1);
INSERT INTO mek VALUES ('P1A_U04', 'wykonuje zlecone proste zadania badawcze lub ekspertyzy pod kierunkiem opiekuna naukowego', 1, 2, 2, 1, 1);
INSERT INTO mek VALUES ('P1A_U05', 'stosuje podstawowe metody statystyczne oraz algorytmy i techniki informatyczne do opisu zjawisk i analizy danych', 1, 2, 2, 1, 1);
INSERT INTO mek VALUES ('P1A_U06', 'przeprowadza obserwacje oraz wykonuje w terenie lub laboratorium proste pomiary fizyczne, biologiczne i chemiczne', 1, 2, 2, 1, 1);
INSERT INTO mek VALUES ('P1A_U07', 'wykazuje umiejętność poprawnego wnioskowania na podstawie danych pochodzących z różnych źródeł', 1, 2, 2, 1, 1);
INSERT INTO mek VALUES ('P1A_U08', 'wykorzystuje język naukowy w podejmowanych dyskursach ze specjalistami z wybranej dyscypliny naukowej', 1, 2, 2, 1, 1);
INSERT INTO mek VALUES ('P1A_U09', 'umie przygotować w języku polskim i języku obcym dobrze udokumentowane opracowanie problemów z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 2, 2, 1, 1);
INSERT INTO mek VALUES ('P1A_U10', 'posiada umiejętność wystąpień ustnych w języku polskim i języku obcym, dotyczących zagadnień szczegółowych z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 2, 2, 2, 1);
INSERT INTO mek VALUES ('P1A_U11', 'uczy się samodzielnie w sposób ukierunkowany', 1, 2, 2, 1, 1);
INSERT INTO mek VALUES ('P1A_U12', 'ma umiejętności językowe w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, zgodne z wymaganiami określonymi dla poziomu B2 Europejskiego Systemu Opisu Kształcenia Językowego', 1, 2, 2, 1, 1);
INSERT INTO mek VALUES ('P1A_W01', 'rozumie podstawowe zjawiska i procesy przyrodnicze', 1, 1, 2, 1, 1);
INSERT INTO mek VALUES ('P1A_W02', 'w interpretacji zjawisk i procesów przyrodniczych opiera się na podstawach empirycznych, rozumiejąc w pełni znaczenie metod matematycznych i statystycznych', 1, 1, 2, 1, 1);
INSERT INTO mek VALUES ('P1A_W03', 'ma wiedzę z zakresu matematyki, fizyki i chemii niezbędną dla zrozumienia podstawowych zjawisk i procesów przyrodniczych', 1, 1, 2, 1, 1);
INSERT INTO mek VALUES ('P1A_W04', 'ma wiedzę w zakresie najważniejszych problemów z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów oraz zna ich powiązania z innymi dyscyplinami przyrodniczymi', 1, 1, 2, 1, 1);
INSERT INTO mek VALUES ('P1A_W05', 'ma wiedzę w zakresie podstawowych kategorii pojęciowych i terminologii przyrodniczej oraz ma znajomość rozwoju dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów i stosowanych w nich metod badawczych', 1, 1, 2, 1, 1);
INSERT INTO mek VALUES ('P1A_W06', 'ma wiedzę w zakresie statystyki i informatyki na poziomie pozwalającym na opisywanie i interpretowanie zjawisk przyrodniczych', 1, 1, 2, 1, 1);
INSERT INTO mek VALUES ('P1A_W07', 'ma wiedzę w zakresie podstawowych technik i narzędzi badawczych stosowanych w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 2, 1, 1);
INSERT INTO mek VALUES ('P1A_W08', 'rozumie związki między osiągnięciami wybranej dziedziny nauki i dyscypliny nauk przyrodniczych a możliwościami ich wykorzystania wżyciu społeczno-gospodarczym z uwzględnieniem zrównoważonego użytkowania różnorodności biologicznej', 1, 1, 2, 1, 1);
INSERT INTO mek VALUES ('P1A_W09', 'zna podstawowe zasady bezpieczeństwa i higieny pracy oraz ergonomii', 1, 1, 2, 1, 1);
INSERT INTO mek VALUES ('P1A_W10', 'zna i rozumie podstawowe pojęcia i zasady z zakresu ochrony własności przemysłowej i prawa autorskiego; potrafi korzystać z zasobów informacji patentowej', 1, 1, 2, 1, 1);
INSERT INTO mek VALUES ('P1A_W11', 'zna ogólne zasady tworzenia i rozwoju form indywidualnej przedsiębiorczości, wykorzystującej wiedzę z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 2, 1, 1);
INSERT INTO mek VALUES ('P1P_K01', 'rozumie potrzebę uczenia się przez całe życie', 1, 3, 2, 1, 2);
INSERT INTO mek VALUES ('P1P_K02', 'potrafi współdziałać i pracować w grupie, przyjmując w niej różne role', 1, 3, 2, 1, 2);
INSERT INTO mek VALUES ('P1P_K03', 'potrafi odpowiednio określić priorytety służące realizacji określonego przez siebie lub innych zadania', 1, 3, 2, 1, 2);
INSERT INTO mek VALUES ('P1P_K04', 'prawidłowo identyfikuje i rozstrzyga dylematy związane z wykonywaniem zawodu', 1, 3, 2, 1, 2);
INSERT INTO mek VALUES ('P1P_K05', 'rozumie potrzebę podnoszenia kompetencji zawodowych i osobistych', 1, 3, 2, 1, 2);
INSERT INTO mek VALUES ('P1P_K06', 'jest odpowiedzialny za bezpieczeństwo pracy własnej i innych; umie postępować w stanach zagrożenia', 1, 3, 2, 1, 2);
INSERT INTO mek VALUES ('P1P_K07', 'wykazuje potrzebę stałego aktualizowania wiedzy kierunkowej', 1, 3, 2, 1, 2);
INSERT INTO mek VALUES ('P1P_K08', 'potrafi myśleć i działać w sposób przedsiębiorczy', 1, 3, 2, 1, 2);
INSERT INTO mek VALUES ('P1P_U01', 'stosuje podstawowe techniki i narzędzia badawcze oraz procesy technologiczne, właściwe dla dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów i oparte na tych dziedzinach działalności społeczno-gospodarczej', 1, 2, 2, 1, 2);
INSERT INTO mek VALUES ('P1P_U02', 'rozumie literaturę z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów w języku polskim; czyta ze zrozumieniem nieskomplikowane teksty naukowo-techniczne w języku obcym', 1, 2, 2, 1, 2);
INSERT INTO mek VALUES ('P1P_U03', 'wykorzystuje dostępne źródła informacji, w tym źródła elektroniczne', 1, 2, 2, 1, 2);
INSERT INTO mek VALUES ('P1P_U04', 'wykonuje zlecone proste zadania praktyczne i ekspertyzy pod kierunkiem opiekuna naukowego', 1, 2, 2, 1, 2);
INSERT INTO mek VALUES ('R1P_W07', 'ma podstawową wiedzę na temat stanu i czynników determinujących funkcjonowanie i rozwój obszarów wiejskich', 1, 1, 7, 1, 2);
INSERT INTO mek VALUES ('P1P_U05', 'stosuje podstawowe metody statystyczne oraz algorytmy i techniki informatyczne do opisu zjawisk i analizy danych typowych dla dziedzin działalności społeczno-gospodarczej opartych na naukach przyrodniczych', 1, 2, 2, 1, 2);
INSERT INTO mek VALUES ('P1P_U06', 'przeprowadza obserwacje oraz wykonuje proste pomiary fizyczne, biologiczne i chemiczne, typowe dla dziedzin działalności społeczno-gospodarczej opartych na naukach przyrodniczych', 1, 2, 2, 1, 2);
INSERT INTO mek VALUES ('P1P_U07', 'wykazuje umiejętność poprawnego wnioskowania na podstawie danych pochodzących z różnych źródeł', 1, 2, 2, 1, 2);
INSERT INTO mek VALUES ('P1P_U08', 'wykorzystuje język specjalistyczny w podejmowanych dyskursach ze specjalistami z wybranej dyscypliny naukowej oraz obszarów jej zastosowań w działalności społeczno-gospodarczej', 1, 2, 2, 1, 2);
INSERT INTO mek VALUES ('P1P_U09', 'umie przygotować w języku polskim i języku obcym dobrze udokumentowane opracowanie problemów z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 2, 2, 1, 2);
INSERT INTO mek VALUES ('P1P_U10', 'posiada umiejętność wystąpień ustnych w języku polskim i języku obcym, dotyczących zagadnień szczegółowych z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 2, 2, 2, 2);
INSERT INTO mek VALUES ('P1P_U11', 'uczy się samodzielnie w sposób ukierunkowany', 1, 2, 2, 1, 2);
INSERT INTO mek VALUES ('P1P_U12', 'ma umiejętności językowe w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, zgodne z wymaganiami określonymi dla poziomu B2 Europejskiego Systemu Opisu Kształcenia Językowego', 1, 2, 2, 1, 2);
INSERT INTO mek VALUES ('P1P_W01', 'rozumie podstawowe zjawiska i procesy przyrodnicze', 1, 1, 2, 1, 2);
INSERT INTO mek VALUES ('P1P_W02', 'w interpretacji zjawisk i procesów przyrodniczych opiera się na podstawach empirycznych, rozumiejąc w pełni znaczenie metod matematycznych i statystycznych', 1, 1, 2, 1, 2);
INSERT INTO mek VALUES ('P1P_W03', 'ma wiedzę z zakresu matematyki, fizyki i chemii niezbędną dla zrozumienia podstawowych zjawisk i procesów przyrodniczych', 1, 1, 2, 1, 2);
INSERT INTO mek VALUES ('P1P_W04', 'ma wiedzę w zakresie najważniejszych problemów z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów oraz zna ich powiązania z innymi dyscyplinami przyrodniczymi oraz podstawowymi dziedzinami działalności społeczno-gospodarczej', 1, 1, 2, 1, 2);
INSERT INTO mek VALUES ('P1P_W05', 'ma wiedzę w zakresie podstawowych kategorii pojęciowych i terminologii przyrodniczej, a także pojęć mających bezpośrednie odniesienie do praktycznych zastosowań wiedzy przyrodniczej', 1, 1, 2, 1, 2);
INSERT INTO mek VALUES ('P1P_W06', 'ma wiedzę w zakresie statystyki i informatyki na poziomie pozwalającym na opisywanie i interpretowanie zjawisk przyrodniczych', 1, 1, 2, 1, 2);
INSERT INTO mek VALUES ('P1P_W07', 'ma wiedzę w zakresie podstawowych technik i narzędzi badawczych stosowanych w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów oraz podstawowych technologii wykorzystujących osiągnięcia naukowe', 1, 1, 2, 1, 2);
INSERT INTO mek VALUES ('P1P_W08', 'rozumie związki między osiągnięciami wybranych dziedzin nauki i dyscyplin nauk przyrodniczych a możliwościami ich wykorzystania w życiu społeczno-gospodarczym z uwzględnieniem zrównoważonego użytkowania różnorodności biologicznej', 1, 1, 2, 1, 2);
INSERT INTO mek VALUES ('P1P_W09', 'zna podstawowe zasady bezpieczeństwa i higieny pracy oraz ergonomii', 1, 1, 2, 1, 2);
INSERT INTO mek VALUES ('P1P_W10', 'zna i rozumie podstawowe pojęcia i zasady z zakresu ochrony własności przemysłowej i prawa autorskiego; potrafi korzystać z zasobów informacji patentowej', 1, 1, 2, 1, 2);
INSERT INTO mek VALUES ('P1P_W11', 'zna ogólne zasady tworzenia i rozwoju form indywidualnej przedsiębiorczości, wykorzystującej wiedzę z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 2, 1, 2);
INSERT INTO mek VALUES ('P2A_K01', 'rozumie potrzebę uczenia się przez całe życie, potrafi inspirować i organizować proces uczenia się innych osób', 1, 3, 2, 2, 1);
INSERT INTO mek VALUES ('P2A_K02', 'potrafi współdziałać i pracować w grupie, przyjmując w niej różne role', 1, 3, 2, 2, 1);
INSERT INTO mek VALUES ('P2A_K03', 'potrafi odpowiednio określić priorytety służące realizacji określonego przez siebie lub innych zadania', 1, 3, 2, 2, 1);
INSERT INTO mek VALUES ('P2A_K04', 'prawidłowo identyfikuje i rozstrzyga dylematy związane z wykonywaniem zawodu', 1, 3, 2, 2, 1);
INSERT INTO mek VALUES ('P2A_K05', 'rozumie potrzebę systematycznego zapoznawania się z czasopismami naukowymi i popularnonaukowymi, podstawowymi dla studiowanego kierunku studiów, w celu poszerzania i pogłębiania wiedzy', 1, 3, 2, 2, 1);
INSERT INTO mek VALUES ('P2A_K06', 'wykazuje odpowiedzialność za ocenę zagrożeń wynikających ze stosowanych technik badawczych i tworzenie warunków bezpiecznej pracy', 1, 3, 2, 2, 1);
INSERT INTO mek VALUES ('P2A_K07', 'systematycznie aktualizuje wiedzę przyrodniczą i zna jej praktyczne zastosowania', 1, 3, 2, 2, 1);
INSERT INTO mek VALUES ('P2A_K08', 'potrafi myśleć i działać w sposób przedsiębiorczy', 1, 3, 2, 2, 1);
INSERT INTO mek VALUES ('P2A_U01', 'stosuje zaawansowane techniki i narzędzia badawcze w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 2, 2, 2, 1);
INSERT INTO mek VALUES ('P2A_U02', 'biegle wykorzystuje literaturę naukową z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, w języku polskim; czyta ze zrozumieniem skomplikowane teksty naukowe w języku angielskim', 1, 2, 2, 2, 1);
INSERT INTO mek VALUES ('P2A_U03', 'wykazuje umiejętność krytycznej analizy i selekcji informacji, zwłaszcza ze źródeł elektronicznych', 1, 2, 2, 2, 1);
INSERT INTO mek VALUES ('P2A_U04', 'planuje i wykonuje zadania badawcze lub ekspertyzy pod kierunkiem opiekuna naukowego', 1, 2, 2, 2, 1);
INSERT INTO mek VALUES ('P2A_U05', 'stosuje metody statystyczne oraz techniki i narzędzia informatyczne do opisu zjawisk i analizy danych o charakterze specjalistycznym', 1, 2, 2, 2, 1);
INSERT INTO mek VALUES ('P2A_U06', 'zbiera i interpretuje dane empiryczne oraz na tej podstawie formułuje odpowiednie wnioski', 1, 2, 2, 2, 1);
INSERT INTO mek VALUES ('P2A_U07', 'wykazuje umiejętność formułowania uzasadnionych sądówna podstawie danych pochodzących z różnych źródeł', 1, 2, 2, 2, 1);
INSERT INTO mek VALUES ('P2A_U08', 'wykazuje umiejętność przygotowania wystąpień ustnych w zakresie prac badawczych z wykorzystaniem różnych środków komunikacji werbalnej', 1, 2, 2, 2, 1);
INSERT INTO mek VALUES ('R2P_K02', 'potrafi współdziałać i pracować w grupie, przyjmując w niej różne role', 1, 2, 7, 2, 2);
INSERT INTO mek VALUES ('P2A_U09', 'wykazuje umiejętność napisania pracy badawczej w języku polskim oraz krótkiego doniesienia naukowego w języku obcym na podstawie własnych badań naukowych', 1, 2, 2, 2, 1);
INSERT INTO mek VALUES ('P2A_U11', 'samodzielnie planuje własną karierę zawodową lub naukową', 1, 2, 2, 2, 1);
INSERT INTO mek VALUES ('P2A_U12', 'ma umiejętności językowe w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, zgodne z wymaganiami określonymi dla poziomu B2+ Europejskiego Systemu Opisu Kształcenia Językowego', 1, 2, 2, 2, 1);
INSERT INTO mek VALUES ('P2A_W01', 'rozumie złożone zjawiska i procesy przyrodnicze', 1, 1, 2, 2, 1);
INSERT INTO mek VALUES ('P2A_W02', 'konsekwentnie stosuje i upowszechnia zasadę ścisłego, opartego na danych empirycznych, interpretowania zjawisk i procesów przyrodniczych w pracy badawczej i działaniach praktycznych', 1, 1, 2, 2, 1);
INSERT INTO mek VALUES ('P2A_W03', 'ma pogłębioną wiedzę z zakresu tych nauk ścisłych, z którymi związany jest studiowany kierunek studiów (w szczególności biofizyka, biochemia, biomatematyka, geochemia, biogeoche-mia, geofizyka)', 1, 1, 2, 2, 1);
INSERT INTO mek VALUES ('P2A_W04', 'ma pogłębioną wiedzę z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów umożliwiającą dostrzeganie związków i zależności w przyrodzie', 1, 1, 2, 2, 1);
INSERT INTO mek VALUES ('P2A_W05', 'ma wiedzę w zakresie aktualnie dyskutowanych w literaturze kierunkowej problemów z wybranej dziedziny nauki i dyscypliny naukowej', 1, 1, 2, 2, 1);
INSERT INTO mek VALUES ('P2A_W06', 'ma wiedzę w zakresie statystyki na poziomie prognozowania (modelowania) przebiegu zjawisk i procesów przyrodniczych oraz ma znajomość specjalistycznych narzędzi informatycznych', 1, 1, 2, 2, 1);
INSERT INTO mek VALUES ('P2A_W07', 'ma wiedzę w zakresie zasad planowania badań z wykorzystaniem technik i narzędzi badawczych stosowanych w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 2, 2, 1);
INSERT INTO mek VALUES ('P2A_W08', 'ma wiedzę na temat sposobów pozyskiwania i rozliczania funduszy na realizację projektów naukowych i aplikacyjnych w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 2, 2, 1);
INSERT INTO mek VALUES ('P2A_W09', 'zna podstawowe zasady bezpieczeństwa i higieny pracy oraz ergonomii', 1, 1, 2, 2, 1);
INSERT INTO mek VALUES ('P2A_W10', 'zna i rozumie podstawowe pojęcia i zasady z zakresu ochrony własności przemysłowej i prawa autorskiego oraz konieczność zarządzania zasobami własności intelektualnej; potrafi korzystać z zasobów informacji patentowej', 1, 1, 2, 2, 1);
INSERT INTO mek VALUES ('P2A_W11', 'zna ogólne zasady tworzenia i rozwoju form indywidualnej przedsiębiorczości, wykorzystującej wiedzę z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 2, 2, 1);
INSERT INTO mek VALUES ('P2P_K01', 'rozumie potrzebę uczenia się przez całe życie, potrafi inspirować i organizować proces uczenia się innych osób', 1, 3, 2, 2, 2);
INSERT INTO mek VALUES ('P2P_K02', 'potrafi współdziałać i pracować w grupie, przyjmując w niej różne role', 1, 3, 2, 2, 2);
INSERT INTO mek VALUES ('P2P_K03', 'potrafi odpowiednio określić priorytety służące realizacji określonego przez siebie lub innych zadania', 1, 3, 2, 2, 2);
INSERT INTO mek VALUES ('P2P_K04', 'prawidłowo identyfikuje i rozstrzyga dylematy związane z wykonywaniem zawodu', 1, 3, 2, 2, 2);
INSERT INTO mek VALUES ('P2P_K05', 'rozumie potrzebę systematycznego zapoznawania się z czasopismami naukowymi i popularnonaukowymi, podstawowymi dla studiowanego kierunku studiów, w celu poszerzania i pogłębiania wiedzy', 1, 3, 2, 2, 2);
INSERT INTO mek VALUES ('P2P_K06', 'wykazuje odpowiedzialność za ocenę zagrożeń wynikających ze stosowanych technik badawczych i tworzenie warunków bezpiecznej pracy', 1, 3, 2, 2, 2);
INSERT INTO mek VALUES ('P2P_K07', 'systematycznie aktualizuje wiedzę przyrodniczą i zna jej praktyczne zastosowania', 1, 3, 2, 2, 2);
INSERT INTO mek VALUES ('P2P_K08', 'potrafi myśleć i działać w sposób przedsiębiorczy', 1, 3, 2, 2, 2);
INSERT INTO mek VALUES ('P2P_U01', 'stosuje zaawansowane techniki oraz procesy technologiczne, właściwe dla dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów i oparte na tych dziedzinach działalności społeczno-gospodarczej', 1, 2, 2, 2, 2);
INSERT INTO mek VALUES ('P2P_U02', 'biegle wykorzystuje literaturę naukową z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów w języku polskim; czyta ze zrozumieniem skomplikowane teksty naukowo-techniczne w języku obcym', 1, 2, 2, 2, 2);
INSERT INTO mek VALUES ('P2P_U03', 'posiada umiejętność krytycznej analizy i selekcji informacji, zwłaszcza ze źródeł elektronicznych', 1, 2, 2, 2, 2);
INSERT INTO mek VALUES ('P2P_U04', 'planuje i wykonuje zadania praktyczne lub ekspertyzy pod kierunkiem opiekuna naukowego', 1, 2, 2, 2, 2);
INSERT INTO mek VALUES ('P2P_U05', 'stosuje metody statystyczne oraz techniki i narzędzia informatyczne do opisu zjawisk i analizy danych o charakterze specjalistycznym, typowych dla dziedzin działalności społeczno-gospodarczej opartych na naukach przyrodniczych', 1, 2, 2, 2, 2);
INSERT INTO mek VALUES ('P2P_U06', 'zbiera i interpretuje dane empiryczne oraz na tej podstawie formułuje odpowiednie wnioski i proponuje rozwiązania o charakterze praktycznym', 1, 2, 2, 2, 2);
INSERT INTO mek VALUES ('P2P_U07', 'wykazuje umiejętność formułowania uzasadnionych sądówna podstawie danych pochodzących z różnych źródeł', 1, 2, 2, 2, 2);
INSERT INTO mek VALUES ('P2P_U08', 'wykazuje umiejętność przygotowania wystąpień ustnych w zakresie prac badawczych z wykorzystaniem różnych środków komunikacji werbalnej', 1, 2, 2, 2, 2);
INSERT INTO mek VALUES ('P2P_U09', 'wykazuje umiejętność napisania ekspertyzy w języku polskim oraz krótkiego doniesienia badawczo-rozwojowego w języku obcym na podstawie własnych badań naukowych', 1, 2, 2, 2, 2);
INSERT INTO mek VALUES ('P2P_U11', 'samodzielnie planuje własną karierę zawodową lub naukową', 1, 2, 2, 2, 2);
INSERT INTO mek VALUES ('P2P_U12', 'ma umiejętności językowe w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, zgodne z wymaganiami określonymi dla poziomu B2+ Europejskiego Systemu Opisu Kształcenia Językowego', 1, 2, 2, 2, 2);
INSERT INTO mek VALUES ('P2P_W01', 'rozumie złożone zjawiska i procesy przyrodnicze', 1, 1, 2, 2, 2);
INSERT INTO mek VALUES ('P2P_W02', 'konsekwentnie stosuje i upowszechnia zasadę ścisłego, opartego na danych empirycznych, interpretowania zjawisk i procesów przyrodniczych w pracy badawczej i działaniach praktycznych', 1, 1, 2, 2, 2);
INSERT INTO mek VALUES ('S1A_K02', 'potrafi współdziałać i pracować w grupie, przyjmując w niej różne role', 1, 3, 4, 1, 1);
INSERT INTO mek VALUES ('P2P_W03', 'ma pogłębioną wiedzę z zakresu tych nauk ścisłych, z którymi związany jest studiowany kierunek studiów (w szczególności biofizyka, biochemia, biomatematyka, geochemia, biogeoche-mia, geofizyka)', 1, 1, 2, 2, 2);
INSERT INTO mek VALUES ('P2P_W04', 'ma pogłębioną wiedzę z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów umożliwiającą dostrzeganie związków i zależności w przyrodzie, w tym mających szczególne znaczenie w działalności spo-łeczno-gospodarczej', 1, 1, 2, 2, 2);
INSERT INTO mek VALUES ('P2P_W05', 'ma wiedzę w zakresie aktualnie dyskutowanych w literaturze kierunkowej problemów z wybranych dziedzin nauki i dyscyplin naukowych oraz potencjalnych kierunków praktycznego wykorzystania osiągnięć badawczych', 1, 1, 2, 2, 2);
INSERT INTO mek VALUES ('P2P_W06', 'ma wiedzę w zakresie statystyki na poziomie prognozowania (modelowania) przebiegu zjawisk i procesów przyrodniczych oraz ma znajomość specjalistycznych narzędzi informatycznych', 1, 1, 2, 2, 2);
INSERT INTO mek VALUES ('P2P_W07', 'ma wiedzę w zakresie zasad planowania badań oraz procesów technologicznych opartych na osiągnięciach dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 2, 2, 2);
INSERT INTO mek VALUES ('P2P_W08', 'ma wiedzę na temat sposobów pozyskiwania i rozliczania funduszy na realizację projektów badawczych i rozwojowych z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 2, 2, 2);
INSERT INTO mek VALUES ('P2P_W09', 'zna podstawowe zasady bezpieczeństwa i higieny pracy oraz ergonomii', 1, 1, 2, 2, 2);
INSERT INTO mek VALUES ('P2P_W10', 'zna i rozumie podstawowe pojęcia i zasady z zakresu ochrony własności przemysłowej i prawa autorskiego oraz konieczność zarządzania zasobami własności intelektualnej; potrafi korzystać z zasobów informacji patentowej', 1, 1, 2, 2, 2);
INSERT INTO mek VALUES ('P2P_W11', 'zna ogólne zasady tworzenia i rozwoju form indywidualnej przedsiębiorczości, wykorzystującej wiedzę z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 2, 2, 2);
INSERT INTO mek VALUES ('R1A_K01', 'rozumie potrzebę uczenia się przez całe życie', 1, 3, 7, 1, 1);
INSERT INTO mek VALUES ('R1A_K02', 'potrafi współdziałać i pracować w grupie, przyjmując w niej różne role', 1, 3, 7, 1, 1);
INSERT INTO mek VALUES ('R1A_K03', 'potrafi odpowiednio określić priorytety służące realizacji określonego przez siebie lub innych zadania', 1, 3, 7, 1, 1);
INSERT INTO mek VALUES ('R1A_K04', 'prawidłowo identyfikuje i rozstrzyga dylematy związane z wykonywaniem zawodu', 1, 3, 7, 1, 1);
INSERT INTO mek VALUES ('R1A_K05', 'ma świadomość znaczenia społecznej, zawodowej i etycznej odpowiedzialności za produkcję żywności wysokiej jakości, dobrostan zwierząt oraz kształtowanie i stan środowiska naturalnego', 1, 3, 7, 1, 1);
INSERT INTO mek VALUES ('R1A_K06', 'ma świadomość ryzyka i potrafi ocenić skutki wykonywanej działalności w zakresie szeroko rozumianego rolnictwa i środowiska', 1, 3, 7, 1, 1);
INSERT INTO mek VALUES ('R1A_K07', 'ma świadomość potrzeby dokształcania i samodoskonalenia w zakresie wykonywanego zawodu', 1, 3, 7, 1, 1);
INSERT INTO mek VALUES ('R1A_K08', 'potrafi myśleć i działać w sposób przedsiębiorczy', 1, 3, 7, 1, 1);
INSERT INTO mek VALUES ('R1A_U01', 'posiada umiejętność wyszukiwania, zrozumienia, analizy i wykorzystywania potrzebnych informacji pochodzących z różnych źródeł i w różnych formach właściwych dla studiowanego kierunku studiów', 1, 2, 7, 1, 1);
INSERT INTO mek VALUES ('R1A_U02', 'posiada umiejętność precyzyjnego porozumiewania się z różnymi podmiotami w formie werbalnej, pisemnej i graficznej', 1, 2, 7, 1, 1);
INSERT INTO mek VALUES ('R1A_U03', 'stosuje podstawowe technologie informatyczne w zakresie pozyskiwania i przetwarzania informacji z zakresu produkcji rolniczej i leśnej', 1, 2, 7, 1, 1);
INSERT INTO mek VALUES ('R1A_U04', 'wykonuje pod kierunkiem opiekuna naukowego proste zadanie badawcze lub projektowe dotyczące szeroko rozumianego rolnictwa, prawidłowo interpretuje rezultaty i wyciąga wnioski', 1, 2, 7, 1, 1);
INSERT INTO mek VALUES ('R1A_U05', 'dokonuje identyfikacji i standardowej analizy zjawisk wpływających na produkcję, jakość żywności, zdrowie zwierząt i ludzi, stan środowiska naturalnego i zasobów naturalnych oraz wykazuje znajomość zastosowania typowych technik i ich optymalizacji dostosowanych do studiowanego kierunku studiów', 1, 2, 7, 1, 1);
INSERT INTO mek VALUES ('R1A_U06', 'posiada zdolność podejmowania standardowych działań, z wykorzystaniem odpowiednich metod, technik, technologii, narzędzi i materiałów, rozwiązujących problemy w zakresie produkcji żywności, zdrowia zwierząt, stanu środowiska naturalnego i zasobów naturalnych oraz technicznych zadań inżynierskich zgodnych ze studiowanym kierunkiem studiów', 1, 2, 7, 1, 1);
INSERT INTO mek VALUES ('R1A_U07', 'posiada znajomość wad i zalet podejmowanych działań mających na celu rozwiązywanie zaistniałych problemów zawodowych - dla nabrania doświadczenia i doskonalenia kompetencji inżynierskich', 1, 2, 7, 1, 1);
INSERT INTO mek VALUES ('R1A_U08', 'posiada umiejętność przygotowania typowych prac pisemnych w języku polskim i języku obcym, uznawanym za podstawowy dla dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, dotyczących zagadnień szczegółowych, z wykorzystaniem podstawowych ujęć teoretycznych, a także różnych źródeł', 1, 2, 7, 1, 1);
INSERT INTO mek VALUES ('R1A_U09', 'posiada umiejętność przygotowania wystąpień ustnych w języku polskim i języku obcym, dotyczących zagadnień szczegółowych, z wykorzystaniem podstawowych ujęć teoretycznych, a także różnych źródeł', 1, 2, 7, 1, 1);
INSERT INTO mek VALUES ('R1A_U10', 'ma umiejętności językowe w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, zgodne z wymaganiami określonymi dla poziomu B2 Europejskiego Systemu Opisu Kształcenia Językowego', 1, 2, 7, 1, 1);
INSERT INTO mek VALUES ('R1A_W01', 'ma podstawową wiedzę z zakresu biologii, chemii, matematyki, fizyki i nauk pokrewnych dostosowaną do studiowanego kierunku studiów', 1, 1, 7, 1, 1);
INSERT INTO mek VALUES ('R1A_W02', 'ma podstawową wiedzę ekonomiczną, prawną i społeczną dostosowaną do studiowanego kierunku studiów', 1, 1, 7, 1, 1);
INSERT INTO mek VALUES ('R1A_W03', 'ma ogólną wiedzę na temat biosfery, chemicznych i fizycznych procesów w niej zachodzących, właściwości surowców roślinnych i zwierzęcych, podstaw techniki i kształtowania środowiska dostosowaną do studiowanego kierunku studiów', 1, 1, 7, 1, 1);
INSERT INTO mek VALUES ('R1A_W04', 'ma ogólną wiedzę o funkcjonowaniu organizmów żywych na różnych poziomach złożoności, przyrody nieożywionej oraz o technicznych zadaniach inżynierskich dostosowaną do studiowanego kierunku studiów', 1, 1, 7, 1, 1);
INSERT INTO mek VALUES ('R1A_W05', 'wykazuje znajomość podstawowych metod, technik, technologii, narzędzi i materiałów pozwalających wykorzystać i kształtować potencjał przyrody w celu poprawy jakości życia człowieka', 1, 1, 7, 1, 1);
INSERT INTO mek VALUES ('R1A_W06', 'ma wiedzę o roli i znaczeniu środowiska przyrodniczego i zrównoważonego użytkowania różnorodności biologicznej oraz o jego zagrożeniach', 1, 1, 7, 1, 1);
INSERT INTO mek VALUES ('R1A_W07', 'ma podstawową wiedzę na temat stanu i czynników determinujących funkcjonowanie i rozwój obszarów wiejskich', 1, 1, 7, 1, 1);
INSERT INTO mek VALUES ('R1A_W08', 'zna i rozumie podstawowe pojęcia i zasady z zakresu ochrony własności przemysłowej i prawa autorskiego; potrafi korzystać z zasobów informacji patentowej', 1, 1, 7, 1, 1);
INSERT INTO mek VALUES ('R1A_W09', 'zna ogólne zasady tworzenia i rozwoju form indywidualnej przedsiębiorczości, wykorzystującej wiedzę z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 7, 1, 1);
INSERT INTO mek VALUES ('R1P_K01', 'rozumie potrzebę uczenia się przez całe życie', 1, 2, 7, 1, 2);
INSERT INTO mek VALUES ('R1P_K02', 'potrafi współdziałać i pracować w grupie, przyjmując w niej różne role', 1, 2, 7, 1, 2);
INSERT INTO mek VALUES ('R1P_K03', 'potrafi odpowiednio określić priorytety służące realizacji określonego przez siebie lub innych zadania', 1, 2, 7, 1, 2);
INSERT INTO mek VALUES ('R1P_K04', 'prawidłowo identyfikuje i rozstrzyga dylematy związane z wykonywaniem zawodu', 1, 2, 7, 1, 2);
INSERT INTO mek VALUES ('R1P_K05', 'ma świadomość znaczenia społecznej, zawodowej i etycznej odpowiedzialności za produkcję żywności wysokiej jakości, dobrostan zwierząt oraz kształtowanie i stan środowiska naturalnego', 1, 2, 7, 1, 2);
INSERT INTO mek VALUES ('R1P_K06', 'ma świadomość ryzyka i potrafi ocenić skutki wykonywanej działalności w zakresie szeroko rozumianego rolnictwa i środowiska', 1, 2, 7, 1, 2);
INSERT INTO mek VALUES ('R1P_K07', 'ma świadomość potrzeby dokształcania i samodoskonalenia w zakresie wykonywanego zawodu', 1, 2, 7, 1, 2);
INSERT INTO mek VALUES ('R1P_K08', 'potrafi myśleć i działać w sposób przedsiębiorczy', 1, 2, 7, 1, 2);
INSERT INTO mek VALUES ('R1P_U01', 'posiada umiejętność wyszukiwania, zrozumienia, analizy i wykorzystywania potrzebnych informacji pochodzących z różnych źródeł i w różnych formach właściwych dla studiowanego kierunku studiów', 1, 2, 7, 1, 2);
INSERT INTO mek VALUES ('R1P_U02', 'posiada umiejętność precyzyjnego porozumiewania się z różnymi podmiotami w formie werbalnej, pisemnej i graficznej', 1, 2, 7, 1, 2);
INSERT INTO mek VALUES ('R1P_U03', 'stosuje podstawowe technologie informatyczne w zakresie pozyskiwania i przetwarzania informacji z zakresu produkcji rolniczej i leśnej', 1, 2, 7, 1, 2);
INSERT INTO mek VALUES ('R1P_U04', 'wykonuje pod kierunkiem opiekuna naukowego proste zadanie inżynierskie lub projektowe dotyczące szeroko rozumianego rolnictwa, prawidłowo interpretuje rezultaty i wyciąga wnioski', 1, 2, 7, 1, 2);
INSERT INTO mek VALUES ('R1P_U05', 'dokonuje identyfikacji i standardowej analizy zjawisk wpływających na produkcję, jakość żywności, zdrowie zwierząt i ludzi, stan środowiska naturalnego i zasobów naturalnych oraz wykazuje znajomość zastosowania typowych technik i ich optymalizacji dostosowanych do studiowanego kierunku studiów', 1, 2, 7, 1, 2);
INSERT INTO mek VALUES ('R1P_U06', 'posiada zdolność podejmowania standardowych działań, z wykorzystaniem odpowiednich metod, technik, technologii, narzędzi i materiałów, rozwiązujących problemy w zakresie produkcji żywności, zdrowia zwierząt, stanu środowiska naturalnego i zasobów naturalnych oraz technicznych zadań inżynierskich, zgodnych ze studiowanym kierunkiem studiów', 1, 2, 7, 1, 2);
INSERT INTO mek VALUES ('R1P_U07', 'posiada znajomość wad i zalet podejmowanych działań mających na celu rozwiązywanie zaistniałych problemów zawodowych - dla nabrania doświadczenia i doskonalenia umiejętności inżynierskich', 1, 2, 7, 1, 2);
INSERT INTO mek VALUES ('R1P_U08', 'ma doświadczenie związane z rozwiązywaniem praktycznych zadań inżynierskich, zdobyte w środowisku zajmującym się zawodowo działalnością odpowiadającą studiowanemu kierunkowi studiów', 1, 2, 7, 1, 2);
INSERT INTO mek VALUES ('R1P_U09', 'ma doświadczenie związane z utrzymaniem urządzeń i systemów technicznych i technologicznych typowych dla produkcji rolniczej, leśnej i przetwórstwa rolno-spożywczego odpowiednie dla studiowanego kierunku studiów', 1, 2, 7, 1, 2);
INSERT INTO mek VALUES ('R1P_U10', 'ma umiejętność korzystania z norm i standardów inżynierskich', 1, 2, 7, 1, 2);
INSERT INTO mek VALUES ('R1P_U11', 'posiada umiejętność przygotowania typowych prac pisemnych w języku polskim i języku obcym, uznawanym za podstawowy dla dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, dotyczących zagadnień szczegółowych, z wykorzystaniem podstawowych ujęć teoretycznych, a także różnych źródeł', 1, 2, 7, 1, 2);
INSERT INTO mek VALUES ('R1P_U12', 'posiada umiejętność przygotowania wystąpień ustnych, w języku polskim i języku obcym, dotyczących zagadnień szczegółowych, z wykorzystaniem podstawowych ujęć teoretycznych, a także różnych źródeł', 1, 2, 7, 1, 2);
INSERT INTO mek VALUES ('R1P_U13', 'ma umiejętności językowe w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, zgodne z wymaganiami określonymi dla poziomu B2 Europejskiego Systemu Opisu Kształcenia Językowego', 1, 2, 7, 1, 2);
INSERT INTO mek VALUES ('R1P_W01', 'ma ogólną wiedzę z zakresu biologii, chemii, matematyki, fizyki i nauk pokrewnych o charakterze aplikacyjnym dostosowaną do studiowanego kierunku studiów', 1, 1, 7, 1, 2);
INSERT INTO mek VALUES ('R1P_W02', 'ma podstawową wiedzę ekonomiczną, prawną i społeczną dostosowaną do studiowanego kierunku studiów', 1, 1, 7, 1, 2);
INSERT INTO mek VALUES ('R1P_W03', 'ma ogólną wiedzę na temat biosfery, chemicznych i fizycznych procesów w niej zachodzących, właściwości surowców roślinnych i zwierzęcych, podstaw techniki i kształtowania środowiska dostosowaną do studiowanego kierunku studiów', 1, 1, 7, 1, 2);
INSERT INTO mek VALUES ('R1P_W04', 'ma ogólną wiedzę o funkcjonowaniu organizmów żywych na różnych poziomach złożoności, przyrodzie nieożywionej oraz o technicznych zadaniach inżynierskich dostosowanych do studiowanego kierunku studiów', 1, 1, 7, 1, 2);
INSERT INTO mek VALUES ('R1P_W05', 'wykazuje znajomość podstawowych metod, technik, technologii, narzędzi, materiałów i ich praktycznych zastosowań pozwalających wykorzystać i kształtować potencjał przyrody w celu poprawy jakości życia człowieka', 1, 1, 7, 1, 2);
INSERT INTO mek VALUES ('R1P_W06', 'ma wiedzę o roli i znaczeniu środowiska przyrodniczego i zrównoważonego użytkowania różnorodności biologicznej oraz o jego zagrożeniach', 1, 1, 7, 1, 2);
INSERT INTO mek VALUES ('R1P_W08', 'ma podstawową wiedzę w zakresie utrzymania urządzeń, obiektów i systemów technicznych i technologii typowych dla obszarów rolniczych, leśnych i przetwórstwa rolno-spożywcze-go dostosowaną do studiowanego kierunku studiów', 1, 1, 7, 1, 2);
INSERT INTO mek VALUES ('R1P_W10', 'zna i rozumie podstawowe pojęcia i zasady z zakresu ochrony własności przemysłowej i prawa autorskiego; potrafi korzystać z zasobów informacji patentowej', 1, 1, 7, 1, 2);
INSERT INTO mek VALUES ('R1P_W11', 'zna i potrafi stosować uwarunkowania ekonomiczno-prawne tworzenia i rozwoju form indywidualnej przedsiębiorczości w zakresie świadczenia usług z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 7, 1, 2);
INSERT INTO mek VALUES ('R1P_W9', 'ma podstawową wiedzę w zakresie standardów i norm technicznych związanych ze studiowanym kierunkiem studiów', 1, 1, 7, 1, 2);
INSERT INTO mek VALUES ('R2A_K01', 'rozumie potrzebę uczenia się przez całe życie, potrafi inspirować i organizować proces uczenia się innych osób', 1, 3, 7, 2, 1);
INSERT INTO mek VALUES ('R2A_K02', 'potrafi współdziałać i pracować w grupie, przyjmując w niej różne role', 1, 3, 7, 2, 1);
INSERT INTO mek VALUES ('R2A_K03', 'potrafi odpowiednio określić priorytety służące realizacji określonego przez siebie lub innych zadania', 1, 3, 7, 2, 1);
INSERT INTO mek VALUES ('R2A_K04', 'prawidłowo identyfikuje i rozstrzyga dylematy związane z wykonywaniem zawodu', 1, 3, 7, 2, 1);
INSERT INTO mek VALUES ('R2A_K05', 'ma świadomość znaczenia społecznej, zawodowej i etycznej odpowiedzialności za produkcję żywności wysokiej jakości, dobrostan zwierząt oraz kształtowanie i stan środowiska naturalnego', 1, 3, 7, 2, 1);
INSERT INTO mek VALUES ('R2A_K06', 'posiada znajomość działań zmierzających do ograniczenia ryzyka i przewidywania skutków działalności w zakresie szeroko rozumianego rolnictwa i środowiska', 1, 3, 7, 2, 1);
INSERT INTO mek VALUES ('R2A_K07', 'ma świadomość potrzeby ukierunkowanego dokształcania i samodoskonalenia w zakresie wykonywanego zawodu', 1, 3, 7, 2, 1);
INSERT INTO mek VALUES ('R2A_K08', 'potrafi myśleć i działać w sposób przedsiębiorczy', 1, 3, 7, 2, 1);
INSERT INTO mek VALUES ('R2A_U01', 'posiada umiejętność wyszukiwania, zrozumienia, analizy i twórczego wykorzystywania potrzebnych informacji pochodzących z różnych źródeł i w różnych formach właściwych dla studiowanego kierunku studiów', 1, 2, 7, 2, 1);
INSERT INTO mek VALUES ('R2A_U02', 'posiada umiejętność precyzyjnego porozumiewania się z różnymi podmiotami w formie werbalnej, pisemnej i graficznej', 1, 2, 7, 2, 1);
INSERT INTO mek VALUES ('R2A_U03', 'rozumie i stosuje odpowiednie technologie informatyczne w zakresie pozyskiwania i przetwarzania informacji z zakresu produkcji rolniczej i leśnej', 1, 2, 7, 2, 1);
INSERT INTO mek VALUES ('R2A_U04', 'samodzielnie planuje, przeprowadza, analizuje i ocenia poprawność wykonanego zadania z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 2, 7, 2, 1);
INSERT INTO mek VALUES ('R2A_U05', 'samodzielnie i wszechstronnie analizuje problemy wpływające na produkcję i jakość żywności, zdrowie zwierząt i ludzi, stan środowiska naturalnego i zasobów naturalnych oraz wykazuje znajomość zastosowania specjalistycznych technik i ich optymalizacji dostosowanych do studiowanego kierunku studiów i profilu kształcenia', 1, 2, 7, 2, 1);
INSERT INTO mek VALUES ('R2A_U06', 'posiada umiejętność doboru i modyfikacji typowych działań (w tym technik i technologii) dostosowanych do zasobów przyrody w celu poprawy jakości życia człowieka, zgodnych ze studiowanym kierunkiem studiów', 1, 2, 7, 2, 1);
INSERT INTO mek VALUES ('R2A_U07', 'ocenia wady i zalety podejmowanych działań, w tym ich oryginalność w rozwiązywaniu zaistniałych problemów zawodowych - dla nabrania doświadczenia i doskonalenia kompetencji inżynierskich', 1, 2, 7, 2, 1);
INSERT INTO mek VALUES ('R2A_U08', 'posiada pogłębioną umiejętność przygotowania różnych prac pisemnych w języku polskim i języku obcym, uznawanym za podstawowy dla dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów lub w obszarze leżącym na pograniczu różnych dyscyplin naukowych', 1, 2, 7, 2, 1);
INSERT INTO mek VALUES ('R2A_U09', 'posiada pogłębioną umiejętność przygotowania wystąpień ustnych w języku polskim i języku obcym, w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów lub w obszarze leżącym na pograniczu różnych dyscyplin naukowych', 1, 2, 7, 2, 1);
INSERT INTO mek VALUES ('R2A_U10', 'ma umiejętności językowe w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, zgodne z wymaganiami określonymi dla poziomu B2+ Europejskiego Systemu Opisu Kształcenia Językowego', 1, 2, 7, 2, 1);
INSERT INTO mek VALUES ('R2A_W01', 'ma rozszerzoną wiedzę z zakresu biologii, chemii, matematyki, fizyki i nauk pokrewnych dostosowaną do studiowanego kierunku studiów', 1, 1, 7, 2, 1);
INSERT INTO mek VALUES ('R2A_W02', 'ma zaawansowaną wiedzę ekonomiczną, prawną i społeczną dostosowaną do studiowanego kierunku studiów', 1, 1, 7, 2, 1);
INSERT INTO mek VALUES ('R2A_W03', 'ma pogłębioną wiedzę na temat biosfery, chemicznych i fizycznych procesów w niej zachodzących, podstaw techniki i kształtowania środowiska dostosowaną do studiowanego kierunku studiów', 1, 1, 7, 2, 1);
INSERT INTO mek VALUES ('R2A_W04', 'ma pogłębioną wiedzę o funkcjonowaniu organizmów żywych na różnych poziomach złożoności, przyrody nieożywionej oraz o technicznych zadaniach inżynierskich dostosowaną do studiowanego kierunku studiów', 1, 1, 7, 2, 1);
INSERT INTO mek VALUES ('R2A_W05', 'wykazuje znajomość zaawansowanych metod, technik, technologii, narzędzi i materiałów pozwalających wykorzystać i kształtować potencjał przyrody w celu poprawy jakości życia człowieka', 1, 1, 7, 2, 1);
INSERT INTO mek VALUES ('R2A_W06', 'ma rozszerzoną wiedzę o roli i znaczeniu środowiska przyrodniczego i zrównoważonego użytkowania różnorodności biologicznej oraz o jego zagrożeniach', 1, 1, 7, 2, 1);
INSERT INTO mek VALUES ('R2A_W07', 'ma rozszerzoną wiedzę na temat stanu i kompleksowego działania czynników determinujących funkcjonowanie i rozwój obszarów wiejskich', 1, 1, 7, 2, 1);
INSERT INTO mek VALUES ('R2A_W08', 'zna i rozumie podstawowe pojęcia i zasady z zakresu ochrony własności przemysłowej i prawa autorskiego oraz konieczność zarządzania zasobami własności intelektualnej; potrafi korzystać z zasobów informacji patentowej', 1, 1, 7, 2, 1);
INSERT INTO mek VALUES ('R2A_W09', 'zna ogólne zasady tworzenia i rozwoju form indywidualnej przedsiębiorczości, wykorzystującej wiedzę z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 7, 2, 1);
INSERT INTO mek VALUES ('R2P_K01', 'rozumie potrzebę uczenia się przez całe życie, potrafi inspirować i organizować proces uczenia się innych osób', 1, 2, 7, 2, 2);
INSERT INTO mek VALUES ('R2P_K03', 'potrafi odpowiednio określić priorytety służące realizacji określonego przez siebie lub innych zadania', 1, 2, 7, 2, 2);
INSERT INTO mek VALUES ('R2P_K04', 'prawidłowo identyfikuje i rozstrzyga dylematy związane z wykonywaniem zawodu', 1, 2, 7, 2, 2);
INSERT INTO mek VALUES ('R2P_K05', 'ma świadomość znaczenia społecznej, zawodowej i etycznej odpowiedzialności za produkcję żywności wysokiej jakości, dobrostan zwierząt oraz kształtowanie i stan środowiska naturalnego', 1, 2, 7, 2, 2);
INSERT INTO mek VALUES ('R2P_K06', 'posiada znajomość działań zmierzających do ograniczenia ryzyka i przewidywania skutków działalności w zakresie szeroko rozumianego rolnictwa i środowiska', 1, 2, 7, 2, 2);
INSERT INTO mek VALUES ('R2P_K07', 'ma świadomość potrzeby ukierunkowanego dokształcania i samodoskonalenia w zakresie wykonywanego zawodu', 1, 2, 7, 2, 2);
INSERT INTO mek VALUES ('R2P_K08', 'potrafi myśleć i działać w sposób przedsiębiorczy', 1, 2, 7, 2, 2);
INSERT INTO mek VALUES ('R2P_U01', 'posiada umiejętność wyszukiwania, zrozumienia, analizy i twórczego wykorzystywania potrzebnych informacji pochodzących z różnych źródeł i w różnych formach właściwych dla studiowanego kierunku studiów', 1, 2, 7, 2, 2);
INSERT INTO mek VALUES ('R2P_U02', 'posiada umiejętność precyzyjnego porozumiewania się z różnymi podmiotami w formie werbalnej, pisemnej i graficznej', 1, 2, 7, 2, 2);
INSERT INTO mek VALUES ('R2P_U03', 'rozumie i stosuje odpowiednie technologie informatyczne w zakresie pozyskiwania i przetwarzania informacji z zakresu produkcji rolniczej i leśnej', 1, 2, 7, 2, 2);
INSERT INTO mek VALUES ('R2P_U04', 'samodzielnie planuje, przeprowadza, analizuje i ocenia poprawność wykonanego zadania z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 2, 7, 2, 2);
INSERT INTO mek VALUES ('R2P_U05', 'samodzielnie i wszechstronnie analizuje problemy wpływające na produkcję i jakość żywności, zdrowie zwierząt i ludzi, stan środowiska naturalnego i zasobów naturalnych oraz wykazuje znajomość zastosowania specjalistycznych technik i ich optymalizacji dostosowanych do studiowanego kierunku studiów i profilu kształcenia', 1, 2, 7, 2, 2);
INSERT INTO mek VALUES ('R2P_U06', 'posiada umiejętność doboru i modyfikacji typowych działań (w tym technik i technologii) dostosowanych do zasobów przyrody w celu poprawy jakości życia człowieka, zgodnych ze studiowanym kierunkiem studiów', 1, 2, 7, 2, 2);
INSERT INTO mek VALUES ('R2P_U07', 'ocenia wady i zalety podejmowanych działań, w tym ich oryginalność w rozwiązywaniu zaistniałych problemów zawodowych - dla nabrania doświadczenia i doskonalenia umiejętności inżynierskich', 1, 2, 7, 2, 2);
INSERT INTO mek VALUES ('R2P_U08', 'ma doświadczenie związane z analizą i wyborem metod rozwiązywania złożonych zadań inżynierskich, zdobyte w środowisku zajmującym się zawodowo działalnością odpowiadającą studiowanemu kierunkowi studiów', 1, 2, 7, 2, 2);
INSERT INTO mek VALUES ('R2P_U09', 'ma doświadczenie związane z doborem metod utrzymania urządzeń i systemów technicznych i technologicznych typowych dla produkcji rolniczej, leśnej i przetwórstwa rolno-spożywczego odpowiednie dla studiowanego kierunku studiów', 1, 2, 7, 2, 2);
INSERT INTO mek VALUES ('R2P_U10', 'ma umiejętność korzystania z norm i standardów inżynierskich', 1, 2, 7, 2, 2);
INSERT INTO mek VALUES ('R2P_U11', 'posiada pogłębioną umiejętność przygotowania różnych prac pisemnych w języku polskim i języku obcym, uznawanym za podstawowy dla dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów lub w obszarze leżącym na pograniczu różnych dyscyplin naukowych', 1, 2, 7, 2, 2);
INSERT INTO mek VALUES ('R2P_U12', 'posiada pogłębioną umiejętność przygotowania wystąpień ustnych w języku polskim i języku obcym, w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów lub w obszarze leżącym na pograniczu różnych dyscyplin naukowych', 1, 2, 7, 2, 2);
INSERT INTO mek VALUES ('R2P_U13', 'ma umiejętności językowe w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, zgodne z wymaganiami określonymi dla poziomu B2+ Europejskiego Systemu Opisu Kształcenia Językowego', 1, 2, 7, 2, 2);
INSERT INTO mek VALUES ('R2P_W01', 'ma rozszerzoną wiedzę z zakresu biologii, chemii, matematyki, fizyki i nauk pokrewnych dostosowaną do bezpośredniego wykorzystania w praktyce, dostosowaną do studiowanego kierunku studiów', 1, 1, 6, 2, 2);
INSERT INTO mek VALUES ('R2P_W02', 'ma rozszerzoną wiedzę ekonomiczną, prawną i społeczną dostosowaną do studiowanego kierunku studiów', 1, 1, 6, 2, 2);
INSERT INTO mek VALUES ('R2P_W03', 'ma pogłębioną wiedzę na temat biosfery, chemicznych i fizycznych procesów w niej zachodzących, podstaw techniki i kształtowania środowiska dostosowaną do studiowanego kierunku studiów', 1, 1, 6, 2, 2);
INSERT INTO mek VALUES ('R2P_W04', 'ma pogłębioną wiedzę o funkcjonowaniu organizmów żywych na różnych poziomach złożoności, przyrodzie nieożywionej oraz o technicznych zadaniach inżynierskich dostosowanych do studiowanego kierunku studiów', 1, 1, 6, 2, 2);
INSERT INTO mek VALUES ('R2P_W05', 'wykazuje znajomość zaawansowanych metod, technik, technologii, narzędzi i materiałów pozwalających wykorzystać i kształtować potencjał przyrody w celu poprawy jakości życia człowieka', 1, 1, 6, 2, 2);
INSERT INTO mek VALUES ('R2P_W06', 'ma rozszerzoną wiedzę o roli i znaczeniu środowiska przyrodniczego i zrównoważonego użytkowania różnorodności biologicznej oraz o jego zagrożeniach', 1, 1, 6, 2, 2);
INSERT INTO mek VALUES ('R2P_W07', 'ma rozszerzoną wiedzę na temat stanu i kompleksowego działania czynników determinujących funkcjonowanie i rozwój obszarów wiejskich', 1, 1, 6, 2, 2);
INSERT INTO mek VALUES ('R2P_W08', 'ma rozszerzoną wiedzę w zakresie utrzymania urządzeń, obiektów i systemów technicznych i technologii typowych dla obszarów rolniczych, leśnych i przetwórstwa rolno-spożywczego dostosowaną do studiowanego kierunku studiów', 1, 1, 6, 2, 2);
INSERT INTO mek VALUES ('R2P_W10', 'zna i rozumie podstawowe pojęcia i zasady z zakresu ochrony własności przemysłowej i prawa autorskiego oraz konieczność zarządzania zasobami własności intelektualnej; potrafi korzystać z zasobów informacji patentowej', 1, 1, 6, 2, 2);
INSERT INTO mek VALUES ('R2P_W11', 'zna i potrafi stosować uwarunkowania ekonomiczno-prawne tworzenia i rozwoju form indywidualnej przedsiębiorczości w zakresie świadczenia usług z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 6, 2, 2);
INSERT INTO mek VALUES ('R2P_W9', 'ma rozszerzoną wiedzę w zakresie stosowania standardów i norm technicznych związanych ze studiowanym kierunkiem studiów', 1, 1, 6, 2, 2);
INSERT INTO mek VALUES ('S1A_K01', 'rozumie potrzebę uczenia się przez całe życie', 1, 3, 4, 1, 1);
INSERT INTO mek VALUES ('S1A_K03', 'potrafi odpowiednio określić priorytety służące realizacji określonego przez siebie lub innych zadania', 1, 3, 4, 1, 1);
INSERT INTO mek VALUES ('S1A_K04', 'prawidłowo identyfikuje i rozstrzyga dylematy związane z wykonywaniem zawodu', 1, 3, 4, 1, 1);
INSERT INTO mek VALUES ('S1A_K05', 'umie uczestniczyć w przygotowaniu projektów społecznych (politycznych, gospodarczych, obywatelskich), uwzględniając aspekty prawne, ekonomiczne i polityczne', 1, 3, 4, 1, 1);
INSERT INTO mek VALUES ('S1A_K06', 'potrafi uzupełniać i doskonalić nabytą wiedzę i umiejętności', 1, 3, 4, 1, 1);
INSERT INTO mek VALUES ('S1A_K07', 'potrafi myśleć i działać w sposób przedsiębiorczy', 1, 3, 4, 1, 1);
INSERT INTO mek VALUES ('S1A_U01', 'potrafi prawidłowo interpretować zjawiska społeczne (kulturowe, polityczne, prawne, ekonomiczne) w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 2, 4, 1, 1);
INSERT INTO mek VALUES ('S1A_U02', 'potrafi wykorzystać podstawową wiedzę teoretyczną i pozyskiwać dane do analizowania konkretnych procesów i zjawisk społecznych (kulturowych, politycznych, prawnych, gospodarczych) w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 2, 4, 1, 1);
INSERT INTO mek VALUES ('S1A_U03', 'potrafi właściwie analizować przyczyny i przebieg konkretnych procesów i zjawisk społecznych (kulturowych, politycznych, prawnych, gospodarczych) w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 2, 4, 1, 1);
INSERT INTO mek VALUES ('S1A_U04', 'potrafi prognozować procesy i zjawiska społeczne (kulturowe, polityczne, prawne, ekonomiczne) z wykorzystaniem standardowych metod i narzędzi w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 2, 4, 1, 1);
INSERT INTO mek VALUES ('S1A_U05', 'prawidłowo posługuje się systemami normatywnymi oraz wybranymi normami i regułami (prawnymi, zawodowymi, moralnymi) w celu rozwiązania konkretnego zadania z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 2, 4, 1, 1);
INSERT INTO mek VALUES ('S1A_U06', 'wykorzystuje zdobytą wiedzę do rozstrzygania dylematów pojawiających się w pracy zawodowej', 1, 2, 4, 1, 1);
INSERT INTO mek VALUES ('S1A_U07', 'analizuje proponowane rozwiązania konkretnych problemów i proponuje w tym zakresie odpowiednie rozstrzygnięcia', 1, 2, 4, 1, 1);
INSERT INTO mek VALUES ('S1A_U08', 'posiada umiejętność rozumienia i analizowania zjawisk społecznych', 1, 2, 4, 1, 1);
INSERT INTO mek VALUES ('S1A_U09', 'posiada umiejętność przygotowania typowych prac pisemnych w języku polskim i języku obcym, uznawanym za podstawowy dla dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, dotyczących zagadnień szczegółowych, z wykorzystaniem podstawowych ujęć teoretycznych, a także różnych źródeł', 1, 2, 4, 1, 1);
INSERT INTO mek VALUES ('S1A_U10', 'posiada umiejętność przygotowania wystąpień ustnych, w języku polskim i języku obcym, w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, dotyczących zagadnień szczegółowych, z wykorzystaniem podstawowych ujęć teoretycznych, a także różnych źródeł', 1, 2, 4, 1, 1);
INSERT INTO mek VALUES ('S1A_U11', 'ma umiejętności językowe w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, zgodne z wymaganiami określonymi dla poziomu B2 Europejskiego Systemu Opisu Kształcenia Językowego', 1, 2, 4, 1, 1);
INSERT INTO mek VALUES ('S1A_W01', 'ma podstawową wiedzę o charakterze nauk społecznych, ich miejscu w systemie nauk i relacjach do innych nauk', 1, 1, 4, 1, 1);
INSERT INTO mek VALUES ('S1A_W02', 'ma podstawową wiedzę o różnych rodzajach struktur i instytucji społecznych (kulturowych, politycznych, prawnych, ekonomicznych), w szczególności ich istotnych elementach', 1, 1, 4, 1, 1);
INSERT INTO mek VALUES ('S1A_W03', 'ma podstawową wiedzę o relacjach między strukturami i instytucjami społecznymi w skali krajowej, międzynarodowej i mię-dzykulturowej', 1, 1, 4, 1, 1);
INSERT INTO mek VALUES ('S1A_W04', 'zna rodzaje więzi społecznych odpowiadające dziedzinom nauki i dyscyplinom naukowym, właściwym dla studiowanego kierunku studiów oraz zna rządzące nimi prawidłowości', 1, 1, 4, 1, 1);
INSERT INTO mek VALUES ('S1A_W05', 'ma podstawową wiedzę o człowieku, w szczególności jako podmiocie konstytuującym struktury społeczne i zasady ich funkcjonowania, a także działającym w tych strukturach', 1, 1, 4, 1, 1);
INSERT INTO mek VALUES ('S1A_W06', 'zna metody i narzędzia, w tym techniki pozyskiwania danych, właściwe dla dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, pozwalające opisywać struktury i instytucje społeczne oraz procesy w nich i między nimi zachodzące', 1, 1, 4, 1, 1);
INSERT INTO mek VALUES ('S1A_W07', 'ma wiedzę o normach i regułach (prawnych, organizacyjnych, moralnych, etycznych) organizujących struktury i instytucje społeczne i rządzących nimi prawidłowościach oraz o ich źródłach, naturze, zmianach i sposobach działania', 1, 1, 4, 1, 1);
INSERT INTO mek VALUES ('S1A_W08', 'ma wiedzę o procesach zmian struktur i instytucji społecznych oraz ich elementów, o przyczynach, przebiegu, skali i konsekwencjach tych zmian', 1, 1, 4, 1, 1);
INSERT INTO mek VALUES ('S1A_W09', 'ma wiedzę o poglądach na temat struktur i instytucji społecznych oraz rodzajów więzi społecznych i o ich historycznej ewolucji', 1, 1, 4, 1, 1);
INSERT INTO mek VALUES ('S1A_W10', 'zna i rozumie podstawowe pojęcia i zasady z zakresu ochrony własności przemysłowej i prawa autorskiego', 1, 1, 4, 1, 1);
INSERT INTO mek VALUES ('S1A_W11', 'zna ogólne zasady tworzenia i rozwoju form indywidualnej przedsiębiorczości, wykorzystującej wiedzę z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 4, 1, 1);
INSERT INTO mek VALUES ('S1P_K01', 'rozumie potrzebę uczenia się przez całe życie', 1, 3, 4, 1, 2);
INSERT INTO mek VALUES ('S1P_K02', 'potrafi współdziałać i pracować w grupie, przyjmując w niej różne role', 1, 3, 4, 1, 2);
INSERT INTO mek VALUES ('S1P_K03', 'potrafi odpowiednio określić priorytety służące realizacji określonego przez siebie lub innych zadania', 1, 3, 4, 1, 2);
INSERT INTO mek VALUES ('S1P_K04', 'prawidłowo identyfikuje i rozstrzyga dylematy związane z wykonywaniem zawodu', 1, 3, 4, 1, 2);
INSERT INTO mek VALUES ('S1P_K05', 'umie uczestniczyć w przygotowaniu projektów społecznych (politycznych, gospodarczych, obywatelskich), uwzględniając aspekty prawne, ekonomiczne i polityczne', 1, 3, 4, 1, 2);
INSERT INTO mek VALUES ('S1P_K06', 'potrafi uzupełniać i doskonalić nabytą wiedzę i umiejętności', 1, 3, 4, 1, 2);
INSERT INTO mek VALUES ('S1P_K07', 'potrafi myśleć i działać w sposób przedsiębiorczy', 1, 3, 4, 1, 2);
INSERT INTO mek VALUES ('S1P_U01', 'potrafi prawidłowo interpretować zjawiska społeczne (kulturowe, polityczne, prawne, ekonomiczne) specyficzne dla studiowanego kierunku studiów', 1, 2, 4, 1, 2);
INSERT INTO mek VALUES ('S1P_U02', 'potrafi wykorzystać podstawową wiedzę teoretyczną do szczegółowego opisu i praktycznego analizowania jednostkowych procesów i zjawisk społecznych (kulturowych, politycznych, prawnych, gospodarczych) specyficznych dla studiowanego kierunku studiów', 1, 2, 4, 1, 2);
INSERT INTO mek VALUES ('S1P_U03', 'potrafi właściwie analizować przyczyny i przebieg wybranych procesów i zjawisk społecznych (kulturowych, politycznych, prawnych, gospodarczych) specyficzne dla dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 2, 4, 1, 2);
INSERT INTO mek VALUES ('S1P_U04', 'potrafi prognozować praktyczne skutki konkretnych procesów i zjawisk społecznych (kulturowych, politycznych, ekonomicznych) z wykorzystaniem standardowych metod i narzędzi właściwych dla dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 2, 4, 1, 2);
INSERT INTO mek VALUES ('S1P_U05', 'prawidłowo posługuje się systemami normatywnymi oraz wybranymi normami i regułami (prawnymi, zawodowymi, etycznymi) w celu rozwiązania konkretnego zadania z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 2, 4, 1, 2);
INSERT INTO mek VALUES ('S1P_U06', 'posiada umiejętność wykorzystania zdobytej wiedzy, z uwzględnieniem umiejętności nabytych podczas praktyki zawodowej', 1, 2, 4, 1, 2);
INSERT INTO mek VALUES ('S1P_U07', 'posiada umiejętność analizy proponowanego rozwiązania konkretnych problemów i proponuje odpowiednie rozstrzygnięcia w tym zakresie, posiada umiejętność wdrażania proponowanych rozwiązań', 1, 2, 4, 1, 2);
INSERT INTO mek VALUES ('S1P_U08', 'posiada umiejętność rozumienia i analizowania zjawisk społecznych', 1, 2, 4, 1, 2);
INSERT INTO mek VALUES ('S1P_U09', 'posiada umiejętność przygotowania typowych prac pisemnych w języku polskim i języku obcym, uznawanym za podstawowy dla dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, dotyczących zagadnień szczegółowych, z wykorzystaniem podstawowych ujęć teoretycznych, a także różnych źródeł', 1, 2, 4, 1, 2);
INSERT INTO mek VALUES ('S1P_U10', 'posiada umiejętność przygotowania wystąpień ustnych, w języku polskim i języku obcym, w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, dotyczących zagadnień szczegółowych, z wykorzystaniem podstawowych ujęć teoretycznych, a także różnych źródeł', 1, 2, 4, 1, 2);
INSERT INTO mek VALUES ('S1P_U11', 'ma umiejętności językowe w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, zgodne z wymaganiami określonymi dla poziomu B2 Europejskiego Systemu Opisu Kształcenia Językowego', 1, 2, 4, 1, 2);
INSERT INTO mek VALUES ('S1P_W01', 'ma podstawową wiedzę o charakterze nauk społecznych, ich miejscu w systemie nauk i relacjach do innych nauk', 1, 1, 4, 1, 2);
INSERT INTO mek VALUES ('S1P_W02', 'ma podstawową wiedzę o typowych rodzajach struktur i instytucji społecznych (kulturowych, politycznych, prawnych, ekonomicznych), w szczególności ich podstawowych elementach', 1, 1, 4, 1, 2);
INSERT INTO mek VALUES ('S1P_W03', 'ma podstawową wiedzę o relacjach między strukturami i instytucjami społecznymi i ich elementami', 1, 1, 4, 1, 2);
INSERT INTO mek VALUES ('S1P_W04', 'zna rodzaje więzi społecznych w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów i rządzące nimi prawidłowości', 1, 1, 4, 1, 2);
INSERT INTO mek VALUES ('S1P_W05', 'ma wiedzę o człowieku, w szczególności jako podmiocie konstytuującym struktury społeczne i zasady ich funkcjonowania, a także działającym w tych strukturach', 1, 1, 4, 1, 2);
INSERT INTO mek VALUES ('S1P_W06', 'ma wiedzę o metodach i narzędziach, w tym technikach pozyskiwania danych, odpowiednich dla dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, pozwalających opisywać struktury i instytucje społeczne oraz procesy w nich i między nimi zachodzące, ze szczególnym uwzględnieniem wybranych instytucji oraz organizacji społecznych lub gospodarczych', 1, 1, 4, 1, 2);
INSERT INTO mek VALUES ('S1P_W07', 'ma wiedzę o normach i regułach organizujących wybrane struktury i instytucje społeczne', 1, 1, 4, 1, 2);
INSERT INTO mek VALUES ('S1P_W08', 'ma wiedzę o procesach zmian wybranych struktur i instytucji społecznych oraz ich elementów, o przyczynach, przebiegu, skali i konsekwencjach tych zmian', 1, 1, 4, 1, 2);
INSERT INTO mek VALUES ('S1P_W09', 'ma wiedzę o poglądach na temat wybranych struktur i instytucji społecznych oraz rodzajów więzi społecznych i ich historycznej ewolucji', 1, 1, 4, 1, 2);
INSERT INTO mek VALUES ('S1P_W10', 'zna i rozumie podstawowe pojęcia i zasady z zakresu ochrony własności przemysłowej i prawa autorskiego', 1, 1, 4, 1, 2);
INSERT INTO mek VALUES ('S1P_W11', 'zna ogólne zasady tworzenia i rozwoju form indywidualnej przedsiębiorczości, wykorzystującej wiedzę z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 4, 1, 2);
INSERT INTO mek VALUES ('S2A_K01', 'rozumie potrzebę uczenia się przez całe życie, potrafi inspirować i organizować proces uczenia się innych osób', 1, 3, 4, 2, 1);
INSERT INTO mek VALUES ('S2A_K02', 'potrafi współdziałać i pracować w grupie, przyjmując w niej różne role', 1, 3, 4, 2, 1);
INSERT INTO mek VALUES ('S2A_K03', 'potrafi odpowiednio określić priorytety służące realizacji określonego przez siebie lub innych zadania', 1, 3, 4, 2, 1);
INSERT INTO mek VALUES ('S2A_K04', 'prawidłowo identyfikuje i rozstrzyga dylematy związane z wykonywaniem zawodu', 1, 3, 4, 2, 1);
INSERT INTO mek VALUES ('S2A_K05', 'umie uczestniczyć w przygotowaniu projektów społecznych i potrafi przewidywać wielokierunkowe skutki społeczne swojej działalności', 1, 3, 4, 2, 1);
INSERT INTO mek VALUES ('S2A_K06', 'potrafi samodzielnie i krytycznie uzupełniać wiedzę i umiejętności, rozszerzone o wymiar interdyscyplinarny', 1, 3, 4, 2, 1);
INSERT INTO mek VALUES ('S2A_K07', 'potrafi myśleć i działać w sposób przedsiębiorczy', 1, 3, 4, 2, 1);
INSERT INTO mek VALUES ('S2A_U01', 'potrafi prawidłowo interpretować i wyjaśniać zjawiska społeczne oraz wzajemne relacje między zjawiskami społecznymi', 1, 2, 4, 2, 1);
INSERT INTO mek VALUES ('S2A_U02', 'potrafi wykorzystać wiedzę teoretyczną do opisu i analizowania przyczyn i przebiegu procesów i zjawisk społecznych oraz potrafi formułować własne opinie i dobierać krytycznie dane i metody analiz', 1, 2, 4, 2, 1);
INSERT INTO mek VALUES ('S2A_U03', 'potrafi właściwie analizować przyczyny i przebieg procesów i zjawisk społecznych, formułować własne opinie na ten temat oraz stawiać proste hipotezy badawcze i je weryfikować', 1, 2, 4, 2, 1);
INSERT INTO mek VALUES ('S2A_U04', 'potrafi prognozować i modelować złożone procesy społeczne obejmujące zjawiska z różnych obszarów życia społecznego z wykorzystaniem zaawansowanych metod i narzędzi w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 2, 4, 2, 1);
INSERT INTO mek VALUES ('S2A_U05', 'sprawnie posługuje się systemami normatywnymi, normami i regułami (prawnymi, zawodowymi, etycznymi) albo potrafi posługiwać się nimi w celu rozwiązywania konkretnych problemów, ma rozszerzoną umiejętność w odniesieniu do wybranej kategorii więzi społecznych lub wybranego rodzaju norm', 1, 2, 4, 2, 1);
INSERT INTO mek VALUES ('S2A_U06', 'posiada umiejętność wykorzystania zdobytej wiedzy w różnych zakresach i formach, rozszerzoną o krytyczną analizę skuteczności i przydatności stosowanej wiedzy', 1, 2, 4, 2, 1);
INSERT INTO mek VALUES ('S2A_U07', 'posiada umiejętność samodzielnego proponowania rozwiązań konkretnego problemu i przeprowadzenia procedury podjęcia rozstrzygnięć w tym zakresie', 1, 2, 4, 2, 1);
INSERT INTO mek VALUES ('S2A_U08', 'posiada umiejętność rozumienia i analizowania zjawisk społecznych, rozszerzoną o umiejętność pogłębionej teoretycznie oceny tych zjawisk w wybranych obszarach, z zastosowaniem metody badawczej', 1, 2, 4, 2, 1);
INSERT INTO mek VALUES ('S2A_U09', 'posiada pogłębioną umiejętność przygotowania różnych prac pisemnych w języku polskim i języku obcym, uznawanym za podstawowy dla dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów lub w obszarze leżącym na pograniczu różnych dyscyplin naukowych', 1, 2, 4, 2, 1);
INSERT INTO mek VALUES ('S2A_U10', 'posiada pogłębioną umiejętność przygotowania wystąpień ustnych, w języku polskim i języku obcym, w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów lub w obszarze leżącym na pograniczu różnych dyscyplin naukowych', 1, 2, 4, 2, 1);
INSERT INTO mek VALUES ('S2A_U11', 'ma umiejętności językowe w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, zgodne z wymaganiami określonymi dla poziomu B2+ Europejskiego Systemu Opisu Kształcenia Językowego', 1, 2, 4, 2, 1);
INSERT INTO mek VALUES ('S2A_W01', 'ma rozszerzoną wiedzę o charakterze nauk społecznych, ich miejscu w systemie nauk i relacjach do innych nauk', 1, 1, 4, 2, 1);
INSERT INTO mek VALUES ('S2A_W02', 'ma rozszerzoną wiedzę o różnych rodzajach struktur i instytucji społecznych oraz pogłębioną w odniesieniu do wybranych struktur i instytucji społecznych', 1, 1, 4, 2, 1);
INSERT INTO mek VALUES ('S2A_W03', 'ma pogłębioną wiedzę o relacjach między strukturami i instytucjami społecznymi w odniesieniu do wybranych struktur i instytucji społecznych i kategorii więzi społecznych lub wybranych kręgów kulturowych', 1, 1, 4, 2, 1);
INSERT INTO mek VALUES ('S2A_W04', 'ma wiedzę o różnych rodzajach więzi społecznych i występujących między nimi prawidłowościach oraz wiedzę pogłębioną w odniesieniu do wybranych kategorii więzi społecznych', 1, 1, 4, 2, 1);
INSERT INTO mek VALUES ('S2A_W05', 'ma rozszerzoną wiedzę o człowieku jako twórcy kultury, pogłębioną w odniesieniu do wybranych obszarów aktywności człowieka', 1, 1, 4, 2, 1);
INSERT INTO mek VALUES ('S2A_W06', 'zna w sposób pogłębiony wybrane metody i narzędzia opisu, w tym techniki pozyskiwania danych oraz modelowania struktur społecznych i procesów w nich zachodzących, a także identyfikowania rządzących nimi prawidłowości', 1, 1, 4, 2, 1);
INSERT INTO mek VALUES ('S2A_W07', 'ma pogłębioną wiedzę na temat wybranych systemów norm i reguł (prawnych, organizacyjnych, zawodowych, moralnych, etycznych) organizujących struktury i instytucje społeczne i rządzących nimi prawidłowościach oraz o ich źródłach, naturze, zmianach i sposobach działania', 1, 1, 4, 2, 1);
INSERT INTO mek VALUES ('S2A_W08', 'ma pogłębioną wiedzę o procesach zmian wybranych struktur, instytucji i więzi społecznych oraz zna rządzące tymi zmianami prawidłowości', 1, 1, 4, 2, 1);
INSERT INTO mek VALUES ('S2A_W09', 'ma pogłębioną wiedzę o poglądach na temat wybranych struktur i instytucji społecznych lub wybranych kategorii więzi społecznych i o ich historycznej ewolucji', 1, 1, 4, 2, 1);
INSERT INTO mek VALUES ('S2A_W10', 'zna i rozumie podstawowe pojęcia i zasady z zakresu ochrony własności przemysłowej i prawa autorskiego oraz konieczność zarządzania zasobami własności intelektualnej', 1, 1, 4, 2, 1);
INSERT INTO mek VALUES ('S2A_W11', 'zna ogólne zasady tworzenia i rozwoju form indywidualnej przedsiębiorczości, wykorzystującej wiedzę z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 4, 2, 1);
INSERT INTO mek VALUES ('S2P_K01', 'rozumie potrzebę uczenia się przez całe życie, potrafi inspirować i organizować proces uczenia się innych osób', 1, 3, 4, 2, 2);
INSERT INTO mek VALUES ('S2P_K02', 'potrafi współdziałać i pracować w grupie, przyjmując w niej różne role', 1, 3, 4, 2, 2);
INSERT INTO mek VALUES ('S2P_K03', 'potrafi odpowiednio określić priorytety służące realizacji określonego przez siebie lub innych zadania', 1, 3, 4, 2, 2);
INSERT INTO mek VALUES ('S2P_K04', 'prawidłowo identyfikuje i rozstrzyga dylematy związane z wykonywaniem zawodu', 1, 3, 4, 2, 2);
INSERT INTO mek VALUES ('S2P_K05', 'umie uczestniczyć w przygotowaniu projektów społecznych i potrafi przewidywać wielokierunkowe skutki społeczne swojej działalności', 1, 3, 4, 2, 2);
INSERT INTO mek VALUES ('S2P_K06', 'potrafi samodzielnie i krytycznie uzupełniać wiedzę i umiejętności, rozszerzone o wymiar interdyscyplinarny', 1, 3, 4, 2, 2);
INSERT INTO mek VALUES ('S2P_K07', 'potrafi myśleć i działać w sposób przedsiębiorczy', 1, 3, 4, 2, 2);
INSERT INTO mek VALUES ('S2P_U01', 'potrafi prawidłowo interpretować i wyjaśniać zjawiska społeczne oraz wzajemne relacje między zjawiskami społecznymi', 1, 2, 4, 2, 2);
INSERT INTO mek VALUES ('S2P_U02', 'potrafi wykorzystać wiedzę teoretyczną do szczegółowego opisu i praktycznego analizowania przyczyn i przebiegu procesów i zjawisk społecznych oraz potrafi formułować własne opinie i dobierać krytycznie dane i metody analizy', 1, 2, 4, 2, 2);
INSERT INTO mek VALUES ('S2P_U03', 'potrafi właściwie analizować przyczyny i przebieg procesów i zjawisk społecznych, formułować własne opinie na ten temat oraz stawiać proste hipotezy badawcze i je weryfikować', 1, 2, 4, 2, 2);
INSERT INTO mek VALUES ('S2P_U04', 'potrafi prognozować i modelować złożone procesy społeczne oraz ich praktyczne skutki obejmujące zjawiska z różnych obszarów życia społecznego z wykorzystaniem zaawansowanych metod i narzędzi właściwych dla dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 2, 4, 2, 2);
INSERT INTO mek VALUES ('T1A_U04', 'potrafi przygotować i przedstawić w języku polskim i języku obcym prezentację ustną, dotyczącą szczegółowych zagadnień z zakresu studiowanego kierunku studiów', 1, 2, 1, 1, 1);
INSERT INTO mek VALUES ('S2P_U05', 'posiada pogłębioną umiejętność posługiwania się w praktycznych zastosowaniach systemami normatywnymi oraz normami i regułami (prawnymi, zawodowymi, etycznymi) albo potrafi w sposób pogłębiony posługiwać się normami i regułami w celu rozwiązywania wybranych problemów', 1, 2, 4, 2, 2);
INSERT INTO mek VALUES ('S2P_U06', 'posiada umiejętność wykorzystania zdobytej wiedzy w różnych zakresach i formach, rozszerzoną o krytyczną analizę skuteczności i przydatności stosowanej wiedzy oraz o umiejętności nabyte podczas praktyki zawodowej', 1, 2, 4, 2, 2);
INSERT INTO mek VALUES ('S2P_U07', 'posiada umiejętność samodzielnego proponowania rozwiązań konkretnego problemu i podejmowania rozstrzygnięć w tym zakresie oraz wdrażania proponowanych rozwiązań', 1, 2, 4, 2, 2);
INSERT INTO mek VALUES ('S2P_U08', 'posiada umiejętność rozumienia i analizowania zjawisk społecznych, rozszerzoną o umiejętność pogłębionej teoretycznie oceny tych zjawisk w wybranych obszarach ludzkiej aktywności z zastosowaniem metody badawczej', 1, 2, 4, 2, 2);
INSERT INTO mek VALUES ('S2P_U09', 'posiada pogłębioną umiejętność przygotowania różnych prac pisemnych w języku polskim i języku obcym, uznawanym za podstawowy dla dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów lub w obszarze leżącym na pograniczu różnych dyscyplin naukowych', 1, 2, 4, 2, 2);
INSERT INTO mek VALUES ('S2P_U10', 'posiada pogłębioną umiejętność przygotowania wystąpień ustnych, w języku polskim i języku obcym, w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów lub w obszarze leżącym na pograniczu różnych dyscyplin naukowych', 1, 2, 4, 2, 2);
INSERT INTO mek VALUES ('S2P_U11', 'ma umiejętności językowe w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, zgodne z wymaganiami określonymi dla poziomu B2+ Europejskiego Systemu Opisu Kształcenia Językowego', 1, 2, 4, 2, 2);
INSERT INTO mek VALUES ('S2P_W01', 'ma rozszerzoną wiedzę o charakterze nauk społecznych, ich miejscu w systemie nauk i relacjach do innych nauk', 1, 1, 4, 2, 2);
INSERT INTO mek VALUES ('S2P_W02', 'ma rozszerzoną wiedzę o typowych rodzajach struktur i instytucji społecznych oraz wiedzę pogłębioną w odniesieniu do wybranych struktur i instytucji społecznych lub ich elementów oraz konkretnych rodzajów organizacji', 1, 1, 4, 2, 2);
INSERT INTO mek VALUES ('S2P_W03', 'ma pogłębioną wiedzę o relacjach między strukturami i instytucjami społecznymi i ich elementami w odniesieniu do wybranych struktur i instytucji społecznych i kategorii więzi społecznych, względnie do wybranych kręgów kulturowych', 1, 1, 4, 2, 2);
INSERT INTO mek VALUES ('S2P_W04', 'ma rozszerzoną wiedzę o różnych rodzajach więzi społecznych oraz wiedzę pogłębioną w odniesieniu do wybranych kategorii więzi społecznych i rządzących nimi prawidłowości', 1, 1, 4, 2, 2);
INSERT INTO mek VALUES ('S2P_W05', 'ma rozszerzoną wiedzę o człowieku jako twórcy kultury, pogłębioną w odniesieniu do wybranych obszarów aktywności człowieka', 1, 1, 4, 2, 2);
INSERT INTO mek VALUES ('S2P_W06', 'zna w sposób pogłębiony wybrane metody i narzędzia opisu odpowiednie dla dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, w tym techniki pozyskiwania danych, pozwalające opisywać struktury i instytucje społeczne oraz procesy w nich i między nimi zachodzące, ze szczególnym uwzględnieniem wybranych instytucji oraz organizacji społecznych lub gospodarczych', 1, 1, 4, 2, 2);
INSERT INTO mek VALUES ('S2P_W07', 'ma pogłębioną wiedzę o wybranych systemach norm i reguł (prawnych, organizacyjnych, zawodowych, moralnych, etycznych) organizujących struktury i instytucje społeczne', 1, 1, 4, 2, 2);
INSERT INTO mek VALUES ('S2P_W08', 'ma pogłębioną wiedzę o procesach zmian wybranych struktur, instytucji i więzi społecznych oraz ich praktycznych zastosowań, a także rządzących tymi zmianami prawidłowościach', 1, 1, 4, 2, 2);
INSERT INTO mek VALUES ('S2P_W09', 'ma pogłębioną wiedzę o poglądach na temat wybranych struktur i instytucji społecznych lub wybranych kategorii więzi społecznych oraz ich praktycznych zastosowań i o ich historycznej ewolucji', 1, 1, 4, 2, 2);
INSERT INTO mek VALUES ('S2P_W10', 'zna i rozumie podstawowe pojęcia i zasady z zakresu ochrony własności przemysłowej i prawa autorskiego oraz konieczność zarządzania zasobami własności intelektualnej', 1, 1, 4, 2, 2);
INSERT INTO mek VALUES ('S2P_W11', 'zna ogólne zasady tworzenia i rozwoju form indywidualnej przedsiębiorczości, wykorzystującej wiedzę z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 4, 2, 2);
INSERT INTO mek VALUES ('T1A_K01', 'rozumie potrzebę uczenia się przez całe życie; potrafi inspirować i organizować proces uczenia się innych osób', 1, 3, 1, 1, 1);
INSERT INTO mek VALUES ('T1A_K02', 'ma świadomość ważności i rozumie pozatechniczne aspekty i skutki działalności inżynierskiej, w tym jej wpływu na środowisko, i związanej z tym odpowiedzialności za podejmowane decyzje', 1, 3, 1, 1, 1);
INSERT INTO mek VALUES ('T1A_K03', 'potrafi współdziałać i pracować w grupie, przyjmując w niej różne role', 1, 3, 1, 1, 1);
INSERT INTO mek VALUES ('T1A_K04', 'potrafi odpowiednio określić priorytety służące realizacji określonego przez siebie lub innych zadania', 1, 3, 1, 1, 1);
INSERT INTO mek VALUES ('T1A_K05', 'prawidłowo identyfikuje i rozstrzyga dylematy związane z wykonywaniem zawodu', 1, 3, 1, 1, 1);
INSERT INTO mek VALUES ('T1A_K06', 'potrafi myśleć i działać w sposób przedsiębiorczy', 1, 3, 1, 1, 1);
INSERT INTO mek VALUES ('T1A_K07', 'ma świadomość roli społecznej absolwenta uczelni technicznej, a zwłaszcza rozumie potrzebę formułowania i przekazywania społeczeństwu, w szczególności poprzez środki masowego przekazu, informacji i opinii dotyczących osiągnięć techniki i innych aspektów działalności inżynierskiej; podejmuje starania, aby przekazać takie informacje i opinie w sposób powszechnie zrozumiały', 1, 3, 1, 1, 1);
INSERT INTO mek VALUES ('T1A_U01', 'potrafi pozyskiwać informacje z literatury, baz danych oraz innych właściwie dobranych źródeł, także w języku angielskim lub innym języku obcym uznawanym za język komunikacji międzynarodowej w zakresie studiowanego kierunku studiów; potrafi integrować uzyskane informacje, dokonywać ich interpretacji, a także wyciągać wnioski oraz formułować i uzasadniać opinie', 1, 2, 1, 1, 1);
INSERT INTO mek VALUES ('T1A_U02', 'potrafi porozumiewać się przy użyciu różnych technik w środowisku zawodowym oraz w innych środowiskach', 1, 2, 1, 1, 1);
INSERT INTO mek VALUES ('T1A_U03', 'potrafi przygotować w języku polskim i języku obcym, uznawanym za podstawowy dla dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, dobrze udokumentowane opracowanie problemów z zakresu studiowanego kierunku studiów', 1, 2, 1, 1, 1);
INSERT INTO mek VALUES ('T1A_U06', 'ma umiejętności językowe w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, zgodne z wymaganiami określonymi dla poziomu B2 Europejskiego Systemu Opisu Kształcenia Językowego', 1, 2, 1, 1, 1);
INSERT INTO mek VALUES ('T1A_U07', 'potrafi posługiwać się technikami informacyjno-komunikacyj-nymi właściwymi do realizacji zadań typowych dla działalności inżynierskiej', 1, 2, 1, 1, 1);
INSERT INTO mek VALUES ('T1A_U08', 'potrafi planować i przeprowadzać eksperymenty, w tym pomiary i symulacje komputerowe, interpretować uzyskane wyniki i wyciągać wnioski', 1, 2, 1, 1, 1);
INSERT INTO mek VALUES ('T1A_U09', 'potrafi wykorzystać do formułowania i rozwiązywania zadań inżynierskich metody analityczne, symulacyjne oraz eksperymentalne', 1, 2, 1, 1, 1);
INSERT INTO mek VALUES ('T1A_U10', 'potrafi - przy formułowaniu i rozwiązywaniu zadań inżynierskich - dostrzegać ich aspekty systemowe i pozatechniczne', 1, 2, 1, 1, 1);
INSERT INTO mek VALUES ('T1A_U11', 'ma przygotowanie niezbędne do pracy w środowisku przemysłowym oraz zna zasady bezpieczeństwa związane z tą pracą', 1, 2, 1, 1, 1);
INSERT INTO mek VALUES ('T1A_U12', 'potrafi dokonać wstępnej analizy ekonomicznej podejmowanych działań inżynierskich', 1, 2, 1, 1, 1);
INSERT INTO mek VALUES ('T1A_U13', 'potrafi dokonać krytycznej analizy sposobu funkcjonowania i ocenić - zwłaszcza w powiązaniu ze studiowanym kierunkiem studiów - istniejące rozwiązania techniczne, w szczególności urządzenia, obiekty, systemy, procesy, usługi', 1, 2, 1, 1, 1);
INSERT INTO mek VALUES ('T1A_U14', 'potrafi dokonać identyfikacji i sformułować specyfikację prostych zadań inżynierskich o charakterze praktycznym, charakterystycznych dla studiowanego kierunku studiów', 1, 2, 1, 1, 1);
INSERT INTO mek VALUES ('T1A_U15', 'potrafi ocenić przydatność rutynowych metod i narzędzi służą-cych do rozwiązania prostego zadania inżynierskiego o charakterze praktycznym, charakterystycznego dla studiowanego kierunku studiów oraz wybrać i zastosować właściwą metodę i narzędzia', 1, 2, 1, 1, 1);
INSERT INTO mek VALUES ('T1A_U16', 'potrafi - zgodnie z zadaną specyfikacją - zaprojektować oraz zrealizować proste urządzenie, obiekt, system lub proces, typowe dla studiowanego kierunku studiów, używając właści-wych metod, technik i narzędzi', 1, 2, 1, 1, 1);
INSERT INTO mek VALUES ('T1A_W01', 'ma wiedzę z zakresu matematyki, fizyki, chemii i innych obszarów właściwych dla studiowanego kierunku studiów przydatną do formułowania i rozwiązywania prostych zadań z zakresu studiowanego kierunku studiów', 1, 1, 1, 1, 1);
INSERT INTO mek VALUES ('T1A_W02', 'ma podstawową wiedzę w zakresie kierunków studiów powiązanych ze studiowanym kierunkiem studiów', 1, 1, 1, 1, 1);
INSERT INTO mek VALUES ('T1A_W03', 'ma uporządkowaną, podbudowaną teoretycznie wiedzę ogólną obejmującą kluczowe zagadnienia z zakresu studiowanego kierunku studiów', 1, 1, 1, 1, 1);
INSERT INTO mek VALUES ('T1A_W04', 'ma szczegółową wiedzę związaną z wybranymi zagadnieniami z zakresu studiowanego kierunku studiów', 1, 1, 1, 1, 1);
INSERT INTO mek VALUES ('T1A_W05', 'ma podstawową wiedzę o trendach rozwojowych z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 1, 1, 1);
INSERT INTO mek VALUES ('T1A_W06', 'ma podstawową wiedzę o cyklu życia urządzeń, obiektów i systemów technicznych', 1, 1, 1, 1, 1);
INSERT INTO mek VALUES ('T1A_W07', 'zna podstawowe metody, techniki, narzędzia i materiały stosowane przy rozwiązywaniu prostych zadań inżynierskich z zakresu studiowanego kierunku studiów', 1, 1, 1, 1, 1);
INSERT INTO mek VALUES ('T1A_W08', 'ma podstawową wiedzę niezbędną do rozumienia społecznych, ekonomicznych, prawnych i innych pozatechnicznych uwarunkowań działalności inżynierskiej', 1, 1, 1, 1, 1);
INSERT INTO mek VALUES ('T1A_W09', 'ma podstawową wiedzę dotyczącą zarządzania, w tym zarządzania jakością, i prowadzenia działalności gospodarczej', 1, 1, 1, 1, 1);
INSERT INTO mek VALUES ('T1A_W10', 'zna i rozumie podstawowe pojęcia i zasady z zakresu ochrony własności przemysłowej i prawa autorskiego; potrafi korzystać z zasobów informacji patentowej', 1, 1, 1, 1, 1);
INSERT INTO mek VALUES ('T1A_W11', 'zna ogólne zasady tworzenia i rozwoju form indywidualnej przedsiębiorczości, wykorzystującej wiedzę z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 1, 1, 1);
INSERT INTO mek VALUES ('T1AJJ05', 'ma umiejętność samokształcenia się', 1, 2, 1, 1, 1);
INSERT INTO mek VALUES ('T1P_K01', 'rozumie potrzebę uczenia się przez całe życie; potrafi inspirować i organizować proces uczenia się innych osób', 1, 3, 1, 1, 2);
INSERT INTO mek VALUES ('T1P_K02', 'ma świadomość ważności i rozumie pozatechniczne aspekty i skutki działalności inżynierskiej, w tym jej wpływu na środowisko, i związanej z tym odpowiedzialności za podejmowane decyzje', 1, 3, 1, 1, 2);
INSERT INTO mek VALUES ('T1P_K03', 'potrafi współdziałać i pracować w grupie, przyjmując w niej różne role', 1, 3, 1, 1, 2);
INSERT INTO mek VALUES ('T1P_K04', 'potrafi odpowiednio określić priorytety służące realizacji określonego przez siebie lub innych zadania', 1, 3, 1, 1, 2);
INSERT INTO mek VALUES ('T1P_K05', 'prawidłowo identyfikuje i rozstrzyga dylematy związane z wykonywaniem zawodu', 1, 3, 1, 1, 2);
INSERT INTO mek VALUES ('T1P_K06', 'potrafi myśleć i działać w sposób przedsiębiorczy', 1, 3, 1, 1, 2);
INSERT INTO mek VALUES ('T1P_K07', 'ma świadomość roli społecznej absolwenta uczelni technicznej, a zwłaszcza rozumie potrzebę formułowania i przekazywania społeczeństwu, w szczególności poprzez środki masowego przekazu, informacji i opinii dotyczących osiągnięć techniki i innych aspektów działalności inżynierskiej; podejmuje starania, aby przekazać takie informacje i opinie w sposób powszechnie zrozumiały', 1, 3, 1, 1, 2);
INSERT INTO mek VALUES ('T1P_U01', 'potrafi pozyskiwać informacje z literatury, baz danych oraz innych właściwie dobranych źródeł, także w języku angielskim lub innym języku obcym uznawanym za język komunikacji międzynarodowej w zakresie studiowanego kierunku studiów; potrafi integrować uzyskane informacje, dokonywać ich interpretacji, a także wyciągać wnioski oraz formułować i uzasadniać opinie', 1, 2, 1, 1, 2);
INSERT INTO mek VALUES ('T1P_U02', 'potrafi porozumiewać się przy użyciu różnych technik w środowisku zawodowym oraz w innych środowiskach', 1, 2, 1, 1, 2);
INSERT INTO mek VALUES ('T1P_U03', 'potrafi przygotować w języku polskim i języku obcym, uznawanym za podstawowy dla dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, dobrze udokumentowane opracowanie problemów z zakresu studiowanego kierunku studiów', 1, 2, 1, 1, 2);
INSERT INTO mek VALUES ('T2A_U08', 'potrafi planować i przeprowadzać eksperymenty, w tym pomiary i symulacje komputerowe, interpretować uzyskane wyniki i wyciągać wnioski', 1, 2, 1, 2, 1);
INSERT INTO mek VALUES ('T1P_U04', 'potrafi przygotować i przedstawić w języku polskim i języku obcym prezentację ustną, dotyczącą szczegółowych zagadnień z zakresu studiowanego kierunku studiów', 1, 2, 1, 1, 2);
INSERT INTO mek VALUES ('T1P_U05', 'ma umiejętność samokształcenia się', 1, 2, 1, 1, 2);
INSERT INTO mek VALUES ('T1P_U06', 'ma umiejętności językowe w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, zgodne z wymaganiami określonymi dla poziomu B2 Europejskiego Systemu Opisu Kształcenia Językowego', 1, 2, 1, 1, 2);
INSERT INTO mek VALUES ('T1P_U07', 'potrafi posługiwać się technikami informacyjno-komunikacyj-nymi właściwymi do realizacji zadań typowych dla działalności inżynierskiej', 1, 2, 1, 1, 2);
INSERT INTO mek VALUES ('T1P_U08', 'potrafi planować i przeprowadzać eksperymenty, w tym symulacje komputerowe, interpretować uzyskane wyniki i wyciągać wnioski', 1, 2, 1, 1, 2);
INSERT INTO mek VALUES ('T1P_U09', 'potrafi wykorzystać do formułowania i rozwiązywania zadań inżynierskich metody analityczne, symulacyjne oraz eksperymentalne', 1, 2, 1, 1, 2);
INSERT INTO mek VALUES ('T1P_U10', 'potrafi - przy formułowaniu i rozwiązywaniu zadań inżynierskich - dostrzegać ich aspekty systemowe i pozatechniczne', 1, 2, 1, 1, 2);
INSERT INTO mek VALUES ('T1P_U11', 'ma umiejętności niezbędne do pracy w środowisku przemysłowym oraz zna i stosuje zasady bezpieczeństwa związane z tą pracą', 1, 2, 1, 1, 2);
INSERT INTO mek VALUES ('T1P_U12', 'potrafi dokonać wstępnej analizy ekonomicznej podejmowanych działań inżynierskich', 1, 2, 1, 1, 2);
INSERT INTO mek VALUES ('T1P_U13', 'potrafi dokonać krytycznej analizy sposobu funkcjonowania i ocenić - zwłaszcza w powiązaniu ze studiowanym kierunkiem studiów - istniejące rozwiązania techniczne, w szczególności urządzenia, obiekty, systemy, procesy, usługi', 1, 2, 1, 1, 2);
INSERT INTO mek VALUES ('T1P_U14', 'potrafi dokonać identyfikacji i sformułować specyfikację prostych zadań inżynierskich o charakterze praktycznym, charakterystycznych dla studiowanego kierunku studiów', 1, 2, 1, 1, 2);
INSERT INTO mek VALUES ('T1P_U15', 'potrafi ocenić przydatność rutynowych metod i narzędzi służą-cych do rozwiązania prostego zadania inżynierskiego o charakterze praktycznym, charakterystycznego dla studiowanego kierunku studiów oraz wybrać i zastosować właściwą metodę (procedurę) i narzędzia', 1, 2, 1, 1, 2);
INSERT INTO mek VALUES ('T1P_U16', 'potrafi - zgodnie z zadaną specyfikacją - zaprojektować oraz zrealizować proste urządzenie, obiekt, system lub proces, typowe dla studiowanego kierunku studiów, używając właści-wych metod, technik i narzędzi', 1, 2, 1, 1, 2);
INSERT INTO mek VALUES ('T1P_W01', 'ma wiedzę z zakresu matematyki, fizyki, chemii i innych obszarów właściwych dla studiowanego kierunku studiów niezbędną do formułowania i rozwiązywania typowych, prostych zadań z zakresu studiowanego kierunku studiów', 1, 1, 1, 1, 2);
INSERT INTO mek VALUES ('T1P_W02', 'ma podstawową wiedzę w zakresie kierunków studiów powiązanych ze studiowanym kierunkiem studiów', 1, 1, 1, 1, 2);
INSERT INTO mek VALUES ('T1P_W03', 'ma wiedzę ogólną obejmującą kluczowe zagadnienia z zakresu studiowanego kierunku studiów', 1, 1, 1, 1, 2);
INSERT INTO mek VALUES ('T1P_W04', 'ma szczegółową wiedzę związaną z wybranymi zagadnieniami z zakresu studiowanego kierunku studiów', 1, 1, 1, 1, 2);
INSERT INTO mek VALUES ('T1P_W05', 'ma podstawową wiedzę o cyklu życia urządzeń, obiektów i systemów technicznych', 1, 1, 1, 1, 2);
INSERT INTO mek VALUES ('T1P_W06', 'zna podstawowe metody, techniki, narzędzia i materiały stosowane przy rozwiązywaniu prostych zadań inżynierskich z zakresu studiowanego kierunku studiów', 1, 1, 1, 1, 2);
INSERT INTO mek VALUES ('T1P_W07', 'ma podstawową wiedzę w zakresie standardów i norm technicznych związanych ze studiowanym kierunkiem studiów', 1, 1, 1, 1, 2);
INSERT INTO mek VALUES ('T1P_W08', 'ma podstawową wiedzę niezbędną do rozumienia społecznych, ekonomicznych, prawnych i innych pozatechnicznych uwarunkowań działalności inżynierskiej', 1, 1, 1, 1, 2);
INSERT INTO mek VALUES ('T1P_W09', 'ma podstawową wiedzę dotyczącą zarządzania, w tym zarządzania jakością, i prowadzenia działalności gospodarczej', 1, 1, 1, 1, 2);
INSERT INTO mek VALUES ('T1P_W10', 'zna i rozumie podstawowe pojęcia i zasady z zakresu ochrony własności przemysłowej i prawa autorskiego; potrafi korzystać z zasobów informacji patentowej', 1, 1, 1, 1, 2);
INSERT INTO mek VALUES ('T1P_W11', 'zna ogólne zasady tworzenia i rozwoju form indywidualnej przedsiębiorczości, wykorzystującej wiedzę z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 1, 1, 2);
INSERT INTO mek VALUES ('T2A_K01', 'rozumie potrzebę uczenia się przez całe życie; potrafi inspirować i organizować proces uczenia się innych osób', 1, 3, 1, 2, 1);
INSERT INTO mek VALUES ('T2A_K02', 'ma świadomość ważności i rozumie pozatechniczne aspekty i skutki działalności inżynierskiej, w tym jej wpływu na środowisko, i związanej z tym odpowiedzialności za podejmowane decyzje', 1, 3, 1, 2, 1);
INSERT INTO mek VALUES ('T2A_K03', 'potrafi współdziałać i pracować w grupie, przyjmując w niej różne role', 1, 3, 1, 2, 1);
INSERT INTO mek VALUES ('T2A_K04', 'potrafi odpowiednio określić priorytety służące realizacji określonego przez siebie lub innych zadania', 1, 3, 1, 2, 1);
INSERT INTO mek VALUES ('T2A_K05', 'prawidłowo identyfikuje i rozstrzyga dylematy związane z wykonywaniem zawodu', 1, 3, 1, 2, 1);
INSERT INTO mek VALUES ('T2A_K06', 'potrafi myśleć i działać w sposób kreatywny i przedsiębiorczy', 1, 3, 1, 2, 1);
INSERT INTO mek VALUES ('T2A_U02', 'potrafi porozumiewać się przy użyciu różnych technik w środowisku zawodowym oraz w innych środowiskach, także w języku angielskim lub innym języku obcym uznawanym za język komunikacji międzynarodowej w zakresie studiowanego kierunku studiów', 1, 2, 1, 2, 1);
INSERT INTO mek VALUES ('T2A_U03', 'potrafi przygotować opracowanie naukowe w języku polskim i krótkie doniesienie naukowe w języku obcym, uznawanym za podstawowy dla dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, przedstawiające wyniki własnych badań naukowych', 1, 2, 1, 2, 1);
INSERT INTO mek VALUES ('T2A_U05', 'potrafi określić kierunki dalszego uczenia się i zrealizować proces samokształcenia', 1, 2, 1, 2, 1);
INSERT INTO mek VALUES ('T2A_U06', 'ma umiejętności językowe w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, zgodne z wymaganiami określonymi dla poziomu B2+ Europejskiego Systemu Opisu Kształcenia Językowego', 1, 2, 1, 2, 1);
INSERT INTO mek VALUES ('T2A_U07', 'potrafi posługiwać się technikami informacyjno-komunikacyj-nymi właściwymi do realizacji zadań typowych dla działalności inżynierskiej', 1, 2, 1, 2, 1);
INSERT INTO mek VALUES ('T2A_U09', 'potrafi wykorzystać do formułowania i rozwiązywania zadań inżynierskich i prostych problemów badawczych metody analityczne, symulacyjne oraz eksperymentalne', 1, 2, 1, 2, 1);
INSERT INTO mek VALUES ('T2A_U10', 'potrafi - przy formułowaniu i rozwiązywaniu zadań inżynierskich - integrować wiedzę z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów oraz zastosować podejście systemowe, uwzględniające także aspekty pozatechniczne', 1, 2, 1, 2, 1);
INSERT INTO mek VALUES ('T2A_U11', 'potrafi formułować i testować hipotezy związane z problemami inżynierskimi i prostymi problemami badawczymi', 1, 2, 1, 2, 1);
INSERT INTO mek VALUES ('T2A_U12', 'potrafi ocenić przydatność i możliwość wykorzystania nowych osiągnięć (technik i technologii) w zakresie studiowanego kierunku studiów', 1, 2, 1, 2, 1);
INSERT INTO mek VALUES ('T2A_U13', 'ma przygotowanie niezbędne do pracy w środowisku przemysłowym oraz zna zasady bezpieczeństwa związane z tą pracą', 1, 2, 1, 2, 1);
INSERT INTO mek VALUES ('T2A_U14', 'potrafi dokonać wstępnej analizy ekonomicznej podejmowanych działań inżynierskich', 1, 2, 1, 2, 1);
INSERT INTO mek VALUES ('T2A_U15', 'potrafi dokonać krytycznej analizy sposobu funkcjonowania i ocenić - zwłaszcza w powiązaniu ze studiowanym kierunkiem studiów - istniejące rozwiązania techniczne, w szczególności urządzenia, obiekty, systemy, procesy, usługi', 1, 2, 1, 2, 1);
INSERT INTO mek VALUES ('T2A_U16', 'potrafi zaproponować ulepszenia (usprawnienia) istniejących rozwiązań technicznych', 1, 2, 1, 2, 1);
INSERT INTO mek VALUES ('T2A_U17', 'potrafi dokonać identyfikacji i sformułować specyfikację złożonych zadań inżynierskich, charakterystycznych dla studiowanego kierunku studiów, w tym zadań nietypowych, uwzględniając ich aspekty pozatechniczne', 1, 2, 1, 2, 1);
INSERT INTO mek VALUES ('T2A_W01', 'ma rozszerzoną i pogłębioną wiedzę z zakresu matematyki, fizyki, chemii i innych obszarów właściwych dla studiowanego kierunku studiów przydatną do formułowania i rozwiązywania złożonych zadań z zakresu studiowanego kierunku studiów', 1, 1, 1, 2, 1);
INSERT INTO mek VALUES ('T2A_W02', 'ma szczegółową wiedzę w zakresie kierunków studiów powiązanych ze studiowanym kierunkiem studiów', 1, 1, 1, 2, 1);
INSERT INTO mek VALUES ('T2A_W03', 'ma uporządkowaną, podbudowaną teoretycznie wiedzę ogólną obejmującą kluczowe zagadnienia z zakresu studiowanego kierunku studiów', 1, 1, 1, 2, 1);
INSERT INTO mek VALUES ('T2A_W04', 'ma podbudowaną teoretycznie szczegółową wiedzę związaną z wybranymi zagadnieniami z zakresu studiowanego kierunku studiów', 1, 1, 1, 2, 1);
INSERT INTO mek VALUES ('T2A_W05', 'ma wiedzę o trendach rozwojowych i najistotniejszych nowych osiągnięciach z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów i pokrewnych dyscyplin naukowych', 1, 1, 1, 2, 1);
INSERT INTO mek VALUES ('T2A_W06', 'ma podstawową wiedzę o cyklu życia urządzeń, obiektów i systemów technicznych', 1, 1, 1, 2, 1);
INSERT INTO mek VALUES ('T2A_W07', 'zna podstawowe metody, techniki, narzędzia i materiały stosowane przy rozwiązywaniu złożonych zadań inżynierskich z zakresu studiowanego kierunku studiów', 1, 1, 1, 2, 1);
INSERT INTO mek VALUES ('T2A_W08', 'ma wiedzę niezbędną do rozumienia społecznych, ekonomicznych, prawnych i innych pozatechnicznych uwarunkowań działalności inżynierskiej oraz ich uwzględniania w praktyce inżynierskiej', 1, 1, 1, 2, 1);
INSERT INTO mek VALUES ('T2A_W09', 'ma podstawową wiedzę dotyczącą zarządzania, w tym zarządzania jakością, i prowadzenia działalności gospodarczej', 1, 1, 1, 2, 1);
INSERT INTO mek VALUES ('T2A_W10', 'zna i rozumie podstawowe pojęcia i zasady z zakresu ochrony własności przemysłowej i prawa autorskiego oraz konieczność zarządzania zasobami własności intelektualnej; potrafi korzystać z zasobów informacji patentowej', 1, 1, 1, 2, 1);
INSERT INTO mek VALUES ('T2A_W11', 'zna ogólne zasady tworzenia i rozwoju form indywidualnej przedsiębiorczości, wykorzystującej wiedzę z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 1, 2, 1);
INSERT INTO mek VALUES ('T2P_K01', 'rozumie potrzebę uczenia się przez całe życie; potrafi inspirować i organizować proces uczenia się innych osób', 1, 3, 1, 2, 2);
INSERT INTO mek VALUES ('T2P_K02', 'ma świadomość ważności i rozumie pozatechniczne aspekty i skutki działalności inżynierskiej, w tym jej wpływu na środowisko, i związanej z tym odpowiedzialności za podejmowane decyzje', 1, 3, 1, 2, 2);
INSERT INTO mek VALUES ('T2P_K03', 'potrafi współdziałać i pracować w grupie, przyjmując w niej różne role', 1, 3, 1, 2, 2);
INSERT INTO mek VALUES ('T2P_K04', 'potrafi odpowiednio określić priorytety służące realizacji określonego przez siebie lub innych zadania', 1, 3, 1, 2, 2);
INSERT INTO mek VALUES ('T2P_K05', 'prawidłowo identyfikuje i rozstrzyga dylematy związane z wykonywaniem zawodu', 1, 3, 1, 2, 2);
INSERT INTO mek VALUES ('T2P_K06', 'potrafi myśleć i działać w sposób kreatywny i przedsiębiorczy', 1, 3, 1, 2, 2);
INSERT INTO mek VALUES ('T2P_U02', 'potrafi porozumiewać się przy użyciu różnych technik w środowisku zawodowym oraz w innych środowiskach, także w języku angielskim lub innym języku obcym uznawanym za język komunikacji międzynarodowej w zakresie studiowanego kierunku studiów', 1, 2, 1, 2, 2);
INSERT INTO mek VALUES ('T2P_U03', 'potrafi przygotować opracowanie naukowe w języku polskim oraz krótkie doniesienie naukowe w języku obcym, uznawanym za podstawowy dla dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, przedstawiające wyniki własnych badań', 1, 2, 1, 2, 2);
INSERT INTO mek VALUES ('T2P_U04', 'potrafi przygotować i przedstawić w języku polskim i języku obcym prezentację ustną, dotyczącą szczegółowych zagadnień z zakresu studiowanego kierunku studiów', 1, 2, 1, 2, 2);
INSERT INTO mek VALUES ('T2P_U05', 'potrafi określić kierunki dalszego uczenia się i zrealizować proces samokształcenia', 1, 2, 1, 2, 2);
INSERT INTO mek VALUES ('T2P_U06', 'ma umiejętności językowe w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, zgodne z wymaganiami określonymi dla poziomu B2+ Europejskiego Systemu Opisu Kształcenia Językowego', 1, 2, 1, 2, 2);
INSERT INTO mek VALUES ('T2P_U07', 'potrafi posługiwać się technikami informacyjno-komunikacyj-nymi właściwymi do realizacji zadań typowych dla działalności inżynierskiej', 1, 2, 1, 2, 2);
INSERT INTO mek VALUES ('T2P_U08', 'potrafi planować i przeprowadzać eksperymenty, w tym pomiary i symulacje komputerowe, interpretować uzyskane wyniki i wyciągać wnioski', 1, 2, 1, 2, 2);
INSERT INTO mek VALUES ('T2P_U09', 'potrafi wykorzystać do formułowania i rozwiązywania zadań inżynierskich i prostych problemów badawczych metody analityczne, symulacyjne oraz eksperymentalne', 1, 2, 1, 2, 2);
INSERT INTO mek VALUES ('T2P_U10', 'potrafi formułować i testować hipotezy związane z problemami inżynierskimi i prostymi problemami badawczymi', 1, 2, 1, 2, 2);
INSERT INTO mek VALUES ('T2P_U11', 'potrafi - przy formułowaniu i rozwiązywaniu zadań inżynierskich - integrować wiedzę z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów oraz zastosować podejście systemowe, uwzględniające także aspekty pozatechniczne', 1, 2, 1, 2, 2);
INSERT INTO mek VALUES ('T2P_U12', 'potrafi ocenić przydatność i możliwość wykorzystania nowych osiągnięć (technik i technologii) w zakresie studiowanego kierunku studiów', 1, 2, 1, 2, 2);
INSERT INTO mek VALUES ('T2P_U13', 'ma przygotowanie niezbędne do pracy w środowisku przemysłowym oraz zna i stosuje zasady bezpieczeństwa związane z tą pracą', 1, 2, 1, 2, 2);
INSERT INTO mek VALUES ('T2P_U14', 'potrafi dokonać analizy ekonomicznej podejmowanych działań inżynierskich', 1, 2, 1, 2, 2);
INSERT INTO mek VALUES ('T2P_U16', 'potrafi zaproponować ulepszenia (usprawnienia) istniejących rozwiązań technicznych', 1, 2, 1, 2, 2);
INSERT INTO mek VALUES ('T2P_U17', 'potrafi dokonać identyfikacji i sformułować specyfikację złożonych zadań inżynierskich, charakterystycznych dla studiowanego kierunku studiów, w tym zadań nietypowych, uwzględniając ich aspekty pozatechniczne', 1, 2, 1, 2, 2);
INSERT INTO mek VALUES ('T2P_W01', 'ma rozszerzoną i pogłębioną wiedzę z zakresu matematyki, fizyki, chemii i innych obszarów właściwych dla studiowanego kierunku studiów przydatną do formułowania i rozwiązywania złożonych zadań z zakresu studiowanego kierunku studiów', 1, 1, 1, 2, 2);
INSERT INTO mek VALUES ('T2P_W02', 'ma podstawową wiedzę w zakresie kierunków studiów powiązanych ze studiowanym kierunkiem studiów', 1, 1, 1, 2, 2);
INSERT INTO mek VALUES ('T2P_W03', 'ma uporządkowaną, podbudowaną teoretycznie wiedzę obejmującą kluczowe zagadnienia z zakresu studiowanego kierunku studiów', 1, 1, 1, 2, 2);
INSERT INTO mek VALUES ('T2P_W04', 'ma podbudowaną teoretycznie szczegółową wiedzę związaną z wybranymi zagadnieniami z zakresu studiowanego kierunku studiów', 1, 1, 1, 2, 2);
INSERT INTO mek VALUES ('T2P_W05', 'ma wiedzę o trendach rozwojowych i najistotniejszych nowych osiągnięciach z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów i pokrewnych dyscyplin naukowych', 1, 1, 1, 2, 2);
INSERT INTO mek VALUES ('T2P_W06', 'ma podstawową wiedzę o cyklu życia urządzeń, obiektów i systemów technicznych', 1, 1, 1, 2, 2);
INSERT INTO mek VALUES ('T2P_W07', 'zna podstawowe metody, techniki, narzędzia i materiały stosowane przy rozwiązywaniu złożonych zadań inżynierskich z zakresu studiowanego kierunku studiów', 1, 1, 1, 2, 2);
INSERT INTO mek VALUES ('T2P_W08', 'ma wiedzę niezbędną do rozumienia społecznych, ekonomicznych, prawnych i innych pozatechnicznych uwarunkowań działalności inżynierskiej oraz ich uwzględniania w praktyce inżynierskiej', 1, 1, 1, 2, 2);
INSERT INTO mek VALUES ('T2P_W09', 'ma podstawową wiedzę dotyczącą zarządzania, w tym zarządzania jakością, i prowadzenia działalności gospodarczej', 1, 1, 1, 2, 2);
INSERT INTO mek VALUES ('T2P_W10', 'zna i rozumie podstawowe pojęcia i zasady z zakresu ochrony własności przemysłowej i prawa autorskiego oraz konieczność zarządzania zasobami własności intelektualnej; potrafi korzystać z zasobów informacji patentowej', 1, 1, 1, 2, 2);
INSERT INTO mek VALUES ('T2P_W11', 'zna ogólne zasady tworzenia i rozwoju form indywidualnej przedsiębiorczości, wykorzystującej wiedzę z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 6, 2, 2);
INSERT INTO mek VALUES ('X1A_K01', 'rozumie potrzebę uczenia się przez całe życie', 1, 3, 5, 1, 1);
INSERT INTO mek VALUES ('X1A_K02', 'potrafi współdziałać i pracować w grupie, przyjmując w niej różne role', 1, 3, 5, 1, 1);
INSERT INTO mek VALUES ('X1A_K03', 'potrafi odpowiednio określić priorytety służące realizacji określonego przez siebie lub innych zadania', 1, 3, 5, 1, 1);
INSERT INTO mek VALUES ('X1A_K04', 'prawidłowo identyfikuje i rozstrzyga dylematy związane z wykonywaniem zawodu', 1, 3, 5, 1, 1);
INSERT INTO mek VALUES ('X1A_K05', 'rozumie potrzebę podnoszenia kompetencji zawodowych i osobistych', 1, 3, 5, 1, 1);
INSERT INTO mek VALUES ('X1A_K06', 'rozumie społeczne aspekty praktycznego stosowania zdobytej wiedzy i umiejętności oraz związaną z tym odpowiedzialność', 1, 3, 5, 1, 1);
INSERT INTO mek VALUES ('X1A_K07', 'potrafi myśleć i działać w sposób przedsiębiorczy', 1, 3, 5, 1, 1);
INSERT INTO mek VALUES ('X1A_U01', 'potrafi analizować problemy oraz znajdować ich rozwiązania w oparciu o poznane twierdzenia i metody', 1, 2, 5, 1, 1);
INSERT INTO mek VALUES ('X1A_U02', 'potrafi wykonywać analizy ilościowe oraz formułować na tej podstawie wnioski jakościowe', 1, 2, 5, 1, 1);
INSERT INTO mek VALUES ('X1A_U03', 'potrafi planować i wykonywać proste badania doświadczalne lub obserwacje oraz analizować ich wyniki', 1, 2, 5, 1, 1);
INSERT INTO mek VALUES ('X1A_U04', 'potrafi stosować metody numeryczne do rozwiązania problemów matematycznych; posiada umiejętność stosowania podstawowych pakietów oprogramowania oraz wybranych języków programowania', 1, 2, 5, 1, 1);
INSERT INTO mek VALUES ('X1A_U05', 'potrafi utworzyć opracowanie przedstawiające określony problem z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów i sposoby jego rozwiązania', 1, 2, 5, 1, 1);
INSERT INTO mek VALUES ('X1A_U06', 'potrafi w sposób przystępny przedstawić podstawowe fakty w ramach dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 2, 5, 1, 1);
INSERT INTO mek VALUES ('X1A_U07', 'potrafi uczyć się samodzielnie', 1, 2, 5, 1, 1);
INSERT INTO mek VALUES ('X1A_U08', 'posiada umiejętność przygotowania typowych prac pisemnych w języku polskim i języku obcym, uznawanym za podstawowy dla dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, dotyczących zagadnień szczegółowych, z wykorzystaniem podstawowych ujęć teoretycznych, a także różnych źródeł', 1, 2, 5, 1, 1);
INSERT INTO mek VALUES ('X1A_U09', 'posiada umiejętność przygotowania wystąpień ustnych, w języku polskim i języku obcym, dotyczących zagadnień szczegółowych, z wykorzystaniem podstawowych ujęć teoretycznych, a także różnych źródeł', 1, 2, 5, 1, 1);
INSERT INTO mek VALUES ('X1A_U10', 'ma umiejętności językowe w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, zgodne z wymaganiami określonymi dla poziomu B2 Europejskiego Systemu Opisu Kształcenia Językowego', 1, 2, 5, 1, 1);
INSERT INTO mek VALUES ('X1A_W01', 'ma ogólną wiedzę w zakresie podstawowych koncepcji, zasad i teorii właściwych dla dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 5, 1, 1);
INSERT INTO mek VALUES ('X1A_W02', 'ma znajomość technik matematyki wyższej w zakresie niezbędnym dla ilościowego opisu, zrozumienia oraz modelowania problemów o średnim poziomie złożoności', 1, 1, 5, 1, 1);
INSERT INTO mek VALUES ('X1A_W03', 'rozumie oraz potrafi wytłumaczyć opisy prawidłowości, zjawisk i procesów wykorzystujące język matematyki, w szczególności potrafi samodzielnie odtworzyć podstawowe twierdzenia i prawa', 1, 1, 5, 1, 1);
INSERT INTO mek VALUES ('X1A_W05', 'zna podstawowe aspekty budowy i działania aparatury naukowej z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 5, 1, 1);
INSERT INTO mek VALUES ('X1A_W06', 'zna podstawowe zasady bezpieczeństwa i higieny pracy', 1, 1, 5, 1, 1);
INSERT INTO mek VALUES ('X1A_W07', 'ma podstawową wiedzę dotyczącą uwarunkowań prawnych i etycznych związanych z działalnością naukową i dydaktyczną', 1, 1, 5, 1, 1);
INSERT INTO mek VALUES ('X1A_W08', 'zna i rozumie podstawowe pojęcia i zasady z zakresu ochrony własności przemysłowej i prawa autorskiego; potrafi korzystać z zasobów informacji patentowej', 1, 1, 5, 1, 1);
INSERT INTO mek VALUES ('X1A_W09', 'zna ogólne zasady tworzenia i rozwoju form indywidualnej przedsiębiorczości, wykorzystującej wiedzę z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 5, 1, 1);
INSERT INTO mek VALUES ('X1P_K01', 'rozumie potrzebę uczenia się przez całe życie', 1, 3, 5, 1, 2);
INSERT INTO mek VALUES ('X1P_K02', 'potrafi współdziałać i pracować w grupie, przyjmując w niej różne role', 1, 3, 5, 1, 2);
INSERT INTO mek VALUES ('X1P_K03', 'potrafi odpowiednio określić priorytety służące realizacji określonego przez siebie lub innych zadania', 1, 3, 5, 1, 2);
INSERT INTO mek VALUES ('X1P_K04', 'prawidłowo identyfikuje i rozstrzyga dylematy związane z wykonywaniem zawodu', 1, 3, 5, 1, 2);
INSERT INTO mek VALUES ('X1P_K05', 'rozumie potrzebę podnoszenia kompetencji zawodowych i osobistych', 1, 3, 5, 1, 2);
INSERT INTO mek VALUES ('X1P_K06', 'rozumie społeczne aspekty praktycznego stosowania zdobytej wiedzy i umiejętności oraz związaną z tym odpowiedzialność', 1, 3, 5, 1, 2);
INSERT INTO mek VALUES ('X1P_K07', 'potrafi myśleć i działać w sposób przedsiębiorczy', 1, 3, 5, 1, 2);
INSERT INTO mek VALUES ('X1P_U01', 'potrafi analizować problemy oraz znajdować ich rozwiązania w oparciu o poznane twierdzenia i metody', 1, 2, 5, 1, 2);
INSERT INTO mek VALUES ('X1P_U02', 'potrafi wykonywać analizy ilościowe oraz formułować na tej podstawie wnioski jakościowe', 1, 2, 5, 1, 2);
INSERT INTO mek VALUES ('X1P_U03', 'potrafi planować i wykonywać proste badania doświadczalne lub obserwacje oraz analizować ich wyniki', 1, 2, 5, 1, 2);
INSERT INTO mek VALUES ('X1P_U04', 'potrafi stosować metody numeryczne do rozwiązania problemów matematycznych; posiada umiejętność stosowania podstawowych pakietów oprogramowania oraz wybranych języków programowania, w tym oprogramowania przydatnego do rozwiązywania specyficznych problemów związanych z aktywnością zawodową', 1, 2, 5, 1, 2);
INSERT INTO mek VALUES ('X1P_U05', 'potrafi utworzyć opracowanie przedstawiające określony problem z zakresu studiowanego kierunku studiów i sposoby jego rozwiązania', 1, 2, 5, 1, 2);
INSERT INTO mek VALUES ('X1P_U06', 'potrafi w sposób popularny przedstawić podstawowe fakty w ramach dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 2, 5, 1, 2);
INSERT INTO mek VALUES ('X1P_U07', 'potrafi uczyć się samodzielnie', 1, 2, 5, 1, 2);
INSERT INTO mek VALUES ('X1P_U09', 'posiada umiejętność przygotowania wystąpień ustnych, w języku polskim i języku obcym, dotyczących zagadnień szczegółowych, z wykorzystaniem podstawowych ujęć teoretycznych, a także różnych źródeł', 1, 2, 5, 1, 2);
INSERT INTO mek VALUES ('X1P_U10', 'ma umiejętności językowe w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, zgodne z wymaganiami określonymi dla poziomu B2 Europejskiego Systemu Opisu Kształcenia Językowego', 1, 2, 5, 1, 2);
INSERT INTO mek VALUES ('X1P_W01', 'ma ogólną wiedzę w zakresie podstawowych koncepcji, zasad i teorii w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 5, 1, 2);
INSERT INTO mek VALUES ('X1P_W02', 'ma znajomość technik matematyki wyższej w zakresie niezbędnym dla ilościowego opisu, zrozumienia oraz modelowania problemów o średnim poziomie złożoności', 1, 1, 5, 1, 2);
INSERT INTO mek VALUES ('X1P_W03', 'rozumie oraz potrafi wytłumaczyć opisy prawidłowości, zjawisk i procesów wykorzystujące język matematyki, w szczególności potrafi samodzielnie odtworzyć podstawowe twierdzenia i prawa', 1, 1, 5, 1, 2);
INSERT INTO mek VALUES ('X1P_W05', 'zna podstawowe aspekty budowy i działania aparatury oraz urządzeń praktycznie stosowanych w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 5, 1, 2);
INSERT INTO mek VALUES ('X1P_W06', 'zna podstawowe zasady bezpieczeństwa i higieny pracy specyficzne dla wykonywanego zawodu', 1, 1, 5, 1, 2);
INSERT INTO mek VALUES ('X1P_W07', 'ma podstawową wiedzę dotyczącą uwarunkowań prawnych i etycznych związanych z praktycznymi zastosowaniami zdobytej wiedzy', 1, 1, 5, 1, 2);
INSERT INTO mek VALUES ('X1P_W08', 'zna i rozumie podstawowe pojęcia i zasady z zakresu ochrony własności przemysłowej i prawa autorskiego; potrafi korzystać z zasobów informacji patentowej', 1, 1, 5, 1, 2);
INSERT INTO mek VALUES ('X1P_W09', 'zna ogólne zasady tworzenia i rozwoju form indywidualnej przedsiębiorczości, wykorzystującej wiedzę z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 5, 1, 2);
INSERT INTO mek VALUES ('X2A_K01', 'rozumie potrzebę uczenia się przez całe życie, potrafi inspirować i organizować proces uczenia się innych osób', 1, 3, 5, 2, 1);
INSERT INTO mek VALUES ('X2A_K02', 'potrafi współdziałać i pracować w grupie, przyjmując w niej różne role', 1, 3, 5, 2, 1);
INSERT INTO mek VALUES ('X2A_K03', 'potrafi odpowiednio określić priorytety służące realizacji określonego przez siebie lub innych zadania', 1, 3, 5, 2, 1);
INSERT INTO mek VALUES ('X2A_K04', 'prawidłowo identyfikuje i rozstrzyga dylematy związane z wykonywaniem zawodu', 1, 3, 5, 2, 1);
INSERT INTO mek VALUES ('X2A_K05', 'rozumie potrzebę systematycznego zapoznawania się z czasopismami naukowymi i popularnonaukowymi, podstawowymi dla studiowanego kierunku studiów, w celu poszerzania i pogłębiania wiedzy', 1, 3, 5, 2, 1);
INSERT INTO mek VALUES ('X2A_K06', 'ma świadomość odpowiedzialności za podejmowane inicjatywy badań, eksperymentów lub obserwacji; rozumie społeczne aspekty praktycznego stosowania zdobytej wiedzy i umiejętności oraz związaną z tym odpowiedzialność', 1, 3, 5, 2, 1);
INSERT INTO mek VALUES ('X2A_U01', 'potrafi planować i wykonywać podstawowe badania, doświadczenia lub obserwacje dotyczące zagadnień poznawczych w ramach dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 2, 5, 2, 1);
INSERT INTO mek VALUES ('X2A_U02', 'potrafi w sposób krytyczny ocenić wyniki eksperymentów, obserwacji i obliczeń teoretycznych, a także przedyskutować błędy pomiarowe', 1, 2, 5, 2, 1);
INSERT INTO mek VALUES ('X2A_U03', 'potrafi znajdować niezbędne informacje w literaturze fachowej, bazach danych i innych źródłach, zna czasopisma naukowe podstawowe dla studiowanego kierunku studiów', 1, 2, 5, 2, 1);
INSERT INTO mek VALUES ('X2A_U04', 'potrafi zastosować zdobytą wiedzę w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów do pokrewnych dziedzin nauki i dyscyplin naukowych', 1, 2, 5, 2, 1);
INSERT INTO mek VALUES ('X2A_U05', 'potrafi przedstawić wyniki badań w postaci samodzielnie przygotowanej rozprawy (referatu) zawierającej opis i uzasadnienie celu pracy, przyjętą metodologię, wyniki oraz ich znaczenie na tle innych podobnych badań', 1, 2, 5, 2, 1);
INSERT INTO mek VALUES ('X2A_U06', 'potrafi w sposób przystępny przedstawić wyniki odkryć dokonanych w ramach dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów oraz w zakresie obszarów leżących na pograniczu pokrewnych dyscyplin naukowych', 1, 2, 5, 2, 1);
INSERT INTO mek VALUES ('X2A_U07', 'potrafi określić kierunki dalszego uczenia się i zrealizować proces samokształcenia', 1, 2, 5, 2, 1);
INSERT INTO mek VALUES ('X2A_U08', 'posiada pogłębioną umiejętność przygotowania różnych prac pisemnych w języku polskim i języku obcym, uznawanym za podstawowy dla dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów lub w obszarze leżącym na pograniczu różnych dyscyplin naukowych', 1, 2, 5, 2, 1);
INSERT INTO mek VALUES ('X2A_U09', 'posiada pogłębioną umiejętność przygotowania wystąpień ustnych, w języku polskim i języku obcym, w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów lub w obszarze leżącym na pograniczu różnych dyscyplin naukowych', 1, 2, 5, 2, 1);
INSERT INTO mek VALUES ('X2A_U10', 'ma umiejętności językowe w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, zgodne z wymaganiami określonymi dla poziomu B2+ Europejskiego Systemu Opisu Kształcenia Językowego', 1, 2, 5, 2, 1);
INSERT INTO mek VALUES ('X2A_W01', 'ma rozszerzoną wiedzę w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, a także ich historycznego rozwoju i znaczenia dla postępu nauk ścisłych i przyrodniczych, poznania świata i rozwoju ludzkości', 1, 1, 5, 2, 1);
INSERT INTO mek VALUES ('X2A_W02', 'ma znajomość matematyki w zakresie niezbędnym dla ilościowego opisu, zrozumienia oraz modelowania problemów o średnim poziomie złożoności', 1, 1, 5, 2, 1);
INSERT INTO mek VALUES ('X2A_W03', 'zna techniki doświadczalne, obserwacyjne i numeryczne oraz metody budowy modeli matematycznych właściwych dla studiowanego kierunku studiów; potrafi samodzielnie odtworzyć podstawowe twierdzenia i prawa oraz ich dowody', 1, 1, 5, 2, 1);
INSERT INTO mek VALUES ('X2A_W04', 'zna teoretyczne podstawy metod obliczeniowych oraz technik informatycznych stosowanych do rozwiązywania typowych problemów z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 5, 2, 1);
INSERT INTO mek VALUES ('X2A_W05', 'zna teoretyczne podstawy funkcjonowania aparatury naukowej z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 5, 2, 1);
INSERT INTO mek VALUES ('X2A_W06', 'ma ogólną wiedzę o aktualnych kierunkach rozwoju i najnowszych odkryciach w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 5, 2, 1);
INSERT INTO mek VALUES ('X2A_W07', 'zna zasady bezpieczeństwa i higieny pracy w stopniu pozwalającym na samodzielną pracę na stanowisku badawczym lub pomiarowym', 1, 1, 5, 2, 1);
INSERT INTO mek VALUES ('X2A_W08', 'ma podstawową wiedzę dotyczącą uwarunkowań prawnych i etycznych związanych z działalnością naukową i dydaktyczną', 1, 1, 5, 2, 1);
INSERT INTO mek VALUES ('X2A_W09', 'zna i rozumie podstawowe pojęcia i zasady z zakresu ochrony własności przemysłowej i prawa autorskiego oraz konieczność zarządzania zasobami własności intelektualnej; potrafi korzystać z zasobów informacji patentowej', 1, 1, 5, 2, 1);
INSERT INTO mek VALUES ('X2A_W10', 'zna ogólne zasady tworzenia i rozwoju form indywidualnej przedsiębiorczości, wykorzystującej wiedzę z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 5, 2, 1);
INSERT INTO mek VALUES ('X2P_K01', 'rozumie potrzebę uczenia się przez całe życie, potrafi inspirować i organizować proces uczenia się innych osób', 1, 3, 5, 2, 2);
INSERT INTO mek VALUES ('X2P_K02', 'potrafi współdziałać i pracować w grupie, przyjmując w niej różne role', 1, 3, 5, 2, 2);
INSERT INTO mek VALUES ('X2P_K03', 'potrafi odpowiednio określić priorytety służące realizacji określonego przez siebie lub innych zadania', 1, 3, 5, 2, 2);
INSERT INTO mek VALUES ('X2P_K04', 'prawidłowo identyfikuje i rozstrzyga dylematy związane z wykonywaniem zawodu', 1, 3, 5, 2, 2);
INSERT INTO mek VALUES ('X2P_K05', 'rozumie potrzebę systematycznego zapoznawania się z czasopismami naukowymi i popularnonaukowymi, podstawowymi dla studiowanego kierunku studiów, w celu poszerzania i pogłębiania wiedzy', 1, 3, 5, 2, 2);
INSERT INTO mek VALUES ('X2P_K06', 'ma świadomość odpowiedzialności za podejmowane inicjatywy badań, eksperymentów lub obserwacji; rozumie społeczne aspekty praktycznego stosowania zdobytej wiedzy i umiejętności oraz związaną z tym odpowiedzialność', 1, 3, 5, 2, 2);
INSERT INTO mek VALUES ('X2P_K07', 'potrafi myśleć i działać w sposób przedsiębiorczy', 1, 3, 5, 2, 2);
INSERT INTO mek VALUES ('X2P_U01', 'potrafi planować i wykonywać podstawowe badania, doświadczenia lub obserwacje dotyczące zagadnień poznawczych w ramach studiowanego kierunku studiów', 1, 2, 5, 2, 2);
INSERT INTO mek VALUES ('X2P_U02', 'potrafi w sposób krytyczny ocenić wyniki eksperymentów, obserwacji i obliczeń teoretycznych, a także przedyskutować błędy pomiarowe oraz wskazać drogi optymalizacji stosowanych procedur doświadczalnych i pomiarowych', 1, 2, 5, 2, 2);
INSERT INTO mek VALUES ('X2P_U03', 'potrafi znajdować niezbędne informacje w literaturze fachowej, bazach danych i innych źródłach, zna podstawowe czasopisma naukowe właściwe dla studiowanego kierunku studiów', 1, 2, 5, 2, 2);
INSERT INTO mek VALUES ('X2P_U04', 'potrafi odnieść zdobytą wiedzę do zastosowań praktycznych', 1, 2, 5, 2, 2);
INSERT INTO mek VALUES ('X2P_U05', 'potrafi przedstawić wyniki badań w postaci samodzielnie przygotowanej rozprawy (referatu) zawierającej opis i uzasadnienie celu pracy, przyjętą metodologię, wyniki oraz ich znaczenie na tle innych podobnych badań i osiągnięć wdrożeniowych', 1, 2, 5, 2, 2);
INSERT INTO mek VALUES ('X2P_U06', 'potrafi w sposób popularny przedstawić najnowsze wdrożenia i innowacje w ramach dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów oraz pokrewnych kierunków studiów', 1, 2, 5, 2, 2);
INSERT INTO mek VALUES ('X2P_U07', 'potrafi określić kierunki dalszego uczenia się i zrealizować proces samokształcenia', 1, 2, 5, 2, 2);
INSERT INTO mek VALUES ('X2P_U08', 'posiada pogłębioną umiejętność przygotowania różnych prac pisemnych w języku polskim i języku obcym, uznawanym za podstawowy dla dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów lub w obszarze leżącym na pograniczu różnych dyscyplin naukowych', 1, 2, 5, 2, 2);
INSERT INTO mek VALUES ('X2P_U09', 'posiada pogłębioną umiejętność przygotowania wystąpień ustnych, w języku polskim i języku obcym, w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów lub w obszarze leżącym na pograniczu różnych dyscyplin naukowych', 1, 2, 5, 2, 2);
INSERT INTO mek VALUES ('X2P_U10', 'ma umiejętności językowe w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, zgodne z wymaganiami określonymi dla poziomu B2+ Europejskiego Systemu Opisu Kształcenia Językowego', 1, 2, 5, 2, 2);
INSERT INTO mek VALUES ('X2P_W01', 'ma rozszerzoną wiedzę w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów, a także ich historycznego rozwoju i znaczenia dla postępu nauk ścisłych i przyrodniczych, poznania świata i rozwoju ludzkości', 1, 1, 5, 2, 2);
INSERT INTO mek VALUES ('X2P_W02', 'ma znajomość matematyki w zakresie niezbędnym dla ilościowego opisu, zrozumienia oraz modelowania problemów o średnim poziomie złożoności', 1, 1, 5, 2, 2);
INSERT INTO mek VALUES ('X2P_W03', 'zna techniki doświadczalne, obserwacyjne i numeryczne oraz metody budowy modeli matematycznych i zasady planowania badań doświadczalnych przydatnych w zastosowaniach w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 5, 2, 2);
INSERT INTO mek VALUES ('X2P_W04', 'zna teoretyczne podstawy metod obliczeniowych stosowanych do rozwiązywania typowych problemów właściwych dla dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów oraz przykłady praktycznej implementacji takich metod z wykorzystaniem odpowiednich narzędzi informatycznych', 1, 1, 5, 2, 2);
INSERT INTO mek VALUES ('X2P_W05', 'zna szczegóły budowy i działania aparatury oraz urządzeń praktycznie stosowanych w zakresie dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 5, 2, 2);
INSERT INTO mek VALUES ('X2P_W06', 'ma ogólną wiedzę o aktualnych kierunkach rozwoju i najnowszych odkryciach w zakresie studiowanego kierunku studiów', 1, 1, 5, 2, 2);
INSERT INTO mek VALUES ('X2P_W07', 'zna zasady bezpieczeństwa i higieny pracy w stopniu pozwalającym na samodzielną pracę na stanowisku badawczym lub pomiarowym oraz podstawowe zagrożenia występujące w środowisku przemysłowym w zakresie studiowanego kierunku studiów', 1, 1, 5, 2, 2);
INSERT INTO mek VALUES ('X2P_W08', 'ma podstawową wiedzę dotyczącą uwarunkowań prawnych i etycznych związanych z praktycznymi zastosowaniami zdobytej wiedzy', 1, 1, 5, 2, 2);
INSERT INTO mek VALUES ('X2P_W09', 'zna i rozumie podstawowe pojęcia i zasady z zakresu ochrony własności przemysłowej i prawa autorskiego oraz konieczność zarządzania zasobami własności intelektualnej; potrafi korzystać z zasobów informacji patentowej', 1, 1, 5, 2, 2);
INSERT INTO mek VALUES ('X2P_W10', 'zna ogólne zasady tworzenia i rozwoju form indywidualnej przedsiębiorczości, wykorzystującej wiedzę z zakresu dziedzin nauki i dyscyplin naukowych, właściwych dla studiowanego kierunku studiów', 1, 1, 5, 2, 2);


--
-- TOC entry 2898 (class 0 OID 12923472)
-- Dependencies: 181
-- Data for Name: kek_mek; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2911 (class 0 OID 12923535)
-- Dependencies: 194
-- Data for Name: pek; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2899 (class 0 OID 12923478)
-- Dependencies: 182
-- Data for Name: kek_pek; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2901 (class 0 OID 12923489)
-- Dependencies: 184
-- Data for Name: kierunek_moduly_ksztalcenia; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2902 (class 0 OID 12923492)
-- Dependencies: 185
-- Data for Name: kierunek_plany_studiow; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2903 (class 0 OID 12923495)
-- Dependencies: 186
-- Data for Name: kierunek_programy_ksztalcenia; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2904 (class 0 OID 12923498)
-- Dependencies: 187
-- Data for Name: kierunek_specjalnosci; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2906 (class 0 OID 12923509)
-- Dependencies: 189
-- Data for Name: mek_kek; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2909 (class 0 OID 12923529)
-- Dependencies: 192
-- Data for Name: obszar_ksztalcenia_mek; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2934 (class 0 OID 12923633)
-- Dependencies: 217
-- Data for Name: udzial_procentowy; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2910 (class 0 OID 12923532)
-- Dependencies: 193
-- Data for Name: obszar_ksztalcenia_udzial_procentowy; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2912 (class 0 OID 12923543)
-- Dependencies: 195
-- Data for Name: pek_kek; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2914 (class 0 OID 12923554)
-- Dependencies: 197
-- Data for Name: plan_studiow_przedmioty; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2931 (class 0 OID 12923618)
-- Dependencies: 214
-- Data for Name: semestr; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2915 (class 0 OID 12923557)
-- Dependencies: 198
-- Data for Name: plan_studiow_semestr; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2917 (class 0 OID 12923565)
-- Dependencies: 200
-- Data for Name: poziom_ksztalcenia_mek; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2919 (class 0 OID 12923573)
-- Dependencies: 202
-- Data for Name: profil_ksztalcenia_mek; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2921 (class 0 OID 12923582)
-- Dependencies: 204
-- Data for Name: program_ksztalcenia_formy_studiow; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2922 (class 0 OID 12923585)
-- Dependencies: 205
-- Data for Name: program_ksztalcenia_kek; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2923 (class 0 OID 12923588)
-- Dependencies: 206
-- Data for Name: program_ksztalcenia_moduly_ksztalcenia; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2924 (class 0 OID 12923591)
-- Dependencies: 207
-- Data for Name: program_ksztalcenia_udzialy_procentowe; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2926 (class 0 OID 12923603)
-- Dependencies: 209
-- Data for Name: przedmiot_forma_prowadzenia_zajec; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2927 (class 0 OID 12923606)
-- Dependencies: 210
-- Data for Name: przedmiot_kek; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2928 (class 0 OID 12923609)
-- Dependencies: 211
-- Data for Name: przedmiot_pek; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2929 (class 0 OID 12923612)
-- Dependencies: 212
-- Data for Name: przedmiot_plany_studiow; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2937 (class 0 OID 12923647)
-- Dependencies: 220
-- Data for Name: zajecia; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2930 (class 0 OID 12923615)
-- Dependencies: 213
-- Data for Name: przedmiot_zajecia; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2933 (class 0 OID 12923630)
-- Dependencies: 216
-- Data for Name: specjalnosc_kek; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



--
-- TOC entry 2936 (class 0 OID 12923644)
-- Dependencies: 219
-- Data for Name: wydzial_kierunki; Type: TABLE DATA; Schema: public; Owner: gfvqtnlwqrlqqw
--



-- Completed on 2016-02-04 00:57:55

--
-- PostgreSQL database dump complete
--

