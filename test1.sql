--
-- PostgreSQL database dump
--

-- Dumped from database version 11.1
-- Dumped by pg_dump version 11.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: california_cities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.california_cities (
    city character varying(255),
    type character varying(255),
    county character varying(255),
    state character varying(255),
    lat real,
    lng real
);


ALTER TABLE public.california_cities OWNER TO postgres;

--
-- Name: california_weather; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.california_weather (
    city character varying(255),
    type character varying(255),
    county character varying(255),
    state character varying(255),
    lat real,
    lng real,
    uv_index real,
    aqi real,
    category character varying(255),
    dominant_pollutant character varying(255),
    date timestamp without time zone,
    temperature real,
    cloud integer,
    pressure real,
    wind_speed real,
    rain real,
    date_scraped timestamp without time zone
);


ALTER TABLE public.california_weather OWNER TO postgres;

--
-- Data for Name: california_cities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.california_cities (city, type, county, state, lat, lng) FROM stdin;
Adelanto	City	San Bernardino	california	34.5828018	-117.408997
Agoura Hills	City	Los Angeles	california	34.1533012	-118.762001
Alameda	City	Alameda	california	37.7652016	-122.241997
Albany	City	Alameda	california	37.8869019	-122.297997
Alhambra	City	Los Angeles	california	34.0952988	-118.126999
Aliso Viejo	City	Orange	california	33.5685005	-117.725998
Alturas	City	Modoc	california	41.4870987	-120.542
Amador City	City	Amador	california	38.4193993	-120.823997
American Canyon	City	Napa	california	38.1749001	-122.261002
Anaheim	City	Orange	california	33.8366013	-117.914001
Anderson	City	Shasta	california	40.4482002	-122.297997
Angels Camp	City	Calaveras	california	38.0677986	-120.539001
Antioch	City	Contra Costa	california	38.0049019	-121.806
Apple Valley	Town	San Bernardino	california	34.5008011	-117.185997
Arcadia	City	Los Angeles	california	34.1397018	-118.035004
Arcata	City	Humboldt	california	40.8665009	-124.083
Arroyo Grande	City	San Luis Obispo	california	35.1185989	-120.591003
Artesia	City	Los Angeles	california	33.865799	-118.083
Arvin	City	Kern	california	35.2018013	-118.833
Atascadero	City	San Luis Obispo	california	35.489399	-120.670998
Atherton	Town	San Mateo	california	37.4612999	-122.197998
Atwater	City	Merced	california	37.3476982	-120.609001
Auburn	City	Placer	california	38.8965988	-121.077003
Avalon	City	Los Angeles	california	33.3428001	-118.328003
Avenal	City	Kings	california	36.0041008	-120.128998
Azusa	City	Los Angeles	california	34.1335983	-117.907997
Bakersfield	City	Kern	california	35.3732986	-119.018997
Baldwin Park	City	Los Angeles	california	34.0853004	-117.960999
Banning	City	Riverside	california	33.9255981	-116.875999
Barstow	City	San Bernardino	california	34.8958015	-117.016998
Beaumont	City	Riverside	california	33.9295006	-116.976997
Bell	City	Los Angeles	california	33.9775009	-118.186996
Bell Gardens	City	Los Angeles	california	33.9653015	-118.151001
Bellflower	City	Los Angeles	california	33.8816986	-118.116997
Belmont	City	San Mateo	california	37.5201988	-122.276001
Belvedere	City	Marin	california	37.8726997	-122.463997
Benicia	City	Solano	california	38.0494003	-122.158997
Berkeley	City	Alameda	california	37.8716011	-122.273003
Beverly Hills	City	Los Angeles	california	34.0736008	-118.400002
Big Bear Lake	City	San Bernardino	california	34.2439003	-116.911003
Biggs	City	Butte	california	39.4123993	-121.712997
Bishop	City	Inyo	california	37.3614006	-118.400002
Blue Lake	City	Humboldt	california	40.8829002	-123.984001
Blythe	City	Riverside	california	33.6178017	-114.587997
Bradbury	City	Los Angeles	california	34.1469002	-117.971001
Brawley	City	Imperial	california	32.9786987	-115.529999
Brea	City	Orange	california	33.9165001	-117.900002
Brentwood	City	Contra Costa	california	37.9319	-121.695999
Brisbane	City	San Mateo	california	37.6808014	-122.400002
Buellton	City	Santa Barbara	california	34.6136017	-120.193001
Buena Park	City	Orange	california	33.8674011	-117.998001
Burbank	City	Los Angeles	california	34.1808014	-118.308998
Burlingame	City	San Mateo	california	37.5778999	-122.348
Calabasas	City	Los Angeles	california	34.1366997	-118.661003
Calexico	City	Imperial	california	32.6789017	-115.499001
California City	City	Kern	california	35.1258011	-117.986
Calimesa	City	Riverside	california	34.0038986	-117.061996
Calipatria	City	Imperial	california	33.1255989	-115.514
Calistoga	City	Napa	california	38.5788002	-122.580002
Camarillo	City	Ventura	california	34.2164001	-119.038002
Campbell	City	Santa Clara	california	37.2872009	-121.949997
Canyon Lake	City	Riverside	california	33.6850014	-117.273003
Capitola	City	Santa Cruz	california	36.9752007	-121.953003
Carlsbad	City	San Diego	california	33.1581001	-117.350998
Carmel-by-the-Sea	City	Monterey	california	36.5551987	-121.922997
Carpinteria	City	Santa Barbara	california	34.3988991	-119.517998
Carson	City	Los Angeles	california	33.8316994	-118.281998
Cathedral City	City	Riverside	california	33.7804985	-116.467003
Ceres	City	Stanislaus	california	37.5948982	-120.958
Cerritos	City	Los Angeles	california	33.8582993	-118.065002
Chico	City	Butte	california	39.7285004	-121.836998
Chino	City	San Bernardino	california	34.0121994	-117.689003
Chino Hills	City	San Bernardino	california	33.9897995	-117.733002
Chowchilla	City	Madera	california	37.1230011	-120.260002
Chula Vista	City	San Diego	california	32.6400986	-117.084
Citrus Heights	City	Sacramento	california	38.7070999	-121.280998
Claremont	City	Los Angeles	california	34.0966988	-117.720001
Clayton	City	Contra Costa	california	37.9410019	-121.935997
Clearlake	City	Lake	california	38.9581985	-122.625999
Cloverdale	City	Sonoma	california	38.8055	-123.016998
Clovis	City	Fresno	california	36.8251991	-119.703003
Coachella	City	Riverside	california	33.6803017	-116.174004
Coalinga	City	Fresno	california	36.1397018	-120.360001
Colfax	City	Placer	california	39.1007004	-120.953003
Colma	Town	San Mateo	california	37.676899	-122.459999
Colton	City	San Bernardino	california	34.0738983	-117.314003
Colusa	City	Colusa	california	39.2142982	-122.009003
Commerce	City	Los Angeles	california	34.0005989	-118.160004
Compton	City	Los Angeles	california	33.8958015	-118.220001
Concord	City	Contra Costa	california	37.9780006	-122.030998
Corcoran	City	Kings	california	36.0979996	-119.559998
Corning	City	Tehama	california	39.9277	-122.179001
Corona	City	Riverside	california	33.8753014	-117.566002
Coronado	City	San Diego	california	32.6859016	-117.182999
Corte Madera	Town	Marin	california	37.925499	-122.527
Costa Mesa	City	Orange	california	33.641201	-117.918999
Cotati	City	Sonoma	california	38.3292999	-122.709999
Covina	City	Los Angeles	california	34.0900002	-117.889999
Crescent City	City	Del Norte	california	41.7556992	-124.203003
Cudahy	City	Los Angeles	california	33.9606018	-118.184998
Culver City	City	Los Angeles	california	34.0210991	-118.396004
Cupertino	City	Santa Clara	california	37.3230019	-122.031998
Cypress	City	Orange	california	33.8168983	-118.037003
Daly City	City	San Mateo	california	37.6879005	-122.470001
Dana Point	City	Orange	california	33.4672012	-117.697998
Danville	Town	Contra Costa	california	37.8216019	-122
Davis	City	Yolo	california	38.544899	-121.740997
Del Mar	City	San Diego	california	32.9594994	-117.264999
Del Rey Oaks	City	Monterey	california	36.5932999	-121.834999
Delano	City	Kern	california	35.7687988	-119.247002
Desert Hot Springs	City	Riverside	california	33.9611015	-116.501999
Diamond Bar	City	Los Angeles	california	34.0285988	-117.809998
Dinuba	City	Tulare	california	36.5433006	-119.387001
Dixon	City	Solano	california	38.4454994	-121.822998
Dorris	City	Siskiyou	california	41.9673996	-121.917999
Dos Palos	City	Merced	california	36.9860992	-120.626999
Downey	City	Los Angeles	california	33.9401016	-118.133003
Duarte	City	Los Angeles	california	34.1394997	-117.976997
Dublin	City	Alameda	california	37.7022018	-121.935997
Dunsmuir	City	Siskiyou	california	41.2081985	-122.272003
East Palo Alto	City	San Mateo	california	37.4687996	-122.140999
Eastvale	City	Riverside	california	33.9524994	-117.584999
El Cajon	City	San Diego	california	32.7947998	-116.962997
El Centro	City	Imperial	california	32.7919998	-115.563004
El Cerrito	City	Contra Costa	california	37.9160995	-122.310997
El Monte	City	Los Angeles	california	34.0685997	-118.028
El Segundo	City	Los Angeles	california	33.9192009	-118.416
Elk Grove	City	Sacramento	california	38.4087982	-121.372002
Emeryville	City	Alameda	california	37.8312988	-122.285004
Encinitas	City	San Diego	california	33.0369987	-117.292
Escalon	City	San Joaquin	california	37.7974014	-120.997002
Escondido	City	San Diego	california	33.1192017	-117.085999
Etna	City	Siskiyou	california	41.4567986	-122.894997
Eureka	City	Humboldt	california	40.8021011	-124.164001
Exeter	City	Tulare	california	36.2961006	-119.141998
Fairfax	Town	Marin	california	37.9870987	-122.588997
Fairfield	City	Solano	california	38.2494011	-122.040001
Farmersville	City	Tulare	california	36.297699	-119.207001
Ferndale	City	Humboldt	california	40.5761986	-124.264
Fillmore	City	Ventura	california	34.3992004	-118.917999
Firebaugh	City	Fresno	california	36.858799	-120.456001
Folsom	City	Sacramento	california	38.6780014	-121.176003
Fontana	City	San Bernardino	california	34.0922012	-117.434998
Fort Bragg	City	Mendocino	california	39.4457016	-123.805
Fort Jones	City	Siskiyou	california	41.6076012	-122.839996
Fortuna	City	Humboldt	california	40.5982018	-124.156998
Foster City	City	San Mateo	california	37.5584984	-122.271004
Fountain Valley	City	Orange	california	33.7089996	-117.954002
Fowler	City	Fresno	california	36.6305008	-119.678001
Fremont	City	Alameda	california	37.5483017	-121.988998
Fresno	City	Fresno	california	36.7378006	-119.787003
Fullerton	City	Orange	california	33.8703995	-117.924004
Galt	City	Sacramento	california	38.2546005	-121.300003
Garden Grove	City	Orange	california	33.7742996	-117.938004
Gardena	City	Los Angeles	california	33.8883018	-118.308998
Gilroy	City	Santa Clara	california	37.0057983	-121.568001
Glendale	City	Los Angeles	california	34.1425018	-118.254997
Glendora	City	Los Angeles	california	34.1361008	-117.864998
Goleta	City	Santa Barbara	california	34.4357986	-119.828003
Gonzales	City	Monterey	california	36.5065994	-121.444
Grand Terrace	City	San Bernardino	california	34.0339012	-117.314003
Grass Valley	City	Nevada	california	39.219101	-121.060997
Greenfield	City	Monterey	california	36.3208008	-121.244003
Gridley	City	Butte	california	39.3638	-121.694
Grover Beach	City	San Luis Obispo	california	35.1216011	-120.621002
Guadalupe	City	Santa Barbara	california	34.9715996	-120.571999
Gustine	City	Merced	california	37.2577019	-120.999001
Half Moon Bay	City	San Mateo	california	37.4636002	-122.429001
Hanford	City	Kings	california	36.3274002	-119.646004
Hawaiian Gardens	City	Los Angeles	california	33.8314018	-118.072998
Hawthorne	City	Los Angeles	california	33.9164009	-118.352997
Hayward	City	Alameda	california	37.6688004	-122.081001
Healdsburg	City	Sonoma	california	38.6105003	-122.869003
Hemet	City	Riverside	california	33.7475014	-116.972
Hercules	City	Contra Costa	california	38.0171013	-122.289001
Hermosa Beach	City	Los Angeles	california	33.8622017	-118.400002
Hesperia	City	San Bernardino	california	34.4263992	-117.301003
Hidden Hills	City	Los Angeles	california	34.1603012	-118.652
Highland	City	San Bernardino	california	34.1282997	-117.209
Hillsborough	Town	San Mateo	california	37.5741005	-122.378998
Hollister	City	San Benito	california	36.8525009	-121.402
Holtville	City	Imperial	california	32.8111992	-115.379997
Hughson	City	Stanislaus	california	37.6026993	-120.865997
Huntington Beach	City	Orange	california	33.6595001	-117.999001
Huntington Park	City	Los Angeles	california	33.9817009	-118.224998
Huron	City	Fresno	california	36.2027016	-120.102997
Imperial	City	Imperial	california	32.847599	-115.569
Imperial Beach	City	San Diego	california	32.5839005	-117.112999
Indian Wells	City	Riverside	california	33.7176018	-116.341003
Indio	City	Riverside	california	33.7206001	-116.216003
Industry	City	Los Angeles	california	34.0196991	-117.959
Inglewood	City	Los Angeles	california	33.9617004	-118.352997
Ione	City	Amador	california	38.3526993	-120.932999
Irvine	City	Orange	california	33.6846008	-117.827003
Irwindale	City	Los Angeles	california	34.1069984	-117.934998
Isleton	City	Sacramento	california	38.1618996	-121.612
Jackson	City	Amador	california	38.3488007	-120.774002
Jurupa Valley	City	Riverside	california	33.9972	-117.485001
Kerman	City	Fresno	california	36.7235985	-120.059998
King City	City	Monterey	california	36.2126999	-121.125999
Kingsburg	City	Fresno	california	36.5138016	-119.554001
La CaÃ±ada Flintridge	City	Los Angeles	california	34.2067986	-118.199997
La Habra	City	Orange	california	33.9319	-117.945999
La Habra Heights	City	Los Angeles	california	33.9608002	-117.950996
La Mesa	City	San Diego	california	32.7677994	-117.023003
La Mirada	City	Los Angeles	california	33.9171982	-118.012001
La Palma	City	Orange	california	33.8462982	-118.045998
La Puente	City	Los Angeles	california	34.0200005	-117.949997
La Quinta	City	Riverside	california	33.6633987	-116.309998
La Verne	City	Los Angeles	california	34.1007996	-117.767998
Lafayette	City	Contra Costa	california	37.8857994	-122.117996
Laguna Beach	City	Orange	california	33.5427017	-117.785004
Laguna Hills	City	Orange	california	33.5915985	-117.698997
Laguna Niguel	City	Orange	california	33.5237007	-117.714996
Laguna Woods	City	Orange	california	33.610199	-117.724998
Lake Elsinore	City	Riverside	california	33.6680984	-117.327003
Lake Forest	City	Orange	california	33.6469002	-117.685997
Lakeport	City	Lake	california	39.0429001	-122.916
Lakewood	City	Los Angeles	california	33.8535995	-118.134003
Lancaster	City	Los Angeles	california	34.6867981	-118.153999
Larkspur	City	Marin	california	37.9341011	-122.535004
Lathrop	City	San Joaquin	california	37.8227005	-121.277
Lawndale	City	Los Angeles	california	33.8871994	-118.352997
Lemon Grove	City	San Diego	california	32.7425003	-117.030998
Lemoore	City	Kings	california	36.3008003	-119.782997
Lincoln	City	Placer	california	38.8916016	-121.292999
Lindsay	City	Tulare	california	36.2029991	-119.087997
Live Oak	City	Sutter	california	39.2756996	-121.660004
Livermore	City	Alameda	california	37.6819	-121.767998
Livingston	City	Merced	california	37.3869019	-120.723999
Lodi	City	San Joaquin	california	38.1341019	-121.272003
Loma Linda	City	San Bernardino	california	34.0483017	-117.261002
Lomita	City	Los Angeles	california	33.7921982	-118.315002
Lompoc	City	Santa Barbara	california	34.6390991	-120.458
Long Beach	City	Los Angeles	california	33.7700996	-118.194
Loomis	Town	Placer	california	38.8213005	-121.193001
Los Alamitos	City	Orange	california	33.8031998	-118.071999
Los Altos	City	Santa Clara	california	37.3852005	-122.113998
Los Altos Hills	Town	Santa Clara	california	37.3796997	-122.137001
Los Angeles	City	Los Angeles	california	34.0522003	-118.244003
Los Banos	City	Merced	california	37.0583	-120.849998
Los Gatos	Town	Santa Clara	california	37.2358017	-121.961998
Loyalton	City	Sierra	california	39.6763	-120.240997
Lynwood	City	Los Angeles	california	33.9303017	-118.210999
Madera	City	Madera	california	36.9612999	-120.060997
Malibu	City	Los Angeles	california	34.0259018	-118.779999
Mammoth Lakes	Town	Mono	california	37.6484985	-118.972
Manhattan Beach	City	Los Angeles	california	33.8847008	-118.411003
Manteca	City	San Joaquin	california	37.7974014	-121.216003
Maricopa	City	Kern	california	35.0588989	-119.401001
Marina	City	Monterey	california	36.6843987	-121.802002
Martinez	City	Contra Costa	california	38.0194016	-122.134003
Marysville	City	Yuba	california	39.1456985	-121.591003
Maywood	City	Los Angeles	california	33.9866982	-118.184998
McFarland	City	Kern	california	35.6780014	-119.228996
Mendota	City	Fresno	california	36.7536011	-120.382004
Menifee	City	Riverside	california	33.6971016	-117.184998
Menlo Park	City	San Mateo	california	37.4529991	-122.181999
Merced	City	Merced	california	37.3022003	-120.483002
Mill Valley	City	Marin	california	37.9059982	-122.544998
Millbrae	City	San Mateo	california	37.5984993	-122.387001
Milpitas	City	Santa Clara	california	37.4323006	-121.900002
Mission Viejo	City	Orange	california	33.5969009	-117.657997
Modesto	City	Stanislaus	california	37.6390991	-120.997002
Monrovia	City	Los Angeles	california	34.1442986	-118.001999
Montague	City	Siskiyou	california	41.728199	-122.528
Montclair	City	San Bernardino	california	34.0774994	-117.690002
Monte Sereno	City	Santa Clara	california	37.2363014	-121.991997
Montebello	City	Los Angeles	california	34.0164986	-118.113998
Monterey	City	Monterey	california	36.6002007	-121.894997
Monterey Park	City	Los Angeles	california	34.0625	-118.123001
Moorpark	City	Ventura	california	34.2855988	-118.882004
Moraga	Town	Contra Costa	california	37.8348999	-122.129997
Moreno Valley	City	Riverside	california	33.9425011	-117.230003
Morgan Hill	City	Santa Clara	california	37.1305008	-121.653999
Morro Bay	City	San Luis Obispo	california	35.3658981	-120.849998
Mount Shasta	City	Siskiyou	california	41.3098984	-122.310997
Mountain View	City	Santa Clara	california	37.3861008	-122.084
Murrieta	City	Riverside	california	33.5539017	-117.213997
Napa	City	Napa	california	38.2975006	-122.287003
National City	City	San Diego	california	32.6781006	-117.098999
Needles	City	San Bernardino	california	34.8480988	-114.613998
Nevada City	City	Nevada	california	39.2616005	-121.015999
Newark	City	Alameda	california	37.5297012	-122.040001
Newman	City	Stanislaus	california	37.3138008	-121.021004
Newport Beach	City	Orange	california	33.6189003	-117.93
Norco	City	Riverside	california	33.9310989	-117.549004
Norwalk	City	Los Angeles	california	33.9021988	-118.082001
Novato	City	Marin	california	38.107399	-122.57
Oakdale	City	Stanislaus	california	37.7666016	-120.847
Oakland	City	Alameda	california	37.8044014	-122.271004
Oakley	City	Contra Costa	california	37.9973984	-121.711998
Oceanside	City	San Diego	california	33.1959	-117.378998
Ojai	City	Ventura	california	34.4480019	-119.242996
Ontario	City	San Bernardino	california	34.0633011	-117.651001
Orange	City	Orange	california	33.787899	-117.852997
Orange Cove	City	Fresno	california	36.6244011	-119.314003
Orinda	City	Contra Costa	california	37.8771019	-122.18
Orland	City	Glenn	california	39.7473984	-122.195999
Oroville	City	Butte	california	39.5138016	-121.556
Oxnard	City	Ventura	california	34.1974983	-119.177002
Pacific Grove	City	Monterey	california	36.6176987	-121.917
Pacifica	City	San Mateo	california	37.6138	-122.487
Palm Desert	City	Riverside	california	33.7221985	-116.374001
Palm Springs	City	Riverside	california	33.8302994	-116.544998
Palmdale	City	Los Angeles	california	34.5793991	-118.115997
Palo Alto	City	Santa Clara	california	37.4418983	-122.142998
Palos Verdes Estates	City	Los Angeles	california	33.8005981	-118.389999
Paradise	Town	Butte	california	39.7596016	-121.622002
Paramount	City	Los Angeles	california	33.8894997	-118.160004
Parlier	City	Fresno	california	36.611599	-119.527
Pasadena	City	Los Angeles	california	34.1478004	-118.144997
Paso Robles	City	San Luis Obispo	california	35.6369019	-120.654999
Patterson	City	Stanislaus	california	37.4715996	-121.129997
Perris	City	Riverside	california	33.7825012	-117.228996
Petaluma	City	Sonoma	california	38.232399	-122.637001
Pico Rivera	City	Los Angeles	california	33.9831009	-118.097
Piedmont	City	Alameda	california	37.8244019	-122.232002
Pinole	City	Contra Costa	california	38.0043983	-122.299004
Pismo Beach	City	San Luis Obispo	california	35.1427994	-120.640999
Pittsburg	City	Contra Costa	california	38.0279999	-121.885002
Placentia	City	Orange	california	33.8711014	-117.862999
Placerville	City	El Dorado	california	38.729599	-120.799004
Pleasant Hill	City	Contra Costa	california	37.9480019	-122.060997
Pleasanton	City	Alameda	california	37.6623993	-121.875
Plymouth	City	Amador	california	38.4818993	-120.845001
Point Arena	City	Mendocino	california	38.9087982	-123.693001
Pomona	City	Los Angeles	california	34.0550995	-117.75
Port Hueneme	City	Ventura	california	34.1478004	-119.195
Porterville	City	Tulare	california	36.0652008	-119.016998
Portola	City	Plumas	california	39.8105011	-120.469002
Portola Valley	Town	San Mateo	california	37.3841019	-122.235001
Poway	City	San Diego	california	32.9627991	-117.036003
Rancho Cordova	City	Sacramento	california	38.5890999	-121.303001
Rancho Cucamonga	City	San Bernardino	california	34.1063995	-117.593002
Rancho Mirage	City	Riverside	california	33.7397003	-116.413002
Rancho Palos Verdes	City	Los Angeles	california	33.7444992	-118.387001
Rancho Santa Margarita	City	Orange	california	33.6402016	-117.602997
Red Bluff	City	Tehama	california	40.1785011	-122.236
Redding	City	Shasta	california	40.5864983	-122.391998
Redlands	City	San Bernardino	california	34.0555992	-117.182999
Redondo Beach	City	Los Angeles	california	33.8492012	-118.388
Redwood City	City	San Mateo	california	37.485199	-122.236
Reedley	City	Fresno	california	36.5962982	-119.449997
Rialto	City	San Bernardino	california	34.1063995	-117.370003
Richmond	City	Contra Costa	california	37.9357986	-122.348
Ridgecrest	City	Kern	california	35.6225014	-117.670998
Rio Dell	City	Humboldt	california	40.4992981	-124.106003
Rio Vista	City	Solano	california	38.1557999	-121.691002
Ripon	City	San Joaquin	california	37.7394981	-121.135002
Riverbank	City	Stanislaus	california	37.7360001	-120.934998
Riverside	City	Riverside	california	33.9805984	-117.375
Rocklin	City	Placer	california	38.790699	-121.236
Rohnert Park	City	Sonoma	california	38.3395996	-122.700996
Rolling Hills	City	Los Angeles	california	33.757	-118.353996
Rolling Hills Estates	City	Los Angeles	california	33.7877998	-118.358002
Rosemead	City	Los Angeles	california	34.0806007	-118.072998
Roseville	City	Placer	california	38.7521019	-121.288002
Ross	Town	Marin	california	37.9623985	-122.555
Sacramento	City	Sacramento	california	38.5816002	-121.494003
St. Helena	City	Napa	california	38.5051994	-122.470001
Salinas	City	Monterey	california	36.6777	-121.655998
San Anselmo	Town	Marin	california	37.9746017	-122.561996
San Bernardino	City	San Bernardino	california	34.1082993	-117.290001
San Bruno	City	San Mateo	california	37.6305008	-122.411003
San Carlos	City	San Mateo	california	37.5071983	-122.261002
San Clemente	City	Orange	california	33.4273987	-117.612999
San Diego	City	San Diego	california	32.7156982	-117.161003
San Dimas	City	Los Angeles	california	34.1067009	-117.806999
San Fernando	City	Los Angeles	california	34.2818985	-118.439003
San Francisco	City and county	San Francisco	california	37.7748985	-122.418999
San Gabriel	City	Los Angeles	california	34.0960999	-118.106003
San Jacinto	City	Riverside	california	33.7839012	-116.959
San Joaquin	City	Fresno	california	36.6066017	-120.189003
San Jose	City	Santa Clara	california	37.3381996	-121.886002
San Juan Bautista	City	San Benito	california	36.8455009	-121.538002
San Juan Capistrano	City	Orange	california	33.5018997	-117.663002
San Leandro	City	Alameda	california	37.7248993	-122.155998
San Luis Obispo	City	San Luis Obispo	california	35.2827988	-120.660004
San Marcos	City	San Diego	california	33.1433983	-117.166
San Marino	City	Los Angeles	california	34.1213989	-118.106003
San Mateo	City	San Mateo	california	37.5629997	-122.325996
San Pablo	City	Contra Costa	california	37.962101	-122.346001
San Rafael	City	Marin	california	37.9734993	-122.530998
San Ramon	City	Contra Costa	california	37.7798996	-121.977997
Sand City	City	Monterey	california	36.6171989	-121.848
Sanger	City	Fresno	california	36.7080002	-119.556
Santa Ana	City	Orange	california	33.7454987	-117.867996
Santa Barbara	City	Santa Barbara	california	34.4207993	-119.697998
Santa Clara	City	Santa Clara	california	37.3540993	-121.955002
Santa Clarita	City	Los Angeles	california	34.3917007	-118.542999
Santa Cruz	City	Santa Cruz	california	36.9740982	-122.030998
Santa Fe Springs	City	Los Angeles	california	33.9472008	-118.084999
Santa Maria	City	Santa Barbara	california	34.9529991	-120.435997
Santa Monica	City	Los Angeles	california	34.0195007	-118.490997
Santa Paula	City	Ventura	california	34.3541985	-119.058998
Santa Rosa	City	Sonoma	california	38.4403992	-122.713997
Santee	City	San Diego	california	32.8384018	-116.973999
Saratoga	City	Santa Clara	california	37.2638016	-122.023003
Sausalito	City	Marin	california	37.8591003	-122.485001
Scotts Valley	City	Santa Cruz	california	37.0511017	-122.014999
Seal Beach	City	Orange	california	33.7414017	-118.105003
Seaside	City	Monterey	california	36.6148987	-121.821999
Sebastopol	City	Sonoma	california	38.4020996	-122.823997
Selma	City	Fresno	california	36.5708008	-119.612
Shafter	City	Kern	california	35.5004997	-119.272003
Shasta Lake	City	Shasta	california	40.6804008	-122.371002
Sierra Madre	City	Los Angeles	california	34.1617012	-118.053001
Signal Hill	City	Los Angeles	california	33.8045006	-118.167999
Simi Valley	City	Ventura	california	34.2694016	-118.780998
Solana Beach	City	San Diego	california	32.9911995	-117.271004
Soledad	City	Monterey	california	36.4247017	-121.325996
Solvang	City	Santa Barbara	california	34.5957985	-120.138
Sonoma	City	Sonoma	california	38.2919006	-122.458
Sonora	City	Tuolumne	california	37.9828987	-120.382004
South El Monte	City	Los Angeles	california	34.0519981	-118.046997
South Gate	City	Los Angeles	california	33.9547005	-118.211998
South Lake Tahoe	City	El Dorado	california	38.9398994	-119.976997
South Pasadena	City	Los Angeles	california	34.1161003	-118.150002
South San Francisco	City	San Mateo	california	37.6547012	-122.407997
Stanton	City	Orange	california	33.8028984	-117.992996
Stockton	City	San Joaquin	california	37.9576988	-121.291
Suisun City	City	Solano	california	38.2382011	-122.040001
Sunnyvale	City	Santa Clara	california	37.3688011	-122.036003
Susanville	City	Lassen	california	40.4163017	-120.653
Sutter Creek	City	Amador	california	38.3930016	-120.802002
Taft	City	Kern	california	35.1425018	-119.457001
Tehachapi	City	Kern	california	35.1321983	-118.448997
Tehama	City	Tehama	california	40.0270996	-122.123001
Temecula	City	Riverside	california	33.4935989	-117.148003
Temple City	City	Los Angeles	california	34.1072006	-118.057999
Thousand Oaks	City	Ventura	california	34.1706009	-118.837997
Tiburon	Town	Marin	california	37.8735008	-122.457001
Torrance	City	Los Angeles	california	33.8358002	-118.341003
Tracy	City	San Joaquin	california	37.7397003	-121.425003
Trinidad	City	Humboldt	california	41.0592995	-124.142998
Truckee	Town	Nevada	california	39.3279991	-120.182999
Tulare	City	Tulare	california	36.2076988	-119.347
Tulelake	City	Siskiyou	california	41.9560013	-121.476997
Turlock	City	Stanislaus	california	37.4947014	-120.847
Tustin	City	Orange	california	33.7420006	-117.823997
Twentynine Palms	City	San Bernardino	california	34.135601	-116.054001
Ukiah	City	Mendocino	california	39.1501999	-123.208
Union City	City	Alameda	california	37.593399	-122.043999
Upland	City	San Bernardino	california	34.0974998	-117.648003
Vacaville	City	Solano	california	38.3566017	-121.987999
Vallejo	City	Solano	california	38.1040993	-122.257004
Ventura	City	Ventura	california	34.2804985	-119.294998
Vernon	City	Los Angeles	california	34.0038986	-118.230003
Victorville	City	San Bernardino	california	34.5362015	-117.292999
Villa Park	City	Orange	california	33.8139992	-117.821999
Visalia	City	Tulare	california	36.3302002	-119.292
Vista	City	San Diego	california	33.2000008	-117.242996
Walnut	City	Los Angeles	california	34.0203018	-117.864998
Walnut Creek	City	Contra Costa	california	37.910099	-122.065002
Wasco	City	Kern	california	35.594101	-119.341003
Waterford	City	Stanislaus	california	37.6413002	-120.760002
Watsonville	City	Santa Cruz	california	36.9101982	-121.757004
Weed	City	Siskiyou	california	41.4225998	-122.386002
West Covina	City	Los Angeles	california	34.0685997	-117.939003
West Hollywood	City	Los Angeles	california	34.0900002	-118.362
West Sacramento	City	Yolo	california	38.5805016	-121.529999
Westlake Village	City	Los Angeles	california	34.1465988	-118.806999
Westminster	City	Orange	california	33.759201	-117.989998
Westmorland	City	Imperial	california	33.0373001	-115.621002
Wheatland	City	Yuba	california	39.0098991	-121.422997
Whittier	City	Los Angeles	california	33.9791985	-118.032997
Wildomar	City	Riverside	california	33.5988998	-117.279999
Williams	City	Colusa	california	39.1545982	-122.149002
Willits	City	Mendocino	california	39.4095993	-123.356003
Willows	City	Glenn	california	39.5242996	-122.194
Windsor	Town	Sonoma	california	38.5471001	-122.816002
Winters	City	Yolo	california	38.5248985	-121.971001
Woodlake	City	Tulare	california	36.4136009	-119.098999
Woodland	City	Yolo	california	38.6785011	-121.773003
Woodside	Town	San Mateo	california	37.4299011	-122.253998
Yorba Linda	City	Orange	california	33.8885002	-117.813004
Yountville	Town	Napa	california	38.4015999	-122.361
Yreka	City	Siskiyou	california	41.7354012	-122.634003
Yuba City	City	Sutter	california	39.1403999	-121.616997
Yucaipa	City	San Bernardino	california	34.0335999	-117.042999
Yucca Valley	Town	San Bernardino	california	34.1142006	-116.431999
Adelanto	City	San Bernardino	california	34.5828018	-117.408997
Agoura Hills	City	Los Angeles	california	34.1533012	-118.762001
Alameda	City	Alameda	california	37.7652016	-122.241997
Albany	City	Alameda	california	37.8869019	-122.297997
Alhambra	City	Los Angeles	california	34.0952988	-118.126999
Aliso Viejo	City	Orange	california	33.5685005	-117.725998
Alturas	City	Modoc	california	41.4870987	-120.542
Amador City	City	Amador	california	38.4193993	-120.823997
American Canyon	City	Napa	california	38.1749001	-122.261002
Anaheim	City	Orange	california	33.8366013	-117.914001
Anderson	City	Shasta	california	40.4482002	-122.297997
Angels Camp	City	Calaveras	california	38.0677986	-120.539001
Antioch	City	Contra Costa	california	38.0049019	-121.806
Apple Valley	Town	San Bernardino	california	34.5008011	-117.185997
Arcadia	City	Los Angeles	california	34.1397018	-118.035004
Arcata	City	Humboldt	california	40.8665009	-124.083
Arroyo Grande	City	San Luis Obispo	california	35.1185989	-120.591003
Artesia	City	Los Angeles	california	33.865799	-118.083
Arvin	City	Kern	california	35.2018013	-118.833
Atascadero	City	San Luis Obispo	california	35.489399	-120.670998
Atherton	Town	San Mateo	california	37.4612999	-122.197998
Atwater	City	Merced	california	37.3476982	-120.609001
Auburn	City	Placer	california	38.8965988	-121.077003
Avalon	City	Los Angeles	california	33.3428001	-118.328003
Avenal	City	Kings	california	36.0041008	-120.128998
Azusa	City	Los Angeles	california	34.1335983	-117.907997
Bakersfield	City	Kern	california	35.3732986	-119.018997
Baldwin Park	City	Los Angeles	california	34.0853004	-117.960999
Banning	City	Riverside	california	33.9255981	-116.875999
Barstow	City	San Bernardino	california	34.8958015	-117.016998
Beaumont	City	Riverside	california	33.9295006	-116.976997
Bell	City	Los Angeles	california	33.9775009	-118.186996
Bell Gardens	City	Los Angeles	california	33.9653015	-118.151001
Bellflower	City	Los Angeles	california	33.8816986	-118.116997
Belmont	City	San Mateo	california	37.5201988	-122.276001
Belvedere	City	Marin	california	37.8726997	-122.463997
Benicia	City	Solano	california	38.0494003	-122.158997
Berkeley	City	Alameda	california	37.8716011	-122.273003
Beverly Hills	City	Los Angeles	california	34.0736008	-118.400002
Big Bear Lake	City	San Bernardino	california	34.2439003	-116.911003
Biggs	City	Butte	california	39.4123993	-121.712997
Bishop	City	Inyo	california	37.3614006	-118.400002
Blue Lake	City	Humboldt	california	40.8829002	-123.984001
Blythe	City	Riverside	california	33.6178017	-114.587997
Bradbury	City	Los Angeles	california	34.1469002	-117.971001
Brawley	City	Imperial	california	32.9786987	-115.529999
Brea	City	Orange	california	33.9165001	-117.900002
Brentwood	City	Contra Costa	california	37.9319	-121.695999
Brisbane	City	San Mateo	california	37.6808014	-122.400002
Buellton	City	Santa Barbara	california	34.6136017	-120.193001
Buena Park	City	Orange	california	33.8674011	-117.998001
Burbank	City	Los Angeles	california	34.1808014	-118.308998
Burlingame	City	San Mateo	california	37.5778999	-122.348
Calabasas	City	Los Angeles	california	34.1366997	-118.661003
Calexico	City	Imperial	california	32.6789017	-115.499001
California City	City	Kern	california	35.1258011	-117.986
Calimesa	City	Riverside	california	34.0038986	-117.061996
Calipatria	City	Imperial	california	33.1255989	-115.514
Calistoga	City	Napa	california	38.5788002	-122.580002
Camarillo	City	Ventura	california	34.2164001	-119.038002
Campbell	City	Santa Clara	california	37.2872009	-121.949997
Canyon Lake	City	Riverside	california	33.6850014	-117.273003
Capitola	City	Santa Cruz	california	36.9752007	-121.953003
Carlsbad	City	San Diego	california	33.1581001	-117.350998
Carmel-by-the-Sea	City	Monterey	california	36.5551987	-121.922997
Carpinteria	City	Santa Barbara	california	34.3988991	-119.517998
Carson	City	Los Angeles	california	33.8316994	-118.281998
Cathedral City	City	Riverside	california	33.7804985	-116.467003
Ceres	City	Stanislaus	california	37.5948982	-120.958
Cerritos	City	Los Angeles	california	33.8582993	-118.065002
Chico	City	Butte	california	39.7285004	-121.836998
Chino	City	San Bernardino	california	34.0121994	-117.689003
Chino Hills	City	San Bernardino	california	33.9897995	-117.733002
Chowchilla	City	Madera	california	37.1230011	-120.260002
Chula Vista	City	San Diego	california	32.6400986	-117.084
Citrus Heights	City	Sacramento	california	38.7070999	-121.280998
Claremont	City	Los Angeles	california	34.0966988	-117.720001
Clayton	City	Contra Costa	california	37.9410019	-121.935997
Clearlake	City	Lake	california	38.9581985	-122.625999
Cloverdale	City	Sonoma	california	38.8055	-123.016998
Clovis	City	Fresno	california	36.8251991	-119.703003
Coachella	City	Riverside	california	33.6803017	-116.174004
Coalinga	City	Fresno	california	36.1397018	-120.360001
Colfax	City	Placer	california	39.1007004	-120.953003
Colma	Town	San Mateo	california	37.676899	-122.459999
Colton	City	San Bernardino	california	34.0738983	-117.314003
Colusa	City	Colusa	california	39.2142982	-122.009003
Commerce	City	Los Angeles	california	34.0005989	-118.160004
Compton	City	Los Angeles	california	33.8958015	-118.220001
Concord	City	Contra Costa	california	37.9780006	-122.030998
Corcoran	City	Kings	california	36.0979996	-119.559998
Corning	City	Tehama	california	39.9277	-122.179001
Corona	City	Riverside	california	33.8753014	-117.566002
Coronado	City	San Diego	california	32.6859016	-117.182999
Corte Madera	Town	Marin	california	37.925499	-122.527
Costa Mesa	City	Orange	california	33.641201	-117.918999
Cotati	City	Sonoma	california	38.3292999	-122.709999
Covina	City	Los Angeles	california	34.0900002	-117.889999
Crescent City	City	Del Norte	california	41.7556992	-124.203003
Cudahy	City	Los Angeles	california	33.9606018	-118.184998
Culver City	City	Los Angeles	california	34.0210991	-118.396004
Cupertino	City	Santa Clara	california	37.3230019	-122.031998
Cypress	City	Orange	california	33.8168983	-118.037003
Daly City	City	San Mateo	california	37.6879005	-122.470001
Dana Point	City	Orange	california	33.4672012	-117.697998
Danville	Town	Contra Costa	california	37.8216019	-122
Davis	City	Yolo	california	38.544899	-121.740997
Del Mar	City	San Diego	california	32.9594994	-117.264999
Del Rey Oaks	City	Monterey	california	36.5932999	-121.834999
Delano	City	Kern	california	35.7687988	-119.247002
Desert Hot Springs	City	Riverside	california	33.9611015	-116.501999
Diamond Bar	City	Los Angeles	california	34.0285988	-117.809998
Dinuba	City	Tulare	california	36.5433006	-119.387001
Dixon	City	Solano	california	38.4454994	-121.822998
Dorris	City	Siskiyou	california	41.9673996	-121.917999
Dos Palos	City	Merced	california	36.9860992	-120.626999
Downey	City	Los Angeles	california	33.9401016	-118.133003
Duarte	City	Los Angeles	california	34.1394997	-117.976997
Dublin	City	Alameda	california	37.7022018	-121.935997
Dunsmuir	City	Siskiyou	california	41.2081985	-122.272003
East Palo Alto	City	San Mateo	california	37.4687996	-122.140999
Eastvale	City	Riverside	california	33.9524994	-117.584999
El Cajon	City	San Diego	california	32.7947998	-116.962997
El Centro	City	Imperial	california	32.7919998	-115.563004
El Cerrito	City	Contra Costa	california	37.9160995	-122.310997
El Monte	City	Los Angeles	california	34.0685997	-118.028
El Segundo	City	Los Angeles	california	33.9192009	-118.416
Elk Grove	City	Sacramento	california	38.4087982	-121.372002
Emeryville	City	Alameda	california	37.8312988	-122.285004
Encinitas	City	San Diego	california	33.0369987	-117.292
Escalon	City	San Joaquin	california	37.7974014	-120.997002
Escondido	City	San Diego	california	33.1192017	-117.085999
Etna	City	Siskiyou	california	41.4567986	-122.894997
Eureka	City	Humboldt	california	40.8021011	-124.164001
Exeter	City	Tulare	california	36.2961006	-119.141998
Fairfax	Town	Marin	california	37.9870987	-122.588997
Fairfield	City	Solano	california	38.2494011	-122.040001
Farmersville	City	Tulare	california	36.297699	-119.207001
Ferndale	City	Humboldt	california	40.5761986	-124.264
Fillmore	City	Ventura	california	34.3992004	-118.917999
Firebaugh	City	Fresno	california	36.858799	-120.456001
Folsom	City	Sacramento	california	38.6780014	-121.176003
Fontana	City	San Bernardino	california	34.0922012	-117.434998
Fort Bragg	City	Mendocino	california	39.4457016	-123.805
Fort Jones	City	Siskiyou	california	41.6076012	-122.839996
Fortuna	City	Humboldt	california	40.5982018	-124.156998
Foster City	City	San Mateo	california	37.5584984	-122.271004
Fountain Valley	City	Orange	california	33.7089996	-117.954002
Fowler	City	Fresno	california	36.6305008	-119.678001
Fremont	City	Alameda	california	37.5483017	-121.988998
Fresno	City	Fresno	california	36.7378006	-119.787003
Fullerton	City	Orange	california	33.8703995	-117.924004
Galt	City	Sacramento	california	38.2546005	-121.300003
Garden Grove	City	Orange	california	33.7742996	-117.938004
Gardena	City	Los Angeles	california	33.8883018	-118.308998
Gilroy	City	Santa Clara	california	37.0057983	-121.568001
Glendale	City	Los Angeles	california	34.1425018	-118.254997
Glendora	City	Los Angeles	california	34.1361008	-117.864998
Goleta	City	Santa Barbara	california	34.4357986	-119.828003
Gonzales	City	Monterey	california	36.5065994	-121.444
Grand Terrace	City	San Bernardino	california	34.0339012	-117.314003
Grass Valley	City	Nevada	california	39.219101	-121.060997
Greenfield	City	Monterey	california	36.3208008	-121.244003
Gridley	City	Butte	california	39.3638	-121.694
Grover Beach	City	San Luis Obispo	california	35.1216011	-120.621002
Guadalupe	City	Santa Barbara	california	34.9715996	-120.571999
Gustine	City	Merced	california	37.2577019	-120.999001
Half Moon Bay	City	San Mateo	california	37.4636002	-122.429001
Hanford	City	Kings	california	36.3274002	-119.646004
Hawaiian Gardens	City	Los Angeles	california	33.8314018	-118.072998
Hawthorne	City	Los Angeles	california	33.9164009	-118.352997
Hayward	City	Alameda	california	37.6688004	-122.081001
Healdsburg	City	Sonoma	california	38.6105003	-122.869003
Hemet	City	Riverside	california	33.7475014	-116.972
Hercules	City	Contra Costa	california	38.0171013	-122.289001
Hermosa Beach	City	Los Angeles	california	33.8622017	-118.400002
Hesperia	City	San Bernardino	california	34.4263992	-117.301003
Hidden Hills	City	Los Angeles	california	34.1603012	-118.652
Highland	City	San Bernardino	california	34.1282997	-117.209
Hillsborough	Town	San Mateo	california	37.5741005	-122.378998
Hollister	City	San Benito	california	36.8525009	-121.402
Holtville	City	Imperial	california	32.8111992	-115.379997
Hughson	City	Stanislaus	california	37.6026993	-120.865997
Huntington Beach	City	Orange	california	33.6595001	-117.999001
Huntington Park	City	Los Angeles	california	33.9817009	-118.224998
Huron	City	Fresno	california	36.2027016	-120.102997
Imperial	City	Imperial	california	32.847599	-115.569
Imperial Beach	City	San Diego	california	32.5839005	-117.112999
Indian Wells	City	Riverside	california	33.7176018	-116.341003
Indio	City	Riverside	california	33.7206001	-116.216003
Industry	City	Los Angeles	california	34.0196991	-117.959
Inglewood	City	Los Angeles	california	33.9617004	-118.352997
Ione	City	Amador	california	38.3526993	-120.932999
Irvine	City	Orange	california	33.6846008	-117.827003
Irwindale	City	Los Angeles	california	34.1069984	-117.934998
Isleton	City	Sacramento	california	38.1618996	-121.612
Jackson	City	Amador	california	38.3488007	-120.774002
Jurupa Valley	City	Riverside	california	33.9972	-117.485001
Kerman	City	Fresno	california	36.7235985	-120.059998
King City	City	Monterey	california	36.2126999	-121.125999
Kingsburg	City	Fresno	california	36.5138016	-119.554001
La CaÃ±ada Flintridge	City	Los Angeles	california	34.2067986	-118.199997
La Habra	City	Orange	california	33.9319	-117.945999
La Habra Heights	City	Los Angeles	california	33.9608002	-117.950996
La Mesa	City	San Diego	california	32.7677994	-117.023003
La Mirada	City	Los Angeles	california	33.9171982	-118.012001
La Palma	City	Orange	california	33.8462982	-118.045998
La Puente	City	Los Angeles	california	34.0200005	-117.949997
La Quinta	City	Riverside	california	33.6633987	-116.309998
La Verne	City	Los Angeles	california	34.1007996	-117.767998
Lafayette	City	Contra Costa	california	37.8857994	-122.117996
Laguna Beach	City	Orange	california	33.5427017	-117.785004
Laguna Hills	City	Orange	california	33.5915985	-117.698997
Laguna Niguel	City	Orange	california	33.5237007	-117.714996
Laguna Woods	City	Orange	california	33.610199	-117.724998
Lake Elsinore	City	Riverside	california	33.6680984	-117.327003
Lake Forest	City	Orange	california	33.6469002	-117.685997
Lakeport	City	Lake	california	39.0429001	-122.916
Lakewood	City	Los Angeles	california	33.8535995	-118.134003
Lancaster	City	Los Angeles	california	34.6867981	-118.153999
Larkspur	City	Marin	california	37.9341011	-122.535004
Lathrop	City	San Joaquin	california	37.8227005	-121.277
Lawndale	City	Los Angeles	california	33.8871994	-118.352997
Lemon Grove	City	San Diego	california	32.7425003	-117.030998
Lemoore	City	Kings	california	36.3008003	-119.782997
Lincoln	City	Placer	california	38.8916016	-121.292999
Lindsay	City	Tulare	california	36.2029991	-119.087997
Live Oak	City	Sutter	california	39.2756996	-121.660004
Livermore	City	Alameda	california	37.6819	-121.767998
Livingston	City	Merced	california	37.3869019	-120.723999
Lodi	City	San Joaquin	california	38.1341019	-121.272003
Loma Linda	City	San Bernardino	california	34.0483017	-117.261002
Lomita	City	Los Angeles	california	33.7921982	-118.315002
Lompoc	City	Santa Barbara	california	34.6390991	-120.458
Long Beach	City	Los Angeles	california	33.7700996	-118.194
Loomis	Town	Placer	california	38.8213005	-121.193001
Los Alamitos	City	Orange	california	33.8031998	-118.071999
Los Altos	City	Santa Clara	california	37.3852005	-122.113998
Los Altos Hills	Town	Santa Clara	california	37.3796997	-122.137001
Los Angeles	City	Los Angeles	california	34.0522003	-118.244003
Los Banos	City	Merced	california	37.0583	-120.849998
Los Gatos	Town	Santa Clara	california	37.2358017	-121.961998
Loyalton	City	Sierra	california	39.6763	-120.240997
Lynwood	City	Los Angeles	california	33.9303017	-118.210999
Madera	City	Madera	california	36.9612999	-120.060997
Malibu	City	Los Angeles	california	34.0259018	-118.779999
Mammoth Lakes	Town	Mono	california	37.6484985	-118.972
Manhattan Beach	City	Los Angeles	california	33.8847008	-118.411003
Manteca	City	San Joaquin	california	37.7974014	-121.216003
Maricopa	City	Kern	california	35.0588989	-119.401001
Marina	City	Monterey	california	36.6843987	-121.802002
Martinez	City	Contra Costa	california	38.0194016	-122.134003
Marysville	City	Yuba	california	39.1456985	-121.591003
Maywood	City	Los Angeles	california	33.9866982	-118.184998
McFarland	City	Kern	california	35.6780014	-119.228996
Mendota	City	Fresno	california	36.7536011	-120.382004
Menifee	City	Riverside	california	33.6971016	-117.184998
Menlo Park	City	San Mateo	california	37.4529991	-122.181999
Merced	City	Merced	california	37.3022003	-120.483002
Mill Valley	City	Marin	california	37.9059982	-122.544998
Millbrae	City	San Mateo	california	37.5984993	-122.387001
Milpitas	City	Santa Clara	california	37.4323006	-121.900002
Mission Viejo	City	Orange	california	33.5969009	-117.657997
Modesto	City	Stanislaus	california	37.6390991	-120.997002
Monrovia	City	Los Angeles	california	34.1442986	-118.001999
Montague	City	Siskiyou	california	41.728199	-122.528
Montclair	City	San Bernardino	california	34.0774994	-117.690002
Monte Sereno	City	Santa Clara	california	37.2363014	-121.991997
Montebello	City	Los Angeles	california	34.0164986	-118.113998
Monterey	City	Monterey	california	36.6002007	-121.894997
Monterey Park	City	Los Angeles	california	34.0625	-118.123001
Moorpark	City	Ventura	california	34.2855988	-118.882004
Moraga	Town	Contra Costa	california	37.8348999	-122.129997
Moreno Valley	City	Riverside	california	33.9425011	-117.230003
Morgan Hill	City	Santa Clara	california	37.1305008	-121.653999
Morro Bay	City	San Luis Obispo	california	35.3658981	-120.849998
Mount Shasta	City	Siskiyou	california	41.3098984	-122.310997
Mountain View	City	Santa Clara	california	37.3861008	-122.084
Murrieta	City	Riverside	california	33.5539017	-117.213997
Napa	City	Napa	california	38.2975006	-122.287003
National City	City	San Diego	california	32.6781006	-117.098999
Needles	City	San Bernardino	california	34.8480988	-114.613998
Nevada City	City	Nevada	california	39.2616005	-121.015999
Newark	City	Alameda	california	37.5297012	-122.040001
Newman	City	Stanislaus	california	37.3138008	-121.021004
Newport Beach	City	Orange	california	33.6189003	-117.93
Norco	City	Riverside	california	33.9310989	-117.549004
Norwalk	City	Los Angeles	california	33.9021988	-118.082001
Novato	City	Marin	california	38.107399	-122.57
Oakdale	City	Stanislaus	california	37.7666016	-120.847
Oakland	City	Alameda	california	37.8044014	-122.271004
Oakley	City	Contra Costa	california	37.9973984	-121.711998
Oceanside	City	San Diego	california	33.1959	-117.378998
Ojai	City	Ventura	california	34.4480019	-119.242996
Ontario	City	San Bernardino	california	34.0633011	-117.651001
Orange	City	Orange	california	33.787899	-117.852997
Orange Cove	City	Fresno	california	36.6244011	-119.314003
Orinda	City	Contra Costa	california	37.8771019	-122.18
Orland	City	Glenn	california	39.7473984	-122.195999
Oroville	City	Butte	california	39.5138016	-121.556
Oxnard	City	Ventura	california	34.1974983	-119.177002
Pacific Grove	City	Monterey	california	36.6176987	-121.917
Pacifica	City	San Mateo	california	37.6138	-122.487
Palm Desert	City	Riverside	california	33.7221985	-116.374001
Palm Springs	City	Riverside	california	33.8302994	-116.544998
Palmdale	City	Los Angeles	california	34.5793991	-118.115997
Palo Alto	City	Santa Clara	california	37.4418983	-122.142998
Palos Verdes Estates	City	Los Angeles	california	33.8005981	-118.389999
Paradise	Town	Butte	california	39.7596016	-121.622002
Paramount	City	Los Angeles	california	33.8894997	-118.160004
Parlier	City	Fresno	california	36.611599	-119.527
Pasadena	City	Los Angeles	california	34.1478004	-118.144997
Paso Robles	City	San Luis Obispo	california	35.6369019	-120.654999
Patterson	City	Stanislaus	california	37.4715996	-121.129997
Perris	City	Riverside	california	33.7825012	-117.228996
Petaluma	City	Sonoma	california	38.232399	-122.637001
Pico Rivera	City	Los Angeles	california	33.9831009	-118.097
Piedmont	City	Alameda	california	37.8244019	-122.232002
Pinole	City	Contra Costa	california	38.0043983	-122.299004
Pismo Beach	City	San Luis Obispo	california	35.1427994	-120.640999
Pittsburg	City	Contra Costa	california	38.0279999	-121.885002
Placentia	City	Orange	california	33.8711014	-117.862999
Placerville	City	El Dorado	california	38.729599	-120.799004
Pleasant Hill	City	Contra Costa	california	37.9480019	-122.060997
Pleasanton	City	Alameda	california	37.6623993	-121.875
Plymouth	City	Amador	california	38.4818993	-120.845001
Point Arena	City	Mendocino	california	38.9087982	-123.693001
Pomona	City	Los Angeles	california	34.0550995	-117.75
Port Hueneme	City	Ventura	california	34.1478004	-119.195
Porterville	City	Tulare	california	36.0652008	-119.016998
Portola	City	Plumas	california	39.8105011	-120.469002
Portola Valley	Town	San Mateo	california	37.3841019	-122.235001
Poway	City	San Diego	california	32.9627991	-117.036003
Rancho Cordova	City	Sacramento	california	38.5890999	-121.303001
Rancho Cucamonga	City	San Bernardino	california	34.1063995	-117.593002
Rancho Mirage	City	Riverside	california	33.7397003	-116.413002
Rancho Palos Verdes	City	Los Angeles	california	33.7444992	-118.387001
Rancho Santa Margarita	City	Orange	california	33.6402016	-117.602997
Red Bluff	City	Tehama	california	40.1785011	-122.236
Redding	City	Shasta	california	40.5864983	-122.391998
Redlands	City	San Bernardino	california	34.0555992	-117.182999
Redondo Beach	City	Los Angeles	california	33.8492012	-118.388
Redwood City	City	San Mateo	california	37.485199	-122.236
Reedley	City	Fresno	california	36.5962982	-119.449997
Rialto	City	San Bernardino	california	34.1063995	-117.370003
Richmond	City	Contra Costa	california	37.9357986	-122.348
Ridgecrest	City	Kern	california	35.6225014	-117.670998
Rio Dell	City	Humboldt	california	40.4992981	-124.106003
Rio Vista	City	Solano	california	38.1557999	-121.691002
Ripon	City	San Joaquin	california	37.7394981	-121.135002
Riverbank	City	Stanislaus	california	37.7360001	-120.934998
Riverside	City	Riverside	california	33.9805984	-117.375
Rocklin	City	Placer	california	38.790699	-121.236
Rohnert Park	City	Sonoma	california	38.3395996	-122.700996
Rolling Hills	City	Los Angeles	california	33.757	-118.353996
Rolling Hills Estates	City	Los Angeles	california	33.7877998	-118.358002
Rosemead	City	Los Angeles	california	34.0806007	-118.072998
Roseville	City	Placer	california	38.7521019	-121.288002
Ross	Town	Marin	california	37.9623985	-122.555
Sacramento	City	Sacramento	california	38.5816002	-121.494003
St. Helena	City	Napa	california	38.5051994	-122.470001
Salinas	City	Monterey	california	36.6777	-121.655998
San Anselmo	Town	Marin	california	37.9746017	-122.561996
San Bernardino	City	San Bernardino	california	34.1082993	-117.290001
San Bruno	City	San Mateo	california	37.6305008	-122.411003
San Carlos	City	San Mateo	california	37.5071983	-122.261002
San Clemente	City	Orange	california	33.4273987	-117.612999
San Diego	City	San Diego	california	32.7156982	-117.161003
San Dimas	City	Los Angeles	california	34.1067009	-117.806999
San Fernando	City	Los Angeles	california	34.2818985	-118.439003
San Francisco	City and county	San Francisco	california	37.7748985	-122.418999
San Gabriel	City	Los Angeles	california	34.0960999	-118.106003
San Jacinto	City	Riverside	california	33.7839012	-116.959
San Joaquin	City	Fresno	california	36.6066017	-120.189003
San Jose	City	Santa Clara	california	37.3381996	-121.886002
San Juan Bautista	City	San Benito	california	36.8455009	-121.538002
San Juan Capistrano	City	Orange	california	33.5018997	-117.663002
San Leandro	City	Alameda	california	37.7248993	-122.155998
San Luis Obispo	City	San Luis Obispo	california	35.2827988	-120.660004
San Marcos	City	San Diego	california	33.1433983	-117.166
San Marino	City	Los Angeles	california	34.1213989	-118.106003
San Mateo	City	San Mateo	california	37.5629997	-122.325996
San Pablo	City	Contra Costa	california	37.962101	-122.346001
San Rafael	City	Marin	california	37.9734993	-122.530998
San Ramon	City	Contra Costa	california	37.7798996	-121.977997
Sand City	City	Monterey	california	36.6171989	-121.848
Sanger	City	Fresno	california	36.7080002	-119.556
Santa Ana	City	Orange	california	33.7454987	-117.867996
Santa Barbara	City	Santa Barbara	california	34.4207993	-119.697998
Santa Clara	City	Santa Clara	california	37.3540993	-121.955002
Santa Clarita	City	Los Angeles	california	34.3917007	-118.542999
Santa Cruz	City	Santa Cruz	california	36.9740982	-122.030998
Santa Fe Springs	City	Los Angeles	california	33.9472008	-118.084999
Santa Maria	City	Santa Barbara	california	34.9529991	-120.435997
Santa Monica	City	Los Angeles	california	34.0195007	-118.490997
Santa Paula	City	Ventura	california	34.3541985	-119.058998
Santa Rosa	City	Sonoma	california	38.4403992	-122.713997
Santee	City	San Diego	california	32.8384018	-116.973999
Saratoga	City	Santa Clara	california	37.2638016	-122.023003
Sausalito	City	Marin	california	37.8591003	-122.485001
Scotts Valley	City	Santa Cruz	california	37.0511017	-122.014999
Seal Beach	City	Orange	california	33.7414017	-118.105003
Seaside	City	Monterey	california	36.6148987	-121.821999
Sebastopol	City	Sonoma	california	38.4020996	-122.823997
Selma	City	Fresno	california	36.5708008	-119.612
Shafter	City	Kern	california	35.5004997	-119.272003
Shasta Lake	City	Shasta	california	40.6804008	-122.371002
Sierra Madre	City	Los Angeles	california	34.1617012	-118.053001
Signal Hill	City	Los Angeles	california	33.8045006	-118.167999
Simi Valley	City	Ventura	california	34.2694016	-118.780998
Solana Beach	City	San Diego	california	32.9911995	-117.271004
Soledad	City	Monterey	california	36.4247017	-121.325996
Solvang	City	Santa Barbara	california	34.5957985	-120.138
Sonoma	City	Sonoma	california	38.2919006	-122.458
Sonora	City	Tuolumne	california	37.9828987	-120.382004
South El Monte	City	Los Angeles	california	34.0519981	-118.046997
South Gate	City	Los Angeles	california	33.9547005	-118.211998
South Lake Tahoe	City	El Dorado	california	38.9398994	-119.976997
South Pasadena	City	Los Angeles	california	34.1161003	-118.150002
South San Francisco	City	San Mateo	california	37.6547012	-122.407997
Stanton	City	Orange	california	33.8028984	-117.992996
Stockton	City	San Joaquin	california	37.9576988	-121.291
Suisun City	City	Solano	california	38.2382011	-122.040001
Sunnyvale	City	Santa Clara	california	37.3688011	-122.036003
Susanville	City	Lassen	california	40.4163017	-120.653
Sutter Creek	City	Amador	california	38.3930016	-120.802002
Taft	City	Kern	california	35.1425018	-119.457001
Tehachapi	City	Kern	california	35.1321983	-118.448997
Tehama	City	Tehama	california	40.0270996	-122.123001
Temecula	City	Riverside	california	33.4935989	-117.148003
Temple City	City	Los Angeles	california	34.1072006	-118.057999
Thousand Oaks	City	Ventura	california	34.1706009	-118.837997
Tiburon	Town	Marin	california	37.8735008	-122.457001
Torrance	City	Los Angeles	california	33.8358002	-118.341003
Tracy	City	San Joaquin	california	37.7397003	-121.425003
Trinidad	City	Humboldt	california	41.0592995	-124.142998
Truckee	Town	Nevada	california	39.3279991	-120.182999
Tulare	City	Tulare	california	36.2076988	-119.347
Tulelake	City	Siskiyou	california	41.9560013	-121.476997
Turlock	City	Stanislaus	california	37.4947014	-120.847
Tustin	City	Orange	california	33.7420006	-117.823997
Twentynine Palms	City	San Bernardino	california	34.135601	-116.054001
Ukiah	City	Mendocino	california	39.1501999	-123.208
Union City	City	Alameda	california	37.593399	-122.043999
Upland	City	San Bernardino	california	34.0974998	-117.648003
Vacaville	City	Solano	california	38.3566017	-121.987999
Vallejo	City	Solano	california	38.1040993	-122.257004
Ventura	City	Ventura	california	34.2804985	-119.294998
Vernon	City	Los Angeles	california	34.0038986	-118.230003
Victorville	City	San Bernardino	california	34.5362015	-117.292999
Villa Park	City	Orange	california	33.8139992	-117.821999
Visalia	City	Tulare	california	36.3302002	-119.292
Vista	City	San Diego	california	33.2000008	-117.242996
Walnut	City	Los Angeles	california	34.0203018	-117.864998
Walnut Creek	City	Contra Costa	california	37.910099	-122.065002
Wasco	City	Kern	california	35.594101	-119.341003
Waterford	City	Stanislaus	california	37.6413002	-120.760002
Watsonville	City	Santa Cruz	california	36.9101982	-121.757004
Weed	City	Siskiyou	california	41.4225998	-122.386002
West Covina	City	Los Angeles	california	34.0685997	-117.939003
West Hollywood	City	Los Angeles	california	34.0900002	-118.362
West Sacramento	City	Yolo	california	38.5805016	-121.529999
Westlake Village	City	Los Angeles	california	34.1465988	-118.806999
Westminster	City	Orange	california	33.759201	-117.989998
Westmorland	City	Imperial	california	33.0373001	-115.621002
Wheatland	City	Yuba	california	39.0098991	-121.422997
Whittier	City	Los Angeles	california	33.9791985	-118.032997
Wildomar	City	Riverside	california	33.5988998	-117.279999
Williams	City	Colusa	california	39.1545982	-122.149002
Willits	City	Mendocino	california	39.4095993	-123.356003
Willows	City	Glenn	california	39.5242996	-122.194
Windsor	Town	Sonoma	california	38.5471001	-122.816002
Winters	City	Yolo	california	38.5248985	-121.971001
Woodlake	City	Tulare	california	36.4136009	-119.098999
Woodland	City	Yolo	california	38.6785011	-121.773003
Woodside	Town	San Mateo	california	37.4299011	-122.253998
Yorba Linda	City	Orange	california	33.8885002	-117.813004
Yountville	Town	Napa	california	38.4015999	-122.361
Yreka	City	Siskiyou	california	41.7354012	-122.634003
Yuba City	City	Sutter	california	39.1403999	-121.616997
Yucaipa	City	San Bernardino	california	34.0335999	-117.042999
Yucca Valley	Town	San Bernardino	california	34.1142006	-116.431999
\.


--
-- Data for Name: california_weather; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.california_weather (city, type, county, state, lat, lng, uv_index, aqi, category, dominant_pollutant, date, temperature, cloud, pressure, wind_speed, rain, date_scraped) FROM stdin;
Adelanto	City	San Bernardino	california	34.5828018	-117.408997	2.98000002	41	Good air quality	o3	2018-12-01 06:06:00	57.1300011	75	1015	5.0999999	0	2018-11-30 22:06:00
Agoura Hills	City	Los Angeles	california	34.1533012	-118.762001	3	48	Good air quality	pm25	2018-12-01 06:06:00	63.0099983	40	1016	3.5999999	0	2018-11-30 22:06:00
Alameda	City	Alameda	california	37.7652016	-122.241997	2	61	Moderate air quality	pm25	2018-12-01 06:06:00	57.8800011	1	1020	2.0999999	1.01999998	2018-11-30 22:06:00
Albany	City	Alameda	california	37.8869019	-122.297997	1.97000003	61	Moderate air quality	pm25	2018-12-01 06:06:00	58.3499985	1	1020	2.0999999	1.01999998	2018-11-30 22:06:00
Alhambra	City	Los Angeles	california	34.0952988	-118.126999	3	66	Moderate air quality	pm25	2018-12-01 06:06:00	63.2700005	1	1015	2.0999999	0	2018-11-30 22:06:00
Aliso Viejo	City	Orange	california	33.5685005	-117.725998	3.17000008	52	Moderate air quality	pm25	2018-12-01 06:06:00	62.5299988	1	1016	0.829999983	0	2018-11-30 22:06:00
Alturas	City	Modoc	california	41.4870987	-120.542	1.51999998	30	Good air quality	o3	2018-12-01 06:06:00	33.9799995	90	1013	3.5999999	0	2018-11-30 22:06:00
Amador City	City	Amador	california	38.4193993	-120.823997	1.97000003	38	Good air quality	pm25	2018-12-01 06:06:00	50.2000008	1	1018	3.5999999	1.01999998	2018-11-30 22:06:00
American Canyon	City	Napa	california	38.1749001	-122.261002	1.91999996	33	Good air quality	pm25	2018-12-01 06:06:00	58.3899994	1	1019	2.0999999	0.50999999	2018-11-30 22:06:00
Anaheim	City	Orange	california	33.8366013	-117.914001	3.03999996	59	Moderate air quality	pm25	2018-12-01 06:06:00	62.9199982	20	1015	5.32999992	0	2018-11-30 22:06:00
Anderson	City	Shasta	california	40.4482002	-122.297997	1.57000005	71	Moderate air quality	pm25	2018-12-01 06:06:00	50.4300003	90	1016	2.0999999	0	2018-11-30 22:06:00
Angels Camp	City	Calaveras	california	38.0677986	-120.539001	2.04999995	58	Moderate air quality	pm25	2018-12-01 06:06:00	49.7999992	1	1019	1.55999994	2.67000008	2018-11-30 22:06:00
Antioch	City	Contra Costa	california	38.0049019	-121.806	1.92999995	61	Moderate air quality	pm25	2018-12-01 06:06:00	58.0299988	1	1019	3.0999999	1.16999996	2018-11-30 22:06:00
Apple Valley	Town	San Bernardino	california	34.5008011	-117.185997	3	42	Good air quality	o3	2018-12-01 06:06:00	59.5400009	1	1014	8.69999981	0	2018-11-30 22:06:00
Arcadia	City	Los Angeles	california	34.1397018	-118.035004	3	56	Moderate air quality	pm25	2018-12-01 06:06:00	62.6899986	1	1015	2.0999999	0	2018-11-30 22:06:00
Arcata	City	Humboldt	california	40.8665009	-124.083	1.46000004	21	Good air quality	o3	2018-12-01 06:06:00	48.0400009	75	1017	4.5999999	0	2018-11-30 22:06:00
Arroyo Grande	City	San Luis Obispo	california	35.1185989	-120.591003	2.74000001	41	Good air quality	pm25	2018-12-01 06:06:00	58.3499985	1	1019	1.92999995	0	2018-11-30 22:06:00
Artesia	City	Los Angeles	california	33.865799	-118.083	3.04999995	59	Moderate air quality	pm25	2018-12-01 06:06:00	63.25	20	1015	5.32999992	0	2018-11-30 22:06:00
Arvin	City	Kern	california	35.2018013	-118.833	2.77999997	70	Moderate air quality	pm25	2018-12-01 06:06:00	54.0999985	20	1018	2.0999999	0	2018-11-30 22:06:00
Atascadero	City	San Luis Obispo	california	35.489399	-120.670998	2.71000004	41	Good air quality	pm25	2018-12-01 06:06:00	58.2299995	1	1019	4.5999999	0	2018-11-30 22:06:00
Atherton	Town	San Mateo	california	37.4612999	-122.197998	2.11999989	57	Moderate air quality	pm25	2018-12-01 06:06:00	56.9500008	1	1020	3.82999992	0.920000017	2018-11-30 22:06:00
Atwater	City	Merced	california	37.3476982	-120.609001	2.19000006	76	Moderate air quality	pm25	2018-12-01 06:06:00	51.7799988	1	1019	2.0999999	4.32000017	2018-11-30 22:06:00
Auburn	City	Placer	california	38.8965988	-121.077003	1.87	37	Good air quality	pm25	2018-12-01 06:06:00	52.0200005	1	1018	3.5999999	0	2018-11-30 22:06:00
Avalon	City	Los Angeles	california	33.3428001	-118.328003	3.21000004	40	Good air quality	pm25	2018-12-01 06:06:00	64.0599976	90	1016	4.0999999	0	2018-11-30 22:06:00
Avenal	City	Kings	california	36.0041008	-120.128998	2.51999998	55	Moderate air quality	pm25	2018-12-01 06:06:00	55.2900009	1	1019	4.0999999	0	2018-11-30 22:06:00
Azusa	City	Los Angeles	california	34.1335983	-117.907997	3.01999998	64	Moderate air quality	pm25	2018-12-01 06:06:00	62.9199982	1	1016	1.46000004	0	2018-11-30 22:06:00
Bakersfield	City	Kern	california	35.3732986	-119.018997	2.71000004	114	Unhealthy for sensitive groups air quality	pm25	2018-12-01 06:06:00	56.6399994	20	1018	2.0999999	0	2018-11-30 22:06:00
Baldwin Park	City	Los Angeles	california	34.0853004	-117.960999	3.01999998	68	Moderate air quality	pm25	2018-12-01 06:06:00	62.9199982	1	1015	1.46000004	0	2018-11-30 22:06:00
Banning	City	Riverside	california	33.9255981	-116.875999	3.16000009	49	Good air quality	o3	2018-12-01 06:06:00	60.1500015	1	1016	0.709999979	0	2018-11-30 22:06:00
Barstow	City	San Bernardino	california	34.8958015	-117.016998	2.9000001	42	Good air quality	pm25	2018-12-01 06:06:00	58.3199997	1	1014	8.69999981	0	2018-11-30 22:06:00
Beaumont	City	Riverside	california	33.9295006	-116.976997	3.16000009	63	Moderate air quality	pm25	2018-12-01 06:06:00	60.7099991	1	1016	0.709999979	0	2018-11-30 22:06:00
Bell	City	Los Angeles	california	33.9775009	-118.186996	3.04999995	68	Moderate air quality	pm25	2018-12-01 06:06:00	63.25	1	1015	2.5999999	0	2018-11-30 22:06:00
Bell Gardens	City	Los Angeles	california	33.9653015	-118.151001	3.04999995	66	Moderate air quality	pm25	2018-12-01 06:06:00	63.25	20	1015	1.46000004	0	2018-11-30 22:06:00
Bellflower	City	Los Angeles	california	33.8816986	-118.116997	3.04999995	53	Moderate air quality	pm25	2018-12-01 06:06:00	63.25	20	1015	5.32999992	0	2018-11-30 22:06:00
Belmont	City	San Mateo	california	37.5201988	-122.276001	2.03999996	61	Moderate air quality	pm25	2018-12-01 06:06:00	57.7200012	1	1020	2.0999999	1.01999998	2018-11-30 22:06:00
Belvedere	City	Marin	california	37.8726997	-122.463997	1.97000003	32	Good air quality	pm25	2018-12-01 06:06:00	58.2299995	20	1020	3.0999999	1.01999998	2018-11-30 22:06:00
Benicia	City	Solano	california	38.0494003	-122.158997	1.94000006	33	Good air quality	pm25	2018-12-01 06:06:00	58.3499985	1	1020	2.0999999	0.439999998	2018-11-30 22:06:00
Berkeley	City	Alameda	california	37.8716011	-122.273003	1.97000003	62	Moderate air quality	pm25	2018-12-01 06:06:00	58.1899986	1	1020	2.0999999	1.01999998	2018-11-30 22:06:00
Beverly Hills	City	Los Angeles	california	34.0736008	-118.400002	2.98000002	59	Moderate air quality	pm25	2018-12-01 06:06:00	63.3400002	20	1015	3.0999999	0	2018-11-30 22:06:00
Big Bear Lake	City	San Bernardino	california	34.2439003	-116.911003	3.26999998	41	Good air quality	o3	2018-12-01 06:06:00	59.7400017	40	1016	2.0999999	0	2018-11-30 22:06:00
Biggs	City	Butte	california	39.4123993	-121.712997	1.74000001	52	Moderate air quality	pm25	2018-12-01 06:06:00	54.1800003	1	1017	3.0999999	0	2018-11-30 22:06:00
Bishop	City	Inyo	california	37.3614006	-118.400002	2.49000001	41	Good air quality	pm25	2018-12-01 06:06:00	32	1	1016	1.5	0	2018-11-30 22:06:00
Blue Lake	City	Humboldt	california	40.8829002	-123.984001	1.48000002	22	Good air quality	o3	2018-12-01 06:06:00	48.0400009	75	1017	4.5999999	0	2018-11-30 22:06:00
Blythe	City	Riverside	california	33.6178017	-114.587997	3.16000009	56	Moderate air quality	pm25	2018-12-01 06:06:00	64.1200027	8	1000.21002	1.58000004	0	2018-11-30 22:06:00
Bradbury	City	Los Angeles	california	34.1469002	-117.971001	3.01999998	45	Good air quality	pm25	2018-12-01 06:06:00	62.6899986	1	1016	1.46000004	0	2018-11-30 22:06:00
Brawley	City	Imperial	california	32.9786987	-115.529999	3.3900001	89	Moderate air quality	pm25	2018-12-01 06:06:00	69.5800018	1	1014	7.69999981	0	2018-11-30 22:06:00
Brea	City	Orange	california	33.9165001	-117.900002	3.03999996	59	Moderate air quality	pm25	2018-12-01 06:06:00	62.9199982	1	1015	1.46000004	0	2018-11-30 22:06:00
Brentwood	City	Contra Costa	california	37.9319	-121.695999	2.00999999	60	Moderate air quality	pm25	2018-12-01 06:06:00	57.5600014	1	1019	3.0999999	1.13	2018-11-30 22:06:00
Brisbane	City	San Mateo	california	37.6808014	-122.400002	2.03999996	34	Good air quality	pm25	2018-12-01 06:06:00	57.8499985	20	1020	3.0999999	1.01999998	2018-11-30 22:06:00
Buellton	City	Santa Barbara	california	34.6136017	-120.193001	2.86999989	48	Good air quality	pm25	2018-12-01 06:06:00	61.2900009	1	1018	4.0999999	0	2018-11-30 22:06:00
Buena Park	City	Orange	california	33.8674011	-117.998001	3.03999996	65	Moderate air quality	pm25	2018-12-01 06:06:00	62.9199982	1	1015	5.32999992	0	2018-11-30 22:06:00
Burbank	City	Los Angeles	california	34.1808014	-118.308998	2.98000002	73	Moderate air quality	pm25	2018-12-01 06:06:00	62.7400017	1	1015	2.0999999	0	2018-11-30 22:06:00
Burlingame	City	San Mateo	california	37.5778999	-122.348	2.03999996	57	Moderate air quality	pm25	2018-12-01 06:06:00	57.8499985	1	1020	2.0999999	1.01999998	2018-11-30 22:06:00
Calabasas	City	Los Angeles	california	34.1366997	-118.661003	2.98000002	39	Good air quality	pm25	2018-12-01 06:06:00	63.4099998	1	1015	2.0999999	0	2018-11-30 22:06:00
Calexico	City	Imperial	california	32.6789017	-115.499001	3.48000002	105	Unhealthy for sensitive groups air quality	pm25	2018-12-01 06:06:00	69.6399994	1	1014	7.69999981	0	2018-11-30 22:06:00
California City	City	Kern	california	35.1258011	-117.986	2.8599999	38	Good air quality	o3	2018-12-01 06:06:00	55.3300018	1	1014	11.8000002	0	2018-11-30 22:06:00
Calimesa	City	Riverside	california	34.0038986	-117.061996	3.0999999	66	Moderate air quality	pm25	2018-12-01 06:06:00	59.7900009	1	1016	0.709999979	0	2018-11-30 22:06:00
Calipatria	City	Imperial	california	33.1255989	-115.514	3.27999997	89	Moderate air quality	pm25	2018-12-01 06:06:00	69.5800018	1	1014	7.69999981	0	2018-11-30 22:06:00
Calistoga	City	Napa	california	38.5788002	-122.580002	1.86000001	51	Moderate air quality	pm25	2018-12-01 06:06:00	58.6899986	1	1019	1.00999999	0	2018-11-30 22:06:00
Camarillo	City	Ventura	california	34.2164001	-119.038002	2.96000004	59	Moderate air quality	pm25	2018-12-01 06:06:00	62.9599991	40	1016	3.5999999	0	2018-11-30 22:06:00
Campbell	City	Santa Clara	california	37.2872009	-121.949997	2.11999989	56	Moderate air quality	pm25	2018-12-01 06:06:00	56.4599991	1	1020	2.0999999	0.920000017	2018-11-30 22:06:00
Canyon Lake	City	Riverside	california	33.6850014	-117.273003	3.19000006	34	Good air quality	o3	2018-12-01 06:06:00	61.9000015	1	1016	0.910000026	0	2018-11-30 22:06:00
Capitola	City	Santa Cruz	california	36.9752007	-121.953003	2.23000002	63	Moderate air quality	pm25	2018-12-01 06:06:00	54.9099998	1	1020	2.0999999	0.889999986	2018-11-30 22:06:00
Carlsbad	City	San Diego	california	33.1581001	-117.350998	3.31999993	59	Moderate air quality	pm25	2018-12-01 06:06:00	63.2700005	1	1016	5.17999983	0	2018-11-30 22:06:00
Carmel-by-the-Sea	City	Monterey	california	36.5551987	-121.922997	2.30999994	49	Good air quality	pm25	2018-12-01 06:06:00	54.2299995	1	1020	4.0999999	0.379999995	2018-11-30 22:06:00
Carpinteria	City	Santa Barbara	california	34.3988991	-119.517998	2.92000008	35	Good air quality	o3	2018-12-01 06:06:00	63.6100006	1	1018	4.0999999	0	2018-11-30 22:06:00
Carson	City	Los Angeles	california	33.8316994	-118.281998	3.04999995	56	Moderate air quality	pm25	2018-12-01 06:06:00	63.25	1	1015	2.5999999	0	2018-11-30 22:06:00
Cathedral City	City	Riverside	california	33.7804985	-116.467003	3.0999999	46	Good air quality	pm25	2018-12-01 06:06:00	62.1899986	1	1016	1.11000001	0	2018-11-30 22:06:00
Ceres	City	Stanislaus	california	37.5948982	-120.958	2.1099999	70	Moderate air quality	pm25	2018-12-01 06:06:00	52.2900009	1	1019	1.5	2.67000008	2018-11-30 22:06:00
Cerritos	City	Los Angeles	california	33.8582993	-118.065002	3.04999995	56	Moderate air quality	pm25	2018-12-01 06:06:00	63.25	20	1015	5.32999992	0	2018-11-30 22:06:00
Chico	City	Butte	california	39.7285004	-121.836998	1.70000005	53	Moderate air quality	pm25	2018-12-01 06:06:00	55.9399986	20	1018	2.5999999	0	2018-11-30 22:06:00
Chino	City	San Bernardino	california	34.0121994	-117.689003	3.05999994	58	Moderate air quality	pm25	2018-12-01 06:06:00	62.9599991	1	1016	2.0999999	0	2018-11-30 22:06:00
Chino Hills	City	San Bernardino	california	33.9897995	-117.733002	3.07999992	52	Moderate air quality	pm25	2018-12-01 06:06:00	62.9399986	1	1016	2.0999999	0	2018-11-30 22:06:00
Chowchilla	City	Madera	california	37.1230011	-120.260002	2.26999998	64	Moderate air quality	pm25	2018-12-01 06:06:00	51.3300018	1	1018	2.3599999	0	2018-11-30 22:06:00
Chula Vista	City	San Diego	california	32.6400986	-117.084	3.47000003	85	Moderate air quality	pm25	2018-12-01 06:06:00	63.4799995	40	1016	2.5999999	0	2018-11-30 22:06:00
Citrus Heights	City	Sacramento	california	38.7070999	-121.280998	1.87	44	Good air quality	pm25	2018-12-01 06:06:00	52.9300003	1	1018	3.5999999	0	2018-11-30 22:06:00
Claremont	City	Los Angeles	california	34.0966988	-117.720001	3.05999994	62	Moderate air quality	pm25	2018-12-01 06:06:00	62.9399986	1	1016	0.529999971	0	2018-11-30 22:06:00
Clayton	City	Contra Costa	california	37.9410019	-121.935997	2.01999998	40	Good air quality	pm25	2018-12-01 06:06:00	57.8499985	1	1020	2.0999999	1.01999998	2018-11-30 22:06:00
Clearlake	City	Lake	california	38.9581985	-122.625999	1.83000004	33	Good air quality	pm25	2018-12-01 06:06:00	50	90	1018	1.5	0.25	2018-11-30 22:06:00
Cloverdale	City	Sonoma	california	38.8055	-123.016998	1.78999996	53	Moderate air quality	pm25	2018-12-01 06:06:00	50	90	1018	1.5	0.25	2018-11-30 22:06:00
Clovis	City	Fresno	california	36.8251991	-119.703003	2.3900001	68	Moderate air quality	pm25	2018-12-01 06:06:00	53.1699982	1	1018	3.91000009	0	2018-11-30 22:06:00
Coachella	City	Riverside	california	33.6803017	-116.174004	3.13000011	38	Good air quality	o3	2018-12-01 06:06:00	63.0099983	40	1014	3.5999999	0	2018-11-30 22:06:00
Coalinga	City	Fresno	california	36.1397018	-120.360001	2.53999996	55	Moderate air quality	pm25	2018-12-01 06:06:00	55.2900009	1	1019	4.0999999	0	2018-11-30 22:06:00
Colfax	City	Placer	california	39.1007004	-120.953003	1.88999999	39	Good air quality	pm25	2018-12-01 06:06:00	51.7799988	1	1017	3.0999999	0	2018-11-30 22:06:00
Colma	Town	San Mateo	california	37.676899	-122.459999	2.03999996	58	Moderate air quality	pm25	2018-12-01 06:06:00	57.8499985	20	1020	3.0999999	1.01999998	2018-11-30 22:06:00
Colton	City	San Bernardino	california	34.0738983	-117.314003	3.02999997	70	Moderate air quality	pm25	2018-12-01 06:06:00	61.4099998	1	1016	0.529999971	0	2018-11-30 22:06:00
Colusa	City	Colusa	california	39.2142982	-122.009003	1.75999999	66	Moderate air quality	pm25	2018-12-01 06:06:00	57.2900009	1	1018	3.5999999	0	2018-11-30 22:06:00
Commerce	City	Los Angeles	california	34.0005989	-118.160004	3	68	Moderate air quality	pm25	2018-12-01 06:06:00	63.6399994	20	1015	1.46000004	0	2018-11-30 22:06:00
Compton	City	Los Angeles	california	33.8958015	-118.220001	3.04999995	68	Moderate air quality	pm25	2018-12-01 06:06:00	63.25	1	1015	2.5999999	0	2018-11-30 22:06:00
Concord	City	Contra Costa	california	37.9780006	-122.030998	2	59	Moderate air quality	pm25	2018-12-01 06:06:00	58.2599983	20	1020	3.0999999	1.01999998	2018-11-30 22:06:00
Corcoran	City	Kings	california	36.0979996	-119.559998	2.54999995	101	Unhealthy for sensitive groups air quality	pm25	2018-12-01 06:06:00	54.3699989	90	1019	2.1099999	0	2018-11-30 22:06:00
Corning	City	Tehama	california	39.9277	-122.179001	1.65999997	39	Good air quality	pm25	2018-12-01 06:06:00	55.3600006	90	1017	1.5	0	2018-11-30 22:06:00
Corona	City	Riverside	california	33.8753014	-117.566002	3.07999992	63	Moderate air quality	pm25	2018-12-01 06:06:00	62.5499992	1	1016	0.829999983	0	2018-11-30 22:06:00
Coronado	City	San Diego	california	32.6859016	-117.182999	3.47000003	75	Moderate air quality	pm25	2018-12-01 06:06:00	63.3400002	40	1016	2.5999999	0	2018-11-30 22:06:00
Corte Madera	Town	Marin	california	37.925499	-122.527	1.96000004	42	Good air quality	pm25	2018-12-01 06:06:00	58.3499985	20	1020	3.0999999	0.439999998	2018-11-30 22:06:00
Costa Mesa	City	Orange	california	33.641201	-117.918999	3.11999989	59	Moderate air quality	pm25	2018-12-01 06:06:00	62.8499985	20	1015	2.0999999	0	2018-11-30 22:06:00
Cotati	City	Sonoma	california	38.3292999	-122.709999	1.88	50	Good air quality	pm25	2018-12-01 06:06:00	58.8199997	1	1019	4.26000023	0	2018-11-30 22:06:00
Covina	City	Los Angeles	california	34.0900002	-117.889999	3.01999998	68	Moderate air quality	pm25	2018-12-01 06:06:00	62.9199982	1	1016	0.529999971	0	2018-11-30 22:06:00
Crescent City	City	Del Norte	california	41.7556992	-124.203003	1.29999995	35	Good air quality	o3	2018-12-01 06:06:00	49.4199982	1	1015	3.0999999	0	2018-11-30 22:06:00
Cudahy	City	Los Angeles	california	33.9606018	-118.184998	3.04999995	63	Moderate air quality	pm25	2018-12-01 06:06:00	63.25	1	1015	2.5999999	0	2018-11-30 22:06:00
Culver City	City	Los Angeles	california	34.0210991	-118.396004	2.98000002	68	Moderate air quality	pm25	2018-12-01 06:06:00	63.3400002	20	1015	3.0999999	0	2018-11-30 22:06:00
Cupertino	City	Santa Clara	california	37.3230019	-122.031998	2.11999989	56	Moderate air quality	pm25	2018-12-01 06:06:00	56.7000008	20	1020	3.0999999	0.920000017	2018-11-30 22:06:00
Cypress	City	Orange	california	33.8168983	-118.037003	3.04999995	53	Moderate air quality	pm25	2018-12-01 06:06:00	63.25	20	1015	5.32999992	0	2018-11-30 22:06:00
Daly City	City	San Mateo	california	37.6879005	-122.470001	2.03999996	62	Moderate air quality	pm25	2018-12-01 06:06:00	57.8499985	20	1020	3.0999999	1.01999998	2018-11-30 22:06:00
Dana Point	City	Orange	california	33.4672012	-117.697998	3.20000005	59	Moderate air quality	pm25	2018-12-01 06:06:00	62.4900017	1	1016	0.829999983	0	2018-11-30 22:06:00
Danville	Town	Contra Costa	california	37.8216019	-122	2.01999998	54	Moderate air quality	pm25	2018-12-01 06:06:00	57.9000015	1	1020	2.0999999	1.01999998	2018-11-30 22:06:00
Davis	City	Yolo	california	38.544899	-121.740997	1.86000001	75	Moderate air quality	pm25	2018-12-01 06:06:00	57.3400002	1	1019	2.0999999	0	2018-11-30 22:06:00
Del Mar	City	San Diego	california	32.9594994	-117.264999	3.42000008	51	Moderate air quality	pm25	2018-12-01 06:06:00	62.9599991	40	1016	2.5999999	0	2018-11-30 22:06:00
Del Rey Oaks	City	Monterey	california	36.5932999	-121.834999	2.30999994	25	Good air quality	pm25	2018-12-01 06:06:00	54.2299995	1	1020	4.0999999	0.379999995	2018-11-30 22:06:00
Delano	City	Kern	california	35.7687988	-119.247002	2.61999989	91	Moderate air quality	pm25	2018-12-01 06:06:00	55.0600014	75	1019	2.1099999	0	2018-11-30 22:06:00
Desert Hot Springs	City	Riverside	california	33.9611015	-116.501999	3.17000008	52	Moderate air quality	pm25	2018-12-01 06:06:00	60.0800018	1	1017	2.5999999	0	2018-11-30 22:06:00
Diamond Bar	City	Los Angeles	california	34.0285988	-117.809998	3.01999998	68	Moderate air quality	pm25	2018-12-01 06:06:00	62.9399986	1	1016	0.529999971	0	2018-11-30 22:06:00
Dinuba	City	Tulare	california	36.5433006	-119.387001	2.46000004	85	Moderate air quality	pm25	2018-12-01 06:06:00	53.4399986	1	1018	1.90999997	0	2018-11-30 22:06:00
Dixon	City	Solano	california	38.4454994	-121.822998	1.88999999	71	Moderate air quality	pm25	2018-12-01 06:06:00	57.1599998	1	1019	2.0999999	0	2018-11-30 22:06:00
Dorris	City	Siskiyou	california	41.9673996	-121.917999	1.40999997	51	Moderate air quality	pm25	2018-12-01 06:06:00	40.4799995	75	1011	4.5999999	0	2018-11-30 22:06:00
Dos Palos	City	Merced	california	36.9860992	-120.626999	2.29999995	61	Moderate air quality	pm25	2018-12-01 06:06:00	51.2799988	1	1019	2.0999999	0	2018-11-30 22:06:00
Downey	City	Los Angeles	california	33.9401016	-118.133003	3.04999995	63	Moderate air quality	pm25	2018-12-01 06:06:00	63.25	20	1015	1.46000004	0	2018-11-30 22:06:00
Duarte	City	Los Angeles	california	34.1394997	-117.976997	3.01999998	64	Moderate air quality	pm25	2018-12-01 06:06:00	63.2700005	1	1016	1.46000004	0	2018-11-30 22:06:00
Dublin	City	Alameda	california	37.7022018	-121.935997	2.06999993	52	Moderate air quality	pm25	2018-12-01 06:06:00	57.7200012	1	1020	2.0999999	1.01999998	2018-11-30 22:06:00
Dunsmuir	City	Siskiyou	california	41.2081985	-122.272003	1.51999998	33	Good air quality	pm25	2018-12-01 06:06:00	42.3899994	90	1013	2.5999999	0	2018-11-30 22:06:00
East Palo Alto	City	San Mateo	california	37.4687996	-122.140999	2.11999989	59	Moderate air quality	pm25	2018-12-01 06:06:00	56.6399994	1	1020	2.0999999	0.920000017	2018-11-30 22:06:00
Eastvale	City	Riverside	california	33.9524994	-117.584999	3.07999992	54	Moderate air quality	pm25	2018-12-01 06:06:00	62.6399994	1	1016	0.529999971	0	2018-11-30 22:06:00
El Cajon	City	San Diego	california	32.7947998	-116.962997	3.46000004	69	Moderate air quality	pm25	2018-12-01 06:06:00	63.2799988	40	1016	2.5999999	0	2018-11-30 22:06:00
El Centro	City	Imperial	california	32.7919998	-115.563004	3.3900001	63	Moderate air quality	pm25	2018-12-01 06:06:00	69.5999985	1	1013	7.19999981	0	2018-11-30 22:06:00
El Cerrito	City	Contra Costa	california	37.9160995	-122.310997	1.97000003	60	Moderate air quality	pm25	2018-12-01 06:06:00	58.1899986	1	1020	2.0999999	1.01999998	2018-11-30 22:06:00
El Monte	City	Los Angeles	california	34.0685997	-118.028	3	69	Moderate air quality	pm25	2018-12-01 06:06:00	63.2700005	1	1015	1.46000004	0	2018-11-30 22:06:00
El Segundo	City	Los Angeles	california	33.9192009	-118.416	3.04999995	59	Moderate air quality	pm25	2018-12-01 06:06:00	63.3400002	20	1015	3.0999999	0	2018-11-30 22:06:00
Elk Grove	City	Sacramento	california	38.4087982	-121.372002	1.90999997	64	Moderate air quality	pm25	2018-12-01 06:06:00	54.3400002	1	1019	2.0999999	1.01999998	2018-11-30 22:06:00
Emeryville	City	Alameda	california	37.8312988	-122.285004	1.97000003	60	Moderate air quality	pm25	2018-12-01 06:06:00	58.0999985	20	1020	3.0999999	1.01999998	2018-11-30 22:06:00
Encinitas	City	San Diego	california	33.0369987	-117.292	3.31999993	58	Moderate air quality	pm25	2018-12-01 06:06:00	62.9599991	40	1016	2.5999999	0	2018-11-30 22:06:00
Escalon	City	San Joaquin	california	37.7974014	-120.997002	2.04999995	72	Moderate air quality	pm25	2018-12-01 06:06:00	51.4599991	1	1019	1.5	2.42000008	2018-11-30 22:06:00
Escondido	City	San Diego	california	33.1192017	-117.085999	3.32999992	62	Moderate air quality	pm25	2018-12-01 06:06:00	62.9599991	40	1016	2.5999999	0	2018-11-30 22:06:00
Etna	City	Siskiyou	california	41.4567986	-122.894997	1.47000003	42	Good air quality	pm25	2018-12-01 06:06:00	42.2599983	90	1013	2.5999999	0	2018-11-30 22:06:00
Eureka	City	Humboldt	california	40.8021011	-124.164001	1.46000004	43	Good air quality	pm25	2018-12-01 06:06:00	47.9500008	75	1017	4.5999999	0	2018-11-30 22:06:00
Exeter	City	Tulare	california	36.2961006	-119.141998	2.52999997	92	Moderate air quality	pm25	2018-12-01 06:06:00	53.8699989	90	1019	1.90999997	0	2018-11-30 22:06:00
Fairfax	Town	Marin	california	37.9870987	-122.588997	1.96000004	26	Good air quality	pm25	2018-12-01 06:06:00	58.5499992	20	1020	3.0999999	0.439999998	2018-11-30 22:06:00
Fairfield	City	Solano	california	38.2494011	-122.040001	1.94000006	56	Moderate air quality	pm25	2018-12-01 06:06:00	58.2599983	1	1019	2.0999999	1.00999999	2018-11-30 22:06:00
Farmersville	City	Tulare	california	36.297699	-119.207001	2.52999997	96	Moderate air quality	pm25	2018-12-01 06:06:00	53.9199982	90	1019	1.90999997	0	2018-11-30 22:06:00
Ferndale	City	Humboldt	california	40.5761986	-124.264	1.48000002	28	Good air quality	o3	2018-12-01 06:06:00	47.75	75	1017	4.5999999	0	2018-11-30 22:06:00
Fillmore	City	Ventura	california	34.3992004	-118.917999	2.95000005	34	Good air quality	pm25	2018-12-01 06:06:00	62.9599991	40	1016	3.5999999	0	2018-11-30 22:06:00
Firebaugh	City	Fresno	california	36.858799	-120.456001	2.31999993	80	Moderate air quality	pm25	2018-12-01 06:06:00	51.3300018	1	1018	3.3599999	0	2018-11-30 22:06:00
Folsom	City	Sacramento	california	38.6780014	-121.176003	1.88999999	55	Moderate air quality	pm25	2018-12-01 06:06:00	52.4300003	1	1018	3.5999999	0	2018-11-30 22:06:00
Fontana	City	San Bernardino	california	34.0922012	-117.434998	3.02999997	70	Moderate air quality	pm25	2018-12-01 06:06:00	61.9199982	1	1016	0.529999971	0	2018-11-30 22:06:00
Fort Bragg	City	Mendocino	california	39.4457016	-123.805	1.69000006	30	Good air quality	pm25	2018-12-01 06:06:00	50	90	1018	1.5	0.25	2018-11-30 22:06:00
Fort Jones	City	Siskiyou	california	41.6076012	-122.839996	1.40999997	45	Good air quality	pm25	2018-12-01 06:06:00	41.8800011	90	1013	2.5999999	0	2018-11-30 22:06:00
Fortuna	City	Humboldt	california	40.5982018	-124.156998	1.5	29	Good air quality	pm25	2018-12-01 06:06:00	47.75	75	1017	4.5999999	0	2018-11-30 22:06:00
Foster City	City	San Mateo	california	37.5584984	-122.271004	2.03999996	59	Moderate air quality	pm25	2018-12-01 06:06:00	57.6699982	1	1020	2.0999999	1.01999998	2018-11-30 22:06:00
Fountain Valley	City	Orange	california	33.7089996	-117.954002	3.11999989	60	Moderate air quality	pm25	2018-12-01 06:06:00	62.9399986	20	1015	5.32999992	0	2018-11-30 22:06:00
Fowler	City	Fresno	california	36.6305008	-119.678001	2.44000006	71	Moderate air quality	pm25	2018-12-01 06:06:00	53.1500015	1	1018	1.90999997	0	2018-11-30 22:06:00
Fremont	City	Alameda	california	37.5483017	-121.988998	2.06999993	49	Good air quality	pm25	2018-12-01 06:06:00	56.8600006	1	1020	2.0999999	1.01999998	2018-11-30 22:06:00
Fresno	City	Fresno	california	36.7378006	-119.787003	2.43000007	89	Moderate air quality	pm25	2018-12-01 06:06:00	53.1699982	1	1018	3.91000009	0	2018-11-30 22:06:00
Fullerton	City	Orange	california	33.8703995	-117.924004	3.03999996	61	Moderate air quality	pm25	2018-12-01 06:06:00	62.9199982	1	1015	5.32999992	0	2018-11-30 22:06:00
Galt	City	Sacramento	california	38.2546005	-121.300003	1.90999997	67	Moderate air quality	pm25	2018-12-01 06:06:00	55.6899986	1	1019	2.0999999	1.01999998	2018-11-30 22:06:00
Garden Grove	City	Orange	california	33.7742996	-117.938004	3.03999996	59	Moderate air quality	pm25	2018-12-01 06:06:00	62.9199982	20	1015	5.32999992	0	2018-11-30 22:06:00
Gardena	City	Los Angeles	california	33.8883018	-118.308998	3.04999995	61	Moderate air quality	pm25	2018-12-01 06:06:00	63.25	1	1015	2.5999999	0	2018-11-30 22:06:00
Gilroy	City	Santa Clara	california	37.0057983	-121.568001	2.20000005	49	Good air quality	pm25	2018-12-01 06:06:00	54.6300011	40	1020	1.5	0.889999986	2018-11-30 22:06:00
Glendale	City	Los Angeles	california	34.1425018	-118.254997	2.98000002	69	Moderate air quality	pm25	2018-12-01 06:06:00	62.6899986	1	1015	2.0999999	0	2018-11-30 22:06:00
Glendora	City	Los Angeles	california	34.1361008	-117.864998	3.01999998	68	Moderate air quality	pm25	2018-12-01 06:06:00	62.9399986	1	1016	0.529999971	0	2018-11-30 22:06:00
Goleta	City	Santa Barbara	california	34.4357986	-119.828003	2.8900001	56	Moderate air quality	pm25	2018-12-01 06:06:00	62.1300011	1	1018	4.0999999	0	2018-11-30 22:06:00
Gonzales	City	Monterey	california	36.5065994	-121.444	2.3599999	56	Moderate air quality	pm25	2018-12-01 06:06:00	54.25	1	1020	1.90999997	0.379999995	2018-11-30 22:06:00
Grand Terrace	City	San Bernardino	california	34.0339012	-117.314003	3.02999997	68	Moderate air quality	pm25	2018-12-01 06:06:00	61.4099998	1	1016	0.529999971	0	2018-11-30 22:06:00
Grass Valley	City	Nevada	california	39.219101	-121.060997	1.85000002	51	Moderate air quality	pm25	2018-12-01 06:06:00	52.2099991	1	1017	3.0999999	0	2018-11-30 22:06:00
Greenfield	City	Monterey	california	36.3208008	-121.244003	2.46000004	51	Moderate air quality	pm25	2018-12-01 06:06:00	53.7999992	1	1020	1.90999997	0.50999999	2018-11-30 22:06:00
Gridley	City	Butte	california	39.3638	-121.694	1.74000001	53	Moderate air quality	pm25	2018-12-01 06:06:00	53.4700012	1	1017	3.0999999	0	2018-11-30 22:06:00
Grover Beach	City	San Luis Obispo	california	35.1216011	-120.621002	2.74000001	40	Good air quality	pm25	2018-12-01 06:06:00	58.3499985	1	1019	1.92999995	0	2018-11-30 22:06:00
Guadalupe	City	Santa Barbara	california	34.9715996	-120.571999	2.78999996	21	Good air quality	pm25	2018-12-01 06:06:00	59.4900017	1	1019	2.0999999	0	2018-11-30 22:06:00
Gustine	City	Merced	california	37.2577019	-120.999001	2.17000008	57	Moderate air quality	pm25	2018-12-01 06:06:00	52.4799995	1	1019	2.0999999	4.32000017	2018-11-30 22:06:00
Half Moon Bay	City	San Mateo	california	37.4636002	-122.429001	2.0999999	34	Good air quality	pm25	2018-12-01 06:06:00	57.5999985	20	1020	3.0999999	1.01999998	2018-11-30 22:06:00
Hanford	City	Kings	california	36.3274002	-119.646004	2.49000001	81	Moderate air quality	pm25	2018-12-01 06:06:00	53.4000015	1	1018	1.90999997	0	2018-11-30 22:06:00
Hawaiian Gardens	City	Los Angeles	california	33.8314018	-118.072998	3.04999995	61	Moderate air quality	pm25	2018-12-01 06:06:00	63.25	20	1015	5.32999992	0	2018-11-30 22:06:00
Hawthorne	City	Los Angeles	california	33.9164009	-118.352997	3.04999995	66	Moderate air quality	pm25	2018-12-01 06:06:00	63.25	1	1015	2.5999999	0	2018-11-30 22:06:00
Hayward	City	Alameda	california	37.6688004	-122.081001	2.02999997	59	Moderate air quality	pm25	2018-12-01 06:06:00	57.8800011	1	1020	2.0999999	1.01999998	2018-11-30 22:06:00
Healdsburg	City	Sonoma	california	38.6105003	-122.869003	1.83000004	52	Moderate air quality	pm25	2018-12-01 06:06:00	55.8899994	1	1019	4.26000023	0.25	2018-11-30 22:06:00
Hemet	City	Riverside	california	33.7475014	-116.972	3.24000001	59	Moderate air quality	pm25	2018-12-01 06:06:00	61.5200005	1	1016	0.910000026	0	2018-11-30 22:06:00
Hercules	City	Contra Costa	california	38.0171013	-122.289001	1.91999996	33	Good air quality	pm25	2018-12-01 06:06:00	58.4599991	1	1020	2.0999999	0.439999998	2018-11-30 22:06:00
Hermosa Beach	City	Los Angeles	california	33.8622017	-118.400002	3.04999995	63	Moderate air quality	pm25	2018-12-01 06:06:00	63.3600006	20	1015	3.0999999	0	2018-11-30 22:06:00
Hesperia	City	San Bernardino	california	34.4263992	-117.301003	3.05999994	43	Good air quality	o3	2018-12-01 06:06:00	60.0400009	40	1016	2.0999999	0	2018-11-30 22:06:00
Hidden Hills	City	Los Angeles	california	34.1603012	-118.652	2.98000002	38	Good air quality	pm25	2018-12-01 06:06:00	63.4099998	1	1015	2.0999999	0	2018-11-30 22:06:00
Highland	City	San Bernardino	california	34.1282997	-117.209	3.0999999	57	Moderate air quality	pm25	2018-12-01 06:06:00	59.7700005	1	1016	0.709999979	0	2018-11-30 22:06:00
Hillsborough	Town	San Mateo	california	37.5741005	-122.378998	2.03999996	32	Good air quality	pm25	2018-12-01 06:06:00	57.7400017	20	1020	3.0999999	1.13999999	2018-11-30 22:06:00
Hollister	City	San Benito	california	36.8525009	-121.402	2.25999999	53	Moderate air quality	pm25	2018-12-01 06:06:00	54.1399994	1	1020	1.90999997	0.379999995	2018-11-30 22:06:00
Holtville	City	Imperial	california	32.8111992	-115.379997	3.38000011	104	Unhealthy for sensitive groups air quality	pm25	2018-12-01 06:06:00	69.6399994	1	1013	7.19999981	0	2018-11-30 22:06:00
Hughson	City	Stanislaus	california	37.6026993	-120.865997	2.1099999	59	Moderate air quality	pm25	2018-12-01 06:06:00	50.9700012	1	1019	2.0999999	2.42000008	2018-11-30 22:06:00
Huntington Beach	City	Orange	california	33.6595001	-117.999001	3.11999989	59	Moderate air quality	pm25	2018-12-01 06:06:00	63.2999992	20	1015	5.32999992	0	2018-11-30 22:06:00
Huntington Park	City	Los Angeles	california	33.9817009	-118.224998	3.04999995	69	Moderate air quality	pm25	2018-12-01 06:06:00	63.25	1	1015	2.5999999	0	2018-11-30 22:06:00
Huron	City	Fresno	california	36.2027016	-120.102997	2.51999998	55	Moderate air quality	pm25	2018-12-01 06:06:00	54.2299995	1	1018	2.73000002	0	2018-11-30 22:06:00
Imperial	City	Imperial	california	32.847599	-115.569	3.3900001	81	Moderate air quality	pm25	2018-12-01 06:06:00	69.5800018	1	1013	7.19999981	0	2018-11-30 22:06:00
Imperial Beach	City	San Diego	california	32.5839005	-117.112999	3.47000003	92	Moderate air quality	pm25	2018-12-01 06:06:00	63.4099998	40	1016	2.5999999	0	2018-11-30 22:06:00
Indian Wells	City	Riverside	california	33.7176018	-116.341003	3.24000001	38	Good air quality	o3	2018-12-01 06:06:00	63.0699997	40	1014	3.5999999	0	2018-11-30 22:06:00
Indio	City	Riverside	california	33.7206001	-116.216003	3.13000011	52	Moderate air quality	pm25	2018-12-01 06:06:00	63.0999985	40	1014	3.5999999	0	2018-11-30 22:06:00
Industry	City	Los Angeles	california	34.0196991	-117.959	3.01999998	63	Moderate air quality	pm25	2018-12-01 06:06:00	62.9199982	1	1015	1.46000004	0	2018-11-30 22:06:00
Inglewood	City	Los Angeles	california	33.9617004	-118.352997	3.04999995	71	Moderate air quality	pm25	2018-12-01 06:06:00	63.25	1	1015	2.5999999	0	2018-11-30 22:06:00
Ione	City	Amador	california	38.3526993	-120.932999	1.97000003	58	Moderate air quality	pm25	2018-12-01 06:06:00	50.9399986	1	1018	1.5	0.50999999	2018-11-30 22:06:00
Irvine	City	Orange	california	33.6846008	-117.827003	3.11999989	54	Moderate air quality	pm25	2018-12-01 06:06:00	62.6899986	1	1016	0.829999983	0	2018-11-30 22:06:00
Irwindale	City	Los Angeles	california	34.1069984	-117.934998	3.01999998	60	Moderate air quality	pm25	2018-12-01 06:06:00	62.9199982	1	1016	1.46000004	0	2018-11-30 22:06:00
Isleton	City	Sacramento	california	38.1618996	-121.612	1.94000006	54	Moderate air quality	pm25	2018-12-01 06:06:00	57.2700005	1	1019	2.0999999	1.52999997	2018-11-30 22:06:00
Jackson	City	Amador	california	38.3488007	-120.774002	1.97000003	42	Good air quality	pm25	2018-12-01 06:06:00	50.25	1	1018	1.5	0.50999999	2018-11-30 22:06:00
Jurupa Valley	City	Riverside	california	33.9972	-117.485001	3.07999992	72	Moderate air quality	pm25	2018-12-01 06:06:00	62.4199982	1	1016	0.529999971	0	2018-11-30 22:06:00
Kerman	City	Fresno	california	36.7235985	-120.059998	2.3900001	72	Moderate air quality	pm25	2018-12-01 06:06:00	53.1899986	1	1018	3.91000009	0	2018-11-30 22:06:00
King City	City	Monterey	california	36.2126999	-121.125999	2.52999997	55	Moderate air quality	pm25	2018-12-01 06:06:00	53.0600014	1	1020	2.23000002	0.50999999	2018-11-30 22:06:00
Kingsburg	City	Fresno	california	36.5138016	-119.554001	2.44000006	82	Moderate air quality	pm25	2018-12-01 06:06:00	53.4199982	1	1018	1.90999997	0	2018-11-30 22:06:00
La CaÃ±ada Flintridge	City	Los Angeles	california	34.2067986	-118.199997	3	64	Moderate air quality	pm25	2018-12-01 06:06:00	62.6899986	1	1015	2.0999999	0	2018-11-30 22:06:00
La Habra	City	Orange	california	33.9319	-117.945999	3.03999996	62	Moderate air quality	pm25	2018-12-01 06:06:00	62.9199982	1	1015	1.46000004	0	2018-11-30 22:06:00
La Habra Heights	City	Los Angeles	california	33.9608002	-117.950996	3.03999996	56	Moderate air quality	pm25	2018-12-01 06:06:00	62.9199982	1	1015	1.46000004	0	2018-11-30 22:06:00
La Mesa	City	San Diego	california	32.7677994	-117.023003	3.4000001	73	Moderate air quality	pm25	2018-12-01 06:06:00	63.2799988	40	1016	2.5999999	0	2018-11-30 22:06:00
La Mirada	City	Los Angeles	california	33.9171982	-118.012001	3.04999995	60	Moderate air quality	pm25	2018-12-01 06:06:00	62.9199982	1	1015	1.46000004	0	2018-11-30 22:06:00
La Palma	City	Orange	california	33.8462982	-118.045998	3.04999995	53	Moderate air quality	pm25	2018-12-01 06:06:00	63.25	20	1015	5.32999992	0	2018-11-30 22:06:00
La Puente	City	Los Angeles	california	34.0200005	-117.949997	3.01999998	59	Moderate air quality	pm25	2018-12-01 06:06:00	62.9199982	1	1015	1.46000004	0	2018-11-30 22:06:00
La Quinta	City	Riverside	california	33.6633987	-116.309998	3.24000001	38	Good air quality	o3	2018-12-01 06:06:00	68	40	1014	3.5999999	0	2018-11-30 22:06:00
La Verne	City	Los Angeles	california	34.1007996	-117.767998	3.01999998	61	Moderate air quality	pm25	2018-12-01 06:06:00	62.9399986	1	1016	0.529999971	0	2018-11-30 22:06:00
Lafayette	City	Contra Costa	california	37.8857994	-122.117996	2	48	Good air quality	pm25	2018-12-01 06:06:00	57.9599991	1	1020	2.0999999	1.01999998	2018-11-30 22:06:00
Laguna Beach	City	Orange	california	33.5427017	-117.785004	3.11999989	61	Moderate air quality	pm25	2018-12-01 06:06:00	62.6199989	1	1016	0.829999983	0	2018-11-30 22:06:00
Laguna Hills	City	Orange	california	33.5915985	-117.698997	3.17000008	52	Moderate air quality	pm25	2018-12-01 06:06:00	62.5299988	1	1016	0.829999983	0	2018-11-30 22:06:00
Laguna Niguel	City	Orange	california	33.5237007	-117.714996	3.17000008	60	Moderate air quality	pm25	2018-12-01 06:06:00	62.4900017	1	1016	0.829999983	0	2018-11-30 22:06:00
Laguna Woods	City	Orange	california	33.610199	-117.724998	3.17000008	53	Moderate air quality	pm25	2018-12-01 06:06:00	62.6399994	1	1016	0.829999983	0	2018-11-30 22:06:00
Lake Elsinore	City	Riverside	california	33.6680984	-117.327003	3.19000006	51	Moderate air quality	pm25	2018-12-01 06:06:00	62.1899986	1	1016	0.829999983	0	2018-11-30 22:06:00
Lake Forest	City	Orange	california	33.6469002	-117.685997	3.17000008	52	Moderate air quality	pm25	2018-12-01 06:06:00	62.6399994	1	1016	0.829999983	0	2018-11-30 22:06:00
Lakeport	City	Lake	california	39.0429001	-122.916	1.77999997	57	Moderate air quality	pm25	2018-12-01 06:06:00	50	90	1018	1.5	0.25	2018-11-30 22:06:00
Lakewood	City	Los Angeles	california	33.8535995	-118.134003	3.04999995	58	Moderate air quality	pm25	2018-12-01 06:06:00	63.25	20	1015	5.32999992	0	2018-11-30 22:06:00
Lancaster	City	Los Angeles	california	34.6867981	-118.153999	2.97000003	37	Good air quality	o3	2018-12-01 06:06:00	56.5499992	1	1017	4.5999999	0	2018-11-30 22:06:00
Larkspur	City	Marin	california	37.9341011	-122.535004	1.96000004	26	Good air quality	pm25	2018-12-01 06:06:00	58.1399994	20	1020	3.0999999	0.50999999	2018-11-30 22:06:00
Lathrop	City	San Joaquin	california	37.8227005	-121.277	2.00999999	58	Moderate air quality	pm25	2018-12-01 06:06:00	53.6699982	1	1019	3.0999999	2.46000004	2018-11-30 22:06:00
Lawndale	City	Los Angeles	california	33.8871994	-118.352997	3.04999995	64	Moderate air quality	pm25	2018-12-01 06:06:00	63.25	1	1015	2.5999999	0	2018-11-30 22:06:00
Lemon Grove	City	San Diego	california	32.7425003	-117.030998	3.47000003	74	Moderate air quality	pm25	2018-12-01 06:06:00	63.3400002	40	1016	2.5999999	0	2018-11-30 22:06:00
Lemoore	City	Kings	california	36.3008003	-119.782997	2.48000002	68	Moderate air quality	pm25	2018-12-01 06:06:00	53.2900009	1	1018	3.91000009	0	2018-11-30 22:06:00
Lincoln	City	Placer	california	38.8916016	-121.292999	1.83000004	61	Moderate air quality	pm25	2018-12-01 06:06:00	53.0800018	1	1018	3.5999999	0	2018-11-30 22:06:00
Lindsay	City	Tulare	california	36.2029991	-119.087997	2.57999992	90	Moderate air quality	pm25	2018-12-01 06:06:00	53.8499985	90	1019	0.879999995	0	2018-11-30 22:06:00
Live Oak	City	Sutter	california	39.2756996	-121.660004	1.74000001	62	Moderate air quality	pm25	2018-12-01 06:06:00	56.0499992	1	1017	3.0999999	0	2018-11-30 22:06:00
Livermore	City	Alameda	california	37.6819	-121.767998	2.06999993	56	Moderate air quality	pm25	2018-12-01 06:06:00	57.0400009	1	1020	2.0999999	1.01999998	2018-11-30 22:06:00
Livingston	City	Merced	california	37.3869019	-120.723999	2.19000006	63	Moderate air quality	pm25	2018-12-01 06:06:00	51.9399986	1	1019	2.0999999	4.32000017	2018-11-30 22:06:00
Lodi	City	San Joaquin	california	38.1341019	-121.272003	1.95000005	67	Moderate air quality	pm25	2018-12-01 06:06:00	56.5900002	1	1019	3.0999999	2.46000004	2018-11-30 22:06:00
Loma Linda	City	San Bernardino	california	34.0483017	-117.261002	3.02999997	64	Moderate air quality	pm25	2018-12-01 06:06:00	61.4099998	1	1016	0.709999979	0	2018-11-30 22:06:00
Lomita	City	Los Angeles	california	33.7921982	-118.315002	3.04999995	39	Good air quality	pm25	2018-12-01 06:06:00	63.25	1	1015	2.5999999	0	2018-11-30 22:06:00
Lompoc	City	Santa Barbara	california	34.6390991	-120.458	2.8499999	43	Good air quality	pm25	2018-12-01 06:06:00	60.6399994	1	1019	3.0999999	0	2018-11-30 22:06:00
Long Beach	City	Los Angeles	california	33.7700996	-118.194	3.04999995	67	Moderate air quality	pm25	2018-12-01 06:06:00	63.25	20	1015	5.32999992	0	2018-11-30 22:06:00
Loomis	Town	Placer	california	38.8213005	-121.193001	1.87	57	Moderate air quality	pm25	2018-12-01 06:06:00	52.4300003	1	1018	3.5999999	0	2018-11-30 22:06:00
Los Alamitos	City	Orange	california	33.8031998	-118.071999	3.04999995	59	Moderate air quality	pm25	2018-12-01 06:06:00	63.25	20	1015	5.32999992	0	2018-11-30 22:06:00
Los Altos	City	Santa Clara	california	37.3852005	-122.113998	2.11999989	54	Moderate air quality	pm25	2018-12-01 06:06:00	56.9500008	20	1020	3.0999999	1.01999998	2018-11-30 22:06:00
Los Altos Hills	Town	Santa Clara	california	37.3796997	-122.137001	2.11999989	34	Good air quality	pm25	2018-12-01 06:06:00	56.9500008	20	1020	3.0999999	1.01999998	2018-11-30 22:06:00
Los Angeles	City	Los Angeles	california	34.0522003	-118.244003	3	76	Moderate air quality	pm25	2018-12-01 06:06:00	63.25	1	1015	1.5	0	2018-11-30 22:06:00
Los Banos	City	Merced	california	37.0583	-120.849998	2.23000002	57	Moderate air quality	pm25	2018-12-01 06:06:00	52.3899994	1	1019	2.0999999	4.32000017	2018-11-30 22:06:00
Los Gatos	Town	Santa Clara	california	37.2358017	-121.961998	2.20000005	47	Good air quality	pm25	2018-12-01 06:06:00	56.2599983	1	1020	2.0999999	0.920000017	2018-11-30 22:06:00
Loyalton	City	Sierra	california	39.6763	-120.240997	1.92999995	54	Moderate air quality	pm25	2018-12-01 06:06:00	37.5099983	1	1015	4.0999999	0.25	2018-11-30 22:06:00
Lynwood	City	Los Angeles	california	33.9303017	-118.210999	3.04999995	66	Moderate air quality	pm25	2018-12-01 06:06:00	63.25	1	1015	2.5999999	0	2018-11-30 22:06:00
Madera	City	Madera	california	36.9612999	-120.060997	2.33999991	83	Moderate air quality	pm25	2018-12-01 06:06:00	51.6699982	1	1018	2.3599999	0	2018-11-30 22:06:00
Malibu	City	Los Angeles	california	34.0259018	-118.779999	3	40	Good air quality	pm25	2018-12-01 06:06:00	63.0099983	40	1016	3.5999999	0	2018-11-30 22:06:00
Mammoth Lakes	Town	Mono	california	37.6484985	-118.972	2.51999998	24	Good air quality	o3	2018-12-01 06:06:00	33.6199989	1	1016	1.5	0	2018-11-30 22:06:00
Manhattan Beach	City	Los Angeles	california	33.8847008	-118.411003	3.04999995	58	Moderate air quality	pm25	2018-12-01 06:06:00	63.3600006	20	1015	3.0999999	0	2018-11-30 22:06:00
Manteca	City	San Joaquin	california	37.7974014	-121.216003	2.02999997	74	Moderate air quality	pm25	2018-12-01 06:06:00	53.5600014	1	1019	3.0999999	2.46000004	2018-11-30 22:06:00
Maricopa	City	Kern	california	35.0588989	-119.401001	2.76999998	67	Moderate air quality	pm25	2018-12-01 06:06:00	57.9199982	20	1018	2.0999999	0	2018-11-30 22:06:00
Marina	City	Monterey	california	36.6843987	-121.802002	2.30999994	52	Moderate air quality	pm25	2018-12-01 06:06:00	54.2299995	1	1020	3.38000011	0.379999995	2018-11-30 22:06:00
Martinez	City	Contra Costa	california	38.0194016	-122.134003	1.94000006	58	Moderate air quality	pm25	2018-12-01 06:06:00	58.2599983	1	1020	2.0999999	1.16999996	2018-11-30 22:06:00
Marysville	City	Yuba	california	39.1456985	-121.591003	1.77999997	65	Moderate air quality	pm25	2018-12-01 06:06:00	55.9900017	1	1017	3.0999999	0	2018-11-30 22:06:00
Maywood	City	Los Angeles	california	33.9866982	-118.184998	3.04999995	69	Moderate air quality	pm25	2018-12-01 06:06:00	63.25	1	1015	2.5999999	0	2018-11-30 22:06:00
McFarland	City	Kern	california	35.6780014	-119.228996	2.67000008	108	Unhealthy for sensitive groups air quality	pm25	2018-12-01 06:06:00	55.7599983	75	1019	1.77999997	0	2018-11-30 22:06:00
Mendota	City	Fresno	california	36.7536011	-120.382004	2.31999993	71	Moderate air quality	pm25	2018-12-01 06:06:00	52.4700012	1	1018	3.3599999	0	2018-11-30 22:06:00
Menifee	City	Riverside	california	33.6971016	-117.184998	3.17000008	36	Good air quality	o3	2018-12-01 06:06:00	61.5600014	1	1016	0.910000026	0	2018-11-30 22:06:00
Menlo Park	City	San Mateo	california	37.4529991	-122.181999	2.11999989	60	Moderate air quality	pm25	2018-12-01 06:06:00	56.7900009	1	1020	2.0999999	0.920000017	2018-11-30 22:06:00
Merced	City	Merced	california	37.3022003	-120.483002	2.21000004	63	Moderate air quality	pm25	2018-12-01 06:06:00	51.9599991	1	1019	2.0999999	4.32000017	2018-11-30 22:06:00
Mill Valley	City	Marin	california	37.9059982	-122.544998	1.96000004	53	Moderate air quality	pm25	2018-12-01 06:06:00	58.0499992	20	1020	3.0999999	1.16999996	2018-11-30 22:06:00
Millbrae	City	San Mateo	california	37.5984993	-122.387001	2.03999996	59	Moderate air quality	pm25	2018-12-01 06:06:00	57.8499985	20	1020	3.0999999	1.01999998	2018-11-30 22:06:00
Milpitas	City	Santa Clara	california	37.4323006	-121.900002	2.11999989	52	Moderate air quality	pm25	2018-12-01 06:06:00	56.9500008	1	1020	2.0999999	1.01999998	2018-11-30 22:06:00
Mission Viejo	City	Orange	california	33.5969009	-117.657997	3.17000008	53	Moderate air quality	pm25	2018-12-01 06:06:00	62.4900017	1	1016	0.829999983	0	2018-11-30 22:06:00
Modesto	City	Stanislaus	california	37.6390991	-120.997002	2.1099999	77	Moderate air quality	pm25	2018-12-01 06:06:00	52.2299995	1	1019	1.5	2.42000008	2018-11-30 22:06:00
Monrovia	City	Los Angeles	california	34.1442986	-118.001999	3	63	Moderate air quality	pm25	2018-12-01 06:06:00	62.6899986	1	1015	1.46000004	0	2018-11-30 22:06:00
Montague	City	Siskiyou	california	41.728199	-122.528	1.40999997	46	Good air quality	pm25	2018-12-01 06:06:00	41.7400017	75	1013	1.02999997	0	2018-11-30 22:06:00
Montclair	City	San Bernardino	california	34.0774994	-117.690002	3.05999994	60	Moderate air quality	pm25	2018-12-01 06:06:00	62.9399986	1	1016	2.0999999	0	2018-11-30 22:06:00
Monte Sereno	City	Santa Clara	california	37.2363014	-121.991997	2.20000005	43	Good air quality	pm25	2018-12-01 06:06:00	56.2599983	1	1020	2.0999999	1.01999998	2018-11-30 22:06:00
Montebello	City	Los Angeles	california	34.0164986	-118.113998	3	58	Moderate air quality	pm25	2018-12-01 06:06:00	63.25	20	1015	1.46000004	0	2018-11-30 22:06:00
Monterey	City	Monterey	california	36.6002007	-121.894997	2.30999994	60	Moderate air quality	pm25	2018-12-01 06:06:00	54.2299995	1	1020	4.0999999	0.379999995	2018-11-30 22:06:00
Monterey Park	City	Los Angeles	california	34.0625	-118.123001	3	66	Moderate air quality	pm25	2018-12-01 06:06:00	63.25	20	1015	1.46000004	0	2018-11-30 22:06:00
Moorpark	City	Ventura	california	34.2855988	-118.882004	2.95000005	58	Moderate air quality	pm25	2018-12-01 06:06:00	62.9099998	40	1016	3.5999999	0	2018-11-30 22:06:00
Moraga	Town	Contra Costa	california	37.8348999	-122.129997	2	29	Good air quality	pm25	2018-12-01 06:06:00	58.0999985	1	1020	2.0999999	1.13999999	2018-11-30 22:06:00
Moreno Valley	City	Riverside	california	33.9425011	-117.230003	3.0999999	64	Moderate air quality	pm25	2018-12-01 06:06:00	61.5699997	1	1016	0.709999979	0	2018-11-30 22:06:00
Morgan Hill	City	Santa Clara	california	37.1305008	-121.653999	2.20000005	53	Moderate air quality	pm25	2018-12-01 06:06:00	55.1100006	40	1020	1.5	1.22000003	2018-11-30 22:06:00
Morro Bay	City	San Luis Obispo	california	35.3658981	-120.849998	2.68000007	22	Good air quality	o3	2018-12-01 06:06:00	58.1199989	1	1019	1.92999995	0	2018-11-30 22:06:00
Mount Shasta	City	Siskiyou	california	41.3098984	-122.310997	1.48000002	37	Good air quality	pm25	2018-12-01 06:06:00	42.3899994	90	1013	2.5999999	0	2018-11-30 22:06:00
Mountain View	City	Santa Clara	california	37.3861008	-122.084	2.11999989	61	Moderate air quality	pm25	2018-12-01 06:06:00	56.9500008	1	1020	2.0999999	0.920000017	2018-11-30 22:06:00
Murrieta	City	Riverside	california	33.5539017	-117.213997	3.17000008	39	Good air quality	o3	2018-12-01 06:06:00	61.3199997	1	1016	0.910000026	0	2018-11-30 22:06:00
Napa	City	Napa	california	38.2975006	-122.287003	1.89999998	55	Moderate air quality	pm25	2018-12-01 06:06:00	58.4599991	1	1019	1.00999999	0.25	2018-11-30 22:06:00
National City	City	San Diego	california	32.6781006	-117.098999	3.47000003	82	Moderate air quality	pm25	2018-12-01 06:06:00	63.4799995	40	1016	2.5999999	0	2018-11-30 22:06:00
Needles	City	San Bernardino	california	34.8480988	-114.613998	2.94000006	63	Moderate air quality	pm25	2018-12-01 06:06:00	63.7200012	1	1013	1.5	0	2018-11-30 22:06:00
Nevada City	City	Nevada	california	39.2616005	-121.015999	1.82000005	29	Good air quality	o3	2018-12-01 06:06:00	51.7799988	1	1017	3.0999999	0.50999999	2018-11-30 22:06:00
Newark	City	Alameda	california	37.5297012	-122.040001	2.02999997	31	Good air quality	pm25	2018-12-01 06:06:00	56.9500008	1	1020	2.0999999	1.01999998	2018-11-30 22:06:00
Newman	City	Stanislaus	california	37.3138008	-121.021004	2.16000009	57	Moderate air quality	pm25	2018-12-01 06:06:00	53.0600014	1	1019	2.0999999	2.42000008	2018-11-30 22:06:00
Newport Beach	City	Orange	california	33.6189003	-117.93	3.11999989	47	Good air quality	pm25	2018-12-01 06:06:00	62.9399986	20	1015	2.0999999	0	2018-11-30 22:06:00
Norco	City	Riverside	california	33.9310989	-117.549004	3.07999992	55	Moderate air quality	pm25	2018-12-01 06:06:00	62.5999985	1	1016	0.529999971	0	2018-11-30 22:06:00
Norwalk	City	Los Angeles	california	33.9021988	-118.082001	3.04999995	64	Moderate air quality	pm25	2018-12-01 06:06:00	63.25	20	1015	1.46000004	0	2018-11-30 22:06:00
Novato	City	Marin	california	38.107399	-122.57	1.91999996	57	Moderate air quality	pm25	2018-12-01 06:06:00	58.6899986	1	1019	2.0999999	0.50999999	2018-11-30 22:06:00
Oakdale	City	Stanislaus	california	37.7666016	-120.847	2.04999995	71	Moderate air quality	pm25	2018-12-01 06:06:00	50.5600014	1	1019	2.0999999	2.42000008	2018-11-30 22:06:00
Oakland	City	Alameda	california	37.8044014	-122.271004	1.97000003	67	Moderate air quality	pm25	2018-12-01 06:06:00	57.9599991	1	1020	2.0999999	1.13999999	2018-11-30 22:06:00
Oakley	City	Contra Costa	california	37.9973984	-121.711998	2.00999999	61	Moderate air quality	pm25	2018-12-01 06:06:00	58.3199997	1	1019	3.0999999	0.889999986	2018-11-30 22:06:00
Oceanside	City	San Diego	california	33.1959	-117.378998	3.31999993	59	Moderate air quality	pm25	2018-12-01 06:06:00	63.25	1	1016	5.17999983	0	2018-11-30 22:06:00
Ojai	City	Ventura	california	34.4480019	-119.242996	2.95000005	53	Moderate air quality	pm25	2018-12-01 06:06:00	64	1	1016	5.96000004	0	2018-11-30 22:06:00
Ontario	City	San Bernardino	california	34.0633011	-117.651001	3.05999994	59	Moderate air quality	pm25	2018-12-01 06:06:00	62.9799995	1	1016	2.0999999	0	2018-11-30 22:06:00
Orange	City	Orange	california	33.787899	-117.852997	3.03999996	61	Moderate air quality	pm25	2018-12-01 06:06:00	62.9399986	20	1015	0.829999983	0	2018-11-30 22:06:00
Orange Cove	City	Fresno	california	36.6244011	-119.314003	2.46000004	79	Moderate air quality	pm25	2018-12-01 06:06:00	53.1100006	1	1019	1.90999997	0	2018-11-30 22:06:00
Orinda	City	Contra Costa	california	37.8771019	-122.18	2	51	Moderate air quality	pm25	2018-12-01 06:06:00	57.9599991	1	1020	2.0999999	1.13999999	2018-11-30 22:06:00
Orland	City	Glenn	california	39.7473984	-122.195999	1.69000006	34	Good air quality	pm25	2018-12-01 06:06:00	56.0800018	90	1017	1.5	0	2018-11-30 22:06:00
Oroville	City	Butte	california	39.5138016	-121.556	1.72000003	45	Good air quality	pm25	2018-12-01 06:06:00	54.2099991	1	1017	3.0999999	0.50999999	2018-11-30 22:06:00
Oxnard	City	Ventura	california	34.1974983	-119.177002	2.96000004	61	Moderate air quality	pm25	2018-12-01 06:06:00	64.0199966	40	1016	3.5999999	0	2018-11-30 22:06:00
Pacific Grove	City	Monterey	california	36.6176987	-121.917	2.30999994	45	Good air quality	pm25	2018-12-01 06:06:00	53.6500015	1	1020	4.0999999	0.379999995	2018-11-30 22:06:00
Pacifica	City	San Mateo	california	37.6138	-122.487	2.03999996	39	Good air quality	pm25	2018-12-01 06:06:00	57.6699982	20	1020	3.0999999	1.13999999	2018-11-30 22:06:00
Palm Desert	City	Riverside	california	33.7221985	-116.374001	3.24000001	55	Moderate air quality	pm25	2018-12-01 06:06:00	63.0900002	40	1014	3.5999999	0	2018-11-30 22:06:00
Palm Springs	City	Riverside	california	33.8302994	-116.544998	3.17000008	49	Good air quality	pm25	2018-12-01 06:06:00	61.4099998	1	1016	1.11000001	0	2018-11-30 22:06:00
Palmdale	City	Los Angeles	california	34.5793991	-118.115997	2.97000003	47	Good air quality	pm25	2018-12-01 06:06:00	57.7000008	1	1016	5.0999999	0	2018-11-30 22:06:00
Palo Alto	City	Santa Clara	california	37.4418983	-122.142998	2.11999989	57	Moderate air quality	pm25	2018-12-01 06:06:00	56.9500008	1	1020	2.0999999	1.01999998	2018-11-30 22:06:00
Palos Verdes Estates	City	Los Angeles	california	33.8005981	-118.389999	3.04999995	45	Good air quality	pm25	2018-12-01 06:06:00	63.3600006	1	1015	2.5999999	0	2018-11-30 22:06:00
Paradise	Town	Butte	california	39.7596016	-121.622002	1.74000001	30	Good air quality	pm25	2018-12-01 06:06:00	55.8899994	20	1018	2.5999999	0	2018-11-30 22:06:00
Paramount	City	Los Angeles	california	33.8894997	-118.160004	3.04999995	39	Good air quality	pm25	2018-12-01 06:06:00	63.25	20	1015	5.32999992	0	2018-11-30 22:06:00
Parlier	City	Fresno	california	36.611599	-119.527	2.44000006	76	Moderate air quality	pm25	2018-12-01 06:06:00	52.8300018	1	1018	1.90999997	0	2018-11-30 22:06:00
Pasadena	City	Los Angeles	california	34.1478004	-118.144997	3	66	Moderate air quality	pm25	2018-12-01 06:06:00	62.6899986	1	1015	2.0999999	0	2018-11-30 22:06:00
Paso Robles	City	San Luis Obispo	california	35.6369019	-120.654999	2.66000009	25	Good air quality	o3	2018-12-01 06:06:00	56.1699982	1	1019	4.5999999	0	2018-11-30 22:06:00
Patterson	City	Stanislaus	california	37.4715996	-121.129997	2.16000009	62	Moderate air quality	pm25	2018-12-01 06:06:00	54.1800003	1	1019	2.0999999	2.46000004	2018-11-30 22:06:00
Perris	City	Riverside	california	33.7825012	-117.228996	3.0999999	62	Moderate air quality	pm25	2018-12-01 06:06:00	61.5	1	1016	0.910000026	0	2018-11-30 22:06:00
Petaluma	City	Sonoma	california	38.232399	-122.637001	1.91999996	57	Moderate air quality	pm25	2018-12-01 06:06:00	59	1	1019	1.00999999	0.25	2018-11-30 22:06:00
Pico Rivera	City	Los Angeles	california	33.9831009	-118.097	3.04999995	60	Moderate air quality	pm25	2018-12-01 06:06:00	63.6399994	20	1015	1.46000004	0	2018-11-30 22:06:00
Piedmont	City	Alameda	california	37.8244019	-122.232002	2	31	Good air quality	pm25	2018-12-01 06:06:00	58.1199989	1	1020	2.0999999	1.13999999	2018-11-30 22:06:00
Pinole	City	Contra Costa	california	38.0043983	-122.299004	1.91999996	55	Moderate air quality	pm25	2018-12-01 06:06:00	58.3499985	1	1020	2.0999999	1.01999998	2018-11-30 22:06:00
Pismo Beach	City	San Luis Obispo	california	35.1427994	-120.640999	2.74000001	44	Good air quality	pm25	2018-12-01 06:06:00	58.3499985	1	1019	1.92999995	0	2018-11-30 22:06:00
Pittsburg	City	Contra Costa	california	38.0279999	-121.885002	1.92999995	61	Moderate air quality	pm25	2018-12-01 06:06:00	58.1699982	1	1020	2.0999999	1.05999994	2018-11-30 22:06:00
Placentia	City	Orange	california	33.8711014	-117.862999	3.03999996	59	Moderate air quality	pm25	2018-12-01 06:06:00	62.9199982	1	1015	0.829999983	0	2018-11-30 22:06:00
Placerville	City	El Dorado	california	38.729599	-120.799004	1.94000006	38	Good air quality	pm25	2018-12-01 06:06:00	49.9799995	1	1018	3.5999999	0.50999999	2018-11-30 22:06:00
Pleasant Hill	City	Contra Costa	california	37.9480019	-122.060997	2	56	Moderate air quality	pm25	2018-12-01 06:06:00	58.2599983	1	1020	2.0999999	1.13999999	2018-11-30 22:06:00
Pleasanton	City	Alameda	california	37.6623993	-121.875	2.06999993	52	Moderate air quality	pm25	2018-12-01 06:06:00	56.8899994	1	1020	2.0999999	1.04999995	2018-11-30 22:06:00
Plymouth	City	Amador	california	38.4818993	-120.845001	1.97000003	34	Good air quality	pm25	2018-12-01 06:06:00	50.9700012	1	1018	3.5999999	0	2018-11-30 22:06:00
Point Arena	City	Mendocino	california	38.9087982	-123.693001	1.77999997	36	Good air quality	pm25	2018-12-01 06:06:00	50	90	1018	1.5	0	2018-11-30 22:06:00
Pomona	City	Los Angeles	california	34.0550995	-117.75	3.05999994	65	Moderate air quality	pm25	2018-12-01 06:06:00	62.9399986	1	1016	0.529999971	0	2018-11-30 22:06:00
Port Hueneme	City	Ventura	california	34.1478004	-119.195	2.96000004	55	Moderate air quality	pm25	2018-12-01 06:06:00	63.7200012	40	1016	3.5999999	0	2018-11-30 22:06:00
Porterville	City	Tulare	california	36.0652008	-119.016998	2.57999992	115	Unhealthy for sensitive groups air quality	pm25	2018-12-01 06:06:00	54.3600006	90	1019	0.879999995	0	2018-11-30 22:06:00
Portola	City	Plumas	california	39.8105011	-120.469002	1.86000001	71	Moderate air quality	pm25	2018-12-01 06:06:00	41.2299995	1	1015	4.0999999	0.25	2018-11-30 22:06:00
Portola Valley	Town	San Mateo	california	37.3841019	-122.235001	2.11999989	35	Good air quality	pm25	2018-12-01 06:06:00	56.7900009	1	1020	2.0999999	1.01999998	2018-11-30 22:06:00
Poway	City	San Diego	california	32.9627991	-117.036003	3.4000001	39	Good air quality	pm25	2018-12-01 06:06:00	62.9599991	40	1016	2.5999999	0	2018-11-30 22:06:00
Rancho Cordova	City	Sacramento	california	38.5890999	-121.303001	1.87	55	Moderate air quality	pm25	2018-12-01 06:06:00	55.4500008	1	1019	2.5999999	0	2018-11-30 22:06:00
Rancho Cucamonga	City	San Bernardino	california	34.1063995	-117.593002	3.05999994	51	Moderate air quality	pm25	2018-12-01 06:06:00	63.0299988	1	1016	2.0999999	0	2018-11-30 22:06:00
Rancho Mirage	City	Riverside	california	33.7397003	-116.413002	3.24000001	38	Good air quality	o3	2018-12-01 06:06:00	62.6399994	1	1016	1.11000001	0	2018-11-30 22:06:00
Rancho Palos Verdes	City	Los Angeles	california	33.7444992	-118.387001	3.13000011	39	Good air quality	pm25	2018-12-01 06:06:00	63.3600006	1	1015	2.5999999	0	2018-11-30 22:06:00
Rancho Santa Margarita	City	Orange	california	33.6402016	-117.602997	3.17000008	44	Good air quality	pm25	2018-12-01 06:06:00	62.4900017	1	1016	0.829999983	0	2018-11-30 22:06:00
Red Bluff	City	Tehama	california	40.1785011	-122.236	1.62	44	Good air quality	pm25	2018-12-01 06:06:00	54.4500008	90	1017	1.5	0	2018-11-30 22:06:00
Redding	City	Shasta	california	40.5864983	-122.391998	1.52999997	86	Moderate air quality	pm25	2018-12-01 06:06:00	50.6800003	90	1016	2.0999999	0	2018-11-30 22:06:00
Redlands	City	San Bernardino	california	34.0555992	-117.182999	3.0999999	69	Moderate air quality	pm25	2018-12-01 06:06:00	59.7900009	1	1016	0.709999979	0	2018-11-30 22:06:00
Redondo Beach	City	Los Angeles	california	33.8492012	-118.388	3.04999995	63	Moderate air quality	pm25	2018-12-01 06:06:00	63.3600006	1	1015	2.5999999	0	2018-11-30 22:06:00
Redwood City	City	San Mateo	california	37.485199	-122.236	2.11999989	54	Moderate air quality	pm25	2018-12-01 06:06:00	57.7400017	1	1020	2.0999999	1.13999999	2018-11-30 22:06:00
Reedley	City	Fresno	california	36.5962982	-119.449997	2.46000004	79	Moderate air quality	pm25	2018-12-01 06:06:00	52.9700012	1	1018	1.90999997	0	2018-11-30 22:06:00
Rialto	City	San Bernardino	california	34.1063995	-117.370003	3.02999997	66	Moderate air quality	pm25	2018-12-01 06:06:00	61.4099998	1	1016	0.529999971	0	2018-11-30 22:06:00
Richmond	City	Contra Costa	california	37.9357986	-122.348	1.97000003	64	Moderate air quality	pm25	2018-12-01 06:06:00	58.1899986	1	1020	2.0999999	1.16999996	2018-11-30 22:06:00
Ridgecrest	City	Kern	california	35.6225014	-117.670998	2.76999998	49	Good air quality	pm25	2018-12-01 06:06:00	60.9799995	1	1013	2.5999999	0	2018-11-30 22:06:00
Rio Dell	City	Humboldt	california	40.4992981	-124.106003	1.55999994	26	Good air quality	o3	2018-12-01 06:06:00	47.7000008	75	1017	4.5999999	0	2018-11-30 22:06:00
Rio Vista	City	Solano	california	38.1557999	-121.691002	1.94000006	55	Moderate air quality	pm25	2018-12-01 06:06:00	57.7400017	1	1019	2.0999999	0.889999986	2018-11-30 22:06:00
Ripon	City	San Joaquin	california	37.7394981	-121.135002	2.08999991	56	Moderate air quality	pm25	2018-12-01 06:06:00	53.4199982	1	1019	3.0999999	2.46000004	2018-11-30 22:06:00
Riverbank	City	Stanislaus	california	37.7360001	-120.934998	2.1099999	57	Moderate air quality	pm25	2018-12-01 06:06:00	52.2999992	1	1019	1.5	2.42000008	2018-11-30 22:06:00
Riverside	City	Riverside	california	33.9805984	-117.375	3.07999992	76	Moderate air quality	pm25	2018-12-01 06:06:00	61.9199982	1	1016	0.529999971	0	2018-11-30 22:06:00
Rocklin	City	Placer	california	38.790699	-121.236	1.87	59	Moderate air quality	pm25	2018-12-01 06:06:00	52.4099998	1	1018	3.5999999	0.50999999	2018-11-30 22:06:00
Rohnert Park	City	Sonoma	california	38.3395996	-122.700996	1.88	29	Good air quality	o3	2018-12-01 06:06:00	59.2299995	1	1019	1.00999999	0	2018-11-30 22:06:00
Rolling Hills	City	Los Angeles	california	33.757	-118.353996	3.04999995	39	Good air quality	pm25	2018-12-01 06:06:00	63.3600006	1	1015	2.5999999	0	2018-11-30 22:06:00
Rolling Hills Estates	City	Los Angeles	california	33.7877998	-118.358002	3.04999995	53	Moderate air quality	pm25	2018-12-01 06:06:00	63.3600006	1	1015	2.5999999	0	2018-11-30 22:06:00
Rosemead	City	Los Angeles	california	34.0806007	-118.072998	3	64	Moderate air quality	pm25	2018-12-01 06:06:00	63.2700005	20	1015	1.46000004	0	2018-11-30 22:06:00
Roseville	City	Placer	california	38.7521019	-121.288002	1.83000004	57	Moderate air quality	pm25	2018-12-01 06:06:00	52.4099998	1	1018	3.5999999	0.50999999	2018-11-30 22:06:00
Ross	Town	Marin	california	37.9623985	-122.555	1.96000004	37	Good air quality	pm25	2018-12-01 06:06:00	58.5499992	20	1020	3.0999999	0.50999999	2018-11-30 22:06:00
Sacramento	City	Sacramento	california	38.5816002	-121.494003	1.87	63	Moderate air quality	pm25	2018-12-01 06:06:00	55.4399986	1	1019	2.0999999	0	2018-11-30 22:06:00
St. Helena	City	Napa	california	38.5051994	-122.470001	1.86000001	38	Good air quality	pm25	2018-12-01 06:06:00	58.9099998	1	1019	1.00999999	0	2018-11-30 22:06:00
Salinas	City	Monterey	california	36.6777	-121.655998	2.31999993	58	Moderate air quality	pm25	2018-12-01 06:06:00	54.25	1	1020	3.38000011	0.379999995	2018-11-30 22:06:00
San Anselmo	Town	Marin	california	37.9746017	-122.561996	1.96000004	37	Good air quality	pm25	2018-12-01 06:06:00	58.3300018	20	1020	3.0999999	0.50999999	2018-11-30 22:06:00
San Bernardino	City	San Bernardino	california	34.1082993	-117.290001	3.02999997	62	Moderate air quality	pm25	2018-12-01 06:06:00	60.8699989	1	1016	0.709999979	0	2018-11-30 22:06:00
San Bruno	City	San Mateo	california	37.6305008	-122.411003	2.03999996	65	Moderate air quality	pm25	2018-12-01 06:06:00	57.8499985	20	1020	3.0999999	1.13999999	2018-11-30 22:06:00
San Carlos	City	San Mateo	california	37.5071983	-122.261002	2.03999996	58	Moderate air quality	pm25	2018-12-01 06:06:00	57.7400017	1	1020	2.0999999	1.13999999	2018-11-30 22:06:00
San Clemente	City	Orange	california	33.4273987	-117.612999	3.20000005	56	Moderate air quality	pm25	2018-12-01 06:06:00	62.8199997	1	1016	0.829999983	0	2018-11-30 22:06:00
San Diego	City	San Diego	california	32.7156982	-117.161003	3.47000003	84	Moderate air quality	pm25	2018-12-01 06:06:00	63.3400002	40	1016	2.5999999	0	2018-11-30 22:06:00
San Dimas	City	Los Angeles	california	34.1067009	-117.806999	3.01999998	63	Moderate air quality	pm25	2018-12-01 06:06:00	62.9399986	1	1016	0.529999971	0	2018-11-30 22:06:00
San Fernando	City	Los Angeles	california	34.2818985	-118.439003	3	65	Moderate air quality	pm25	2018-12-01 06:06:00	62.6500015	1	1015	2.0999999	0	2018-11-30 22:06:00
San Francisco	City and county	San Francisco	california	37.7748985	-122.418999	1.97000003	65	Moderate air quality	pm25	2018-12-01 06:06:00	58.0499992	20	1020	3.0999999	1.13999999	2018-11-30 22:06:00
San Gabriel	City	Los Angeles	california	34.0960999	-118.106003	3	63	Moderate air quality	pm25	2018-12-01 06:06:00	63.2700005	1	1015	2.0999999	0	2018-11-30 22:06:00
San Jacinto	City	Riverside	california	33.7839012	-116.959	3.16000009	61	Moderate air quality	pm25	2018-12-01 06:06:00	61	1	1016	0.910000026	0	2018-11-30 22:06:00
San Joaquin	City	Fresno	california	36.6066017	-120.189003	2.3900001	64	Moderate air quality	pm25	2018-12-01 06:06:00	52.7900009	1	1018	3.91000009	0	2018-11-30 22:06:00
San Jose	City	Santa Clara	california	37.3381996	-121.886002	2.11999989	58	Moderate air quality	pm25	2018-12-01 06:06:00	56.4599991	1	1020	2.0999999	1.01999998	2018-11-30 22:06:00
San Juan Bautista	City	San Benito	california	36.8455009	-121.538002	2.25	23	Good air quality	o3	2018-12-01 06:06:00	54.2700005	1	1020	3.38000011	0.589999974	2018-11-30 22:06:00
San Juan Capistrano	City	Orange	california	33.5018997	-117.663002	3.17000008	61	Moderate air quality	pm25	2018-12-01 06:06:00	62.4900017	1	1016	0.829999983	0	2018-11-30 22:06:00
San Leandro	City	Alameda	california	37.7248993	-122.155998	2.02999997	51	Moderate air quality	pm25	2018-12-01 06:06:00	58.0499992	1	1020	2.0999999	1.13999999	2018-11-30 22:06:00
San Luis Obispo	City	San Luis Obispo	california	35.2827988	-120.660004	2.71000004	20	Good air quality	o3	2018-12-01 06:06:00	58.2599983	1	1019	1.92999995	0	2018-11-30 22:06:00
San Marcos	City	San Diego	california	33.1433983	-117.166	3.32999992	47	Good air quality	pm25	2018-12-01 06:06:00	62.9599991	40	1016	2.5999999	0	2018-11-30 22:06:00
San Marino	City	Los Angeles	california	34.1213989	-118.106003	3	63	Moderate air quality	pm25	2018-12-01 06:06:00	62.6899986	1	1015	2.0999999	0	2018-11-30 22:06:00
San Mateo	City	San Mateo	california	37.5629997	-122.325996	2.03999996	66	Moderate air quality	pm25	2018-12-01 06:06:00	57.6699982	1	1020	2.0999999	1.13999999	2018-11-30 22:06:00
San Pablo	City	Contra Costa	california	37.962101	-122.346001	1.97000003	61	Moderate air quality	pm25	2018-12-01 06:06:00	58.3499985	1	1020	2.0999999	1.16999996	2018-11-30 22:06:00
San Rafael	City	Marin	california	37.9734993	-122.530998	1.96000004	59	Moderate air quality	pm25	2018-12-01 06:06:00	58.4099998	20	1020	3.0999999	0.50999999	2018-11-30 22:06:00
San Ramon	City	Contra Costa	california	37.7798996	-121.977997	2.01999998	53	Moderate air quality	pm25	2018-12-01 06:06:00	57.9000015	1	1020	2.0999999	1.04999995	2018-11-30 22:06:00
Sand City	City	Monterey	california	36.6171989	-121.848	2.30999994	25	Good air quality	pm25	2018-12-01 06:06:00	54.2299995	1	1020	4.0999999	0.379999995	2018-11-30 22:06:00
Sanger	City	Fresno	california	36.7080002	-119.556	2.44000006	73	Moderate air quality	pm25	2018-12-01 06:06:00	53.1699982	1	1018	1.90999997	0	2018-11-30 22:06:00
Santa Ana	City	Orange	california	33.7454987	-117.867996	3.11999989	68	Moderate air quality	pm25	2018-12-01 06:06:00	62.8899994	20	1015	2.0999999	0	2018-11-30 22:06:00
Santa Barbara	City	Santa Barbara	california	34.4207993	-119.697998	2.92000008	57	Moderate air quality	pm25	2018-12-01 06:06:00	63.5499992	1	1018	4.0999999	0	2018-11-30 22:06:00
Santa Clara	City	Santa Clara	california	37.3540993	-121.955002	2.11999989	56	Moderate air quality	pm25	2018-12-01 06:06:00	56.7000008	1	1020	2.0999999	1.01999998	2018-11-30 22:06:00
Santa Clarita	City	Los Angeles	california	34.3917007	-118.542999	2.97000003	30	Good air quality	o3	2018-12-01 06:06:00	62.2200012	1	1015	2.0999999	0	2018-11-30 22:06:00
Santa Cruz	City	Santa Cruz	california	36.9740982	-122.030998	2.23000002	56	Moderate air quality	pm25	2018-12-01 06:06:00	54.5699997	1	1020	2.0999999	0.889999986	2018-11-30 22:06:00
Santa Fe Springs	City	Los Angeles	california	33.9472008	-118.084999	3.04999995	58	Moderate air quality	pm25	2018-12-01 06:06:00	63.1599998	20	1015	1.46000004	0	2018-11-30 22:06:00
Santa Maria	City	Santa Barbara	california	34.9529991	-120.435997	2.79999995	47	Good air quality	pm25	2018-12-01 06:06:00	59.4700012	1	1018	4.5999999	0	2018-11-30 22:06:00
Santa Monica	City	Los Angeles	california	34.0195007	-118.490997	2.98000002	73	Moderate air quality	pm25	2018-12-01 06:06:00	63.2999992	20	1015	3.0999999	0	2018-11-30 22:06:00
Santa Paula	City	Ventura	california	34.3541985	-119.058998	2.95000005	58	Moderate air quality	pm25	2018-12-01 06:06:00	63.0999985	40	1016	3.5999999	0	2018-11-30 22:06:00
Santa Rosa	City	Sonoma	california	38.4403992	-122.713997	1.88	57	Moderate air quality	pm25	2018-12-01 06:06:00	59	1	1019	4.26000023	0	2018-11-30 22:06:00
Santee	City	San Diego	california	32.8384018	-116.973999	3.46000004	60	Moderate air quality	pm25	2018-12-01 06:06:00	63.2799988	40	1016	2.5999999	0	2018-11-30 22:06:00
Saratoga	City	Santa Clara	california	37.2638016	-122.023003	2.11999989	41	Good air quality	pm25	2018-12-01 06:06:00	56.2599983	1	1020	2.0999999	1.01999998	2018-11-30 22:06:00
Sausalito	City	Marin	california	37.8591003	-122.485001	1.97000003	44	Good air quality	pm25	2018-12-01 06:06:00	58.2299995	20	1020	3.0999999	1.16999996	2018-11-30 22:06:00
Scotts Valley	City	Santa Cruz	california	37.0511017	-122.014999	2.19000006	29	Good air quality	o3	2018-12-01 06:06:00	55.4900017	1	1020	2.0999999	0.75999999	2018-11-30 22:06:00
Seal Beach	City	Orange	california	33.7414017	-118.105003	3.13000011	43	Good air quality	pm25	2018-12-01 06:06:00	63.1599998	20	1015	5.32999992	0	2018-11-30 22:06:00
Seaside	City	Monterey	california	36.6148987	-121.821999	2.30999994	46	Good air quality	pm25	2018-12-01 06:06:00	54.2299995	1	1020	4.0999999	0.379999995	2018-11-30 22:06:00
Sebastopol	City	Sonoma	california	38.4020996	-122.823997	1.87	49	Good air quality	pm25	2018-12-01 06:06:00	59	1	1019	4.26000023	0	2018-11-30 22:06:00
Selma	City	Fresno	california	36.5708008	-119.612	2.44000006	82	Moderate air quality	pm25	2018-12-01 06:06:00	53.1500015	1	1018	1.90999997	0	2018-11-30 22:06:00
Shafter	City	Kern	california	35.5004997	-119.272003	2.6500001	105	Unhealthy for sensitive groups air quality	pm25	2018-12-01 06:06:00	55.6899986	75	1019	1.77999997	0	2018-11-30 22:06:00
Shasta Lake	City	Shasta	california	40.6804008	-122.371002	1.52999997	64	Moderate air quality	pm25	2018-12-01 06:06:00	50.8100014	75	1016	1.5	0	2018-11-30 22:06:00
Sierra Madre	City	Los Angeles	california	34.1617012	-118.053001	3	65	Moderate air quality	pm25	2018-12-01 06:06:00	62.5999985	1	1015	2.0999999	0	2018-11-30 22:06:00
Signal Hill	City	Los Angeles	california	33.8045006	-118.167999	3.04999995	61	Moderate air quality	pm25	2018-12-01 06:06:00	63.25	1	1015	3.0999999	0	2018-11-30 22:06:00
Simi Valley	City	Ventura	california	34.2694016	-118.780998	2.95000005	34	Good air quality	o3	2018-12-01 06:06:00	62.8499985	40	1016	3.5999999	0	2018-11-30 22:06:00
Solana Beach	City	San Diego	california	32.9911995	-117.271004	3.42000008	57	Moderate air quality	pm25	2018-12-01 06:06:00	62.9599991	40	1016	2.5999999	0	2018-11-30 22:06:00
Soledad	City	Monterey	california	36.4247017	-121.325996	2.44000006	57	Moderate air quality	pm25	2018-12-01 06:06:00	53.8199997	1	1020	1.90999997	0.50999999	2018-11-30 22:06:00
Solvang	City	Santa Barbara	california	34.5957985	-120.138	2.86999989	29	Good air quality	pm25	2018-12-01 06:06:00	61.2700005	1	1018	4.5999999	0	2018-11-30 22:06:00
Sonoma	City	Sonoma	california	38.2919006	-122.458	1.89999998	52	Moderate air quality	pm25	2018-12-01 06:06:00	58.75	1	1019	1.00999999	0.25	2018-11-30 22:06:00
Sonora	City	Tuolumne	california	37.9828987	-120.382004	2.13000011	76	Moderate air quality	pm25	2018-12-01 06:06:00	48.8699989	1	1019	1.55999994	4.32000017	2018-11-30 22:06:00
South El Monte	City	Los Angeles	california	34.0519981	-118.046997	3	63	Moderate air quality	pm25	2018-12-01 06:06:00	63.1800003	1	1015	1.46000004	0	2018-11-30 22:06:00
South Gate	City	Los Angeles	california	33.9547005	-118.211998	3.04999995	67	Moderate air quality	pm25	2018-12-01 06:06:00	63.25	1	1015	2.5999999	0	2018-11-30 22:06:00
South Lake Tahoe	City	El Dorado	california	38.9398994	-119.976997	2.1099999	34	Good air quality	o3	2018-12-01 06:06:00	35.2400017	1	1016	1.23000002	0.25	2018-11-30 22:06:00
South Pasadena	City	Los Angeles	california	34.1161003	-118.150002	3	66	Moderate air quality	pm25	2018-12-01 06:06:00	62.6899986	1	1015	2.0999999	0	2018-11-30 22:06:00
South San Francisco	City	San Mateo	california	37.6547012	-122.407997	2.03999996	64	Moderate air quality	pm25	2018-12-01 06:06:00	57.8499985	20	1020	3.0999999	1.13999999	2018-11-30 22:06:00
Stanton	City	Orange	california	33.8028984	-117.992996	3.03999996	53	Moderate air quality	pm25	2018-12-01 06:06:00	62.8300018	20	1015	5.32999992	0	2018-11-30 22:06:00
Stockton	City	San Joaquin	california	37.9576988	-121.291	2.00999999	77	Moderate air quality	pm25	2018-12-01 06:06:00	54.2999992	1	1019	3.0999999	2.46000004	2018-11-30 22:06:00
Suisun City	City	Solano	california	38.2382011	-122.040001	1.94000006	37	Good air quality	pm25	2018-12-01 06:06:00	58.2599983	1	1019	2.0999999	1.00999999	2018-11-30 22:06:00
Sunnyvale	City	Santa Clara	california	37.3688011	-122.036003	2.11999989	57	Moderate air quality	pm25	2018-12-01 06:06:00	56.7999992	1	1020	2.0999999	1.01999998	2018-11-30 22:06:00
Susanville	City	Lassen	california	40.4163017	-120.653	1.73000002	51	Moderate air quality	pm25	2018-12-01 06:06:00	42.7999992	40	1015	3.0999999	0	2018-11-30 22:06:00
Sutter Creek	City	Amador	california	38.3930016	-120.802002	1.97000003	57	Moderate air quality	pm25	2018-12-01 06:06:00	50.2299995	1	1018	1.5	0.50999999	2018-11-30 22:06:00
Taft	City	Kern	california	35.1425018	-119.457001	2.76999998	75	Moderate air quality	pm25	2018-12-01 06:06:00	57.9199982	20	1018	2.0999999	0	2018-11-30 22:06:00
Tehachapi	City	Kern	california	35.1321983	-118.448997	2.95000005	51	Moderate air quality	pm25	2018-12-01 06:06:00	54.8100014	1	1014	11.8000002	0	2018-11-30 22:06:00
Tehama	City	Tehama	california	40.0270996	-122.123001	1.62	21	Good air quality	pm25	2018-12-01 06:06:00	54.4300003	90	1017	1.5	0	2018-11-30 22:06:00
Temecula	City	Riverside	california	33.4935989	-117.148003	3.24000001	53	Moderate air quality	pm25	2018-12-01 06:06:00	61.9000015	1	1016	0.910000026	0	2018-11-30 22:06:00
Temple City	City	Los Angeles	california	34.1072006	-118.057999	3	56	Moderate air quality	pm25	2018-12-01 06:06:00	63.2700005	1	1015	1.46000004	0	2018-11-30 22:06:00
Thousand Oaks	City	Ventura	california	34.1706009	-118.837997	3	60	Moderate air quality	pm25	2018-12-01 06:06:00	62.8499985	40	1016	3.5999999	0	2018-11-30 22:06:00
Tiburon	Town	Marin	california	37.8735008	-122.457001	1.97000003	56	Moderate air quality	pm25	2018-12-01 06:06:00	58.2299995	20	1020	3.0999999	1.16999996	2018-11-30 22:06:00
Torrance	City	Los Angeles	california	33.8358002	-118.341003	3.04999995	49	Good air quality	pm25	2018-12-01 06:06:00	63.25	1	1015	2.5999999	0	2018-11-30 22:06:00
Tracy	City	San Joaquin	california	37.7397003	-121.425003	2.08999991	70	Moderate air quality	pm25	2018-12-01 06:06:00	56.6399994	1	1019	3.0999999	1.51999998	2018-11-30 22:06:00
Trinidad	City	Humboldt	california	41.0592995	-124.142998	1.42999995	22	Good air quality	o3	2018-12-01 06:06:00	48.1500015	75	1015	5.0999999	0	2018-11-30 22:06:00
Truckee	Town	Nevada	california	39.3279991	-120.182999	1.98000002	53	Moderate air quality	pm25	2018-12-01 06:06:00	35.2799988	1	1016	1.13	0.25	2018-11-30 22:06:00
Tulare	City	Tulare	california	36.2076988	-119.347	2.55999994	117	Unhealthy for sensitive groups air quality	pm25	2018-12-01 06:06:00	54.0499992	90	1019	2.1099999	0	2018-11-30 22:06:00
Tulelake	City	Siskiyou	california	41.9560013	-121.476997	1.40999997	52	Moderate air quality	pm25	2018-12-01 06:06:00	33.9799995	75	1011	4.5999999	0	2018-11-30 22:06:00
Turlock	City	Stanislaus	california	37.4947014	-120.847	2.17000008	82	Moderate air quality	pm25	2018-12-01 06:06:00	52.6100006	1	1019	2.0999999	2.42000008	2018-11-30 22:06:00
Tustin	City	Orange	california	33.7420006	-117.823997	3.11999989	37	Good air quality	pm25	2018-12-01 06:06:00	62.5800018	1	1016	0.829999983	0	2018-11-30 22:06:00
Twentynine Palms	City	San Bernardino	california	34.135601	-116.054001	3.1099999	45	Good air quality	o3	2018-12-01 06:06:00	60.9799995	1	1017	2.5999999	0	2018-11-30 22:06:00
Ukiah	City	Mendocino	california	39.1501999	-123.208	1.76999998	61	Moderate air quality	pm25	2018-12-01 06:06:00	50	90	1018	1.5	0	2018-11-30 22:06:00
Union City	City	Alameda	california	37.593399	-122.043999	2.02999997	47	Good air quality	pm25	2018-12-01 06:06:00	57.0200005	1	1020	2.0999999	1.13999999	2018-11-30 22:06:00
Upland	City	San Bernardino	california	34.0974998	-117.648003	3.05999994	57	Moderate air quality	pm25	2018-12-01 06:06:00	63.0099983	1	1016	2.0999999	0	2018-11-30 22:06:00
Vacaville	City	Solano	california	38.3566017	-121.987999	1.88999999	63	Moderate air quality	pm25	2018-12-01 06:06:00	58.0600014	1	1019	2.0999999	0	2018-11-30 22:06:00
Vallejo	City	Solano	california	38.1040993	-122.257004	1.91999996	61	Moderate air quality	pm25	2018-12-01 06:06:00	58.3499985	1	1020	2.0999999	0.50999999	2018-11-30 22:06:00
Ventura	City	Ventura	california	34.2804985	-119.294998	2.94000006	58	Moderate air quality	pm25	2018-12-01 06:06:00	64	1	1016	5.96000004	0	2018-11-30 22:06:00
Vernon	City	Los Angeles	california	34.0038986	-118.230003	3	69	Moderate air quality	pm25	2018-12-01 06:06:00	63.1599998	1	1015	2.5999999	0	2018-11-30 22:06:00
Victorville	City	San Bernardino	california	34.5362015	-117.292999	2.98000002	58	Moderate air quality	pm25	2018-12-01 06:06:00	58.2999992	75	1015	5.0999999	0	2018-11-30 22:06:00
Villa Park	City	Orange	california	33.8139992	-117.821999	3.03999996	54	Moderate air quality	pm25	2018-12-01 06:06:00	62.5600014	1	1016	0.829999983	0	2018-11-30 22:06:00
Visalia	City	Tulare	california	36.3302002	-119.292	2.50999999	117	Unhealthy for sensitive groups air quality	pm25	2018-12-01 06:06:00	53.6500015	90	1019	1.90999997	0	2018-11-30 22:06:00
Vista	City	San Diego	california	33.2000008	-117.242996	3.32999992	54	Moderate air quality	pm25	2018-12-01 06:06:00	63.1800003	1	1016	1.21000004	0	2018-11-30 22:06:00
Walnut	City	Los Angeles	california	34.0203018	-117.864998	3.01999998	57	Moderate air quality	pm25	2018-12-01 06:06:00	62.9199982	1	1015	0.529999971	0	2018-11-30 22:06:00
Walnut Creek	City	Contra Costa	california	37.910099	-122.065002	2	57	Moderate air quality	pm25	2018-12-01 06:06:00	58.0999985	1	1020	2.0999999	1.13999999	2018-11-30 22:06:00
Wasco	City	Kern	california	35.594101	-119.341003	2.6500001	90	Moderate air quality	pm25	2018-12-01 06:06:00	55.7400017	75	1019	1.77999997	0	2018-11-30 22:06:00
Waterford	City	Stanislaus	california	37.6413002	-120.760002	2.1099999	73	Moderate air quality	pm25	2018-12-01 06:06:00	51.0800018	1	1019	2.0999999	2.42000008	2018-11-30 22:06:00
Watsonville	City	Santa Cruz	california	36.9101982	-121.757004	2.23000002	56	Moderate air quality	pm25	2018-12-01 06:06:00	54.5900002	1	1020	1.36000001	0.889999986	2018-11-30 22:06:00
Weed	City	Siskiyou	california	41.4225998	-122.386002	1.48000002	61	Moderate air quality	pm25	2018-12-01 06:06:00	42.3300018	90	1013	2.5999999	0	2018-11-30 22:06:00
West Covina	City	Los Angeles	california	34.0685997	-117.939003	3.01999998	67	Moderate air quality	pm25	2018-12-01 06:06:00	62.9199982	1	1015	1.46000004	0	2018-11-30 22:06:00
West Hollywood	City	Los Angeles	california	34.0900002	-118.362	2.98000002	66	Moderate air quality	pm25	2018-12-01 06:06:00	63.3699989	1	1015	2.0999999	0	2018-11-30 22:06:00
West Sacramento	City	Yolo	california	38.5805016	-121.529999	1.86000001	54	Moderate air quality	pm25	2018-12-01 06:06:00	55.4199982	1	1019	2.0999999	0	2018-11-30 22:06:00
Westlake Village	City	Los Angeles	california	34.1465988	-118.806999	3	40	Good air quality	pm25	2018-12-01 06:06:00	62.8499985	40	1016	3.5999999	0	2018-11-30 22:06:00
Westminster	City	Orange	california	33.759201	-117.989998	3.03999996	56	Moderate air quality	pm25	2018-12-01 06:06:00	62.8300018	20	1015	5.32999992	0	2018-11-30 22:06:00
Westmorland	City	Imperial	california	33.0373001	-115.621002	3.27999997	80	Moderate air quality	pm25	2018-12-01 06:06:00	69.1500015	1	1014	7.69999981	0	2018-11-30 22:06:00
Wheatland	City	Yuba	california	39.0098991	-121.422997	1.79999995	41	Good air quality	pm25	2018-12-01 06:06:00	55.8699989	1	1017	3.0999999	0	2018-11-30 22:06:00
Whittier	City	Los Angeles	california	33.9791985	-118.032997	3.04999995	60	Moderate air quality	pm25	2018-12-01 06:06:00	63.5499992	1	1015	1.46000004	0	2018-11-30 22:06:00
Wildomar	City	Riverside	california	33.5988998	-117.279999	3.19000006	35	Good air quality	o3	2018-12-01 06:06:00	61.8800011	1	1016	0.910000026	0	2018-11-30 22:06:00
Williams	City	Colusa	california	39.1545982	-122.149002	1.75999999	68	Moderate air quality	pm25	2018-12-01 06:06:00	57.6500015	1	1018	2.0999999	0	2018-11-30 22:06:00
Willits	City	Mendocino	california	39.4095993	-123.356003	1.73000002	44	Good air quality	pm25	2018-12-01 06:06:00	50	90	1018	1.5	0	2018-11-30 22:06:00
Willows	City	Glenn	california	39.5242996	-122.194	1.69000006	55	Moderate air quality	pm25	2018-12-01 06:06:00	57.0200005	20	1018	2.5999999	0	2018-11-30 22:06:00
Windsor	Town	Sonoma	california	38.5471001	-122.816002	1.83000004	40	Good air quality	pm25	2018-12-01 06:06:00	59	1	1019	4.26000023	0	2018-11-30 22:06:00
Winters	City	Yolo	california	38.5248985	-121.971001	1.85000002	56	Moderate air quality	pm25	2018-12-01 06:06:00	57.3300018	1	1019	2.0999999	0	2018-11-30 22:06:00
Woodlake	City	Tulare	california	36.4136009	-119.098999	2.52999997	84	Moderate air quality	pm25	2018-12-01 06:06:00	52.9900017	90	1019	1.90999997	0	2018-11-30 22:06:00
Woodland	City	Yolo	california	38.6785011	-121.773003	1.85000002	71	Moderate air quality	pm25	2018-12-01 06:06:00	57.1599998	1	1019	2.0999999	0	2018-11-30 22:06:00
Woodside	Town	San Mateo	california	37.4299011	-122.253998	2.0999999	51	Moderate air quality	pm25	2018-12-01 06:06:00	56.7700005	1	1020	2.0999999	1.01999998	2018-11-30 22:06:00
Yorba Linda	City	Orange	california	33.8885002	-117.813004	3.03999996	57	Moderate air quality	pm25	2018-12-01 06:06:00	62.9199982	1	1016	2.0999999	0	2018-11-30 22:06:00
Yountville	Town	Napa	california	38.4015999	-122.361	1.89999998	30	Good air quality	pm25	2018-12-01 06:06:00	58.8899994	1	1019	1.00999999	0	2018-11-30 22:06:00
Yreka	City	Siskiyou	california	41.7354012	-122.634003	1.40999997	56	Moderate air quality	pm25	2018-12-01 06:06:00	41.7599983	75	1013	1.02999997	0	2018-11-30 22:06:00
Yuba City	City	Sutter	california	39.1403999	-121.616997	1.77999997	58	Moderate air quality	pm25	2018-12-01 06:06:00	56.1199989	1	1017	3.0999999	0	2018-11-30 22:06:00
Yucaipa	City	San Bernardino	california	34.0335999	-117.042999	3.0999999	58	Moderate air quality	pm25	2018-12-01 06:06:00	59.7900009	1	1016	0.709999979	0	2018-11-30 22:06:00
Yucca Valley	Town	San Bernardino	california	34.1142006	-116.431999	3.13000011	48	Good air quality	o3	2018-12-01 06:06:00	60.9799995	1	1017	2.5999999	0	2018-11-30 22:06:00
Adelanto	City	San Bernardino	california	34.5828018	-117.408997	2.4000001	33	Good air quality	pm25	2018-12-04 23:58:00	57.6699982	40	1017	7.69999981	0	2018-12-04 15:58:00
Agoura Hills	City	Los Angeles	california	34.1533012	-118.762001	2.44000006	47	Good air quality	pm25	2018-12-04 23:57:00	66.4899979	40	1014	5.69999981	0	2018-12-04 15:58:00
Alameda	City	Alameda	california	37.7652016	-122.241997	1.63999999	63	Moderate air quality	pm25	2018-12-05 00:15:00	52.6800003	90	1014	5.69999981	0	2018-12-04 15:58:00
Albany	City	Alameda	california	37.8869019	-122.297997	1.62	69	Moderate air quality	pm25	2018-12-05 00:15:00	52.6500015	75	1014	2.0999999	0	2018-12-04 15:58:00
Alhambra	City	Los Angeles	california	34.0952988	-118.126999	2.45000005	59	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	1	1014	4.5999999	0	2018-12-04 15:58:00
Aliso Viejo	City	Orange	california	33.5685005	-117.725998	2.57999992	42	Good air quality	pm25	2018-12-05 00:15:00	65.75	1	1015	2.5999999	0	2018-12-04 15:58:00
Alturas	City	Modoc	california	41.4870987	-120.542	1.32000005	44	Good air quality	pm25	2018-12-04 23:55:00	35.0600014	90	1019	2.5999999	0	2018-12-04 15:58:00
Amador City	City	Amador	california	38.4193993	-120.823997	1.63	54	Moderate air quality	pm25	2018-12-05 00:15:00	51.0999985	90	1014	0.860000014	0	2018-12-04 15:58:00
American Canyon	City	Napa	california	38.1749001	-122.261002	1.58000004	28	Good air quality	pm25	2018-12-05 00:20:00	52.2700005	75	1014	2.0999999	0	2018-12-04 15:58:00
Anaheim	City	Orange	california	33.8366013	-117.914001	2.49000001	52	Moderate air quality	pm25	2018-12-04 23:58:00	66.8099976	20	1014	4.0999999	0	2018-12-04 15:58:00
Anderson	City	Shasta	california	40.4482002	-122.297997	1.38999999	80	Moderate air quality	pm25	2018-12-05 00:10:00	52.3600006	1	1015	4.5999999	0	2018-12-04 15:58:00
Angels Camp	City	Calaveras	california	38.0677986	-120.539001	1.67999995	70	Moderate air quality	pm25	2018-12-05 00:15:00	51.7999992	75	1014	3.21000004	0	2018-12-04 15:58:00
Antioch	City	Contra Costa	california	38.0049019	-121.806	1.60000002	63	Moderate air quality	pm25	2018-12-05 00:20:00	52.2299995	40	1014	1.75999999	0	2018-12-04 15:58:00
Apple Valley	Town	San Bernardino	california	34.5008011	-117.185997	2.43000007	31	Good air quality	pm25	2018-12-04 23:58:00	58.8400002	1	1018	5.0999999	0	2018-12-04 15:58:00
Arcadia	City	Los Angeles	california	34.1397018	-118.035004	2.45000005	52	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	1	1014	4.5999999	0	2018-12-04 15:58:00
Arcata	City	Humboldt	california	40.8665009	-124.083	1.34000003	30	Good air quality	o3	2018-12-04 23:55:00	53.3300018	90	1013	1.5	0	2018-12-04 15:58:00
Arroyo Grande	City	San Luis Obispo	california	35.1185989	-120.591003	2.0999999	43	Good air quality	pm25	2018-12-04 23:56:00	58.8400002	90	1012	4.61000013	0	2018-12-04 15:58:00
Artesia	City	Los Angeles	california	33.865799	-118.083	2.49000001	60	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	20	1014	4.0999999	0	2018-12-04 15:58:00
Arvin	City	Kern	california	35.2018013	-118.833	2.16000009	40	Good air quality	pm25	2018-12-05 00:00:00	57.5400009	1	1013	8.69999981	0	2018-12-04 15:58:00
Atascadero	City	San Luis Obispo	california	35.489399	-120.670998	2.07999992	57	Moderate air quality	pm25	2018-12-04 23:56:00	59.1399994	90	1013	2.0999999	0	2018-12-04 15:58:00
Atherton	Town	San Mateo	california	37.4612999	-122.197998	1.73000002	82	Moderate air quality	pm25	2018-12-05 00:15:00	52.7400017	90	1014	2.0999999	0	2018-12-04 15:58:00
Atwater	City	Merced	california	37.3476982	-120.609001	1.76999998	76	Moderate air quality	pm25	2018-12-04 23:53:00	55.0800018	1	1014	2.0999999	0	2018-12-04 15:58:00
Auburn	City	Placer	california	38.8965988	-121.077003	1.58000004	38	Good air quality	pm25	2018-12-05 00:15:00	50.2299995	90	1015	0.75999999	0	2018-12-04 15:58:00
Avalon	City	Los Angeles	california	33.3428001	-118.328003	2.56999993	51	Moderate air quality	pm25	2018-12-04 23:58:00	66.2200012	20	1015	3.0999999	0	2018-12-04 15:58:00
Avenal	City	Kings	california	36.0041008	-120.128998	1.95000005	47	Good air quality	pm25	2018-12-04 23:56:00	54.3600006	90	1014	4.0999999	0	2018-12-04 15:58:00
Azusa	City	Los Angeles	california	34.1335983	-117.907997	2.47000003	58	Moderate air quality	pm25	2018-12-04 23:58:00	66.8099976	1	1014	5.0999999	0	2018-12-04 15:58:00
Bakersfield	City	Kern	california	35.3732986	-119.018997	2.0999999	69	Moderate air quality	pm25	2018-12-05 00:15:00	58.9500008	1	1013	8.69999981	0	2018-12-04 15:58:00
Baldwin Park	City	Los Angeles	california	34.0853004	-117.960999	2.47000003	61	Moderate air quality	pm25	2018-12-04 23:58:00	66.8099976	1	1013	3.0999999	0	2018-12-04 15:58:00
Banning	City	Riverside	california	33.9255981	-116.875999	2.5999999	43	Good air quality	o3	2018-12-05 00:35:00	64.1500015	1	1015	6.69999981	0	2018-12-04 15:58:00
Barstow	City	San Bernardino	california	34.8958015	-117.016998	2.32999992	31	Good air quality	o3	2018-12-04 23:55:00	55.4500008	1	1018	5.0999999	0	2018-12-04 15:58:00
Beaumont	City	Riverside	california	33.9295006	-116.976997	2.5999999	54	Moderate air quality	pm25	2018-12-05 00:15:00	64.9599991	1	1015	7.19999981	0	2018-12-04 15:58:00
Bell	City	Los Angeles	california	33.9775009	-118.186996	2.49000001	63	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	1	1014	2.5999999	0	2018-12-04 15:58:00
Bell Gardens	City	Los Angeles	california	33.9653015	-118.151001	2.49000001	62	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	20	1014	4.0999999	0	2018-12-04 15:58:00
Bellflower	City	Los Angeles	california	33.8816986	-118.116997	2.49000001	55	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	20	1014	4.0999999	0	2018-12-04 15:58:00
Belmont	City	San Mateo	california	37.5201988	-122.276001	1.65999997	81	Moderate air quality	pm25	2018-12-05 00:15:00	52.4099998	90	1014	2.0999999	0	2018-12-04 15:58:00
Belvedere	City	Marin	california	37.8726997	-122.463997	1.62	31	Good air quality	pm25	2018-12-05 00:15:00	52.8100014	75	1014	2.0999999	0	2018-12-04 15:58:00
Benicia	City	Solano	california	38.0494003	-122.158997	1.60000002	33	Good air quality	pm25	2018-12-05 00:20:00	52.3800011	75	1014	2.0999999	0	2018-12-04 15:58:00
Berkeley	City	Alameda	california	37.8716011	-122.273003	1.62	68	Moderate air quality	pm25	2018-12-05 00:15:00	52.6500015	75	1014	2.0999999	0	2018-12-04 15:58:00
Beverly Hills	City	Los Angeles	california	34.0736008	-118.400002	2.43000007	57	Moderate air quality	pm25	2018-12-04 23:58:00	66.7399979	20	1014	4.0999999	0	2018-12-04 15:58:00
Big Bear Lake	City	San Bernardino	california	34.2439003	-116.911003	2.69000006	37	Good air quality	pm25	2018-12-04 23:58:00	58.5299988	1	1015	7.19999981	0	2018-12-04 15:58:00
Biggs	City	Butte	california	39.4123993	-121.712997	1.5	55	Moderate air quality	pm25	2018-12-05 00:15:00	51.0099983	75	1016	2.1099999	0	2018-12-04 15:58:00
Bishop	City	Inyo	california	37.3614006	-118.400002	1.99000001	56	Moderate air quality	pm25	2018-12-05 00:15:00	23.7199993	90	1019	0.860000014	0	2018-12-04 15:58:00
Blue Lake	City	Humboldt	california	40.8829002	-123.984001	1.34000003	31	Good air quality	o3	2018-12-05 00:35:00	53.8699989	1	1013	3.1099999	0	2018-12-04 15:58:00
Blythe	City	Riverside	california	33.6178017	-114.587997	2.55999994	34	Good air quality	o3	2018-12-05 00:42:00	54.5600014	20	1003.64001	1.75999999	0	2018-12-04 15:58:00
Bradbury	City	Los Angeles	california	34.1469002	-117.971001	2.47000003	32	Good air quality	pm25	2018-12-04 23:58:00	67.2399979	1	1014	5.0999999	0	2018-12-04 15:58:00
Brawley	City	Imperial	california	32.9786987	-115.529999	2.71000004	73	Moderate air quality	pm25	2018-12-04 23:56:00	64.1100006	75	1018	2.0999999	0	2018-12-04 15:58:00
Brea	City	Orange	california	33.9165001	-117.900002	2.49000001	53	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	1	1013	3.0999999	0	2018-12-04 15:58:00
Brentwood	City	Contra Costa	california	37.9319	-121.695999	1.64999998	64	Moderate air quality	pm25	2018-12-05 00:20:00	52.2900009	40	1014	1.75999999	0	2018-12-04 15:58:00
Brisbane	City	San Mateo	california	37.6808014	-122.400002	1.65999997	35	Good air quality	pm25	2018-12-05 00:15:00	53.4000015	90	1013	3.0999999	0	2018-12-04 15:58:00
Buellton	City	Santa Barbara	california	34.6136017	-120.193001	2.25	48	Good air quality	pm25	2018-12-05 00:15:00	60.1199989	40	1013	5.0999999	0	2018-12-04 15:58:00
Buena Park	City	Orange	california	33.8674011	-117.998001	2.49000001	60	Moderate air quality	pm25	2018-12-04 23:58:00	66.8099976	1	1013	3.0999999	0	2018-12-04 15:58:00
Burbank	City	Los Angeles	california	34.1808014	-118.308998	2.43000007	66	Moderate air quality	pm25	2018-12-04 23:58:00	67.0800018	1	1014	4.5999999	0	2018-12-04 15:58:00
Burlingame	City	San Mateo	california	37.5778999	-122.348	1.65999997	68	Moderate air quality	pm25	2018-12-05 00:15:00	52.5200005	90	1013	3.0999999	0	2018-12-04 15:58:00
Calabasas	City	Los Angeles	california	34.1366997	-118.661003	2.44000006	34	Good air quality	o3	2018-12-04 23:58:00	66.6100006	5	1015	1.55999994	0	2018-12-04 15:58:00
Calexico	City	Imperial	california	32.6789017	-115.499001	2.75999999	72	Moderate air quality	pm25	2018-12-04 23:56:00	64.1500015	75	1018	2.0999999	0	2018-12-04 15:58:00
California City	City	Kern	california	35.1258011	-117.986	2.25999999	37	Good air quality	o3	2018-12-05 00:00:00	54.1399994	1	1018	10.8000002	0	2018-12-04 15:58:00
Calimesa	City	Riverside	california	34.0038986	-117.061996	2.54999995	56	Moderate air quality	pm25	2018-12-05 00:35:00	64.6200027	1	1015	6.69999981	0	2018-12-04 15:58:00
Calipatria	City	Imperial	california	33.1255989	-115.514	2.6500001	70	Moderate air quality	pm25	2018-12-04 23:56:00	64.1100006	75	1018	2.0999999	0	2018-12-04 15:58:00
Calistoga	City	Napa	california	38.5788002	-122.580002	1.54999995	53	Moderate air quality	pm25	2018-12-05 00:20:00	52.75	90	1014	3.5999999	0	2018-12-04 15:58:00
Camarillo	City	Ventura	california	34.2164001	-119.038002	2.4000001	61	Moderate air quality	pm25	2018-12-04 23:57:00	65.2799988	40	1014	5.69999981	0	2018-12-04 15:58:00
Campbell	City	Santa Clara	california	37.2872009	-121.949997	1.73000002	68	Moderate air quality	pm25	2018-12-05 00:15:00	52.8600006	90	1014	2.0999999	0	2018-12-04 15:58:00
Canyon Lake	City	Riverside	california	33.6850014	-117.273003	2.5999999	33	Good air quality	o3	2018-12-05 00:35:00	64.9800034	1	1015	6.69999981	0	2018-12-04 15:58:00
Capitola	City	Santa Cruz	california	36.9752007	-121.953003	1.79999995	81	Moderate air quality	pm25	2018-12-05 00:15:00	54.4099998	90	1014	2.5999999	1.01999998	2018-12-04 15:58:00
Carlsbad	City	San Diego	california	33.1581001	-117.350998	2.6500001	51	Moderate air quality	pm25	2018-12-05 00:15:00	64.0800018	1	1015	2.5999999	0	2018-12-04 15:58:00
Carmel-by-the-Sea	City	Monterey	california	36.5551987	-121.922997	1.84000003	55	Moderate air quality	pm25	2018-12-05 00:15:00	55.2400017	90	1013	3.0999999	1.01999998	2018-12-04 15:58:00
Carpinteria	City	Santa Barbara	california	34.3988991	-119.517998	2.32999992	48	Good air quality	o3	2018-12-05 00:15:00	61.7700005	40	1013	5.0999999	0	2018-12-04 15:58:00
Carson	City	Los Angeles	california	33.8316994	-118.281998	2.49000001	60	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	20	1014	3.25999999	0	2018-12-04 15:58:00
Cathedral City	City	Riverside	california	33.7804985	-116.467003	2.53999996	33	Good air quality	pm25	2018-12-05 00:35:00	61.75	1	1015	6.69999981	0	2018-12-04 15:58:00
Ceres	City	Stanislaus	california	37.5948982	-120.958	1.72000003	84	Moderate air quality	pm25	2018-12-05 00:15:00	52.9000015	90	1014	2.0999999	0	2018-12-04 15:58:00
Cerritos	City	Los Angeles	california	33.8582993	-118.065002	2.49000001	55	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	20	1014	4.0999999	0	2018-12-04 15:58:00
Chico	City	Butte	california	39.7285004	-121.836998	1.48000002	64	Moderate air quality	pm25	2018-12-04 23:54:00	55.0200005	75	1016	2.1099999	0	2018-12-04 15:58:00
Chino	City	San Bernardino	california	34.0121994	-117.689003	2.50999999	45	Good air quality	pm25	2018-12-04 23:58:00	67.3499985	1	1014	4.0999999	0	2018-12-04 15:58:00
Chino Hills	City	San Bernardino	california	33.9897995	-117.733002	2.51999998	39	Good air quality	pm25	2018-12-04 23:58:00	67.2399979	1	1014	4.0999999	0	2018-12-04 15:58:00
Chowchilla	City	Madera	california	37.1230011	-120.260002	1.83000004	57	Moderate air quality	pm25	2018-12-05 00:35:00	55.7599983	1	1014	2.0999999	0	2018-12-04 15:58:00
Chula Vista	City	San Diego	california	32.6400986	-117.084	2.73000002	74	Moderate air quality	pm25	2018-12-04 23:56:00	64.0400009	40	1015	3.0999999	0	2018-12-04 15:58:00
Citrus Heights	City	Sacramento	california	38.7070999	-121.280998	1.57000005	55	Moderate air quality	pm25	2018-12-05 00:20:00	50.7000008	90	1015	2.5999999	0	2018-12-04 15:58:00
Claremont	City	Los Angeles	california	34.0966988	-117.720001	2.50999999	57	Moderate air quality	pm25	2018-12-04 23:58:00	66.8300018	1	1014	5.0999999	0	2018-12-04 15:58:00
Clayton	City	Contra Costa	california	37.9410019	-121.935997	1.65999997	54	Moderate air quality	pm25	2018-12-05 00:20:00	52.5699997	40	1014	1.75999999	0	2018-12-04 15:58:00
Clearlake	City	Lake	california	38.9581985	-122.625999	1.52999997	47	Good air quality	pm25	2018-12-04 23:56:00	55.9399986	90	1014	2.0999999	0	2018-12-04 15:58:00
Cloverdale	City	Sonoma	california	38.8055	-123.016998	1.50999999	63	Moderate air quality	pm25	2018-12-04 23:56:00	55.9399986	90	1014	2.0999999	0	2018-12-04 15:58:00
Clovis	City	Fresno	california	36.8251991	-119.703003	1.90999997	57	Moderate air quality	pm25	2018-12-05 00:35:00	54.3199997	1	1014	2.0999999	0	2018-12-04 15:58:00
Coachella	City	Riverside	california	33.6803017	-116.174004	2.54999995	29	Good air quality	o3	2018-12-05 00:15:00	62.5999985	1	1018	0.860000014	0	2018-12-04 15:58:00
Coalinga	City	Fresno	california	36.1397018	-120.360001	1.96000004	46	Good air quality	pm25	2018-12-04 23:56:00	54.3400002	90	1014	4.0999999	0	2018-12-04 15:58:00
Colfax	City	Placer	california	39.1007004	-120.953003	1.61000001	32	Good air quality	pm25	2018-12-05 00:15:00	50.6300011	90	1015	0.75999999	0	2018-12-04 15:58:00
Colma	Town	San Mateo	california	37.676899	-122.459999	1.65999997	59	Moderate air quality	pm25	2018-12-05 00:15:00	53.4000015	90	1013	3.0999999	0	2018-12-04 15:58:00
Colton	City	San Bernardino	california	34.0738983	-117.314003	2.49000001	55	Moderate air quality	pm25	2018-12-05 00:35:00	65.5500031	1	1015	6.69999981	0	2018-12-04 15:58:00
Colusa	City	Colusa	california	39.2142982	-122.009003	1.49000001	57	Moderate air quality	pm25	2018-12-05 00:15:00	51.4000015	90	1015	2.0999999	0	2018-12-04 15:58:00
Commerce	City	Los Angeles	california	34.0005989	-118.160004	2.45000005	63	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	20	1014	4.0999999	0	2018-12-04 15:58:00
Compton	City	Los Angeles	california	33.8958015	-118.220001	2.49000001	68	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	1	1014	2.5999999	0	2018-12-04 15:58:00
Concord	City	Contra Costa	california	37.9780006	-122.030998	1.63999999	69	Moderate air quality	pm25	2018-12-05 00:20:00	52.4799995	90	1015	2.0999999	0	2018-12-04 15:58:00
Corcoran	City	Kings	california	36.0979996	-119.559998	1.97000003	70	Moderate air quality	pm25	2018-12-05 00:15:00	53.7799988	1	1013	0.75999999	0	2018-12-04 15:58:00
Corning	City	Tehama	california	39.9277	-122.179001	1.46000004	52	Moderate air quality	pm25	2018-12-04 23:54:00	55.6199989	20	1015	3.0999999	0	2018-12-04 15:58:00
Corona	City	Riverside	california	33.8753014	-117.566002	2.51999998	42	Good air quality	pm25	2018-12-05 00:35:00	65.7900009	1	1015	6.69999981	0	2018-12-04 15:58:00
Coronado	City	San Diego	california	32.6859016	-117.182999	2.73000002	70	Moderate air quality	pm25	2018-12-04 23:56:00	64.0400009	75	1014	3.5999999	0	2018-12-04 15:58:00
Corte Madera	Town	Marin	california	37.925499	-122.527	1.61000001	41	Good air quality	pm25	2018-12-05 00:15:00	52.7700005	75	1014	2.0999999	0	2018-12-04 15:58:00
Costa Mesa	City	Orange	california	33.641201	-117.918999	2.52999997	55	Moderate air quality	pm25	2018-12-05 00:15:00	66.3799973	20	1014	4.0999999	0	2018-12-04 15:58:00
Cotati	City	Sonoma	california	38.3292999	-122.709999	1.54999995	58	Moderate air quality	pm25	2018-12-05 00:15:00	53.0600014	90	1014	3.5999999	0	2018-12-04 15:58:00
Covina	City	Los Angeles	california	34.0900002	-117.889999	2.47000003	59	Moderate air quality	pm25	2018-12-04 23:58:00	66.8099976	1	1014	5.0999999	0	2018-12-04 15:58:00
Crescent City	City	Del Norte	california	41.7556992	-124.203003	1.21000004	47	Good air quality	pm25	2018-12-04 23:56:00	54.5400009	90	1014	4.0999999	0	2018-12-04 15:58:00
Cudahy	City	Los Angeles	california	33.9606018	-118.184998	2.49000001	60	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	1	1014	2.5999999	0	2018-12-04 15:58:00
Culver City	City	Los Angeles	california	34.0210991	-118.396004	2.43000007	64	Moderate air quality	pm25	2018-12-04 23:58:00	66.7399979	20	1014	4.0999999	0	2018-12-04 15:58:00
Cupertino	City	Santa Clara	california	37.3230019	-122.031998	1.73000002	68	Moderate air quality	pm25	2018-12-05 00:15:00	52.7900009	40	1014	1.5	0	2018-12-04 15:58:00
Cypress	City	Orange	california	33.8168983	-118.037003	2.49000001	48	Good air quality	pm25	2018-12-04 23:58:00	67.2399979	20	1014	4.0999999	0	2018-12-04 15:58:00
Daly City	City	San Mateo	california	37.6879005	-122.470001	1.65999997	63	Moderate air quality	pm25	2018-12-05 00:15:00	53.4000015	90	1013	3.0999999	0	2018-12-04 15:58:00
Dana Point	City	Orange	california	33.4672012	-117.697998	2.57999992	54	Moderate air quality	pm25	2018-12-05 00:35:00	65.2300034	1	1015	6.69999981	0	2018-12-04 15:58:00
Danville	Town	Contra Costa	california	37.8216019	-122	1.65999997	62	Moderate air quality	pm25	2018-12-05 00:15:00	52.6800003	40	1014	1.75999999	0	2018-12-04 15:58:00
Davis	City	Yolo	california	38.544899	-121.740997	1.55999994	59	Moderate air quality	pm25	2018-12-05 00:20:00	51.2099991	75	1015	2.5999999	0	2018-12-04 15:58:00
Del Mar	City	San Diego	california	32.9594994	-117.264999	2.72000003	53	Moderate air quality	pm25	2018-12-05 00:15:00	64.0599976	1	1015	2.5999999	0	2018-12-04 15:58:00
Del Rey Oaks	City	Monterey	california	36.5932999	-121.834999	1.84000003	28	Good air quality	pm25	2018-12-05 00:15:00	55.2400017	90	1013	3.0999999	1.01999998	2018-12-04 15:58:00
Delano	City	Kern	california	35.7687988	-119.247002	2.01999998	51	Moderate air quality	pm25	2018-12-05 00:15:00	56.3899994	1	1013	0.75999999	0	2018-12-04 15:58:00
Desert Hot Springs	City	Riverside	california	33.9611015	-116.501999	2.6099999	43	Good air quality	pm25	2018-12-05 00:40:00	48.5299988	0	910.580017	1.40999997	0	2018-12-04 15:58:00
Diamond Bar	City	Los Angeles	california	34.0285988	-117.809998	2.47000003	59	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	1	1014	5.0999999	0	2018-12-04 15:58:00
Dinuba	City	Tulare	california	36.5433006	-119.387001	1.94000006	56	Moderate air quality	pm25	2018-12-05 00:35:00	54.1800003	1	1014	2.0999999	0	2018-12-04 15:58:00
Dixon	City	Solano	california	38.4454994	-121.822998	1.57000005	55	Moderate air quality	pm25	2018-12-05 00:20:00	51.1199989	75	1015	2.5999999	0	2018-12-04 15:58:00
Dorris	City	Siskiyou	california	41.9673996	-121.917999	1.25	56	Moderate air quality	pm25	2018-12-04 23:53:00	35.2599983	90	1018	3.5999999	0	2018-12-04 15:58:00
Dos Palos	City	Merced	california	36.9860992	-120.626999	1.85000002	55	Moderate air quality	pm25	2018-12-04 23:53:00	56.1199989	1	1014	2.0999999	0	2018-12-04 15:58:00
Downey	City	Los Angeles	california	33.9401016	-118.133003	2.49000001	65	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	20	1014	4.0999999	0	2018-12-04 15:58:00
Duarte	City	Los Angeles	california	34.1394997	-117.976997	2.47000003	58	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	1	1014	5.0999999	0	2018-12-04 15:58:00
Dublin	City	Alameda	california	37.7022018	-121.935997	1.70000005	66	Moderate air quality	pm25	2018-12-05 00:15:00	52.5900002	40	1014	1.75999999	0	2018-12-04 15:58:00
Dunsmuir	City	Siskiyou	california	41.2081985	-122.272003	1.34000003	55	Moderate air quality	pm25	2018-12-05 00:10:00	40.1899986	90	1017	1.5	0	2018-12-04 15:58:00
East Palo Alto	City	San Mateo	california	37.4687996	-122.140999	1.73000002	80	Moderate air quality	pm25	2018-12-05 00:15:00	52.7400017	90	1014	2.0999999	0	2018-12-04 15:58:00
Eastvale	City	Riverside	california	33.9524994	-117.584999	2.51999998	30	Good air quality	o3	2018-12-05 00:35:00	66.4499969	1	1015	6.69999981	0	2018-12-04 15:58:00
El Cajon	City	San Diego	california	32.7947998	-116.962997	2.75	73	Moderate air quality	pm25	2018-12-05 00:15:00	64.0800018	40	1014	3.5999999	0	2018-12-04 15:58:00
El Centro	City	Imperial	california	32.7919998	-115.563004	2.71000004	47	Good air quality	pm25	2018-12-04 23:56:00	64.1100006	1	1017	1.5	0	2018-12-04 15:58:00
El Cerrito	City	Contra Costa	california	37.9160995	-122.310997	1.62	60	Moderate air quality	pm25	2018-12-05 00:15:00	52.6100006	75	1014	2.0999999	0	2018-12-04 15:58:00
El Monte	City	Los Angeles	california	34.0685997	-118.028	2.45000005	63	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	1	1013	3.0999999	0	2018-12-04 15:58:00
El Segundo	City	Los Angeles	california	33.9192009	-118.416	2.49000001	58	Moderate air quality	pm25	2018-12-04 23:58:00	66.7399979	20	1014	4.0999999	0	2018-12-04 15:58:00
Elk Grove	City	Sacramento	california	38.4087982	-121.372002	1.59000003	65	Moderate air quality	pm25	2018-12-05 00:20:00	50.9399986	75	1015	2.5999999	0	2018-12-04 15:58:00
Emeryville	City	Alameda	california	37.8312988	-122.285004	1.62	55	Moderate air quality	pm25	2018-12-05 00:15:00	52.7200012	75	1014	2.0999999	0	2018-12-04 15:58:00
Encinitas	City	San Diego	california	33.0369987	-117.292	2.6500001	55	Moderate air quality	pm25	2018-12-05 00:15:00	64.0599976	1	1015	2.5999999	0	2018-12-04 15:58:00
Escalon	City	San Joaquin	california	37.7974014	-120.997002	1.67999995	83	Moderate air quality	pm25	2018-12-05 00:15:00	52.1100006	90	1014	2.0999999	0	2018-12-04 15:58:00
Escondido	City	San Diego	california	33.1192017	-117.085999	2.68000007	58	Moderate air quality	pm25	2018-12-05 00:15:00	64.0599976	1	1015	2.5999999	0	2018-12-04 15:58:00
Etna	City	Siskiyou	california	41.4567986	-122.894997	1.32000005	57	Moderate air quality	pm25	2018-12-05 00:10:00	40.1399994	1	1016	0.810000002	0	2018-12-04 15:58:00
Eureka	City	Humboldt	california	40.8021011	-124.164001	1.34000003	40	Good air quality	pm25	2018-12-05 00:35:00	54	1	1013	3.1099999	0	2018-12-04 15:58:00
Exeter	City	Tulare	california	36.2961006	-119.141998	1.98000002	55	Moderate air quality	pm25	2018-12-05 00:15:00	53.9199982	75	1014	0.50999999	0	2018-12-04 15:58:00
Fairfax	Town	Marin	california	37.9870987	-122.588997	1.61000001	23	Good air quality	o3	2018-12-05 00:15:00	53.2000008	75	1014	2.0999999	0	2018-12-04 15:58:00
Fairfield	City	Solano	california	38.2494011	-122.040001	1.60000002	48	Good air quality	pm25	2018-12-05 00:20:00	51.7999992	75	1015	2.5999999	0	2018-12-04 15:58:00
Farmersville	City	Tulare	california	36.297699	-119.207001	1.98000002	58	Moderate air quality	pm25	2018-12-05 00:15:00	53.9599991	75	1014	0.50999999	0	2018-12-04 15:58:00
Ferndale	City	Humboldt	california	40.5761986	-124.264	1.36000001	33	Good air quality	o3	2018-12-05 00:35:00	54.3699989	1	1013	3.1099999	0	2018-12-04 15:58:00
Fillmore	City	Ventura	california	34.3992004	-118.917999	2.38000011	38	Good air quality	o3	2018-12-04 23:57:00	65.25	40	1014	5.69999981	0	2018-12-04 15:58:00
Firebaugh	City	Fresno	california	36.858799	-120.456001	1.86000001	67	Moderate air quality	pm25	2018-12-05 00:35:00	55.7599983	1	1014	2.0999999	0	2018-12-04 15:58:00
Folsom	City	Sacramento	california	38.6780014	-121.176003	1.59000003	67	Moderate air quality	pm25	2018-12-05 00:20:00	50.2200012	90	1015	2.5999999	0	2018-12-04 15:58:00
Fontana	City	San Bernardino	california	34.0922012	-117.434998	2.49000001	53	Moderate air quality	pm25	2018-12-05 00:35:00	65.5	1	1015	6.69999981	0	2018-12-04 15:58:00
Fort Bragg	City	Mendocino	california	39.4457016	-123.805	1.47000003	48	Good air quality	pm25	2018-12-04 23:56:00	55.9399986	90	1014	2.0999999	0	2018-12-04 15:58:00
Fort Jones	City	Siskiyou	california	41.6076012	-122.839996	1.27999997	58	Moderate air quality	pm25	2018-12-04 23:56:00	37.9900017	90	1018	3.0999999	0	2018-12-04 15:58:00
Fortuna	City	Humboldt	california	40.5982018	-124.156998	1.37	33	Good air quality	o3	2018-12-05 00:35:00	54.3600006	1	1013	3.1099999	0	2018-12-04 15:58:00
Foster City	City	San Mateo	california	37.5584984	-122.271004	1.65999997	74	Moderate air quality	pm25	2018-12-05 00:15:00	52.5200005	90	1014	2.0999999	0	2018-12-04 15:58:00
Fountain Valley	City	Orange	california	33.7089996	-117.954002	2.52999997	57	Moderate air quality	pm25	2018-12-04 23:58:00	66.8700027	20	1014	4.0999999	0	2018-12-04 15:58:00
Fowler	City	Fresno	california	36.6305008	-119.678001	1.92999995	58	Moderate air quality	pm25	2018-12-05 00:35:00	54.3400002	1	1014	2.0999999	0	2018-12-04 15:58:00
Fremont	City	Alameda	california	37.5483017	-121.988998	1.70000005	66	Moderate air quality	pm25	2018-12-05 00:15:00	52.5200005	40	1014	1.75999999	0	2018-12-04 15:58:00
Fresno	City	Fresno	california	36.7378006	-119.787003	1.91999996	76	Moderate air quality	pm25	2018-12-05 00:35:00	54.3199997	1	1014	2.0999999	0	2018-12-04 15:58:00
Fullerton	City	Orange	california	33.8703995	-117.924004	2.49000001	54	Moderate air quality	pm25	2018-12-04 23:58:00	66.8099976	1	1013	3.0999999	0	2018-12-04 15:58:00
Galt	City	Sacramento	california	38.2546005	-121.300003	1.59000003	73	Moderate air quality	pm25	2018-12-05 00:20:00	51.1899986	75	1015	2.5999999	0	2018-12-04 15:58:00
Garden Grove	City	Orange	california	33.7742996	-117.938004	2.49000001	53	Moderate air quality	pm25	2018-12-04 23:58:00	66.8099976	20	1014	4.0999999	0	2018-12-04 15:58:00
Gardena	City	Los Angeles	california	33.8883018	-118.308998	2.49000001	64	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	1	1014	2.5999999	0	2018-12-04 15:58:00
Gilroy	City	Santa Clara	california	37.0057983	-121.568001	1.79999995	64	Moderate air quality	pm25	2018-12-05 00:15:00	54.5	90	1014	2.5999999	1.01999998	2018-12-04 15:58:00
Glendale	City	Los Angeles	california	34.1425018	-118.254997	2.43000007	64	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	1	1014	4.5999999	0	2018-12-04 15:58:00
Glendora	City	Los Angeles	california	34.1361008	-117.864998	2.47000003	59	Moderate air quality	pm25	2018-12-04 23:58:00	66.8099976	1	1014	5.0999999	0	2018-12-04 15:58:00
Goleta	City	Santa Barbara	california	34.4357986	-119.828003	2.29999995	54	Moderate air quality	pm25	2018-12-05 00:15:00	60.8199997	40	1013	5.0999999	0	2018-12-04 15:58:00
Gonzales	City	Monterey	california	36.5065994	-121.444	1.88	59	Moderate air quality	pm25	2018-12-05 00:15:00	55.2599983	1	1014	3.8599999	1.01999998	2018-12-04 15:58:00
Grand Terrace	City	San Bernardino	california	34.0339012	-117.314003	2.49000001	51	Moderate air quality	pm25	2018-12-05 00:35:00	65.5699997	1	1015	6.69999981	0	2018-12-04 15:58:00
Grass Valley	City	Nevada	california	39.219101	-121.060997	1.57000005	55	Moderate air quality	pm25	2018-12-05 00:15:00	50.6699982	90	1015	0.75999999	0	2018-12-04 15:58:00
Greenfield	City	Monterey	california	36.3208008	-121.244003	1.92999995	64	Moderate air quality	pm25	2018-12-05 00:15:00	55.9399986	1	1014	3.8599999	1.01999998	2018-12-04 15:58:00
Gridley	City	Butte	california	39.3638	-121.694	1.5	57	Moderate air quality	pm25	2018-12-05 00:15:00	51.1500015	75	1016	2.1099999	0	2018-12-04 15:58:00
Grover Beach	City	San Luis Obispo	california	35.1216011	-120.621002	2.0999999	42	Good air quality	pm25	2018-12-04 23:56:00	58.8400002	90	1012	4.61000013	0	2018-12-04 15:58:00
Guadalupe	City	Santa Barbara	california	34.9715996	-120.571999	2.1500001	28	Good air quality	o3	2018-12-05 00:15:00	59.4700012	90	1012	3.5999999	0	2018-12-04 15:58:00
Gustine	City	Merced	california	37.2577019	-120.999001	1.75999999	67	Moderate air quality	pm25	2018-12-05 00:15:00	54.1199989	1	1014	2.1099999	0	2018-12-04 15:58:00
Half Moon Bay	City	San Mateo	california	37.4636002	-122.429001	1.72000003	55	Moderate air quality	pm25	2018-12-04 23:58:00	52.6599998	90	1014	2.0999999	0	2018-12-04 15:58:00
Hanford	City	Kings	california	36.3274002	-119.646004	1.95000005	55	Moderate air quality	pm25	2018-12-05 00:35:00	54.1800003	1	1014	2.0999999	0	2018-12-04 15:58:00
Hawaiian Gardens	City	Los Angeles	california	33.8314018	-118.072998	2.49000001	60	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	20	1014	4.0999999	0	2018-12-04 15:58:00
Hawthorne	City	Los Angeles	california	33.9164009	-118.352997	2.49000001	64	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	1	1014	2.5999999	0	2018-12-04 15:58:00
Hayward	City	Alameda	california	37.6688004	-122.081001	1.65999997	67	Moderate air quality	pm25	2018-12-05 00:15:00	52.6300011	90	1013	2.5999999	0	2018-12-04 15:58:00
Healdsburg	City	Sonoma	california	38.6105003	-122.869003	1.51999998	60	Moderate air quality	pm25	2018-12-05 00:15:00	54.5900002	90	1014	3.5999999	0	2018-12-04 15:58:00
Hemet	City	Riverside	california	33.7475014	-116.972	2.6500001	52	Moderate air quality	pm25	2018-12-05 00:35:00	64.0800018	1	1015	6.69999981	0	2018-12-04 15:58:00
Hercules	City	Contra Costa	california	38.0171013	-122.289001	1.58000004	32	Good air quality	pm25	2018-12-05 00:15:00	52.5699997	75	1014	2.0999999	0	2018-12-04 15:58:00
Hermosa Beach	City	Los Angeles	california	33.8622017	-118.400002	2.49000001	62	Moderate air quality	pm25	2018-12-04 23:58:00	67.0800018	20	1014	3.25999999	0	2018-12-04 15:58:00
Hesperia	City	San Bernardino	california	34.4263992	-117.301003	2.49000001	35	Good air quality	pm25	2018-12-04 23:58:00	63.1899986	1	1015	7.19999981	0	2018-12-04 15:58:00
Hidden Hills	City	Los Angeles	california	34.1603012	-118.652	2.44000006	34	Good air quality	o3	2018-12-04 23:58:00	66.6100006	5	1015	1.55999994	0	2018-12-04 15:58:00
Highland	City	San Bernardino	california	34.1282997	-117.209	2.54999995	55	Moderate air quality	pm25	2018-12-05 00:35:00	64.5599976	1	1015	6.69999981	0	2018-12-04 15:58:00
Hillsborough	Town	San Mateo	california	37.5741005	-122.378998	1.65999997	48	Good air quality	pm25	2018-12-05 00:15:00	52.7700005	90	1013	3.0999999	0	2018-12-04 15:58:00
Hollister	City	San Benito	california	36.8525009	-121.402	1.83000004	59	Moderate air quality	pm25	2018-12-05 00:15:00	55	1	1014	3.8599999	1.01999998	2018-12-04 15:58:00
Holtville	City	Imperial	california	32.8111992	-115.379997	2.71000004	76	Moderate air quality	pm25	2018-12-04 23:56:00	64.1500015	1	1017	1.5	0	2018-12-04 15:58:00
Hughson	City	Stanislaus	california	37.6026993	-120.865997	1.72000003	72	Moderate air quality	pm25	2018-12-05 00:10:00	53.4900017	90	1014	2.0999999	0	2018-12-04 15:58:00
Huntington Beach	City	Orange	california	33.6595001	-117.999001	2.52999997	57	Moderate air quality	pm25	2018-12-04 23:58:00	67.3499985	20	1014	4.0999999	0	2018-12-04 15:58:00
Huntington Park	City	Los Angeles	california	33.9817009	-118.224998	2.49000001	64	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	1	1014	2.5999999	0	2018-12-04 15:58:00
Huron	City	Fresno	california	36.2027016	-120.102997	1.95000005	53	Moderate air quality	pm10	2018-12-05 00:35:00	54.0900002	1	1014	2.0999999	0	2018-12-04 15:58:00
Imperial	City	Imperial	california	32.847599	-115.569	2.71000004	65	Moderate air quality	pm25	2018-12-04 23:56:00	64.0899963	1	1017	1.5	0	2018-12-04 15:58:00
Imperial Beach	City	San Diego	california	32.5839005	-117.112999	2.73000002	80	Moderate air quality	pm25	2018-12-04 23:56:00	64.0400009	40	1015	3.0999999	0	2018-12-04 15:58:00
Indian Wells	City	Riverside	california	33.7176018	-116.341003	2.6400001	30	Good air quality	o3	2018-12-05 00:15:00	62.5999985	1	1018	0.860000014	0	2018-12-04 15:58:00
Indio	City	Riverside	california	33.7206001	-116.216003	2.54999995	53	Moderate air quality	pm25	2018-12-05 00:15:00	62.5999985	1	1018	0.860000014	0	2018-12-04 15:58:00
Industry	City	Los Angeles	california	34.0196991	-117.959	2.47000003	58	Moderate air quality	pm25	2018-12-04 23:58:00	66.8099976	1	1013	3.0999999	0	2018-12-04 15:58:00
Inglewood	City	Los Angeles	california	33.9617004	-118.352997	2.49000001	67	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	1	1014	2.5999999	0	2018-12-04 15:58:00
Ione	City	Amador	california	38.3526993	-120.932999	1.63	67	Moderate air quality	pm25	2018-12-05 00:15:00	50.9700012	90	1014	0.75999999	0	2018-12-04 15:58:00
Irvine	City	Orange	california	33.6846008	-117.827003	2.52999997	51	Moderate air quality	pm25	2018-12-05 00:35:00	65.8600006	1	1015	6.69999981	0	2018-12-04 15:58:00
Irwindale	City	Los Angeles	california	34.1069984	-117.934998	2.47000003	53	Moderate air quality	pm25	2018-12-04 23:58:00	66.8099976	1	1014	5.0999999	0	2018-12-04 15:58:00
Isleton	City	Sacramento	california	38.1618996	-121.612	1.61000001	45	Good air quality	pm25	2018-12-05 00:20:00	51.4199982	75	1015	2.5999999	0	2018-12-04 15:58:00
Jackson	City	Amador	california	38.3488007	-120.774002	1.63	57	Moderate air quality	pm25	2018-12-05 00:15:00	51.0099983	90	1014	0.860000014	0	2018-12-04 15:58:00
Jurupa Valley	City	Riverside	california	33.9972	-117.485001	2.52999997	46	Good air quality	pm25	2018-12-05 00:35:00	65.6600037	1	1015	6.69999981	0	2018-12-04 15:58:00
Kerman	City	Fresno	california	36.7235985	-120.059998	1.88999999	59	Moderate air quality	pm25	2018-12-05 00:35:00	54.3699989	1	1014	2.0999999	0	2018-12-04 15:58:00
King City	City	Monterey	california	36.2126999	-121.125999	1.95000005	69	Moderate air quality	pm25	2018-12-04 23:53:00	57.0200005	90	1013	4.05999994	0	2018-12-04 15:58:00
Kingsburg	City	Fresno	california	36.5138016	-119.554001	1.92999995	58	Moderate air quality	pm25	2018-12-05 00:35:00	54.1800003	1	1014	2.0999999	0	2018-12-04 15:58:00
La CaÃ±ada Flintridge	City	Los Angeles	california	34.2067986	-118.199997	2.45000005	58	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	1	1014	4.5999999	0	2018-12-04 15:58:00
La Habra	City	Orange	california	33.9319	-117.945999	2.49000001	51	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	1	1013	3.0999999	0	2018-12-04 15:58:00
La Habra Heights	City	Los Angeles	california	33.9608002	-117.950996	2.49000001	42	Good air quality	pm25	2018-12-04 23:58:00	67.2399979	1	1013	3.0999999	0	2018-12-04 15:58:00
La Mesa	City	San Diego	california	32.7677994	-117.023003	2.70000005	74	Moderate air quality	pm25	2018-12-05 00:15:00	64.0800018	1	1015	3.5999999	0	2018-12-04 15:58:00
La Mirada	City	Los Angeles	california	33.9171982	-118.012001	2.49000001	54	Moderate air quality	pm25	2018-12-04 23:58:00	66.8099976	1	1013	3.0999999	0	2018-12-04 15:58:00
La Palma	City	Orange	california	33.8462982	-118.045998	2.49000001	49	Good air quality	pm25	2018-12-04 23:58:00	67.2399979	20	1014	4.0999999	0	2018-12-04 15:58:00
La Puente	City	Los Angeles	california	34.0200005	-117.949997	2.47000003	52	Moderate air quality	pm25	2018-12-04 23:58:00	66.8099976	1	1013	3.0999999	0	2018-12-04 15:58:00
La Quinta	City	Riverside	california	33.6633987	-116.309998	2.6400001	30	Good air quality	o3	2018-12-05 00:15:00	62.5999985	1	1018	0.860000014	0	2018-12-04 15:58:00
La Verne	City	Los Angeles	california	34.1007996	-117.767998	2.47000003	55	Moderate air quality	pm25	2018-12-04 23:58:00	66.8300018	1	1014	5.0999999	0	2018-12-04 15:58:00
Lafayette	City	Contra Costa	california	37.8857994	-122.117996	1.63999999	53	Moderate air quality	pm25	2018-12-05 00:15:00	52.7200012	40	1014	2.91000009	0	2018-12-04 15:58:00
Laguna Beach	City	Orange	california	33.5427017	-117.785004	2.52999997	56	Moderate air quality	pm25	2018-12-05 00:35:00	65.8000031	1	1015	6.69999981	0	2018-12-04 15:58:00
Laguna Hills	City	Orange	california	33.5915985	-117.698997	2.57999992	37	Good air quality	pm25	2018-12-05 00:35:00	65.5	1	1015	6.69999981	0	2018-12-04 15:58:00
Laguna Niguel	City	Orange	california	33.5237007	-117.714996	2.57999992	54	Moderate air quality	pm25	2018-12-05 00:35:00	65.2300034	1	1015	6.69999981	0	2018-12-04 15:58:00
Laguna Woods	City	Orange	california	33.610199	-117.724998	2.57999992	48	Good air quality	pm25	2018-12-05 00:35:00	65.8000031	1	1015	6.69999981	0	2018-12-04 15:58:00
Lake Elsinore	City	Riverside	california	33.6680984	-117.327003	2.5999999	42	Good air quality	pm25	2018-12-05 00:35:00	64.9899979	1	1015	6.69999981	0	2018-12-04 15:58:00
Lake Forest	City	Orange	california	33.6469002	-117.685997	2.57999992	36	Good air quality	pm25	2018-12-05 00:35:00	65.8000031	1	1015	6.69999981	0	2018-12-04 15:58:00
Lakeport	City	Lake	california	39.0429001	-122.916	1.50999999	70	Moderate air quality	pm25	2018-12-04 23:56:00	55.9399986	90	1014	2.0999999	0	2018-12-04 15:58:00
Lakewood	City	Los Angeles	california	33.8535995	-118.134003	2.49000001	61	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	20	1014	4.0999999	0	2018-12-04 15:58:00
Lancaster	City	Los Angeles	california	34.6867981	-118.153999	2.38000011	34	Good air quality	pm25	2018-12-05 00:00:00	57.9599991	1	1017	7.69999981	0	2018-12-04 15:58:00
Larkspur	City	Marin	california	37.9341011	-122.535004	1.61000001	23	Good air quality	o3	2018-12-05 00:15:00	52.7700005	75	1014	2.0999999	0	2018-12-04 15:58:00
Lathrop	City	San Joaquin	california	37.8227005	-121.277	1.65999997	62	Moderate air quality	pm25	2018-12-05 00:15:00	50.9500008	40	1014	2.46000004	0	2018-12-04 15:58:00
Lawndale	City	Los Angeles	california	33.8871994	-118.352997	2.49000001	65	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	1	1014	2.5999999	0	2018-12-04 15:58:00
Lemon Grove	City	San Diego	california	32.7425003	-117.030998	2.73000002	72	Moderate air quality	pm25	2018-12-04 23:56:00	64.0400009	1	1015	3.5999999	0	2018-12-04 15:58:00
Lemoore	City	Kings	california	36.3008003	-119.782997	1.94000006	55	Moderate air quality	pm10	2018-12-05 00:35:00	53.8699989	1	1014	2.0999999	0	2018-12-04 15:58:00
Lincoln	City	Placer	california	38.8916016	-121.292999	1.54999995	60	Moderate air quality	pm25	2018-12-05 00:35:00	50.1300011	90	1015	2.0999999	0	2018-12-04 15:58:00
Lindsay	City	Tulare	california	36.2029991	-119.087997	2	52	Moderate air quality	pm25	2018-12-05 00:15:00	53.9199982	40	1013	3.5999999	0	2018-12-04 15:58:00
Live Oak	City	Sutter	california	39.2756996	-121.660004	1.5	67	Moderate air quality	pm25	2018-12-05 00:35:00	51.0099983	90	1015	1.90999997	0	2018-12-04 15:58:00
Livermore	City	Alameda	california	37.6819	-121.767998	1.70000005	70	Moderate air quality	pm25	2018-12-05 00:15:00	52.4700012	40	1014	1.75999999	0	2018-12-04 15:58:00
Livingston	City	Merced	california	37.3869019	-120.723999	1.76999998	72	Moderate air quality	pm25	2018-12-04 23:53:00	55.1100006	1	1014	2.0999999	0	2018-12-04 15:58:00
Lodi	City	San Joaquin	california	38.1341019	-121.272003	1.62	71	Moderate air quality	pm25	2018-12-05 00:20:00	51.0600014	40	1014	0.75999999	0	2018-12-04 15:58:00
Loma Linda	City	San Bernardino	california	34.0483017	-117.261002	2.49000001	54	Moderate air quality	pm25	2018-12-05 00:35:00	65.5699997	1	1015	6.69999981	0	2018-12-04 15:58:00
Lomita	City	Los Angeles	california	33.7921982	-118.315002	2.49000001	47	Good air quality	pm25	2018-12-04 23:58:00	67.2600021	20	1014	3.25999999	0	2018-12-04 15:58:00
Lompoc	City	Santa Barbara	california	34.6390991	-120.458	2.23000002	44	Good air quality	pm25	2018-12-05 00:15:00	59.7400017	90	1013	4.0999999	0	2018-12-04 15:58:00
Long Beach	City	Los Angeles	california	33.7700996	-118.194	2.49000001	72	Moderate air quality	pm25	2018-12-04 23:58:00	67.2600021	20	1014	4.0999999	0	2018-12-04 15:58:00
Loomis	Town	Placer	california	38.8213005	-121.193001	1.58000004	59	Moderate air quality	pm25	2018-12-05 00:20:00	50.2200012	90	1015	2.0999999	0	2018-12-04 15:58:00
Los Alamitos	City	Orange	california	33.8031998	-118.071999	2.49000001	60	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	20	1014	4.0999999	0	2018-12-04 15:58:00
Los Altos	City	Santa Clara	california	37.3852005	-122.113998	1.73000002	68	Moderate air quality	pm25	2018-12-05 00:15:00	52.7400017	40	1014	1.5	0	2018-12-04 15:58:00
Los Altos Hills	Town	Santa Clara	california	37.3796997	-122.137001	1.73000002	58	Moderate air quality	pm25	2018-12-05 00:15:00	52.7400017	40	1014	1.5	0	2018-12-04 15:58:00
Los Angeles	City	Los Angeles	california	34.0522003	-118.244003	2.45000005	70	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	1	1013	1.5	0	2018-12-04 15:58:00
Los Banos	City	Merced	california	37.0583	-120.849998	1.80999994	57	Moderate air quality	pm25	2018-12-05 00:15:00	54.5900002	1	1014	5.11000013	0	2018-12-04 15:58:00
Los Gatos	Town	Santa Clara	california	37.2358017	-121.961998	1.78999996	61	Moderate air quality	pm25	2018-12-05 00:15:00	53.5499992	90	1014	2.5999999	0	2018-12-04 15:58:00
Loyalton	City	Sierra	california	39.6763	-120.240997	1.66999996	39	Good air quality	pm25	2018-12-05 00:35:00	27.4300003	90	1020	3.0999999	0	2018-12-04 15:58:00
Lynwood	City	Los Angeles	california	33.9303017	-118.210999	2.49000001	64	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	1	1014	2.5999999	0	2018-12-04 15:58:00
Madera	City	Madera	california	36.9612999	-120.060997	1.87	73	Moderate air quality	pm25	2018-12-05 00:35:00	55.7599983	1	1014	2.0999999	0	2018-12-04 15:58:00
Malibu	City	Los Angeles	california	34.0259018	-118.779999	2.44000006	35	Good air quality	o3	2018-12-04 23:57:00	66.4899979	40	1014	5.69999981	0	2018-12-04 15:58:00
Mammoth Lakes	Town	Mono	california	37.6484985	-118.972	2.01999998	67	Moderate air quality	pm25	2018-12-05 00:15:00	23.7199993	90	1019	1.05999994	0	2018-12-04 15:58:00
Manhattan Beach	City	Los Angeles	california	33.8847008	-118.411003	2.49000001	60	Moderate air quality	pm25	2018-12-04 23:58:00	67.0800018	20	1014	4.0999999	0	2018-12-04 15:58:00
Manteca	City	San Joaquin	california	37.7974014	-121.216003	1.66999996	79	Moderate air quality	pm25	2018-12-05 00:15:00	50.9500008	40	1014	2.46000004	0	2018-12-04 15:58:00
Maricopa	City	Kern	california	35.0588989	-119.401001	2.1400001	52	Moderate air quality	pm25	2018-12-04 23:54:00	64.0400009	1	1013	8.69999981	0	2018-12-04 15:58:00
Marina	City	Monterey	california	36.6843987	-121.802002	1.84000003	56	Moderate air quality	pm25	2018-12-05 00:15:00	55.2599983	1	1014	6.65999985	1.01999998	2018-12-04 15:58:00
Martinez	City	Contra Costa	california	38.0194016	-122.134003	1.60000002	61	Moderate air quality	pm25	2018-12-05 00:20:00	52.4300003	75	1014	2.0999999	0	2018-12-04 15:58:00
Marysville	City	Yuba	california	39.1456985	-121.591003	1.51999998	68	Moderate air quality	pm25	2018-12-05 00:35:00	50.8800011	90	1015	1.90999997	0	2018-12-04 15:58:00
Maywood	City	Los Angeles	california	33.9866982	-118.184998	2.49000001	66	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	1	1014	2.5999999	0	2018-12-04 15:58:00
McFarland	City	Kern	california	35.6780014	-119.228996	2.05999994	66	Moderate air quality	pm25	2018-12-05 00:15:00	58.1699982	1	1013	2.3599999	0	2018-12-04 15:58:00
Mendota	City	Fresno	california	36.7536011	-120.382004	1.86000001	59	Moderate air quality	pm25	2018-12-05 00:35:00	55.2700005	1	1014	2.0999999	0	2018-12-04 15:58:00
Menifee	City	Riverside	california	33.6971016	-117.184998	2.58999991	35	Good air quality	o3	2018-12-05 00:35:00	64.5299988	1	1015	6.69999981	0	2018-12-04 15:58:00
Menlo Park	City	San Mateo	california	37.4529991	-122.181999	1.73000002	84	Moderate air quality	pm25	2018-12-05 00:15:00	52.7400017	90	1014	2.0999999	0	2018-12-04 15:58:00
Merced	City	Merced	california	37.3022003	-120.483002	1.78999996	59	Moderate air quality	pm25	2018-12-04 23:53:00	55.0600014	1	1014	2.0999999	0	2018-12-04 15:58:00
Mill Valley	City	Marin	california	37.9059982	-122.544998	1.61000001	51	Moderate air quality	pm25	2018-12-05 00:15:00	52.8100014	75	1014	2.0999999	0	2018-12-04 15:58:00
Millbrae	City	San Mateo	california	37.5984993	-122.387001	1.65999997	64	Moderate air quality	pm25	2018-12-05 00:15:00	53.3800011	90	1013	3.0999999	0	2018-12-04 15:58:00
Milpitas	City	Santa Clara	california	37.4323006	-121.900002	1.73000002	68	Moderate air quality	pm25	2018-12-05 00:15:00	52.7400017	90	1014	2.0999999	0	2018-12-04 15:58:00
Mission Viejo	City	Orange	california	33.5969009	-117.657997	2.57999992	40	Good air quality	pm25	2018-12-05 00:35:00	65.2300034	1	1015	6.69999981	0	2018-12-04 15:58:00
Modesto	City	Stanislaus	california	37.6390991	-120.997002	1.72000003	91	Moderate air quality	pm25	2018-12-05 00:15:00	52.9199982	90	1014	2.0999999	0	2018-12-04 15:58:00
Monrovia	City	Los Angeles	california	34.1442986	-118.001999	2.45000005	58	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	1	1013	3.0999999	0	2018-12-04 15:58:00
Montague	City	Siskiyou	california	41.728199	-122.528	1.26999998	59	Moderate air quality	pm25	2018-12-04 23:56:00	37.9199982	90	1018	3.0999999	0	2018-12-04 15:58:00
Montclair	City	San Bernardino	california	34.0774994	-117.690002	2.50999999	51	Moderate air quality	pm25	2018-12-05 00:55:00	67.0999985	5	1015	0.560000002	0	2018-12-04 15:58:00
Monte Sereno	City	Santa Clara	california	37.2363014	-121.991997	1.78999996	55	Moderate air quality	pm25	2018-12-05 00:15:00	53.5499992	90	1014	2.5999999	0	2018-12-04 15:58:00
Montebello	City	Los Angeles	california	34.0164986	-118.113998	2.45000005	54	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	20	1014	4.0999999	0	2018-12-04 15:58:00
Monterey	City	Monterey	california	36.6002007	-121.894997	1.84000003	63	Moderate air quality	pm25	2018-12-05 00:15:00	55.2400017	90	1013	3.0999999	1.01999998	2018-12-04 15:58:00
Monterey Park	City	Los Angeles	california	34.0625	-118.123001	2.45000005	61	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	20	1014	4.0999999	0	2018-12-04 15:58:00
Moorpark	City	Ventura	california	34.2855988	-118.882004	2.38000011	53	Moderate air quality	pm25	2018-12-04 23:57:00	66.4899979	40	1014	5.69999981	0	2018-12-04 15:58:00
Moraga	Town	Contra Costa	california	37.8348999	-122.129997	1.63999999	36	Good air quality	pm25	2018-12-05 00:15:00	52.7200012	40	1014	2.91000009	0	2018-12-04 15:58:00
Moreno Valley	City	Riverside	california	33.9425011	-117.230003	2.54999995	51	Moderate air quality	pm25	2018-12-05 00:35:00	65.4100037	1	1015	6.69999981	0	2018-12-04 15:58:00
Morgan Hill	City	Santa Clara	california	37.1305008	-121.653999	1.79999995	63	Moderate air quality	pm25	2018-12-05 00:15:00	54.4099998	90	1014	2.5999999	1.01999998	2018-12-04 15:58:00
Morro Bay	City	San Luis Obispo	california	35.3658981	-120.849998	2.05999994	27	Good air quality	pm25	2018-12-04 23:56:00	59.0699997	90	1012	4.61000013	0	2018-12-04 15:58:00
Mount Shasta	City	Siskiyou	california	41.3098984	-122.310997	1.32000005	56	Moderate air quality	pm25	2018-12-05 00:10:00	40.2599983	90	1017	1.5	0	2018-12-04 15:58:00
Mountain View	City	Santa Clara	california	37.3861008	-122.084	1.73000002	77	Moderate air quality	pm25	2018-12-05 00:15:00	52.7400017	40	1014	1.5	0	2018-12-04 15:58:00
Murrieta	City	Riverside	california	33.5539017	-117.213997	2.58999991	38	Good air quality	o3	2018-12-05 00:35:00	63.6599998	1	1015	6.69999981	0	2018-12-04 15:58:00
Napa	City	Napa	california	38.2975006	-122.287003	1.57000005	49	Good air quality	pm25	2018-12-05 00:20:00	52.5600014	90	1014	3.5999999	0	2018-12-04 15:58:00
National City	City	San Diego	california	32.6781006	-117.098999	2.73000002	74	Moderate air quality	pm25	2018-12-04 23:56:00	64.0400009	40	1015	3.0999999	0	2018-12-04 15:58:00
Needles	City	San Bernardino	california	34.8480988	-114.613998	2.3499999	58	Moderate air quality	pm25	2018-12-05 00:35:00	58.7999992	1	1018	5.0999999	0	2018-12-04 15:58:00
Nevada City	City	Nevada	california	39.2616005	-121.015999	1.57000005	31	Good air quality	pm25	2018-12-05 00:35:00	50.7900009	90	1015	0.75999999	0	2018-12-04 15:58:00
Newark	City	Alameda	california	37.5297012	-122.040001	1.65999997	57	Moderate air quality	pm25	2018-12-05 00:15:00	52.7400017	40	1014	1.5	0	2018-12-04 15:58:00
Newman	City	Stanislaus	california	37.3138008	-121.021004	1.75999999	67	Moderate air quality	pm25	2018-12-05 00:15:00	53.9399986	1	1014	2.1099999	0	2018-12-04 15:58:00
Newport Beach	City	Orange	california	33.6189003	-117.93	2.52999997	46	Good air quality	pm25	2018-12-05 00:15:00	66.2200012	20	1014	4.0999999	0	2018-12-04 15:58:00
Norco	City	Riverside	california	33.9310989	-117.549004	2.51999998	30	Good air quality	o3	2018-12-05 00:35:00	66.1600037	1	1015	6.69999981	0	2018-12-04 15:58:00
Norwalk	City	Los Angeles	california	33.9021988	-118.082001	2.49000001	64	Moderate air quality	pm25	2018-12-05 00:55:00	67.0999985	5	1015	0.209999993	0	2018-12-04 15:58:00
Novato	City	Marin	california	38.107399	-122.57	1.57000005	55	Moderate air quality	pm25	2018-12-05 00:15:00	53.1500015	75	1014	2.0999999	0	2018-12-04 15:58:00
Oakdale	City	Stanislaus	california	37.7666016	-120.847	1.67999995	82	Moderate air quality	pm25	2018-12-05 00:15:00	52.6500015	75	1014	3.21000004	0	2018-12-04 15:58:00
Oakland	City	Alameda	california	37.8044014	-122.271004	1.62	65	Moderate air quality	pm25	2018-12-05 00:15:00	52.7200012	90	1014	5.69999981	0	2018-12-04 15:58:00
Oakley	City	Contra Costa	california	37.9973984	-121.711998	1.64999998	62	Moderate air quality	pm25	2018-12-05 00:20:00	51.7599983	40	1014	1.75999999	0	2018-12-04 15:58:00
Oceanside	City	San Diego	california	33.1959	-117.378998	2.6500001	57	Moderate air quality	pm25	2018-12-05 00:15:00	64.5400009	1	1015	2.5999999	0	2018-12-04 15:58:00
Ojai	City	Ventura	california	34.4480019	-119.242996	2.36999989	53	Moderate air quality	pm25	2018-12-04 23:57:00	62.6199989	1	1014	3.0999999	0	2018-12-04 15:58:00
Ontario	City	San Bernardino	california	34.0633011	-117.651001	2.50999999	51	Moderate air quality	pm25	2018-12-04 23:58:00	67.5899963	1	1014	4.0999999	0	2018-12-04 15:58:00
Orange	City	Orange	california	33.787899	-117.852997	2.49000001	54	Moderate air quality	pm25	2018-12-04 23:58:00	66.8700027	20	1014	4.0999999	0	2018-12-04 15:58:00
Orange Cove	City	Fresno	california	36.6244011	-119.314003	1.94000006	53	Moderate air quality	pm25	2018-12-05 00:35:00	54.1800003	75	1014	0.50999999	0	2018-12-04 15:58:00
Orinda	City	Contra Costa	california	37.8771019	-122.18	1.63999999	57	Moderate air quality	pm25	2018-12-05 00:15:00	52.7200012	75	1014	2.0999999	0	2018-12-04 15:58:00
Orland	City	Glenn	california	39.7473984	-122.195999	1.47000003	31	Good air quality	pm25	2018-12-04 23:54:00	54.9000015	20	1015	3.0999999	0	2018-12-04 15:58:00
Oroville	City	Butte	california	39.5138016	-121.556	1.5	52	Moderate air quality	pm25	2018-12-05 00:35:00	51.0600014	90	1015	2.1099999	0	2018-12-04 15:58:00
Oxnard	City	Ventura	california	34.1974983	-119.177002	2.4000001	68	Moderate air quality	pm25	2018-12-04 23:57:00	62.5600014	40	1014	5.69999981	0	2018-12-04 15:58:00
Pacific Grove	City	Monterey	california	36.6176987	-121.917	1.84000003	49	Good air quality	pm25	2018-12-05 00:15:00	55.2400017	90	1013	3.0999999	1.01999998	2018-12-04 15:58:00
Pacifica	City	San Mateo	california	37.6138	-122.487	1.65999997	47	Good air quality	pm25	2018-12-05 00:15:00	53.3800011	90	1013	3.0999999	0	2018-12-04 15:58:00
Palm Desert	City	Riverside	california	33.7221985	-116.374001	2.6400001	52	Moderate air quality	pm25	2018-12-05 00:15:00	62.5999985	1	1018	0.860000014	0	2018-12-04 15:58:00
Palm Springs	City	Riverside	california	33.8302994	-116.544998	2.6099999	39	Good air quality	pm25	2018-12-05 00:35:00	61.7400017	1	1015	6.69999981	0	2018-12-04 15:58:00
Palmdale	City	Los Angeles	california	34.5793991	-118.115997	2.38000011	47	Good air quality	pm25	2018-12-05 00:00:00	60.2200012	1	1017	8.69999981	0	2018-12-04 15:58:00
Palo Alto	City	Santa Clara	california	37.4418983	-122.142998	1.73000002	81	Moderate air quality	pm25	2018-12-05 00:15:00	52.7400017	40	1014	1.5	0	2018-12-04 15:58:00
Palos Verdes Estates	City	Los Angeles	california	33.8005981	-118.389999	2.49000001	46	Good air quality	pm25	2018-12-05 00:55:00	66.9400024	5	1015	3.25999999	0	2018-12-04 15:58:00
Paradise	Town	Butte	california	39.7596016	-121.622002	1.51999998	45	Good air quality	pm25	2018-12-04 23:54:00	55.0800018	75	1016	2.1099999	0	2018-12-04 15:58:00
Paramount	City	Los Angeles	california	33.8894997	-118.160004	2.49000001	42	Good air quality	pm25	2018-12-05 00:55:00	67.1200027	5	1015	3.25999999	0	2018-12-04 15:58:00
Parlier	City	Fresno	california	36.611599	-119.527	1.92999995	56	Moderate air quality	pm25	2018-12-05 00:35:00	54.3400002	1	1014	2.0999999	0	2018-12-04 15:58:00
Pasadena	City	Los Angeles	california	34.1478004	-118.144997	2.45000005	62	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	1	1014	4.5999999	0	2018-12-04 15:58:00
Paso Robles	City	San Luis Obispo	california	35.6369019	-120.654999	2.03999996	34	Good air quality	pm25	2018-12-04 23:56:00	57.0400009	90	1013	2.0999999	0	2018-12-04 15:58:00
Patterson	City	Stanislaus	california	37.4715996	-121.129997	1.75999999	73	Moderate air quality	pm25	2018-12-05 00:15:00	52.9199982	90	1014	2.0999999	0	2018-12-04 15:58:00
Perris	City	Riverside	california	33.7825012	-117.228996	2.54999995	53	Moderate air quality	pm25	2018-12-05 00:35:00	64.5800018	1	1015	6.69999981	0	2018-12-04 15:58:00
Petaluma	City	Sonoma	california	38.232399	-122.637001	1.57000005	61	Moderate air quality	pm25	2018-12-05 00:15:00	52.9000015	90	1014	3.5999999	0	2018-12-04 15:58:00
Pico Rivera	City	Los Angeles	california	33.9831009	-118.097	2.49000001	58	Moderate air quality	pm25	2018-12-05 00:55:00	67.0999985	5	1015	0.209999993	0	2018-12-04 15:58:00
Piedmont	City	Alameda	california	37.8244019	-122.232002	1.63999999	30	Good air quality	pm25	2018-12-05 00:15:00	52.7200012	75	1014	2.0999999	0	2018-12-04 15:58:00
Pinole	City	Contra Costa	california	38.0043983	-122.299004	1.58000004	52	Moderate air quality	pm25	2018-12-05 00:15:00	52.6100006	75	1014	2.0999999	0	2018-12-04 15:58:00
Pismo Beach	City	San Luis Obispo	california	35.1427994	-120.640999	2.0999999	49	Good air quality	pm25	2018-12-04 23:56:00	58.8400002	90	1012	4.61000013	0	2018-12-04 15:58:00
Pittsburg	City	Contra Costa	california	38.0279999	-121.885002	1.60000002	62	Moderate air quality	pm25	2018-12-05 00:20:00	52.3199997	40	1014	1.75999999	0	2018-12-04 15:58:00
Placentia	City	Orange	california	33.8711014	-117.862999	2.49000001	52	Moderate air quality	pm25	2018-12-05 00:55:00	67.0999985	5	1015	1.55999994	0	2018-12-04 15:58:00
Placerville	City	El Dorado	california	38.729599	-120.799004	1.62	50	Good air quality	pm25	2018-12-05 00:35:00	50.0400009	90	1015	1.5	0	2018-12-04 15:58:00
Pleasant Hill	City	Contra Costa	california	37.9480019	-122.060997	1.63999999	67	Moderate air quality	pm25	2018-12-05 00:20:00	52.4799995	90	1015	2.0999999	0	2018-12-04 15:58:00
Pleasanton	City	Alameda	california	37.6623993	-121.875	1.70000005	65	Moderate air quality	pm25	2018-12-05 00:15:00	52.4700012	40	1014	1.75999999	0	2018-12-04 15:58:00
Plymouth	City	Amador	california	38.4818993	-120.845001	1.63	52	Moderate air quality	pm25	2018-12-05 00:15:00	50.25	90	1014	0.860000014	0	2018-12-04 15:58:00
Point Arena	City	Mendocino	california	38.9087982	-123.693001	1.5	50	Good air quality	pm25	2018-12-04 23:56:00	55.9399986	90	1014	2.0999999	0	2018-12-04 15:58:00
Pomona	City	Los Angeles	california	34.0550995	-117.75	2.50999999	56	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	1	1014	5.0999999	0	2018-12-04 15:58:00
Port Hueneme	City	Ventura	california	34.1478004	-119.195	2.4000001	61	Moderate air quality	pm25	2018-12-04 23:57:00	62.5600014	40	1014	5.69999981	0	2018-12-04 15:58:00
Porterville	City	Tulare	california	36.0652008	-119.016998	2	69	Moderate air quality	pm25	2018-12-05 00:15:00	54.4300003	40	1013	3.5999999	0	2018-12-04 15:58:00
Portola	City	Plumas	california	39.8105011	-120.469002	1.63	52	Moderate air quality	pm25	2018-12-05 00:35:00	28.7399998	90	1020	3.0999999	0	2018-12-04 15:58:00
Portola Valley	Town	San Mateo	california	37.3841019	-122.235001	1.73000002	61	Moderate air quality	pm25	2018-12-05 00:10:00	53.3800011	90	1014	2.0999999	0	2018-12-04 15:58:00
Poway	City	San Diego	california	32.9627991	-117.036003	2.70000005	39	Good air quality	pm25	2018-12-05 00:35:00	63.8199997	1	1015	6.69999981	0	2018-12-04 15:58:00
Rancho Cordova	City	Sacramento	california	38.5890999	-121.303001	1.57000005	66	Moderate air quality	pm25	2018-12-05 00:20:00	50.9399986	90	1015	2.5999999	0	2018-12-04 15:58:00
Rancho Cucamonga	City	San Bernardino	california	34.1063995	-117.593002	2.50999999	36	Good air quality	pm25	2018-12-04 23:58:00	67.5100021	1	1014	4.0999999	0	2018-12-04 15:58:00
Rancho Mirage	City	Riverside	california	33.7397003	-116.413002	2.6400001	30	Good air quality	o3	2018-12-05 00:35:00	61.7400017	1	1015	6.69999981	0	2018-12-04 15:58:00
Rancho Palos Verdes	City	Los Angeles	california	33.7444992	-118.387001	2.53999996	45	Good air quality	pm25	2018-12-04 23:58:00	67.0800018	20	1014	3.25999999	0	2018-12-04 15:58:00
Rancho Santa Margarita	City	Orange	california	33.6402016	-117.602997	2.57999992	35	Good air quality	o3	2018-12-05 00:35:00	65.1600037	1	1015	6.69999981	0	2018-12-04 15:58:00
Red Bluff	City	Tehama	california	40.1785011	-122.236	1.42999995	40	Good air quality	pm25	2018-12-04 23:54:00	56.5299988	20	1015	3.0999999	0	2018-12-04 15:58:00
Redding	City	Shasta	california	40.5864983	-122.391998	1.36000001	95	Moderate air quality	pm25	2018-12-05 00:10:00	52.5600014	1	1015	4.5999999	0	2018-12-04 15:58:00
Redlands	City	San Bernardino	california	34.0555992	-117.182999	2.54999995	60	Moderate air quality	pm25	2018-12-05 00:35:00	64.5999985	1	1015	6.69999981	0	2018-12-04 15:58:00
Redondo Beach	City	Los Angeles	california	33.8492012	-118.388	2.49000001	64	Moderate air quality	pm25	2018-12-04 23:58:00	67.0800018	20	1014	3.25999999	0	2018-12-04 15:58:00
Redwood City	City	San Mateo	california	37.485199	-122.236	1.73000002	80	Moderate air quality	pm25	2018-12-05 00:15:00	52.4099998	90	1014	2.0999999	0	2018-12-04 15:58:00
Reedley	City	Fresno	california	36.5962982	-119.449997	1.94000006	56	Moderate air quality	pm25	2018-12-05 00:35:00	53.8699989	1	1014	2.0999999	0	2018-12-04 15:58:00
Rialto	City	San Bernardino	california	34.1063995	-117.370003	2.49000001	55	Moderate air quality	pm25	2018-12-05 00:35:00	65.5500031	1	1015	6.69999981	0	2018-12-04 15:58:00
Richmond	City	Contra Costa	california	37.9357986	-122.348	1.62	63	Moderate air quality	pm25	2018-12-05 00:15:00	52.6100006	75	1014	2.0999999	0	2018-12-04 15:58:00
Ridgecrest	City	Kern	california	35.6225014	-117.670998	2.18000007	40	Good air quality	pm25	2018-12-04 23:56:00	53.9599991	75	1019	5.69999981	0	2018-12-04 15:58:00
Rio Dell	City	Humboldt	california	40.4992981	-124.106003	1.41999996	32	Good air quality	o3	2018-12-05 00:35:00	54.5200005	1	1013	3.1099999	0	2018-12-04 15:58:00
Rio Vista	City	Solano	california	38.1557999	-121.691002	1.61000001	37	Good air quality	pm25	2018-12-05 00:20:00	51.6399994	75	1015	2.5999999	0	2018-12-04 15:58:00
Ripon	City	San Joaquin	california	37.7394981	-121.135002	1.71000004	66	Moderate air quality	pm25	2018-12-05 00:15:00	51.7299995	40	1014	2.46000004	0	2018-12-04 15:58:00
Riverbank	City	Stanislaus	california	37.7360001	-120.934998	1.72000003	71	Moderate air quality	pm25	2018-12-05 00:15:00	52.9300003	90	1014	2.0999999	0	2018-12-04 15:58:00
Riverside	City	Riverside	california	33.9805984	-117.375	2.52999997	55	Moderate air quality	pm25	2018-12-05 00:35:00	65.5199966	1	1015	6.69999981	0	2018-12-04 15:58:00
Rocklin	City	Placer	california	38.790699	-121.236	1.58000004	64	Moderate air quality	pm25	2018-12-05 00:35:00	50.2200012	90	1015	2.0999999	0	2018-12-04 15:58:00
Rohnert Park	City	Sonoma	california	38.3395996	-122.700996	1.54999995	42	Good air quality	pm25	2018-12-05 00:15:00	53.0600014	90	1014	3.5999999	0	2018-12-04 15:58:00
Rolling Hills	City	Los Angeles	california	33.757	-118.353996	2.49000001	46	Good air quality	pm25	2018-12-05 00:55:00	66.9400024	5	1015	3.25999999	0	2018-12-04 15:58:00
Rolling Hills Estates	City	Los Angeles	california	33.7877998	-118.358002	2.49000001	58	Moderate air quality	pm25	2018-12-04 23:58:00	67.0800018	20	1014	3.25999999	0	2018-12-04 15:58:00
Rosemead	City	Los Angeles	california	34.0806007	-118.072998	2.45000005	63	Moderate air quality	pm25	2018-12-05 00:55:00	67.1200027	5	1015	0.209999993	0	2018-12-04 15:58:00
Roseville	City	Placer	california	38.7521019	-121.288002	1.54999995	65	Moderate air quality	pm25	2018-12-05 00:35:00	50.2200012	90	1015	2.0999999	0	2018-12-04 15:58:00
Ross	Town	Marin	california	37.9623985	-122.555	1.61000001	37	Good air quality	pm25	2018-12-05 00:15:00	53.2000008	75	1014	2.0999999	0	2018-12-04 15:58:00
Sacramento	City	Sacramento	california	38.5816002	-121.494003	1.57000005	67	Moderate air quality	pm25	2018-12-05 00:35:00	50.9199982	75	1015	2.5999999	0	2018-12-04 15:58:00
St. Helena	City	Napa	california	38.5051994	-122.470001	1.54999995	42	Good air quality	pm25	2018-12-05 00:20:00	52.6500015	90	1014	3.5999999	0	2018-12-04 15:58:00
Salinas	City	Monterey	california	36.6777	-121.655998	1.86000001	55	Moderate air quality	pm25	2018-12-05 00:15:00	55.2599983	1	1014	6.65999985	1.01999998	2018-12-04 15:58:00
San Anselmo	Town	Marin	california	37.9746017	-122.561996	1.61000001	37	Good air quality	pm25	2018-12-05 00:15:00	53.2000008	75	1014	2.0999999	0	2018-12-04 15:58:00
San Bernardino	City	San Bernardino	california	34.1082993	-117.290001	2.49000001	55	Moderate air quality	pm25	2018-12-05 00:35:00	65.5	1	1015	6.69999981	0	2018-12-04 15:58:00
San Bruno	City	San Mateo	california	37.6305008	-122.411003	1.65999997	66	Moderate air quality	pm25	2018-12-05 00:15:00	53.3800011	90	1013	3.0999999	0	2018-12-04 15:58:00
San Carlos	City	San Mateo	california	37.5071983	-122.261002	1.65999997	79	Moderate air quality	pm25	2018-12-05 00:15:00	52.4099998	90	1014	2.0999999	0	2018-12-04 15:58:00
San Clemente	City	Orange	california	33.4273987	-117.612999	2.57999992	53	Moderate air quality	pm25	2018-12-05 00:35:00	65.0699997	1	1015	6.69999981	0	2018-12-04 15:58:00
San Diego	City	San Diego	california	32.7156982	-117.161003	2.73000002	77	Moderate air quality	pm25	2018-12-04 23:56:00	64.0400009	40	1015	3.5999999	0	2018-12-04 15:58:00
San Dimas	City	Los Angeles	california	34.1067009	-117.806999	2.47000003	54	Moderate air quality	pm25	2018-12-05 00:55:00	66.6900024	5	1015	0.560000002	0	2018-12-04 15:58:00
San Fernando	City	Los Angeles	california	34.2818985	-118.439003	2.42000008	61	Moderate air quality	pm25	2018-12-05 00:55:00	66.6500015	5	1015	0.209999993	0	2018-12-04 15:58:00
San Francisco	City and county	San Francisco	california	37.7748985	-122.418999	1.62	65	Moderate air quality	pm25	2018-12-05 00:15:00	52.8300018	75	1014	2.0999999	0	2018-12-04 15:58:00
San Gabriel	City	Los Angeles	california	34.0960999	-118.106003	2.45000005	59	Moderate air quality	pm25	2018-12-05 00:55:00	67.1200027	5	1015	0.209999993	0	2018-12-04 15:58:00
San Jacinto	City	Riverside	california	33.7839012	-116.959	2.5999999	53	Moderate air quality	pm25	2018-12-05 00:35:00	63.4099998	1	1015	6.69999981	0	2018-12-04 15:58:00
San Joaquin	City	Fresno	california	36.6066017	-120.189003	1.88999999	48	Good air quality	pm25	2018-12-05 00:35:00	54.3699989	1	1014	2.0999999	0	2018-12-04 15:58:00
San Jose	City	Santa Clara	california	37.3381996	-121.886002	1.73000002	69	Moderate air quality	pm25	2018-12-05 00:15:00	52.8600006	90	1014	2.0999999	0	2018-12-04 15:58:00
San Juan Bautista	City	San Benito	california	36.8455009	-121.538002	1.82000005	31	Good air quality	pm25	2018-12-05 00:15:00	54.7000008	1	1014	6.65999985	1.01999998	2018-12-04 15:58:00
San Juan Capistrano	City	Orange	california	33.5018997	-117.663002	2.57999992	54	Moderate air quality	pm25	2018-12-05 00:35:00	64.8700027	1	1015	1.5	0	2018-12-04 15:58:00
San Leandro	City	Alameda	california	37.7248993	-122.155998	1.65999997	57	Moderate air quality	pm25	2018-12-05 00:15:00	52.6100006	90	1014	5.69999981	0	2018-12-04 15:58:00
San Luis Obispo	City	San Luis Obispo	california	35.2827988	-120.660004	2.07999992	24	Good air quality	o3	2018-12-04 23:56:00	58.8600006	90	1012	4.61000013	0	2018-12-04 15:58:00
San Marcos	City	San Diego	california	33.1433983	-117.166	2.68000007	41	Good air quality	pm25	2018-12-05 00:15:00	64.0599976	1	1015	2.5999999	0	2018-12-04 15:58:00
San Marino	City	Los Angeles	california	34.1213989	-118.106003	2.45000005	58	Moderate air quality	pm25	2018-12-05 00:55:00	67.1200027	5	1015	0.209999993	0	2018-12-04 15:58:00
San Mateo	City	San Mateo	california	37.5629997	-122.325996	1.65999997	74	Moderate air quality	pm25	2018-12-05 00:15:00	52.5200005	90	1014	2.0999999	0	2018-12-04 15:58:00
San Pablo	City	Contra Costa	california	37.962101	-122.346001	1.62	59	Moderate air quality	pm25	2018-12-05 00:15:00	52.6100006	75	1014	2.0999999	0	2018-12-04 15:58:00
San Rafael	City	Marin	california	37.9734993	-122.530998	1.61000001	56	Moderate air quality	pm25	2018-12-05 00:15:00	52.8100014	75	1014	2.0999999	0	2018-12-04 15:58:00
San Ramon	City	Contra Costa	california	37.7798996	-121.977997	1.65999997	62	Moderate air quality	pm25	2018-12-05 00:15:00	52.6800003	40	1014	1.75999999	0	2018-12-04 15:58:00
Sand City	City	Monterey	california	36.6171989	-121.848	1.84000003	27	Good air quality	pm25	2018-12-05 00:15:00	55.2400017	90	1013	3.0999999	1.01999998	2018-12-04 15:58:00
Sanger	City	Fresno	california	36.7080002	-119.556	1.92999995	59	Moderate air quality	pm25	2018-12-05 00:35:00	54.3400002	1	1014	2.0999999	0	2018-12-04 15:58:00
Santa Ana	City	Orange	california	33.7454987	-117.867996	2.52999997	59	Moderate air quality	pm25	2018-12-04 23:58:00	66.6500015	20	1014	4.0999999	0	2018-12-04 15:58:00
Santa Barbara	City	Santa Barbara	california	34.4207993	-119.697998	2.32999992	56	Moderate air quality	pm25	2018-12-05 00:35:00	61.4700012	75	1012	4.5999999	0	2018-12-04 15:58:00
Santa Clara	City	Santa Clara	california	37.3540993	-121.955002	1.73000002	65	Moderate air quality	pm25	2018-12-05 00:15:00	52.7900009	90	1014	2.0999999	0	2018-12-04 15:58:00
Santa Clarita	City	Los Angeles	california	34.3917007	-118.542999	2.3900001	36	Good air quality	o3	2018-12-05 00:55:00	63.6599998	5	1015	1.55999994	0	2018-12-04 15:58:00
Santa Cruz	City	Santa Cruz	california	36.9740982	-122.030998	1.79999995	75	Moderate air quality	pm25	2018-12-05 00:15:00	54.4099998	90	1014	2.5999999	1.01999998	2018-12-04 15:58:00
Santa Fe Springs	City	Los Angeles	california	33.9472008	-118.084999	2.49000001	57	Moderate air quality	pm25	2018-12-05 00:55:00	67.1200027	5	1015	0.209999993	0	2018-12-04 15:58:00
Santa Maria	City	Santa Barbara	california	34.9529991	-120.435997	2.16000009	51	Moderate air quality	pm25	2018-12-05 00:15:00	59.4500008	90	1012	3.5999999	0	2018-12-04 15:58:00
Santa Monica	City	Los Angeles	california	34.0195007	-118.490997	2.43000007	68	Moderate air quality	pm25	2018-12-05 00:55:00	66.4000015	5	1015	0.209999993	0	2018-12-04 15:58:00
Santa Paula	City	Ventura	california	34.3541985	-119.058998	2.36999989	64	Moderate air quality	pm25	2018-12-05 00:55:00	64.9400024	5	1015	1.55999994	0	2018-12-04 15:58:00
Santa Rosa	City	Sonoma	california	38.4403992	-122.713997	1.54999995	65	Moderate air quality	pm25	2018-12-05 00:15:00	53.8300018	90	1014	3.5999999	0	2018-12-04 15:58:00
Santee	City	San Diego	california	32.8384018	-116.973999	2.75	62	Moderate air quality	pm25	2018-12-05 00:35:00	63.7700005	1	1015	1.5	0	2018-12-04 15:58:00
Saratoga	City	Santa Clara	california	37.2638016	-122.023003	1.73000002	56	Moderate air quality	pm25	2018-12-05 00:15:00	53.5499992	40	1014	1.5	0	2018-12-04 15:58:00
Sausalito	City	Marin	california	37.8591003	-122.485001	1.62	47	Good air quality	pm25	2018-12-05 00:15:00	52.8100014	75	1014	2.0999999	0	2018-12-04 15:58:00
Scotts Valley	City	Santa Cruz	california	37.0511017	-122.014999	1.78999996	54	Moderate air quality	pm25	2018-12-05 00:15:00	54.3600006	90	1014	2.5999999	1.01999998	2018-12-04 15:58:00
Seal Beach	City	Orange	california	33.7414017	-118.105003	2.53999996	53	Moderate air quality	pm25	2018-12-05 00:55:00	67.1200027	5	1015	3.25999999	0	2018-12-04 15:58:00
Seaside	City	Monterey	california	36.6148987	-121.821999	1.84000003	44	Good air quality	pm25	2018-12-05 00:15:00	55.2400017	90	1013	3.0999999	1.01999998	2018-12-04 15:58:00
Sebastopol	City	Sonoma	california	38.4020996	-122.823997	1.53999996	60	Moderate air quality	pm25	2018-12-05 00:15:00	54.1199989	90	1014	3.5999999	0	2018-12-04 15:58:00
Selma	City	Fresno	california	36.5708008	-119.612	1.92999995	64	Moderate air quality	pm25	2018-12-05 00:35:00	54.3400002	1	1014	2.0999999	0	2018-12-04 15:58:00
Shafter	City	Kern	california	35.5004997	-119.272003	2.04999995	61	Moderate air quality	pm25	2018-12-05 00:15:00	58.0099983	1	1013	2.3599999	0	2018-12-04 15:58:00
Shasta Lake	City	Shasta	california	40.6804008	-122.371002	1.36000001	74	Moderate air quality	pm25	2018-12-05 00:10:00	52.6800003	1	1016	1.30999994	0	2018-12-04 15:58:00
Sierra Madre	City	Los Angeles	california	34.1617012	-118.053001	2.45000005	58	Moderate air quality	pm25	2018-12-05 00:55:00	67.1200027	5	1015	0.209999993	0	2018-12-04 15:58:00
Signal Hill	City	Los Angeles	california	33.8045006	-118.167999	2.49000001	67	Moderate air quality	pm25	2018-12-04 23:58:00	67.2399979	1	1014	3.0999999	0	2018-12-04 15:58:00
Simi Valley	City	Ventura	california	34.2694016	-118.780998	2.38000011	39	Good air quality	o3	2018-12-05 00:55:00	66.2399979	5	1015	1.55999994	0	2018-12-04 15:58:00
Solana Beach	City	San Diego	california	32.9911995	-117.271004	2.72000003	55	Moderate air quality	pm25	2018-12-05 00:15:00	64.0599976	1	1015	2.5999999	0	2018-12-04 15:58:00
Soledad	City	Monterey	california	36.4247017	-121.325996	1.91999996	61	Moderate air quality	pm25	2018-12-05 00:15:00	55.9399986	1	1014	3.8599999	1.01999998	2018-12-04 15:58:00
Solvang	City	Santa Barbara	california	34.5957985	-120.138	2.25	37	Good air quality	o3	2018-12-05 00:35:00	59.8100014	75	1012	4.5999999	0	2018-12-04 15:58:00
Sonoma	City	Sonoma	california	38.2919006	-122.458	1.57000005	51	Moderate air quality	pm25	2018-12-05 00:20:00	52.5600014	90	1014	3.5999999	0	2018-12-04 15:58:00
Sonora	City	Tuolumne	california	37.9828987	-120.382004	1.73000002	75	Moderate air quality	pm25	2018-12-05 00:15:00	52.4500008	75	1014	3.21000004	0	2018-12-04 15:58:00
South El Monte	City	Los Angeles	california	34.0519981	-118.046997	2.45000005	55	Moderate air quality	pm25	2018-12-05 00:55:00	67.1200027	5	1015	0.209999993	0	2018-12-04 15:58:00
South Gate	City	Los Angeles	california	33.9547005	-118.211998	2.49000001	65	Moderate air quality	pm25	2018-12-05 00:55:00	67.1200027	5	1015	0.209999993	0	2018-12-04 15:58:00
South Lake Tahoe	City	El Dorado	california	38.9398994	-119.976997	1.76999998	31	Good air quality	o3	2018-12-05 00:42:00	28.4200001	90	1017	1.40999997	0	2018-12-04 15:58:00
South Pasadena	City	Los Angeles	california	34.1161003	-118.150002	2.45000005	60	Moderate air quality	pm25	2018-12-05 00:55:00	67.1200027	5	1015	0.209999993	0	2018-12-04 15:58:00
South San Francisco	City	San Mateo	california	37.6547012	-122.407997	1.65999997	67	Moderate air quality	pm25	2018-12-05 00:15:00	53.4000015	90	1013	3.0999999	0	2018-12-04 15:58:00
Stanton	City	Orange	california	33.8028984	-117.992996	2.49000001	45	Good air quality	pm25	2018-12-05 00:55:00	66.6900024	5	1015	3.25999999	0	2018-12-04 15:58:00
Stockton	City	San Joaquin	california	37.9576988	-121.291	1.65999997	80	Moderate air quality	pm25	2018-12-05 00:15:00	51.2799988	40	1014	2.46000004	0	2018-12-04 15:58:00
Suisun City	City	Solano	california	38.2382011	-122.040001	1.60000002	28	Good air quality	o3	2018-12-05 00:20:00	51.7999992	75	1015	2.5999999	0	2018-12-04 15:58:00
Sunnyvale	City	Santa Clara	california	37.3688011	-122.036003	1.73000002	71	Moderate air quality	pm25	2018-12-05 00:15:00	52.7400017	40	1014	1.5	0	2018-12-04 15:58:00
Susanville	City	Lassen	california	40.4163017	-120.653	1.50999999	49	Good air quality	pm25	2018-12-05 00:35:00	32	90	1020	2.0999999	0	2018-12-04 15:58:00
Sutter Creek	City	Amador	california	38.3930016	-120.802002	1.63	65	Moderate air quality	pm25	2018-12-05 00:35:00	50.8600006	90	1014	0.860000014	0	2018-12-04 15:58:00
Taft	City	Kern	california	35.1425018	-119.457001	2.1400001	56	Moderate air quality	pm25	2018-12-04 23:54:00	64.0400009	1	1013	8.69999981	0	2018-12-04 15:58:00
Tehachapi	City	Kern	california	35.1321983	-118.448997	2.31999993	38	Good air quality	pm25	2018-12-05 00:00:00	54.1899986	1	1018	10.8000002	0	2018-12-04 15:58:00
Tehama	City	Tehama	california	40.0270996	-122.123001	1.42999995	25	Good air quality	o3	2018-12-04 23:54:00	56.5499992	20	1015	3.0999999	0	2018-12-04 15:58:00
Temecula	City	Riverside	california	33.4935989	-117.148003	2.63000011	46	Good air quality	pm25	2018-12-05 00:35:00	63.9300003	1	1015	6.69999981	0	2018-12-04 15:58:00
Temple City	City	Los Angeles	california	34.1072006	-118.057999	2.45000005	51	Moderate air quality	pm25	2018-12-05 00:55:00	67.1200027	5	1015	0.209999993	0	2018-12-04 15:58:00
Thousand Oaks	City	Ventura	california	34.1706009	-118.837997	2.44000006	54	Moderate air quality	pm25	2018-12-05 00:55:00	66.2399979	5	1015	1.55999994	0	2018-12-04 15:58:00
Tiburon	Town	Marin	california	37.8735008	-122.457001	1.62	58	Moderate air quality	pm25	2018-12-05 00:15:00	52.8100014	75	1014	2.0999999	0	2018-12-04 15:58:00
Torrance	City	Los Angeles	california	33.8358002	-118.341003	2.49000001	56	Moderate air quality	pm25	2018-12-05 00:55:00	67.1200027	5	1015	3.25999999	0	2018-12-04 15:58:00
Tracy	City	San Joaquin	california	37.7397003	-121.425003	1.71000004	68	Moderate air quality	pm25	2018-12-05 00:15:00	52.5400009	40	1014	2.46000004	0	2018-12-04 15:58:00
Trinidad	City	Humboldt	california	41.0592995	-124.142998	1.30999994	30	Good air quality	o3	2018-12-05 00:35:00	53.7099991	1	1013	3.1099999	0	2018-12-04 15:58:00
Truckee	Town	Nevada	california	39.3279991	-120.182999	1.70000005	59	Moderate air quality	pm25	2018-12-05 00:42:00	28.1299992	90	1017	1.15999997	0	2018-12-04 15:58:00
Tulare	City	Tulare	california	36.2076988	-119.347	1.98000002	76	Moderate air quality	pm25	2018-12-05 00:15:00	53.7799988	75	1013	4.0999999	0	2018-12-04 15:58:00
Tulelake	City	Siskiyou	california	41.9560013	-121.476997	1.24000001	57	Moderate air quality	pm25	2018-12-04 23:53:00	30.9200001	90	1018	3.5999999	0	2018-12-04 15:58:00
Turlock	City	Stanislaus	california	37.4947014	-120.847	1.75999999	95	Moderate air quality	pm25	2018-12-04 23:55:00	54.0999985	90	1014	2.0999999	0	2018-12-04 15:58:00
Tustin	City	Orange	california	33.7420006	-117.823997	2.52999997	32	Good air quality	o3	2018-12-05 00:35:00	65.9800034	1	1015	6.69999981	0	2018-12-04 15:58:00
Twentynine Palms	City	San Bernardino	california	34.135601	-116.054001	2.53999996	43	Good air quality	pm25	2018-12-05 00:54:00	52.8100014	0	958.080017	1.15999997	0	2018-12-04 15:58:00
Ukiah	City	Mendocino	california	39.1501999	-123.208	1.5	75	Moderate air quality	pm25	2018-12-04 23:56:00	55.9399986	90	1014	2.0999999	0	2018-12-04 15:58:00
Union City	City	Alameda	california	37.593399	-122.043999	1.65999997	63	Moderate air quality	pm25	2018-12-05 00:15:00	52.5200005	90	1013	2.5999999	0	2018-12-04 15:58:00
Upland	City	San Bernardino	california	34.0974998	-117.648003	2.50999999	52	Moderate air quality	pm25	2018-12-04 23:58:00	67.75	1	1014	4.0999999	0	2018-12-04 15:58:00
Vacaville	City	Solano	california	38.3566017	-121.987999	1.57000005	55	Moderate air quality	pm25	2018-12-05 00:20:00	51.8499985	75	1015	2.5999999	0	2018-12-04 15:58:00
Vallejo	City	Solano	california	38.1040993	-122.257004	1.58000004	64	Moderate air quality	pm25	2018-12-05 00:20:00	52.3800011	75	1014	2.0999999	0	2018-12-04 15:58:00
Ventura	City	Ventura	california	34.2804985	-119.294998	2.3599999	62	Moderate air quality	pm25	2018-12-04 23:57:00	62.5999985	1	1014	3.0999999	0	2018-12-04 15:58:00
Vernon	City	Los Angeles	california	34.0038986	-118.230003	2.45000005	66	Moderate air quality	pm25	2018-12-05 00:55:00	67.1200027	5	1015	0.209999993	0	2018-12-04 15:58:00
Victorville	City	San Bernardino	california	34.5362015	-117.292999	2.4000001	57	Moderate air quality	pm25	2018-12-04 23:58:00	59.5	40	1017	7.69999981	0	2018-12-04 15:58:00
Villa Park	City	Orange	california	33.8139992	-117.821999	2.49000001	44	Good air quality	pm25	2018-12-04 23:58:00	66.8799973	20	1014	4.0999999	0	2018-12-04 15:58:00
Visalia	City	Tulare	california	36.3302002	-119.292	1.96000004	75	Moderate air quality	pm25	2018-12-05 00:35:00	54.1399994	1	1014	2.0999999	0	2018-12-04 15:58:00
Vista	City	San Diego	california	33.2000008	-117.242996	2.68000007	48	Good air quality	pm25	2018-12-05 00:35:00	63.7000008	1	1015	1.5	0	2018-12-04 15:58:00
Walnut	City	Los Angeles	california	34.0203018	-117.864998	2.47000003	46	Good air quality	pm25	2018-12-05 00:55:00	67.1200027	5	1015	0.560000002	0	2018-12-04 15:58:00
Walnut Creek	City	Contra Costa	california	37.910099	-122.065002	1.63999999	67	Moderate air quality	pm25	2018-12-05 00:15:00	52.7200012	40	1014	1.75999999	0	2018-12-04 15:58:00
Wasco	City	Kern	california	35.594101	-119.341003	2.04999995	50	Good air quality	pm25	2018-12-05 00:15:00	58.1199989	1	1013	2.3599999	0	2018-12-04 15:58:00
Waterford	City	Stanislaus	california	37.6413002	-120.760002	1.72000003	83	Moderate air quality	pm25	2018-12-05 00:10:00	53.4900017	90	1014	2.0999999	0	2018-12-04 15:58:00
Watsonville	City	Santa Cruz	california	36.9101982	-121.757004	1.79999995	65	Moderate air quality	pm25	2018-12-05 00:15:00	54.5	1	1014	3.3599999	1.01999998	2018-12-04 15:58:00
Weed	City	Siskiyou	california	41.4225998	-122.386002	1.32000005	71	Moderate air quality	pm25	2018-12-05 00:10:00	40.2599983	90	1017	1.5	0	2018-12-04 15:58:00
West Covina	City	Los Angeles	california	34.0685997	-117.939003	2.47000003	63	Moderate air quality	pm25	2018-12-05 00:55:00	66.6900024	5	1015	0.209999993	0	2018-12-04 15:58:00
West Hollywood	City	Los Angeles	california	34.0900002	-118.362	2.43000007	64	Moderate air quality	pm25	2018-12-05 00:55:00	66.9400024	5	1015	0.209999993	0	2018-12-04 15:58:00
West Sacramento	City	Yolo	california	38.5805016	-121.529999	1.55999994	56	Moderate air quality	pm25	2018-12-05 00:35:00	50.6500015	90	1014	1.5	0	2018-12-04 15:58:00
Westlake Village	City	Los Angeles	california	34.1465988	-118.806999	2.44000006	39	Good air quality	o3	2018-12-05 00:55:00	66.2399979	5	1015	1.55999994	0	2018-12-04 15:58:00
Westminster	City	Orange	california	33.759201	-117.989998	2.49000001	54	Moderate air quality	pm25	2018-12-05 00:55:00	66.6900024	5	1015	3.25999999	0	2018-12-04 15:58:00
Westmorland	City	Imperial	california	33.0373001	-115.621002	2.6500001	65	Moderate air quality	pm25	2018-12-05 00:35:00	63.3199997	1	1018	1.5	0	2018-12-04 15:58:00
Wheatland	City	Yuba	california	39.0098991	-121.422997	1.52999997	41	Good air quality	pm25	2018-12-05 00:35:00	50.7599983	90	1015	0.75999999	0	2018-12-04 15:58:00
Whittier	City	Los Angeles	california	33.9791985	-118.032997	2.49000001	56	Moderate air quality	pm25	2018-12-05 00:55:00	67.1200027	5	1015	0.209999993	0	2018-12-04 15:58:00
Wildomar	City	Riverside	california	33.5988998	-117.279999	2.5999999	35	Good air quality	o3	2018-12-05 00:35:00	63.1199989	1	1015	6.69999981	0	2018-12-04 15:58:00
Williams	City	Colusa	california	39.1545982	-122.149002	1.49000001	65	Moderate air quality	pm25	2018-12-04 23:58:00	51.75	75	1015	3.0999999	0	2018-12-04 15:58:00
Willits	City	Mendocino	california	39.4095993	-123.356003	1.49000001	59	Moderate air quality	pm25	2018-12-04 23:56:00	55.9399986	90	1014	2.0999999	0	2018-12-04 15:58:00
Willows	City	Glenn	california	39.5242996	-122.194	1.47000003	41	Good air quality	pm25	2018-12-04 23:53:00	53.9599991	75	1016	1.86000001	0	2018-12-04 15:58:00
Windsor	Town	Sonoma	california	38.5471001	-122.816002	1.51999998	55	Moderate air quality	pm25	2018-12-05 00:15:00	54.1199989	90	1014	3.5999999	0	2018-12-04 15:58:00
Winters	City	Yolo	california	38.5248985	-121.971001	1.54999995	39	Good air quality	pm25	2018-12-05 00:20:00	51.8499985	75	1015	2.5999999	0	2018-12-04 15:58:00
Woodlake	City	Tulare	california	36.4136009	-119.098999	1.98000002	52	Moderate air quality	pm25	2018-12-05 00:15:00	54.1800003	75	1014	0.50999999	0	2018-12-04 15:58:00
Woodland	City	Yolo	california	38.6785011	-121.773003	1.54999995	67	Moderate air quality	pm25	2018-12-05 00:35:00	50.8499985	75	1015	2.5999999	0	2018-12-04 15:58:00
Woodside	Town	San Mateo	california	37.4299011	-122.253998	1.72000003	70	Moderate air quality	pm25	2018-12-05 00:10:00	53.3800011	90	1014	2.0999999	0	2018-12-04 15:58:00
Yorba Linda	City	Orange	california	33.8885002	-117.813004	2.49000001	45	Good air quality	pm25	2018-12-05 00:55:00	67.1200027	5	1015	1.55999994	0	2018-12-04 15:58:00
Yountville	Town	Napa	california	38.4015999	-122.361	1.57000005	26	Good air quality	pm25	2018-12-05 00:20:00	52.6500015	90	1014	3.5999999	0	2018-12-04 15:58:00
Yreka	City	Siskiyou	california	41.7354012	-122.634003	1.26999998	67	Moderate air quality	pm25	2018-12-04 23:56:00	37.9199982	90	1018	3.0999999	0	2018-12-04 15:58:00
Yuba City	City	Sutter	california	39.1403999	-121.616997	1.51999998	60	Moderate air quality	pm25	2018-12-05 00:35:00	49.9500008	90	1014	1.5	0	2018-12-04 15:58:00
Yucaipa	City	San Bernardino	california	34.0335999	-117.042999	2.54999995	48	Good air quality	pm25	2018-12-05 00:35:00	64.6299973	1	1015	6.69999981	0	2018-12-04 15:58:00
Yucca Valley	Town	San Bernardino	california	34.1142006	-116.431999	2.56999993	38	Good air quality	o3	2018-12-05 00:56:00	48.5299988	0	910.580017	1.40999997	0	2018-12-04 15:58:00
Adelanto	City	San Bernardino	california	34.5828018	-117.408997	2.48000002	33	Good air quality	pm25	2018-12-05 01:58:00	49.8699989	40	1017	6.19999981	0	2018-12-04 17:58:00
Agoura Hills	City	Los Angeles	california	34.1533012	-118.762001	2.5	45	Good air quality	pm25	2018-12-05 02:50:00	61.1199989	5	1016	2.0999999	0	2018-12-04 17:58:00
Alameda	City	Alameda	california	37.7652016	-122.241997	1.59000003	64	Moderate air quality	pm25	2018-12-05 02:40:00	51.7299995	90	1012	5.69999981	0.50999999	2018-12-04 17:58:00
Albany	City	Alameda	california	37.8869019	-122.297997	1.58000004	68	Moderate air quality	pm25	2018-12-05 02:15:00	51.3100014	90	1013	1.5	0.50999999	2018-12-04 17:58:00
Alhambra	City	Los Angeles	california	34.0952988	-118.126999	2.52999997	58	Moderate air quality	pm25	2018-12-05 02:50:00	60.5299988	5	1016	2.0999999	0	2018-12-04 17:58:00
Aliso Viejo	City	Orange	california	33.5685005	-117.725998	2.6400001	40	Good air quality	pm25	2018-12-05 02:35:00	58.3899994	1	1015	4.5999999	0	2018-12-04 17:58:00
Alturas	City	Modoc	california	41.4870987	-120.542	1.30999994	51	Moderate air quality	pm25	2018-12-05 01:55:00	33.0800018	90	1018	2.0999999	0	2018-12-04 17:58:00
Amador City	City	Amador	california	38.4193993	-120.823997	1.60000002	55	Moderate air quality	pm25	2018-12-05 02:35:00	48.7200012	40	1014	2.0999999	0	2018-12-04 17:58:00
American Canyon	City	Napa	california	38.1749001	-122.261002	1.53999996	30	Good air quality	pm25	2018-12-05 02:20:00	51.0099983	90	1013	1.5	0.50999999	2018-12-04 17:58:00
Anaheim	City	Orange	california	33.8366013	-117.914001	2.55999994	52	Moderate air quality	pm25	2018-12-05 02:50:00	60.2799988	5	1016	2.0999999	0	2018-12-04 17:58:00
Anderson	City	Shasta	california	40.4482002	-122.297997	1.37	80	Moderate air quality	pm25	2018-12-05 02:10:00	49.4399986	75	1015	2.0999999	0	2018-12-04 17:58:00
Angels Camp	City	Calaveras	california	38.0677986	-120.539001	1.63999999	71	Moderate air quality	pm25	2018-12-05 02:35:00	49.2599983	40	1014	2.0999999	0	2018-12-04 17:58:00
Antioch	City	Contra Costa	california	38.0049019	-121.806	1.54999995	63	Moderate air quality	pm25	2018-12-05 02:20:00	50.7700005	90	1014	2.21000004	0.50999999	2018-12-04 17:58:00
Apple Valley	Town	San Bernardino	california	34.5008011	-117.185997	2.5	33	Good air quality	o3	2018-12-05 01:58:00	52.1199989	1	1018	3.5999999	0	2018-12-04 17:58:00
Arcadia	City	Los Angeles	california	34.1397018	-118.035004	2.52999997	51	Moderate air quality	pm25	2018-12-05 02:50:00	60.5499992	5	1016	2.0999999	0	2018-12-04 17:58:00
Arcata	City	Humboldt	california	40.8665009	-124.083	1.32000005	25	Good air quality	o3	2018-12-05 02:35:00	52.5	90	1013	2.0999999	0	2018-12-04 17:58:00
Arroyo Grande	City	San Luis Obispo	california	35.1185989	-120.591003	2.11999989	45	Good air quality	pm25	2018-12-05 01:58:00	54.7700005	90	1015	4.0999999	0.419999987	2018-12-04 17:58:00
Artesia	City	Los Angeles	california	33.865799	-118.083	2.55999994	59	Moderate air quality	pm25	2018-12-05 02:50:00	60.5299988	5	1016	2.0999999	0	2018-12-04 17:58:00
Arvin	City	Kern	california	35.2018013	-118.833	2.21000004	40	Good air quality	pm25	2018-12-05 02:00:00	55.0600014	1	1012	10.3000002	0	2018-12-04 17:58:00
Atascadero	City	San Luis Obispo	california	35.489399	-120.670998	2.0999999	57	Moderate air quality	pm25	2018-12-05 01:56:00	55.0400009	90	1014	2.5999999	0.379999995	2018-12-04 17:58:00
Atherton	Town	San Mateo	california	37.4612999	-122.197998	1.69000006	82	Moderate air quality	pm25	2018-12-05 02:53:00	51.3699989	90	1013	4.5999999	0.50999999	2018-12-04 17:58:00
Atwater	City	Merced	california	37.3476982	-120.609001	1.73000002	76	Moderate air quality	pm25	2018-12-05 01:53:00	51.9300003	90	1014	2.5999999	0	2018-12-04 17:58:00
Auburn	City	Placer	california	38.8965988	-121.077003	1.54999995	39	Good air quality	pm25	2018-12-05 02:35:00	48.4900017	40	1014	0.959999979	0	2018-12-04 17:58:00
Avalon	City	Los Angeles	california	33.3428001	-118.328003	2.6099999	49	Good air quality	pm25	2018-12-05 02:51:00	60.2400017	1	1015	6.19999981	0	2018-12-04 17:58:00
Avenal	City	Kings	california	36.0041008	-120.128998	1.95000005	49	Good air quality	pm25	2018-12-05 01:56:00	52.0900002	90	1014	3.5999999	0	2018-12-04 17:58:00
Azusa	City	Los Angeles	california	34.1335983	-117.907997	2.54999995	58	Moderate air quality	pm25	2018-12-05 02:50:00	60.2799988	5	1016	2.0999999	0	2018-12-04 17:58:00
Bakersfield	City	Kern	california	35.3732986	-119.018997	2.1400001	69	Moderate air quality	pm25	2018-12-05 02:15:00	57.0400009	1	1012	10.3000002	0	2018-12-04 17:58:00
Baldwin Park	City	Los Angeles	california	34.0853004	-117.960999	2.54999995	60	Moderate air quality	pm25	2018-12-05 02:50:00	60.2799988	5	1016	2.0999999	0	2018-12-04 17:58:00
Banning	City	Riverside	california	33.9255981	-116.875999	2.69000006	42	Good air quality	o3	2018-12-05 02:35:00	57.7599983	1	1015	4.5999999	0	2018-12-04 17:58:00
Barstow	City	San Bernardino	california	34.8958015	-117.016998	2.4000001	33	Good air quality	o3	2018-12-05 01:55:00	46.9399986	1	1018	3.5999999	0	2018-12-04 17:58:00
Beaumont	City	Riverside	california	33.9295006	-116.976997	2.69000006	54	Moderate air quality	pm25	2018-12-05 02:35:00	57.5600014	1	1015	4.5999999	0	2018-12-04 17:58:00
Bell	City	Los Angeles	california	33.9775009	-118.186996	2.55999994	63	Moderate air quality	pm25	2018-12-05 02:50:00	60.5299988	5	1016	2.0999999	0	2018-12-04 17:58:00
Bell Gardens	City	Los Angeles	california	33.9653015	-118.151001	2.55999994	61	Moderate air quality	pm25	2018-12-05 02:50:00	60.5299988	5	1016	2.0999999	0	2018-12-04 17:58:00
Bellflower	City	Los Angeles	california	33.8816986	-118.116997	2.55999994	55	Moderate air quality	pm25	2018-12-05 02:50:00	60.5299988	5	1016	2.0999999	0	2018-12-04 17:58:00
Belmont	City	San Mateo	california	37.5201988	-122.276001	1.62	81	Moderate air quality	pm25	2018-12-05 02:53:00	51.75	90	1012	5.69999981	0.50999999	2018-12-04 17:58:00
Belvedere	City	Marin	california	37.8726997	-122.463997	1.58000004	32	Good air quality	pm25	2018-12-05 02:40:00	51.8199997	90	1012	5.69999981	0.50999999	2018-12-04 17:58:00
Benicia	City	Solano	california	38.0494003	-122.158997	1.55999994	34	Good air quality	pm25	2018-12-05 02:53:00	51.3699989	90	1013	4.5999999	0.50999999	2018-12-04 17:58:00
Berkeley	City	Alameda	california	37.8716011	-122.273003	1.58000004	68	Moderate air quality	pm25	2018-12-05 02:15:00	51.3100014	90	1013	1.5	0.50999999	2018-12-04 17:58:00
Beverly Hills	City	Los Angeles	california	34.0736008	-118.400002	2.5	56	Moderate air quality	pm25	2018-12-05 02:50:00	60.5299988	5	1016	2.0999999	0	2018-12-04 17:58:00
Big Bear Lake	City	San Bernardino	california	34.2439003	-116.911003	2.77999997	36	Good air quality	pm25	2018-12-05 01:58:00	51.4599991	1	1015	7.69999981	0	2018-12-04 17:58:00
Biggs	City	Butte	california	39.4123993	-121.712997	1.49000001	56	Moderate air quality	pm25	2018-12-05 02:35:00	48.0400009	1	1014	1.40999997	0	2018-12-04 17:58:00
Bishop	City	Inyo	california	37.3614006	-118.400002	1.96000004	56	Moderate air quality	pm25	2018-12-05 02:15:00	23.5400009	90	1018	0.75999999	0	2018-12-04 17:58:00
Blue Lake	City	Humboldt	california	40.8829002	-123.984001	1.32000005	26	Good air quality	o3	2018-12-05 02:35:00	52.5	90	1013	2.0999999	0	2018-12-04 17:58:00
Blythe	City	Riverside	california	33.6178017	-114.587997	2.63000011	34	Good air quality	pm25	2018-12-05 02:56:00	37.4799995	0	1003.41998	1.46000004	0	2018-12-04 17:58:00
Bradbury	City	Los Angeles	california	34.1469002	-117.971001	2.54999995	31	Good air quality	pm25	2018-12-05 02:50:00	60.5499992	5	1016	2.0999999	0	2018-12-04 17:58:00
Brawley	City	Imperial	california	32.9786987	-115.529999	2.73000002	73	Moderate air quality	pm25	2018-12-05 01:56:00	55.1699982	20	1018	1.40999997	0	2018-12-04 17:58:00
Brea	City	Orange	california	33.9165001	-117.900002	2.55999994	53	Moderate air quality	pm25	2018-12-05 02:50:00	60.5999985	5	1016	2.0999999	0	2018-12-04 17:58:00
Brentwood	City	Contra Costa	california	37.9319	-121.695999	1.60000002	65	Moderate air quality	pm25	2018-12-05 02:53:00	51.0299988	90	1013	4.5999999	0.50999999	2018-12-04 17:58:00
Brisbane	City	San Mateo	california	37.6808014	-122.400002	1.62	37	Good air quality	pm25	2018-12-05 02:53:00	52	90	1013	4.5999999	0.50999999	2018-12-04 17:58:00
Buellton	City	Santa Barbara	california	34.6136017	-120.193001	2.28999996	48	Good air quality	pm25	2018-12-05 02:35:00	55.9900017	90	1014	4.5999999	0.50999999	2018-12-04 17:58:00
Buena Park	City	Orange	california	33.8674011	-117.998001	2.55999994	59	Moderate air quality	pm25	2018-12-05 02:50:00	60.2799988	5	1016	2.0999999	0	2018-12-04 17:58:00
Burbank	City	Los Angeles	california	34.1808014	-118.308998	2.5	65	Moderate air quality	pm25	2018-12-05 02:50:00	60.5800018	5	1016	2.0999999	0	2018-12-04 17:58:00
Burlingame	City	San Mateo	california	37.5778999	-122.348	1.62	68	Moderate air quality	pm25	2018-12-05 02:53:00	51.7599983	90	1012	5.69999981	0.50999999	2018-12-04 17:58:00
Calabasas	City	Los Angeles	california	34.1366997	-118.661003	2.5	36	Good air quality	o3	2018-12-05 02:50:00	61.0200005	5	1016	2.0999999	0	2018-12-04 17:58:00
Calexico	City	Imperial	california	32.6789017	-115.499001	2.75999999	75	Moderate air quality	pm25	2018-12-05 01:56:00	55.1699982	20	1018	3.1099999	0	2018-12-04 17:58:00
California City	City	Kern	california	35.1258011	-117.986	2.30999994	39	Good air quality	o3	2018-12-05 02:00:00	47.7099991	1	1018	6.69999981	0	2018-12-04 17:58:00
Calimesa	City	Riverside	california	34.0038986	-117.061996	2.6400001	55	Moderate air quality	pm25	2018-12-05 02:35:00	58.0299988	1	1015	4.5999999	0	2018-12-04 17:58:00
Calipatria	City	Imperial	california	33.1255989	-115.514	2.68000007	70	Moderate air quality	pm25	2018-12-05 01:56:00	55.1699982	20	1018	1.40999997	0	2018-12-04 17:58:00
Calistoga	City	Napa	california	38.5788002	-122.580002	1.50999999	54	Moderate air quality	pm25	2018-12-05 02:20:00	51.1500015	90	1013	4.5999999	0	2018-12-04 17:58:00
Camarillo	City	Ventura	california	34.2164001	-119.038002	2.46000004	62	Moderate air quality	pm25	2018-12-05 02:50:00	60.6699982	5	1016	2.0999999	0	2018-12-04 17:58:00
Campbell	City	Santa Clara	california	37.2872009	-121.949997	1.69000006	70	Moderate air quality	pm25	2018-12-05 02:53:00	51.2599983	90	1013	4.5999999	0.50999999	2018-12-04 17:58:00
Canyon Lake	City	Riverside	california	33.6850014	-117.273003	2.66000009	35	Good air quality	o3	2018-12-05 02:35:00	57.3300018	1	1015	4.5999999	0	2018-12-04 17:58:00
Capitola	City	Santa Cruz	california	36.9752007	-121.953003	1.75999999	80	Moderate air quality	pm25	2018-12-05 02:15:00	51.6699982	90	1013	2.0999999	0.50999999	2018-12-04 17:58:00
Carlsbad	City	San Diego	california	33.1581001	-117.350998	2.68000007	51	Moderate air quality	pm25	2018-12-05 02:35:00	56.6399994	1	1015	1.86000001	0	2018-12-04 17:58:00
Carmel-by-the-Sea	City	Monterey	california	36.5551987	-121.922997	1.80999994	54	Moderate air quality	pm25	2018-12-05 02:15:00	52.1599998	90	1012	2.0999999	0.50999999	2018-12-04 17:58:00
Carpinteria	City	Santa Barbara	california	34.3988991	-119.517998	2.38000011	47	Good air quality	o3	2018-12-05 02:35:00	59.1100006	90	1014	4.5999999	0	2018-12-04 17:58:00
Carson	City	Los Angeles	california	33.8316994	-118.281998	2.54999995	60	Moderate air quality	pm25	2018-12-05 02:50:00	60.5299988	5	1016	2.0999999	0	2018-12-04 17:58:00
Cathedral City	City	Riverside	california	33.7804985	-116.467003	2.63000011	32	Good air quality	o3	2018-12-05 02:35:00	49.1899986	1	1018	0.709999979	0	2018-12-04 17:58:00
Ceres	City	Stanislaus	california	37.5948982	-120.958	1.66999996	85	Moderate air quality	pm25	2018-12-05 02:53:00	49.2999992	20	1014	1.5	0	2018-12-04 17:58:00
Cerritos	City	Los Angeles	california	33.8582993	-118.065002	2.55999994	54	Moderate air quality	pm25	2018-12-05 02:50:00	60.5299988	5	1016	2.0999999	0	2018-12-04 17:58:00
Chico	City	Butte	california	39.7285004	-121.836998	1.46000004	66	Moderate air quality	pm25	2018-12-05 01:54:00	52.1399994	90	1015	1.40999997	0	2018-12-04 17:58:00
Chino	City	San Bernardino	california	34.0121994	-117.689003	2.58999991	44	Good air quality	pm25	2018-12-05 01:58:00	60.7599983	1	1015	3.5999999	0	2018-12-04 17:58:00
Chino Hills	City	San Bernardino	california	33.9897995	-117.733002	2.5999999	38	Good air quality	pm25	2018-12-05 02:50:00	60.6199989	5	1016	2.0999999	0	2018-12-04 17:58:00
Chowchilla	City	Madera	california	37.1230011	-120.260002	1.79999995	58	Moderate air quality	pm25	2018-12-05 02:53:00	52.9199982	40	1014	1.5	0	2018-12-04 17:58:00
Chula Vista	City	San Diego	california	32.6400986	-117.084	2.73000002	75	Moderate air quality	pm25	2018-12-05 01:56:00	57.0900002	40	1015	1.5	0	2018-12-04 17:58:00
Citrus Heights	City	Sacramento	california	38.7070999	-121.280998	1.53999996	56	Moderate air quality	pm25	2018-12-05 02:50:00	48.5200005	90	1014	2.5999999	0	2018-12-04 17:58:00
Claremont	City	Los Angeles	california	34.0966988	-117.720001	2.58999991	57	Moderate air quality	pm25	2018-12-05 02:50:00	60.2799988	5	1016	2.0999999	0	2018-12-04 17:58:00
Clayton	City	Contra Costa	california	37.9410019	-121.935997	1.61000001	54	Moderate air quality	pm25	2018-12-05 02:53:00	51.2599983	90	1013	4.5999999	0.50999999	2018-12-04 17:58:00
Clearlake	City	Lake	california	38.9581985	-122.625999	1.5	46	Good air quality	pm25	2018-12-05 01:56:00	55.9399986	75	1013	3.5999999	0	2018-12-04 17:58:00
Cloverdale	City	Sonoma	california	38.8055	-123.016998	1.47000003	63	Moderate air quality	pm25	2018-12-05 01:56:00	55.9399986	75	1013	3.5999999	0	2018-12-04 17:58:00
Clovis	City	Fresno	california	36.8251991	-119.703003	1.88999999	56	Moderate air quality	pm25	2018-12-05 02:53:00	52.3800011	40	1014	1.5	0	2018-12-04 17:58:00
Coachella	City	Riverside	california	33.6803017	-116.174004	2.61999989	32	Good air quality	o3	2018-12-05 02:35:00	42.7999992	1	1018	0.709999979	0	2018-12-04 17:58:00
Coalinga	City	Fresno	california	36.1397018	-120.360001	1.96000004	48	Good air quality	pm25	2018-12-05 01:56:00	52.1100006	90	1014	3.5999999	0	2018-12-04 17:58:00
Colfax	City	Placer	california	39.1007004	-120.953003	1.59000003	34	Good air quality	pm25	2018-12-05 02:50:00	47.6599998	90	1014	2.0999999	0	2018-12-04 17:58:00
Colma	Town	San Mateo	california	37.676899	-122.459999	1.62	60	Moderate air quality	pm25	2018-12-05 02:53:00	52	90	1013	4.5999999	0.50999999	2018-12-04 17:58:00
Colton	City	San Bernardino	california	34.0738983	-117.314003	2.56999993	55	Moderate air quality	pm25	2018-12-05 02:35:00	59.0400009	1	1015	4.5999999	0	2018-12-04 17:58:00
Colusa	City	Colusa	california	39.2142982	-122.009003	1.47000003	57	Moderate air quality	pm25	2018-12-05 02:35:00	48.0400009	1	1014	1.86000001	0	2018-12-04 17:58:00
Commerce	City	Los Angeles	california	34.0005989	-118.160004	2.52999997	62	Moderate air quality	pm25	2018-12-05 02:53:00	60.8400002	1	1014	0.610000014	0	2018-12-04 17:58:00
Compton	City	Los Angeles	california	33.8958015	-118.220001	2.55999994	68	Moderate air quality	pm25	2018-12-05 02:50:00	60.5299988	5	1016	2.0999999	0	2018-12-04 17:58:00
Concord	City	Contra Costa	california	37.9780006	-122.030998	1.59000003	69	Moderate air quality	pm25	2018-12-05 02:53:00	51.2099991	90	1013	4.5999999	0.50999999	2018-12-04 17:58:00
Corcoran	City	Kings	california	36.0979996	-119.559998	1.98000002	72	Moderate air quality	pm25	2018-12-05 02:15:00	51.5499992	1	1013	0.75999999	0	2018-12-04 17:58:00
Corning	City	Tehama	california	39.9277	-122.179001	1.44000006	52	Moderate air quality	pm25	2018-12-05 01:54:00	52.5600014	90	1015	2.0999999	0	2018-12-04 17:58:00
Corona	City	Riverside	california	33.8753014	-117.566002	2.5999999	43	Good air quality	pm25	2018-12-05 02:35:00	58.5900002	1	1015	4.5999999	0	2018-12-04 17:58:00
Coronado	City	San Diego	california	32.6859016	-117.182999	2.73000002	70	Moderate air quality	pm25	2018-12-05 01:56:00	56.7299995	1	1015	1.30999994	0	2018-12-04 17:58:00
Corte Madera	Town	Marin	california	37.925499	-122.527	1.57000005	40	Good air quality	pm25	2018-12-05 02:53:00	51.9099998	90	1012	5.69999981	0.50999999	2018-12-04 17:58:00
Costa Mesa	City	Orange	california	33.641201	-117.918999	2.58999991	54	Moderate air quality	pm25	2018-12-05 02:51:00	59.7000008	1	1015	6.19999981	0	2018-12-04 17:58:00
Cotati	City	Sonoma	california	38.3292999	-122.709999	1.51999998	59	Moderate air quality	pm25	2018-12-05 02:15:00	51.9399986	90	1013	4.5999999	0	2018-12-04 17:58:00
Covina	City	Los Angeles	california	34.0900002	-117.889999	2.54999995	59	Moderate air quality	pm25	2018-12-05 02:53:00	60.2099991	1	1014	0.310000002	0	2018-12-04 17:58:00
Crescent City	City	Del Norte	california	41.7556992	-124.203003	1.19000006	48	Good air quality	pm25	2018-12-05 01:56:00	53.6500015	90	1014	4.0999999	0	2018-12-04 17:58:00
Cudahy	City	Los Angeles	california	33.9606018	-118.184998	2.55999994	59	Moderate air quality	pm25	2018-12-05 02:53:00	60.4599991	1	1014	0.610000014	0	2018-12-04 17:58:00
Culver City	City	Los Angeles	california	34.0210991	-118.396004	2.5	63	Moderate air quality	pm25	2018-12-05 02:53:00	60.4599991	1	1014	0.610000014	0	2018-12-04 17:58:00
Cupertino	City	Santa Clara	california	37.3230019	-122.031998	1.69000006	70	Moderate air quality	pm25	2018-12-05 02:53:00	51.2200012	90	1013	4.5999999	0.50999999	2018-12-04 17:58:00
Cypress	City	Orange	california	33.8168983	-118.037003	2.55999994	47	Good air quality	pm25	2018-12-05 02:50:00	60.5299988	5	1016	2.0999999	0	2018-12-04 17:58:00
Daly City	City	San Mateo	california	37.6879005	-122.470001	1.62	63	Moderate air quality	pm25	2018-12-05 02:53:00	52	90	1013	4.5999999	0.50999999	2018-12-04 17:58:00
Dana Point	City	Orange	california	33.4672012	-117.697998	2.61999989	54	Moderate air quality	pm25	2018-12-05 02:51:00	58.2599983	1	1015	6.19999981	0	2018-12-04 17:58:00
Danville	Town	Contra Costa	california	37.8216019	-122	1.61000001	62	Moderate air quality	pm25	2018-12-05 02:53:00	51.3100014	90	1013	4.5999999	0.50999999	2018-12-04 17:58:00
Davis	City	Yolo	california	38.544899	-121.740997	1.52999997	61	Moderate air quality	pm25	2018-12-05 02:20:00	50.1100006	1	1014	1.5	0	2018-12-04 17:58:00
Del Mar	City	San Diego	california	32.9594994	-117.264999	2.73000002	53	Moderate air quality	pm25	2018-12-05 02:35:00	56.2099991	1	1015	0.610000014	0	2018-12-04 17:58:00
Del Rey Oaks	City	Monterey	california	36.5932999	-121.834999	1.80999994	27	Good air quality	pm25	2018-12-05 02:15:00	52.1599998	90	1012	2.0999999	0.50999999	2018-12-04 17:58:00
Delano	City	Kern	california	35.7687988	-119.247002	2.04999995	52	Moderate air quality	pm25	2018-12-05 02:15:00	54.5400009	1	1013	0.75999999	0	2018-12-04 17:58:00
Desert Hot Springs	City	Riverside	california	33.9611015	-116.501999	2.69000006	42	Good air quality	pm25	2018-12-05 02:59:00	28.8400002	0	910.369995	1.30999994	0	2018-12-04 17:58:00
Diamond Bar	City	Los Angeles	california	34.0285988	-117.809998	2.54999995	58	Moderate air quality	pm25	2018-12-05 02:53:00	60.5499992	1	1014	0.310000002	0	2018-12-04 17:58:00
Dinuba	City	Tulare	california	36.5433006	-119.387001	1.94000006	57	Moderate air quality	pm25	2018-12-05 02:35:00	52.2299995	90	1013	3.5999999	0	2018-12-04 17:58:00
Dixon	City	Solano	california	38.4454994	-121.822998	1.53999996	57	Moderate air quality	pm25	2018-12-05 02:50:00	49.4099998	90	1014	2.5999999	0	2018-12-04 17:58:00
Dorris	City	Siskiyou	california	41.9673996	-121.917999	1.23000002	55	Moderate air quality	pm25	2018-12-05 01:53:00	33.2400017	90	1018	5.0999999	0	2018-12-04 17:58:00
Dos Palos	City	Merced	california	36.9860992	-120.626999	1.82000005	56	Moderate air quality	pm25	2018-12-05 02:53:00	52.3600006	20	1014	1.5	0	2018-12-04 17:58:00
Downey	City	Los Angeles	california	33.9401016	-118.133003	2.55999994	65	Moderate air quality	pm25	2018-12-05 02:53:00	60.4599991	1	1014	0.610000014	0	2018-12-04 17:58:00
Duarte	City	Los Angeles	california	34.1394997	-117.976997	2.54999995	57	Moderate air quality	pm25	2018-12-05 02:53:00	60.4799995	1	1014	0.610000014	0	2018-12-04 17:58:00
Dublin	City	Alameda	california	37.7022018	-121.935997	1.64999998	65	Moderate air quality	pm25	2018-12-05 02:40:00	51.4900017	90	1012	5.69999981	0.50999999	2018-12-04 17:58:00
Dunsmuir	City	Siskiyou	california	41.2081985	-122.272003	1.32000005	57	Moderate air quality	pm25	2018-12-05 02:10:00	36.9500008	90	1017	0.75999999	0	2018-12-04 17:58:00
East Palo Alto	City	San Mateo	california	37.4687996	-122.140999	1.69000006	80	Moderate air quality	pm25	2018-12-05 02:55:00	51.3699989	90	1013	4.5999999	0.50999999	2018-12-04 17:58:00
Eastvale	City	Riverside	california	33.9524994	-117.584999	2.5999999	33	Good air quality	o3	2018-12-05 02:35:00	59.6500015	1	1015	4.5999999	0	2018-12-04 17:58:00
El Cajon	City	San Diego	california	32.7947998	-116.962997	2.76999998	73	Moderate air quality	pm25	2018-12-05 02:35:00	56.7900009	1	1015	0.610000014	0	2018-12-04 17:58:00
El Centro	City	Imperial	california	32.7919998	-115.563004	2.73000002	47	Good air quality	pm25	2018-12-05 01:56:00	55.1699982	1	1017	1.40999997	0	2018-12-04 17:58:00
El Cerrito	City	Contra Costa	california	37.9160995	-122.310997	1.58000004	60	Moderate air quality	pm25	2018-12-05 02:55:00	51.6199989	90	1014	1.5	0.50999999	2018-12-04 17:58:00
El Monte	City	Los Angeles	california	34.0685997	-118.028	2.52999997	62	Moderate air quality	pm25	2018-12-05 02:53:00	60.4599991	1	1014	0.610000014	0	2018-12-04 17:58:00
El Segundo	City	Los Angeles	california	33.9192009	-118.416	2.54999995	57	Moderate air quality	pm25	2018-12-05 02:50:00	60.5299988	5	1016	2.0999999	0	2018-12-04 17:58:00
Elk Grove	City	Sacramento	california	38.4087982	-121.372002	1.54999995	66	Moderate air quality	pm25	2018-12-05 02:35:00	48.7900009	40	1014	2.0999999	0	2018-12-04 17:58:00
Emeryville	City	Alameda	california	37.8312988	-122.285004	1.58000004	56	Moderate air quality	pm25	2018-12-05 02:55:00	51.7599983	90	1014	1.5	0.50999999	2018-12-04 17:58:00
Encinitas	City	San Diego	california	33.0369987	-117.292	2.68000007	55	Moderate air quality	pm25	2018-12-05 02:35:00	56.2299995	1	1015	0.610000014	0	2018-12-04 17:58:00
Escalon	City	San Joaquin	california	37.7974014	-120.997002	1.63	85	Moderate air quality	pm25	2018-12-05 02:55:00	48.9900017	75	1013	3.0999999	0	2018-12-04 17:58:00
Escondido	City	San Diego	california	33.1192017	-117.085999	2.71000004	57	Moderate air quality	pm25	2018-12-05 02:35:00	56.2299995	1	1015	0.610000014	0	2018-12-04 17:58:00
Etna	City	Siskiyou	california	41.4567986	-122.894997	1.29999995	57	Moderate air quality	pm25	2018-12-05 02:10:00	36.9000015	90	1017	0.75999999	0	2018-12-04 17:58:00
Eureka	City	Humboldt	california	40.8021011	-124.164001	1.32000005	40	Good air quality	pm25	2018-12-05 02:35:00	52.6800003	90	1013	2.0999999	0	2018-12-04 17:58:00
Exeter	City	Tulare	california	36.2961006	-119.141998	1.99000001	58	Moderate air quality	pm25	2018-12-05 02:15:00	51.8899994	90	1014	3.5999999	0	2018-12-04 17:58:00
Fairfax	Town	Marin	california	37.9870987	-122.588997	1.57000005	23	Good air quality	o3	2018-12-05 02:53:00	52	90	1014	1.5	0.50999999	2018-12-04 17:58:00
Fairfield	City	Solano	california	38.2494011	-122.040001	1.55999994	51	Moderate air quality	pm25	2018-12-05 02:55:00	50.8800011	90	1014	1.5	0	2018-12-04 17:58:00
Farmersville	City	Tulare	california	36.297699	-119.207001	1.99000001	60	Moderate air quality	pm25	2018-12-05 02:15:00	51.9099998	90	1014	3.5999999	0	2018-12-04 17:58:00
Ferndale	City	Humboldt	california	40.5761986	-124.264	1.33000004	30	Good air quality	o3	2018-12-05 02:35:00	53.1500015	90	1013	2.0999999	0	2018-12-04 17:58:00
Fillmore	City	Ventura	california	34.3992004	-118.917999	2.43000007	38	Good air quality	o3	2018-12-05 02:53:00	60.4900017	5	1016	2.0999999	0	2018-12-04 17:58:00
Firebaugh	City	Fresno	california	36.858799	-120.456001	1.83000004	69	Moderate air quality	pm25	2018-12-05 02:53:00	52.9199982	40	1014	1.5	0	2018-12-04 17:58:00
Folsom	City	Sacramento	california	38.6780014	-121.176003	1.55999994	67	Moderate air quality	pm25	2018-12-05 02:50:00	48.2900009	90	1014	2.5999999	0	2018-12-04 17:58:00
Fontana	City	San Bernardino	california	34.0922012	-117.434998	2.56999993	53	Moderate air quality	pm25	2018-12-05 02:35:00	58.6199989	1	1015	4.5999999	0	2018-12-04 17:58:00
Fort Bragg	City	Mendocino	california	39.4457016	-123.805	1.44000006	46	Good air quality	pm25	2018-12-05 01:56:00	55.9399986	75	1013	3.5999999	0	2018-12-04 17:58:00
Fort Jones	City	Siskiyou	california	41.6076012	-122.839996	1.25999999	59	Moderate air quality	pm25	2018-12-05 01:56:00	34.9199982	90	1018	0.75999999	0	2018-12-04 17:58:00
Fortuna	City	Humboldt	california	40.5982018	-124.156998	1.34000003	30	Good air quality	o3	2018-12-05 02:35:00	53.1300011	90	1013	2.0999999	0	2018-12-04 17:58:00
Foster City	City	San Mateo	california	37.5584984	-122.271004	1.62	74	Moderate air quality	pm25	2018-12-05 02:53:00	51.7599983	90	1012	5.69999981	0.50999999	2018-12-04 17:58:00
Fountain Valley	City	Orange	california	33.7089996	-117.954002	2.58999991	56	Moderate air quality	pm25	2018-12-05 02:53:00	60.3100014	1	1014	2.55999994	0	2018-12-04 17:58:00
Fowler	City	Fresno	california	36.6305008	-119.678001	1.91999996	57	Moderate air quality	pm25	2018-12-05 02:53:00	52.3800011	90	1013	3.5999999	0	2018-12-04 17:58:00
Fremont	City	Alameda	california	37.5483017	-121.988998	1.64999998	44	Good air quality	no2	2018-12-05 02:40:00	51.5299988	90	1012	5.69999981	0.50999999	2018-12-04 17:58:00
Fresno	City	Fresno	california	36.7378006	-119.787003	1.90999997	75	Moderate air quality	pm25	2018-12-05 02:53:00	52.3800011	90	1013	3.5999999	0	2018-12-04 17:58:00
Fullerton	City	Orange	california	33.8703995	-117.924004	2.55999994	53	Moderate air quality	pm25	2018-12-05 02:53:00	60.2099991	1	1014	2.55999994	0	2018-12-04 17:58:00
Galt	City	Sacramento	california	38.2546005	-121.300003	1.54999995	73	Moderate air quality	pm25	2018-12-05 02:55:00	49.1500015	90	1014	2.5999999	0	2018-12-04 17:58:00
Garden Grove	City	Orange	california	33.7742996	-117.938004	2.55999994	53	Moderate air quality	pm25	2018-12-05 02:50:00	60.2799988	5	1016	2.0999999	0	2018-12-04 17:58:00
Gardena	City	Los Angeles	california	33.8883018	-118.308998	2.54999995	63	Moderate air quality	pm25	2018-12-05 02:53:00	60.4599991	1	1014	2.55999994	0	2018-12-04 17:58:00
Gilroy	City	Santa Clara	california	37.0057983	-121.568001	1.75999999	63	Moderate air quality	pm25	2018-12-05 02:15:00	51.9099998	90	1013	2.0999999	0.50999999	2018-12-04 17:58:00
Glendale	City	Los Angeles	california	34.1425018	-118.254997	2.5	63	Moderate air quality	pm25	2018-12-05 02:53:00	60.4599991	1	1014	0.610000014	0	2018-12-04 17:58:00
Glendora	City	Los Angeles	california	34.1361008	-117.864998	2.54999995	58	Moderate air quality	pm25	2018-12-05 02:53:00	60.2099991	1	1014	0.310000002	0	2018-12-04 17:58:00
Goleta	City	Santa Barbara	california	34.4357986	-119.828003	2.33999991	53	Moderate air quality	pm25	2018-12-05 02:35:00	58.0600014	90	1014	4.5999999	0	2018-12-04 17:58:00
Gonzales	City	Monterey	california	36.5065994	-121.444	1.85000002	59	Moderate air quality	pm25	2018-12-05 02:54:00	52	90	1012	1.5	0.50999999	2018-12-04 17:58:00
Grand Terrace	City	San Bernardino	california	34.0339012	-117.314003	2.56999993	51	Moderate air quality	pm25	2018-12-05 02:35:00	59.0499992	1	1015	4.5999999	0	2018-12-04 17:58:00
Grass Valley	City	Nevada	california	39.219101	-121.060997	1.54999995	55	Moderate air quality	pm25	2018-12-05 02:53:00	47.4099998	90	1014	2.0999999	0	2018-12-04 17:58:00
Greenfield	City	Monterey	california	36.3208008	-121.244003	1.89999998	64	Moderate air quality	pm25	2018-12-05 02:54:00	52.7900009	90	1012	1.5	0	2018-12-04 17:58:00
Gridley	City	Butte	california	39.3638	-121.694	1.49000001	58	Moderate air quality	pm25	2018-12-05 02:53:00	47.4300003	1	1014	1.40999997	0	2018-12-04 17:58:00
Grover Beach	City	San Luis Obispo	california	35.1216011	-120.621002	2.11999989	43	Good air quality	pm25	2018-12-05 01:58:00	54.7700005	90	1015	4.0999999	0.419999987	2018-12-04 17:58:00
Guadalupe	City	Santa Barbara	california	34.9715996	-120.571999	2.18000007	30	Good air quality	o3	2018-12-05 02:35:00	55.5999985	90	1014	4.5999999	0.419999987	2018-12-04 17:58:00
Gustine	City	Merced	california	37.2577019	-120.999001	1.72000003	68	Moderate air quality	pm25	2018-12-05 02:53:00	51.1500015	75	1013	3.0999999	0	2018-12-04 17:58:00
Half Moon Bay	City	San Mateo	california	37.4636002	-122.429001	1.66999996	55	Moderate air quality	pm25	2018-12-05 02:53:00	52.0699997	90	1012	5.69999981	0.50999999	2018-12-04 17:58:00
Hanford	City	Kings	california	36.3274002	-119.646004	1.95000005	57	Moderate air quality	pm25	2018-12-05 02:35:00	52.2299995	90	1013	3.5999999	0	2018-12-04 17:58:00
Hawaiian Gardens	City	Los Angeles	california	33.8314018	-118.072998	2.55999994	60	Moderate air quality	pm25	2018-12-05 02:50:00	60.5299988	5	1016	2.0999999	0	2018-12-04 17:58:00
Hawthorne	City	Los Angeles	california	33.9164009	-118.352997	2.54999995	63	Moderate air quality	pm25	2018-12-05 02:53:00	60.4599991	1	1014	0.610000014	0	2018-12-04 17:58:00
Hayward	City	Alameda	california	37.6688004	-122.081001	1.62	68	Moderate air quality	pm25	2018-12-05 02:53:00	51.6699982	90	1013	4.5999999	0.50999999	2018-12-04 17:58:00
Healdsburg	City	Sonoma	california	38.6105003	-122.869003	1.48000002	60	Moderate air quality	pm25	2018-12-05 02:15:00	53.6399994	90	1013	4.5999999	0	2018-12-04 17:58:00
Hemet	City	Riverside	california	33.7475014	-116.972	2.72000003	51	Moderate air quality	pm25	2018-12-05 02:35:00	55.6300011	1	1015	4.5999999	0	2018-12-04 17:58:00
Hercules	City	Contra Costa	california	38.0171013	-122.289001	1.53999996	32	Good air quality	pm25	2018-12-05 02:55:00	51.5800018	90	1014	1.5	0.50999999	2018-12-04 17:58:00
Hermosa Beach	City	Los Angeles	california	33.8622017	-118.400002	2.54999995	61	Moderate air quality	pm25	2018-12-05 02:53:00	60.4900017	1	1014	2.55999994	0	2018-12-04 17:58:00
Hesperia	City	San Bernardino	california	34.4263992	-117.301003	2.56999993	35	Good air quality	pm25	2018-12-05 01:58:00	55.7400017	1	1015	7.69999981	0	2018-12-04 17:58:00
Hidden Hills	City	Los Angeles	california	34.1603012	-118.652	2.5	36	Good air quality	o3	2018-12-05 02:57:00	60.8400002	1	1014	1.21000004	0	2018-12-04 17:58:00
Highland	City	San Bernardino	california	34.1282997	-117.209	2.6400001	55	Moderate air quality	pm25	2018-12-05 02:35:00	58.0099983	1	1015	4.5999999	0	2018-12-04 17:58:00
Hillsborough	Town	San Mateo	california	37.5741005	-122.378998	1.62	49	Good air quality	pm25	2018-12-05 02:56:00	51.6699982	90	1013	1.5	0.50999999	2018-12-04 17:58:00
Hollister	City	San Benito	california	36.8525009	-121.402	1.78999996	60	Moderate air quality	pm25	2018-12-05 02:54:00	52.2999992	90	1012	1.5	0.50999999	2018-12-04 17:58:00
Holtville	City	Imperial	california	32.8111992	-115.379997	2.73000002	77	Moderate air quality	pm25	2018-12-05 02:56:00	53.3800011	20	1018	2.5999999	0	2018-12-04 17:58:00
Hughson	City	Stanislaus	california	37.6026993	-120.865997	1.66999996	74	Moderate air quality	pm25	2018-12-05 02:53:00	50.2299995	75	1013	3.0999999	0	2018-12-04 17:58:00
Huntington Beach	City	Orange	california	33.6595001	-117.999001	2.58999991	57	Moderate air quality	pm25	2018-12-05 01:58:00	60.6699982	20	1014	2.55999994	0	2018-12-04 17:58:00
Huntington Park	City	Los Angeles	california	33.9817009	-118.224998	2.55999994	63	Moderate air quality	pm25	2018-12-05 02:53:00	60.4599991	1	1014	0.610000014	0	2018-12-04 17:58:00
Huron	City	Fresno	california	36.2027016	-120.102997	1.95000005	55	Moderate air quality	pm10	2018-12-05 02:56:00	52.5600014	90	1015	5.0999999	0	2018-12-04 17:58:00
Imperial	City	Imperial	california	32.847599	-115.569	2.73000002	65	Moderate air quality	pm25	2018-12-05 02:56:00	53.4399986	20	1018	2.5999999	0	2018-12-04 17:58:00
Imperial Beach	City	San Diego	california	32.5839005	-117.112999	2.73000002	81	Moderate air quality	no2	2018-12-05 01:56:00	57.7000008	40	1015	1.5	0	2018-12-04 17:58:00
Indian Wells	City	Riverside	california	33.7176018	-116.341003	2.71000004	31	Good air quality	o3	2018-12-05 02:35:00	42.7999992	1	1018	0.709999979	0	2018-12-04 17:58:00
Indio	City	Riverside	california	33.7206001	-116.216003	2.61999989	54	Moderate air quality	pm25	2018-12-05 02:35:00	42.7999992	1	1018	0.709999979	0	2018-12-04 17:58:00
Industry	City	Los Angeles	california	34.0196991	-117.959	2.54999995	57	Moderate air quality	pm25	2018-12-05 02:53:00	60.2099991	1	1014	0.610000014	0	2018-12-04 17:58:00
Inglewood	City	Los Angeles	california	33.9617004	-118.352997	2.54999995	65	Moderate air quality	pm25	2018-12-05 02:53:00	60.4599991	1	1014	0.610000014	0	2018-12-04 17:58:00
Ione	City	Amador	california	38.3526993	-120.932999	1.60000002	68	Moderate air quality	pm25	2018-12-05 02:50:00	48.3100014	40	1014	2.0999999	0	2018-12-04 17:58:00
Irvine	City	Orange	california	33.6846008	-117.827003	2.58999991	51	Moderate air quality	no2	2018-12-05 02:51:00	58.6899986	1	1015	6.19999981	0	2018-12-04 17:58:00
Irwindale	City	Los Angeles	california	34.1069984	-117.934998	2.54999995	52	Moderate air quality	pm25	2018-12-05 02:53:00	60.0600014	1	1014	0.610000014	0	2018-12-04 17:58:00
Isleton	City	Sacramento	california	38.1618996	-121.612	1.55999994	46	Good air quality	pm25	2018-12-05 02:55:00	49.7799988	90	1014	1.86000001	0	2018-12-04 17:58:00
Jackson	City	Amador	california	38.3488007	-120.774002	1.60000002	58	Moderate air quality	pm25	2018-12-05 02:50:00	48.6300011	40	1014	2.0999999	0	2018-12-04 17:58:00
Jurupa Valley	City	Riverside	california	33.9972	-117.485001	2.5999999	49	Good air quality	pm25	2018-12-05 02:35:00	59.1800003	1	1015	4.5999999	0	2018-12-04 17:58:00
Kerman	City	Fresno	california	36.7235985	-120.059998	1.87	61	Moderate air quality	pm25	2018-12-05 02:56:00	52.2900009	40	1014	1.5	0	2018-12-04 17:58:00
King City	City	Monterey	california	36.2126999	-121.125999	1.92999995	69	Moderate air quality	pm25	2018-12-05 01:53:00	55.0400009	90	1011	1.5	0	2018-12-04 17:58:00
Kingsburg	City	Fresno	california	36.5138016	-119.554001	1.91999996	60	Moderate air quality	pm25	2018-12-05 02:35:00	52.2299995	90	1013	3.5999999	0	2018-12-04 17:58:00
La CaÃ±ada Flintridge	City	Los Angeles	california	34.2067986	-118.199997	2.52999997	57	Moderate air quality	pm25	2018-12-05 02:53:00	60.3100014	1	1014	0.610000014	0	2018-12-04 17:58:00
La Habra	City	Orange	california	33.9319	-117.945999	2.55999994	49	Good air quality	pm25	2018-12-05 02:53:00	60.5299988	1	1014	0.610000014	0	2018-12-04 17:58:00
La Habra Heights	City	Los Angeles	california	33.9608002	-117.950996	2.55999994	41	Good air quality	pm25	2018-12-05 02:53:00	60.0600014	1	1014	0.610000014	0	2018-12-04 17:58:00
La Mesa	City	San Diego	california	32.7677994	-117.023003	2.72000003	74	Moderate air quality	no2	2018-12-05 02:56:00	55.5299988	1	1015	0.610000014	0	2018-12-04 17:58:00
La Mirada	City	Los Angeles	california	33.9171982	-118.012001	2.55999994	54	Moderate air quality	pm25	2018-12-05 02:53:00	60.0600014	1	1014	0.610000014	0	2018-12-04 17:58:00
La Palma	City	Orange	california	33.8462982	-118.045998	2.55999994	48	Good air quality	pm25	2018-12-05 02:53:00	60.4599991	1	1014	2.55999994	0	2018-12-04 17:58:00
La Puente	City	Los Angeles	california	34.0200005	-117.949997	2.54999995	51	Moderate air quality	pm25	2018-12-05 02:53:00	60.0600014	1	1014	0.610000014	0	2018-12-04 17:58:00
La Quinta	City	Riverside	california	33.6633987	-116.309998	2.71000004	31	Good air quality	o3	2018-12-05 02:35:00	42.7999992	1	1018	0.709999979	0	2018-12-04 17:58:00
La Verne	City	Los Angeles	california	34.1007996	-117.767998	2.54999995	54	Moderate air quality	pm25	2018-12-05 02:53:00	60.0600014	1	1014	0.310000002	0	2018-12-04 17:58:00
Lafayette	City	Contra Costa	california	37.8857994	-122.117996	1.59000003	53	Moderate air quality	pm25	2018-12-05 02:56:00	51.4199982	90	1014	1.5	0.50999999	2018-12-04 17:58:00
Laguna Beach	City	Orange	california	33.5427017	-117.785004	2.58999991	56	Moderate air quality	pm25	2018-12-05 02:53:00	58.2999992	1	1015	6.19999981	0	2018-12-04 17:58:00
Laguna Hills	City	Orange	california	33.5915985	-117.698997	2.6400001	37	Good air quality	pm25	2018-12-05 02:53:00	58.2400017	1	1015	1.05999994	0	2018-12-04 17:58:00
Laguna Niguel	City	Orange	california	33.5237007	-117.714996	2.6400001	54	Moderate air quality	pm25	2018-12-05 02:51:00	58.2599983	1	1015	6.19999981	0	2018-12-04 17:58:00
Laguna Woods	City	Orange	california	33.610199	-117.724998	2.6400001	47	Good air quality	pm25	2018-12-05 02:53:00	58.2999992	1	1015	1.05999994	0	2018-12-04 17:58:00
Lake Elsinore	City	Riverside	california	33.6680984	-117.327003	2.66000009	42	Good air quality	pm25	2018-12-05 02:35:00	57.6500015	1	1015	4.5999999	0	2018-12-04 17:58:00
Lake Forest	City	Orange	california	33.6469002	-117.685997	2.6400001	37	Good air quality	o3	2018-12-05 02:35:00	58.9500008	1	1015	1.05999994	0	2018-12-04 17:58:00
Lakeport	City	Lake	california	39.0429001	-122.916	1.47000003	69	Moderate air quality	pm25	2018-12-05 01:56:00	55.9399986	75	1013	3.5999999	0	2018-12-04 17:58:00
Lakewood	City	Los Angeles	california	33.8535995	-118.134003	2.55999994	60	Moderate air quality	pm25	2018-12-05 02:53:00	60.4599991	1	1014	2.55999994	0	2018-12-04 17:58:00
Lancaster	City	Los Angeles	california	34.6867981	-118.153999	2.44000006	32	Good air quality	o3	2018-12-05 02:53:00	50.6500015	1	1014	3.80999994	0	2018-12-04 17:58:00
Larkspur	City	Marin	california	37.9341011	-122.535004	1.57000005	24	Good air quality	pm25	2018-12-05 02:55:00	51.5099983	90	1013	2.5999999	0.50999999	2018-12-04 17:58:00
Lathrop	City	San Joaquin	california	37.8227005	-121.277	1.61000001	63	Moderate air quality	pm25	2018-12-05 02:55:00	49.3199997	90	1014	3.46000004	0	2018-12-04 17:58:00
Lawndale	City	Los Angeles	california	33.8871994	-118.352997	2.54999995	64	Moderate air quality	pm25	2018-12-05 02:53:00	60.4599991	1	1014	2.55999994	0	2018-12-04 17:58:00
Lemon Grove	City	San Diego	california	32.7425003	-117.030998	2.73000002	74	Moderate air quality	no2	2018-12-05 02:56:00	55.0900002	1	1015	0.610000014	0	2018-12-04 17:58:00
Lemoore	City	Kings	california	36.3008003	-119.782997	1.94000006	57	Moderate air quality	pm10	2018-12-05 02:35:00	52.2900009	90	1013	3.5999999	0	2018-12-04 17:58:00
Lincoln	City	Placer	california	38.8916016	-121.292999	1.51999998	62	Moderate air quality	pm25	2018-12-05 02:53:00	48.0699997	1	1014	0.959999979	0	2018-12-04 17:58:00
Lindsay	City	Tulare	california	36.2029991	-119.087997	2.01999998	55	Moderate air quality	pm25	2018-12-05 02:55:00	52.25	90	1014	3.0999999	0	2018-12-04 17:58:00
Live Oak	City	Sutter	california	39.2756996	-121.660004	1.49000001	69	Moderate air quality	pm25	2018-12-05 02:53:00	47.5200005	1	1014	1.86000001	0	2018-12-04 17:58:00
Livermore	City	Alameda	california	37.6819	-121.767998	1.64999998	70	Moderate air quality	pm25	2018-12-05 02:55:00	51.0800018	90	1013	4.5999999	0.50999999	2018-12-04 17:58:00
Livingston	City	Merced	california	37.3869019	-120.723999	1.73000002	73	Moderate air quality	pm25	2018-12-05 02:53:00	51.7599983	20	1014	1.5	0	2018-12-04 17:58:00
Lodi	City	San Joaquin	california	38.1341019	-121.272003	1.57000005	72	Moderate air quality	pm25	2018-12-05 02:55:00	49.2099991	90	1014	1.71000004	0	2018-12-04 17:58:00
Loma Linda	City	San Bernardino	california	34.0483017	-117.261002	2.56999993	53	Moderate air quality	pm25	2018-12-05 02:35:00	59.0499992	1	1015	4.5999999	0	2018-12-04 17:58:00
Lomita	City	Los Angeles	california	33.7921982	-118.315002	2.54999995	46	Good air quality	pm25	2018-12-05 02:53:00	60.4599991	1	1014	2.55999994	0	2018-12-04 17:58:00
Lompoc	City	Santa Barbara	california	34.6390991	-120.458	2.26999998	43	Good air quality	pm25	2018-12-05 02:35:00	56.0099983	90	1014	4.5999999	0.419999987	2018-12-04 17:58:00
Long Beach	City	Los Angeles	california	33.7700996	-118.194	2.55999994	72	Moderate air quality	pm25	2018-12-05 02:53:00	60.4599991	1	1014	2.55999994	0	2018-12-04 17:58:00
Loomis	Town	Placer	california	38.8213005	-121.193001	1.54999995	61	Moderate air quality	pm25	2018-12-05 02:53:00	48.1100006	90	1014	2.5999999	0	2018-12-04 17:58:00
Los Alamitos	City	Orange	california	33.8031998	-118.071999	2.55999994	59	Moderate air quality	pm25	2018-12-05 02:53:00	60.2999992	1	1014	2.55999994	0	2018-12-04 17:58:00
Los Altos	City	Santa Clara	california	37.3852005	-122.113998	1.69000006	70	Moderate air quality	pm25	2018-12-05 02:56:00	51.3699989	90	1013	1.5	0.50999999	2018-12-04 17:58:00
Los Altos Hills	Town	Santa Clara	california	37.3796997	-122.137001	1.69000006	60	Moderate air quality	pm25	2018-12-05 02:56:00	51.3699989	90	1013	1.5	0.50999999	2018-12-04 17:58:00
Los Angeles	City	Los Angeles	california	34.0522003	-118.244003	2.52999997	70	Moderate air quality	pm25	2018-12-05 02:53:00	60.4599991	1	1014	0.610000014	0	2018-12-04 17:58:00
Los Banos	City	Merced	california	37.0583	-120.849998	1.76999998	58	Moderate air quality	pm25	2018-12-05 02:53:00	51.4399986	20	1014	1.5	0	2018-12-04 17:58:00
Los Gatos	Town	Santa Clara	california	37.2358017	-121.961998	1.75	62	Moderate air quality	pm25	2018-12-05 02:56:00	51.6699982	90	1013	1.5	0.50999999	2018-12-04 17:58:00
Loyalton	City	Sierra	california	39.6763	-120.240997	1.65999997	39	Good air quality	pm25	2018-12-05 02:55:00	27.2299995	90	1019	3.5999999	0	2018-12-04 17:58:00
Lynwood	City	Los Angeles	california	33.9303017	-118.210999	2.55999994	63	Moderate air quality	pm25	2018-12-05 02:53:00	60.2999992	1	1014	0.610000014	0	2018-12-04 17:58:00
Madera	City	Madera	california	36.9612999	-120.060997	1.84000003	75	Moderate air quality	pm25	2018-12-05 02:53:00	52.3899994	40	1014	1.5	0	2018-12-04 17:58:00
Malibu	City	Los Angeles	california	34.0259018	-118.779999	2.5	35	Good air quality	o3	2018-12-05 02:57:00	60.7099991	75	1015	2.0999999	0	2018-12-04 17:58:00
Mammoth Lakes	Town	Mono	california	37.6484985	-118.972	1.97000003	67	Moderate air quality	pm25	2018-12-05 02:55:00	23.5400009	90	1018	1.05999994	0	2018-12-04 17:58:00
Manhattan Beach	City	Los Angeles	california	33.8847008	-118.411003	2.54999995	59	Moderate air quality	pm25	2018-12-05 02:53:00	60.3100014	1	1014	2.55999994	0	2018-12-04 17:58:00
Manteca	City	San Joaquin	california	37.7974014	-121.216003	1.62	81	Moderate air quality	pm25	2018-12-05 02:55:00	49.3199997	75	1013	3.0999999	0	2018-12-04 17:58:00
Maricopa	City	Kern	california	35.0588989	-119.401001	2.18000007	53	Moderate air quality	pm25	2018-12-05 01:54:00	62.9599991	1	1012	10.3000002	0	2018-12-04 17:58:00
Marina	City	Monterey	california	36.6843987	-121.802002	1.80999994	55	Moderate air quality	pm25	2018-12-05 02:54:00	52	90	1012	1.5	0.50999999	2018-12-04 17:58:00
Martinez	City	Contra Costa	california	38.0194016	-122.134003	1.55999994	62	Moderate air quality	pm25	2018-12-05 02:55:00	51.4000015	90	1014	1.5	0.50999999	2018-12-04 17:58:00
Marysville	City	Yuba	california	39.1456985	-121.591003	1.5	70	Moderate air quality	pm25	2018-12-05 02:53:00	47.3899994	1	1014	1.86000001	0	2018-12-04 17:58:00
Maywood	City	Los Angeles	california	33.9866982	-118.184998	2.55999994	65	Moderate air quality	pm25	2018-12-05 02:53:00	60.4599991	1	1014	0.610000014	0	2018-12-04 17:58:00
McFarland	City	Kern	california	35.6780014	-119.228996	2.0999999	67	Moderate air quality	pm25	2018-12-05 02:15:00	55.6199989	1	1013	3.1099999	0	2018-12-04 17:58:00
Mendota	City	Fresno	california	36.7536011	-120.382004	1.83000004	61	Moderate air quality	pm25	2018-12-05 02:53:00	52.1199989	40	1014	1.5	0	2018-12-04 17:58:00
Menifee	City	Riverside	california	33.6971016	-117.184998	2.6500001	36	Good air quality	o3	2018-12-05 02:55:00	56.0999985	20	1015	1.65999997	0	2018-12-04 17:58:00
Menlo Park	City	San Mateo	california	37.4529991	-122.181999	1.69000006	84	Moderate air quality	pm25	2018-12-05 02:55:00	51.3699989	90	1013	4.5999999	0.50999999	2018-12-04 17:58:00
Merced	City	Merced	california	37.3022003	-120.483002	1.75	61	Moderate air quality	pm25	2018-12-05 02:53:00	51.75	20	1014	1.5	0	2018-12-04 17:58:00
Mill Valley	City	Marin	california	37.9059982	-122.544998	1.57000005	52	Moderate air quality	pm25	2018-12-05 02:56:00	51.4799995	90	1013	2.5999999	0.50999999	2018-12-04 17:58:00
Millbrae	City	San Mateo	california	37.5984993	-122.387001	1.62	64	Moderate air quality	pm25	2018-12-05 02:56:00	51.8699989	75	1014	2.5999999	0.50999999	2018-12-04 17:58:00
Milpitas	City	Santa Clara	california	37.4323006	-121.900002	1.69000006	70	Moderate air quality	pm25	2018-12-05 02:56:00	51.3699989	90	1013	1.5	0.50999999	2018-12-04 17:58:00
Mission Viejo	City	Orange	california	33.5969009	-117.657997	2.6400001	46	Good air quality	no2	2018-12-05 02:53:00	58.1899986	1	1015	1.05999994	0	2018-12-04 17:58:00
Modesto	City	Stanislaus	california	37.6390991	-120.997002	1.66999996	93	Moderate air quality	pm25	2018-12-05 02:55:00	49.2999992	75	1013	3.0999999	0	2018-12-04 17:58:00
Monrovia	City	Los Angeles	california	34.1442986	-118.001999	2.52999997	57	Moderate air quality	pm25	2018-12-05 02:53:00	60.3100014	1	1014	0.610000014	0	2018-12-04 17:58:00
Montague	City	Siskiyou	california	41.728199	-122.528	1.25	60	Moderate air quality	pm25	2018-12-05 01:56:00	34.8400002	90	1018	1.36000001	0	2018-12-04 17:58:00
Montclair	City	San Bernardino	california	34.0774994	-117.690002	2.58999991	51	Moderate air quality	pm25	2018-12-05 02:53:00	60.5499992	1	1014	0.310000002	0	2018-12-04 17:58:00
Monte Sereno	City	Santa Clara	california	37.2363014	-121.991997	1.75	57	Moderate air quality	pm25	2018-12-05 02:56:00	51.6699982	90	1013	1.5	0.50999999	2018-12-04 17:58:00
Montebello	City	Los Angeles	california	34.0164986	-118.113998	2.52999997	53	Moderate air quality	pm25	2018-12-05 02:53:00	60.2999992	1	1014	0.610000014	0	2018-12-04 17:58:00
Monterey	City	Monterey	california	36.6002007	-121.894997	1.80999994	62	Moderate air quality	pm25	2018-12-05 02:55:00	52.3600006	90	1012	1.5	0.50999999	2018-12-04 17:58:00
Monterey Park	City	Los Angeles	california	34.0625	-118.123001	2.52999997	60	Moderate air quality	pm25	2018-12-05 02:53:00	60.2999992	1	1014	0.610000014	0	2018-12-04 17:58:00
Moorpark	City	Ventura	california	34.2855988	-118.882004	2.43000007	53	Moderate air quality	pm25	2018-12-05 02:53:00	60.7999992	5	1016	2.0999999	0	2018-12-04 17:58:00
Moraga	Town	Contra Costa	california	37.8348999	-122.129997	1.59000003	37	Good air quality	pm25	2018-12-05 02:56:00	51.4199982	75	1014	2.5999999	0.50999999	2018-12-04 17:58:00
Moreno Valley	City	Riverside	california	33.9425011	-117.230003	2.61999989	49	Good air quality	pm25	2018-12-05 02:35:00	58.7799988	1	1015	4.5999999	0	2018-12-04 17:58:00
Morgan Hill	City	Santa Clara	california	37.1305008	-121.653999	1.75999999	64	Moderate air quality	pm25	2018-12-05 02:56:00	51.5099983	20	1013	4.5999999	0.50999999	2018-12-04 17:58:00
Morro Bay	City	San Luis Obispo	california	35.3658981	-120.849998	2.06999993	29	Good air quality	o3	2018-12-05 01:56:00	54.9900017	90	1015	4.0999999	0.379999995	2018-12-04 17:58:00
Mount Shasta	City	Siskiyou	california	41.3098984	-122.310997	1.29999995	58	Moderate air quality	pm25	2018-12-05 02:50:00	36.7700005	90	1017	0.75999999	0	2018-12-04 17:58:00
Mountain View	City	Santa Clara	california	37.3861008	-122.084	1.69000006	79	Moderate air quality	pm25	2018-12-05 02:56:00	51.3699989	90	1013	1.5	0.50999999	2018-12-04 17:58:00
Murrieta	City	Riverside	california	33.5539017	-117.213997	2.6500001	39	Good air quality	o3	2018-12-05 02:55:00	55.5299988	20	1015	1.65999997	0	2018-12-04 17:58:00
Napa	City	Napa	california	38.2975006	-122.287003	1.52999997	51	Moderate air quality	pm25	2018-12-05 02:55:00	51.2599983	90	1013	2.5999999	0	2018-12-04 17:58:00
National City	City	San Diego	california	32.6781006	-117.098999	2.73000002	75	Moderate air quality	pm25	2018-12-05 02:56:00	55.5299988	20	1015	1.30999994	0	2018-12-04 17:58:00
Needles	City	San Bernardino	california	34.8480988	-114.613998	2.41000009	58	Moderate air quality	pm25	2018-12-05 02:35:00	55.2700005	1	1019	8.19999981	0	2018-12-04 17:58:00
Nevada City	City	Nevada	california	39.2616005	-121.015999	1.54999995	31	Good air quality	pm25	2018-12-05 02:53:00	47.6800003	90	1014	2.0999999	0	2018-12-04 17:58:00
Newark	City	Alameda	california	37.5297012	-122.040001	1.62	58	Moderate air quality	pm25	2018-12-05 02:56:00	51.3699989	90	1013	1.5	0.50999999	2018-12-04 17:58:00
Newman	City	Stanislaus	california	37.3138008	-121.021004	1.72000003	69	Moderate air quality	pm25	2018-12-05 02:55:00	51.2099991	75	1013	3.0999999	0	2018-12-04 17:58:00
Newport Beach	City	Orange	california	33.6189003	-117.93	2.58999991	42	Good air quality	pm25	2018-12-05 02:51:00	59.5400009	1	1015	6.19999981	0	2018-12-04 17:58:00
Norco	City	Riverside	california	33.9310989	-117.549004	2.5999999	32	Good air quality	o3	2018-12-05 02:47:00	59.1399994	1	1014	0.310000002	0	2018-12-04 17:58:00
Norwalk	City	Los Angeles	california	33.9021988	-118.082001	2.55999994	63	Moderate air quality	pm25	2018-12-05 02:53:00	60.4599991	1	1014	0.610000014	0	2018-12-04 17:58:00
Novato	City	Marin	california	38.107399	-122.57	1.53999996	56	Moderate air quality	pm25	2018-12-05 02:55:00	52.1199989	90	1013	3.0999999	0.50999999	2018-12-04 17:58:00
Oakdale	City	Stanislaus	california	37.7666016	-120.847	1.63	84	Moderate air quality	pm25	2018-12-05 02:55:00	48.9700012	75	1013	3.0999999	0	2018-12-04 17:58:00
Oakland	City	Alameda	california	37.8044014	-122.271004	1.58000004	66	Moderate air quality	pm25	2018-12-05 02:56:00	51.4199982	75	1014	2.5999999	0.50999999	2018-12-04 17:58:00
Oakley	City	Contra Costa	california	37.9973984	-121.711998	1.60000002	63	Moderate air quality	pm25	2018-12-05 02:55:00	50.9000015	90	1014	2.21000004	0	2018-12-04 17:58:00
Oceanside	City	San Diego	california	33.1959	-117.378998	2.68000007	57	Moderate air quality	pm25	2018-12-05 02:55:00	56.2999992	1	1015	1.86000001	0	2018-12-04 17:58:00
Ojai	City	Ventura	california	34.4480019	-119.242996	2.42000008	54	Moderate air quality	pm25	2018-12-05 02:57:00	59.2900009	75	1015	2.0999999	0	2018-12-04 17:58:00
Ontario	City	San Bernardino	california	34.0633011	-117.651001	2.58999991	51	Moderate air quality	pm25	2018-12-05 02:53:00	59.9700012	1	1014	0.310000002	0	2018-12-04 17:58:00
Orange	City	Orange	california	33.787899	-117.852997	2.55999994	58	Moderate air quality	no2	2018-12-05 02:53:00	60.1500015	1	1014	1.05999994	0	2018-12-04 17:58:00
Orange Cove	City	Fresno	california	36.6244011	-119.314003	1.94000006	55	Moderate air quality	pm25	2018-12-05 02:56:00	52.5200005	90	1014	3.0999999	0	2018-12-04 17:58:00
Orinda	City	Contra Costa	california	37.8771019	-122.18	1.59000003	57	Moderate air quality	pm25	2018-12-05 02:56:00	51.4199982	90	1014	1.5	0.50999999	2018-12-04 17:58:00
Orland	City	Glenn	california	39.7473984	-122.195999	1.45000005	31	Good air quality	pm25	2018-12-05 02:53:00	52.8600006	20	1014	2.0999999	0	2018-12-04 17:58:00
Oroville	City	Butte	california	39.5138016	-121.556	1.49000001	54	Moderate air quality	pm25	2018-12-05 02:53:00	47.75	20	1014	2.0999999	0	2018-12-04 17:58:00
Oxnard	City	Ventura	california	34.1974983	-119.177002	2.46000004	69	Moderate air quality	pm25	2018-12-05 02:57:00	59.25	75	1015	2.0999999	0	2018-12-04 17:58:00
Pacific Grove	City	Monterey	california	36.6176987	-121.917	1.80999994	49	Good air quality	pm25	2018-12-05 02:54:00	52.0200005	90	1012	1.5	0.50999999	2018-12-04 17:58:00
Pacifica	City	San Mateo	california	37.6138	-122.487	1.62	48	Good air quality	pm25	2018-12-05 02:56:00	51.7999992	90	1013	1.5	0.50999999	2018-12-04 17:58:00
Palm Desert	City	Riverside	california	33.7221985	-116.374001	2.71000004	52	Moderate air quality	pm25	2018-12-05 02:35:00	42.7999992	1	1018	0.709999979	0	2018-12-04 17:58:00
Palm Springs	City	Riverside	california	33.8302994	-116.544998	2.69000006	38	Good air quality	pm25	2018-12-05 02:35:00	52.1100006	1	1015	4.5999999	0	2018-12-04 17:58:00
Palmdale	City	Los Angeles	california	34.5793991	-118.115997	2.44000006	46	Good air quality	pm25	2018-12-05 02:53:00	52.5200005	1	1014	3.80999994	0	2018-12-04 17:58:00
Palo Alto	City	Santa Clara	california	37.4418983	-122.142998	1.69000006	81	Moderate air quality	pm25	2018-12-05 02:56:00	51.3699989	90	1013	1.5	0.50999999	2018-12-04 17:58:00
Palos Verdes Estates	City	Los Angeles	california	33.8005981	-118.389999	2.54999995	45	Good air quality	pm25	2018-12-05 02:53:00	60.3100014	1	1014	2.55999994	0	2018-12-04 17:58:00
Paradise	Town	Butte	california	39.7596016	-121.622002	1.51999998	50	Good air quality	pm25	2018-12-05 02:53:00	53.0800018	20	1014	2.0999999	0	2018-12-04 17:58:00
Paramount	City	Los Angeles	california	33.8894997	-118.160004	2.55999994	40	Good air quality	pm25	2018-12-05 02:53:00	60.2999992	1	1014	2.55999994	0	2018-12-04 17:58:00
Parlier	City	Fresno	california	36.611599	-119.527	1.91999996	57	Moderate air quality	pm25	2018-12-05 02:55:00	53.1100006	90	1014	3.0999999	0	2018-12-04 17:58:00
Pasadena	City	Los Angeles	california	34.1478004	-118.144997	2.52999997	61	Moderate air quality	pm25	2018-12-05 02:53:00	60.3100014	1	1014	0.610000014	0	2018-12-04 17:58:00
Paso Robles	City	San Luis Obispo	california	35.6369019	-120.654999	2.04999995	35	Good air quality	pm25	2018-12-05 01:56:00	54.6800003	90	1014	2.5999999	0.25	2018-12-04 17:58:00
Patterson	City	Stanislaus	california	37.4715996	-121.129997	1.72000003	76	Moderate air quality	pm25	2018-12-05 02:55:00	51.0400009	75	1013	3.0999999	0	2018-12-04 17:58:00
Perris	City	Riverside	california	33.7825012	-117.228996	2.61999989	53	Moderate air quality	pm25	2018-12-05 02:55:00	56.1199989	20	1015	1.65999997	0	2018-12-04 17:58:00
Petaluma	City	Sonoma	california	38.232399	-122.637001	1.53999996	61	Moderate air quality	pm25	2018-12-05 02:55:00	52.1199989	90	1013	2.5999999	0	2018-12-04 17:58:00
Pico Rivera	City	Los Angeles	california	33.9831009	-118.097	2.55999994	57	Moderate air quality	pm25	2018-12-05 02:53:00	60.6699982	1	1014	0.610000014	0	2018-12-04 17:58:00
Piedmont	City	Alameda	california	37.8244019	-122.232002	1.59000003	31	Good air quality	pm25	2018-12-05 02:56:00	51.4799995	90	1014	1.5	0.50999999	2018-12-04 17:58:00
Pinole	City	Contra Costa	california	38.0043983	-122.299004	1.53999996	53	Moderate air quality	pm25	2018-12-05 02:56:00	51.2200012	90	1014	1.5	0.50999999	2018-12-04 17:58:00
Pismo Beach	City	San Luis Obispo	california	35.1427994	-120.640999	2.11999989	49	Good air quality	pm25	2018-12-05 01:58:00	54.7700005	90	1015	4.0999999	0.419999987	2018-12-04 17:58:00
Pittsburg	City	Contra Costa	california	38.0279999	-121.885002	1.54999995	62	Moderate air quality	pm25	2018-12-05 03:00:00	50.9000015	90	1014	1.5	0.50999999	2018-12-04 17:58:00
Placentia	City	Orange	california	33.8711014	-117.862999	2.55999994	51	Moderate air quality	pm25	2018-12-05 02:53:00	60.0600014	1	1014	1.05999994	0	2018-12-04 17:58:00
Placerville	City	El Dorado	california	38.729599	-120.799004	1.59000003	51	Moderate air quality	pm25	2018-12-05 02:50:00	48.1100006	90	1014	2.5999999	0	2018-12-04 17:58:00
Pleasant Hill	City	Contra Costa	california	37.9480019	-122.060997	1.59000003	67	Moderate air quality	pm25	2018-12-05 03:00:00	51.0800018	90	1014	1.5	0.50999999	2018-12-04 17:58:00
Pleasanton	City	Alameda	california	37.6623993	-121.875	1.64999998	33	Good air quality	no2	2018-12-05 02:56:00	51.0600014	90	1013	4.5999999	0.50999999	2018-12-04 17:58:00
Plymouth	City	Amador	california	38.4818993	-120.845001	1.60000002	53	Moderate air quality	pm25	2018-12-05 02:50:00	47.7000008	40	1014	2.0999999	0	2018-12-04 17:58:00
Point Arena	City	Mendocino	california	38.9087982	-123.693001	1.47000003	48	Good air quality	pm25	2018-12-05 01:56:00	55.9399986	75	1013	3.5999999	0	2018-12-04 17:58:00
Pomona	City	Los Angeles	california	34.0550995	-117.75	2.58999991	55	Moderate air quality	pm25	2018-12-05 02:53:00	60.0600014	1	1014	0.310000002	0	2018-12-04 17:58:00
Port Hueneme	City	Ventura	california	34.1478004	-119.195	2.46000004	62	Moderate air quality	pm25	2018-12-05 02:57:00	58.8699989	75	1015	2.0999999	0	2018-12-04 17:58:00
Porterville	City	Tulare	california	36.0652008	-119.016998	2.01999998	72	Moderate air quality	pm25	2018-12-05 02:15:00	52.3800011	20	1013	2.0999999	0	2018-12-04 17:58:00
Portola	City	Plumas	california	39.8105011	-120.469002	1.62	52	Moderate air quality	pm25	2018-12-05 02:35:00	28.1299992	90	1019	3.5999999	0	2018-12-04 17:58:00
Portola Valley	Town	San Mateo	california	37.3841019	-122.235001	1.69000006	62	Moderate air quality	pm25	2018-12-05 02:56:00	51.6199989	90	1013	1.5	0.50999999	2018-12-04 17:58:00
Poway	City	San Diego	california	32.9627991	-117.036003	2.72000003	39	Good air quality	pm25	2018-12-05 02:56:00	55.1500015	1	1015	0.610000014	0	2018-12-04 17:58:00
Rancho Cordova	City	Sacramento	california	38.5890999	-121.303001	1.53999996	67	Moderate air quality	pm25	2018-12-05 03:00:00	48.4500008	90	1014	2.5999999	0	2018-12-04 17:58:00
Rancho Cucamonga	City	San Bernardino	california	34.1063995	-117.593002	2.58999991	52	Moderate air quality	no2	2018-12-05 02:47:00	59.2000008	1	1015	2.0999999	0	2018-12-04 17:58:00
Rancho Mirage	City	Riverside	california	33.7397003	-116.413002	2.71000004	31	Good air quality	o3	2018-12-05 02:35:00	49.3699989	1	1018	0.709999979	0	2018-12-04 17:58:00
Rancho Palos Verdes	City	Los Angeles	california	33.7444992	-118.387001	2.58999991	44	Good air quality	pm25	2018-12-05 02:53:00	59.5900002	1	1015	6.19999981	0	2018-12-04 17:58:00
Rancho Santa Margarita	City	Orange	california	33.6402016	-117.602997	2.6400001	36	Good air quality	o3	2018-12-05 02:55:00	56.7000008	20	1015	1.05999994	0	2018-12-04 17:58:00
Red Bluff	City	Tehama	california	40.1785011	-122.236	1.41999996	41	Good air quality	pm25	2018-12-05 01:54:00	53.9599991	90	1015	2.0999999	0	2018-12-04 17:58:00
Redding	City	Shasta	california	40.5864983	-122.391998	1.34000003	93	Moderate air quality	pm25	2018-12-05 02:50:00	50.2700005	90	1017	1.36000001	0	2018-12-04 17:58:00
Redlands	City	San Bernardino	california	34.0555992	-117.182999	2.6400001	59	Moderate air quality	pm25	2018-12-05 02:35:00	58.0099983	1	1015	4.5999999	0	2018-12-04 17:58:00
Redondo Beach	City	Los Angeles	california	33.8492012	-118.388	2.54999995	62	Moderate air quality	pm25	2018-12-05 02:53:00	59.5900002	1	1014	2.55999994	0	2018-12-04 17:58:00
Redwood City	City	San Mateo	california	37.485199	-122.236	1.69000006	79	Moderate air quality	pm25	2018-12-05 02:56:00	51.7599983	90	1013	2.5999999	0.50999999	2018-12-04 17:58:00
Reedley	City	Fresno	california	36.5962982	-119.449997	1.94000006	57	Moderate air quality	pm25	2018-12-05 02:56:00	52.6300011	90	1014	3.0999999	0	2018-12-04 17:58:00
Rialto	City	San Bernardino	california	34.1063995	-117.370003	2.56999993	55	Moderate air quality	pm25	2018-12-05 02:47:00	58.5	1	1015	2.0999999	0	2018-12-04 17:58:00
Richmond	City	Contra Costa	california	37.9357986	-122.348	1.58000004	63	Moderate air quality	pm25	2018-12-05 02:56:00	51.2200012	90	1014	1.5	0.50999999	2018-12-04 17:58:00
Ridgecrest	City	Kern	california	35.6225014	-117.670998	2.23000002	40	Good air quality	pm25	2018-12-05 02:56:00	48.0200005	75	1019	3.0999999	0	2018-12-04 17:58:00
Rio Dell	City	Humboldt	california	40.4992981	-124.106003	1.38999999	27	Good air quality	o3	2018-12-05 02:35:00	53.3499985	90	1013	2.0999999	0	2018-12-04 17:58:00
Rio Vista	City	Solano	california	38.1557999	-121.691002	1.55999994	38	Good air quality	pm25	2018-12-05 03:00:00	50.2299995	1	1015	1.86000001	0	2018-12-04 17:58:00
Ripon	City	San Joaquin	california	37.7394981	-121.135002	1.65999997	68	Moderate air quality	pm25	2018-12-05 02:55:00	49.9099998	75	1013	3.0999999	0	2018-12-04 17:58:00
Riverbank	City	Stanislaus	california	37.7360001	-120.934998	1.66999996	74	Moderate air quality	pm25	2018-12-05 02:55:00	49.9099998	75	1013	3.0999999	0	2018-12-04 17:58:00
Riverside	City	Riverside	california	33.9805984	-117.375	2.5999999	55	Moderate air quality	pm25	2018-12-05 02:47:00	58.1399994	1	1015	2.0999999	0	2018-12-04 17:58:00
Rocklin	City	Placer	california	38.790699	-121.236	1.54999995	65	Moderate air quality	pm25	2018-12-05 03:00:00	48.1100006	90	1014	2.5999999	0	2018-12-04 17:58:00
Rohnert Park	City	Sonoma	california	38.3395996	-122.700996	1.51999998	42	Good air quality	pm25	2018-12-05 02:55:00	51.6399994	90	1013	2.5999999	0	2018-12-04 17:58:00
Rolling Hills	City	Los Angeles	california	33.757	-118.353996	2.54999995	45	Good air quality	pm25	2018-12-05 02:53:00	59.5900002	1	1014	2.55999994	0	2018-12-04 17:58:00
Rolling Hills Estates	City	Los Angeles	california	33.7877998	-118.358002	2.54999995	55	Moderate air quality	pm25	2018-12-05 02:53:00	59.5900002	1	1014	2.55999994	0	2018-12-04 17:58:00
Rosemead	City	Los Angeles	california	34.0806007	-118.072998	2.52999997	61	Moderate air quality	pm25	2018-12-05 02:53:00	60.0299988	1	1014	0.610000014	0	2018-12-04 17:58:00
Roseville	City	Placer	california	38.7521019	-121.288002	1.51999998	65	Moderate air quality	pm25	2018-12-05 02:53:00	48.1100006	90	1014	2.5999999	0	2018-12-04 17:58:00
Ross	Town	Marin	california	37.9623985	-122.555	1.57000005	38	Good air quality	pm25	2018-12-05 02:55:00	51.5999985	90	1013	3.0999999	0.50999999	2018-12-04 17:58:00
Sacramento	City	Sacramento	california	38.5816002	-121.494003	1.53999996	68	Moderate air quality	pm25	2018-12-05 02:53:00	48.4500008	90	1014	2.5999999	0	2018-12-04 17:58:00
St. Helena	City	Napa	california	38.5051994	-122.470001	1.51999998	44	Good air quality	pm25	2018-12-05 03:00:00	51.1899986	90	1013	2.5999999	0	2018-12-04 17:58:00
Salinas	City	Monterey	california	36.6777	-121.655998	1.82000005	55	Moderate air quality	pm25	2018-12-05 02:55:00	52.3800011	90	1012	1.5	0.50999999	2018-12-04 17:58:00
San Anselmo	Town	Marin	california	37.9746017	-122.561996	1.57000005	38	Good air quality	pm25	2018-12-05 02:55:00	51.5999985	90	1013	3.0999999	0.50999999	2018-12-04 17:58:00
San Bernardino	City	San Bernardino	california	34.1082993	-117.290001	2.56999993	55	Moderate air quality	pm25	2018-12-05 02:35:00	58.4199982	1	1015	4.5999999	0	2018-12-04 17:58:00
San Bruno	City	San Mateo	california	37.6305008	-122.411003	1.62	67	Moderate air quality	pm25	2018-12-05 02:56:00	51.8699989	75	1014	2.5999999	0.50999999	2018-12-04 17:58:00
San Carlos	City	San Mateo	california	37.5071983	-122.261002	1.62	79	Moderate air quality	pm25	2018-12-05 02:56:00	51.7599983	90	1013	1.5	0.50999999	2018-12-04 17:58:00
San Clemente	City	Orange	california	33.4273987	-117.612999	2.61999989	52	Moderate air quality	pm25	2018-12-05 02:55:00	56.8600006	20	1015	1.05999994	0	2018-12-04 17:58:00
San Diego	City	San Diego	california	32.7156982	-117.161003	2.73000002	78	Moderate air quality	pm25	2018-12-05 02:56:00	54.9500008	1	1015	1.5	0	2018-12-04 17:58:00
San Dimas	City	Los Angeles	california	34.1067009	-117.806999	2.54999995	53	Moderate air quality	pm25	2018-12-05 02:53:00	59.8100014	1	1015	2.0999999	0	2018-12-04 17:58:00
San Fernando	City	Los Angeles	california	34.2818985	-118.439003	2.49000001	60	Moderate air quality	pm25	2018-12-05 02:57:00	58.4599991	5	1016	2.0999999	0	2018-12-04 17:58:00
San Francisco	City and county	San Francisco	california	37.7748985	-122.418999	1.58000004	66	Moderate air quality	pm25	2018-12-05 02:56:00	51.5099983	75	1014	2.5999999	0.50999999	2018-12-04 17:58:00
San Gabriel	City	Los Angeles	california	34.0960999	-118.106003	2.52999997	58	Moderate air quality	pm25	2018-12-05 02:53:00	60.0299988	1	1014	0.610000014	0	2018-12-04 17:58:00
San Jacinto	City	Riverside	california	33.7839012	-116.959	2.69000006	54	Moderate air quality	pm25	2018-12-05 02:55:00	55.7200012	1	1015	4.5999999	0	2018-12-04 17:58:00
San Joaquin	City	Fresno	california	36.6066017	-120.189003	1.87	52	Moderate air quality	pm25	2018-12-05 02:56:00	52.6300011	90	1015	5.0999999	0	2018-12-04 17:58:00
San Jose	City	Santa Clara	california	37.3381996	-121.886002	1.69000006	74	Moderate air quality	pm25	2018-12-05 02:56:00	51.6899986	90	1013	1.5	0.50999999	2018-12-04 17:58:00
San Juan Bautista	City	San Benito	california	36.8455009	-121.538002	1.77999997	31	Good air quality	pm25	2018-12-05 02:55:00	52.5	20	1013	4.5999999	0.50999999	2018-12-04 17:58:00
San Juan Capistrano	City	Orange	california	33.5018997	-117.663002	2.6400001	55	Moderate air quality	pm25	2018-12-05 02:55:00	56.7099991	20	1015	1.05999994	0	2018-12-04 17:58:00
San Leandro	City	Alameda	california	37.7248993	-122.155998	1.62	57	Moderate air quality	pm25	2018-12-05 02:56:00	51.6699982	75	1014	2.5999999	0.50999999	2018-12-04 17:58:00
San Luis Obispo	City	San Luis Obispo	california	35.2827988	-120.660004	2.0999999	24	Good air quality	o3	2018-12-05 02:53:00	54.2999992	90	1015	6.19999981	0.449999988	2018-12-04 17:58:00
San Marcos	City	San Diego	california	33.1433983	-117.166	2.71000004	39	Good air quality	pm25	2018-12-05 02:56:00	56.25	1	1015	0.610000014	0	2018-12-04 17:58:00
San Marino	City	Los Angeles	california	34.1213989	-118.106003	2.52999997	58	Moderate air quality	pm25	2018-12-05 02:53:00	58.8199997	1	1014	0.610000014	0	2018-12-04 17:58:00
San Mateo	City	San Mateo	california	37.5629997	-122.325996	1.62	74	Moderate air quality	pm25	2018-12-05 02:56:00	51.7599983	75	1014	2.5999999	0.50999999	2018-12-04 17:58:00
San Pablo	City	Contra Costa	california	37.962101	-122.346001	1.58000004	59	Moderate air quality	pm25	2018-12-05 02:56:00	51.2200012	90	1013	3.0999999	0.50999999	2018-12-04 17:58:00
San Rafael	City	Marin	california	37.9734993	-122.530998	1.57000005	57	Moderate air quality	pm25	2018-12-05 02:55:00	51.4799995	90	1013	3.0999999	0.50999999	2018-12-04 17:58:00
San Ramon	City	Contra Costa	california	37.7798996	-121.977997	1.61000001	61	Moderate air quality	pm25	2018-12-05 02:56:00	51.3100014	90	1013	4.5999999	0.50999999	2018-12-04 17:58:00
Sand City	City	Monterey	california	36.6171989	-121.848	1.80999994	27	Good air quality	pm25	2018-12-05 02:55:00	52.3899994	90	1012	1.5	0.50999999	2018-12-04 17:58:00
Sanger	City	Fresno	california	36.7080002	-119.556	1.91999996	60	Moderate air quality	pm25	2018-12-05 02:55:00	53.1100006	90	1014	3.0999999	0	2018-12-04 17:58:00
Santa Ana	City	Orange	california	33.7454987	-117.867996	2.58999991	58	Moderate air quality	pm25	2018-12-05 02:53:00	59.5	1	1015	2.0999999	0	2018-12-04 17:58:00
Santa Barbara	City	Santa Barbara	california	34.4207993	-119.697998	2.38000011	56	Moderate air quality	pm25	2018-12-05 02:57:00	58.5299988	1	1014	3.0999999	0	2018-12-04 17:58:00
Santa Clara	City	Santa Clara	california	37.3540993	-121.955002	1.69000006	68	Moderate air quality	pm25	2018-12-05 02:56:00	51.2200012	90	1013	1.5	0.50999999	2018-12-04 17:58:00
Santa Clarita	City	Los Angeles	california	34.3917007	-118.542999	2.45000005	34	Good air quality	o3	2018-12-05 02:57:00	58.5299988	5	1016	2.0999999	0	2018-12-04 17:58:00
Santa Cruz	City	Santa Cruz	california	36.9740982	-122.030998	1.75999999	75	Moderate air quality	pm25	2018-12-05 02:56:00	52.0299988	90	1012	1.5	0.50999999	2018-12-04 17:58:00
Santa Fe Springs	City	Los Angeles	california	33.9472008	-118.084999	2.55999994	56	Moderate air quality	pm25	2018-12-05 02:53:00	59.6300011	1	1014	0.610000014	0	2018-12-04 17:58:00
Santa Maria	City	Santa Barbara	california	34.9529991	-120.435997	2.19000006	49	Good air quality	pm25	2018-12-05 02:35:00	55.5999985	90	1014	4.5999999	0.419999987	2018-12-04 17:58:00
Santa Monica	City	Los Angeles	california	34.0195007	-118.490997	2.5	67	Moderate air quality	pm25	2018-12-05 02:57:00	59.5800018	1	1014	0.610000014	0	2018-12-04 17:58:00
Santa Paula	City	Ventura	california	34.3541985	-119.058998	2.42000008	64	Moderate air quality	pm25	2018-12-05 02:57:00	59.5400009	75	1015	2.0999999	0	2018-12-04 17:58:00
Santa Rosa	City	Sonoma	california	38.4403992	-122.713997	1.51999998	65	Moderate air quality	pm25	2018-12-05 02:55:00	51.9399986	90	1013	2.5999999	0	2018-12-04 17:58:00
Santee	City	San Diego	california	32.8384018	-116.973999	2.76999998	62	Moderate air quality	pm25	2018-12-05 02:56:00	55.1300011	1	1015	0.610000014	0	2018-12-04 17:58:00
Saratoga	City	Santa Clara	california	37.2638016	-122.023003	1.69000006	58	Moderate air quality	pm25	2018-12-05 02:56:00	51.6699982	90	1013	1.5	0.50999999	2018-12-04 17:58:00
Sausalito	City	Marin	california	37.8591003	-122.485001	1.58000004	47	Good air quality	pm25	2018-12-05 02:56:00	51.4799995	75	1014	2.5999999	0.50999999	2018-12-04 17:58:00
Scotts Valley	City	Santa Cruz	california	37.0511017	-122.014999	1.75	54	Moderate air quality	pm25	2018-12-05 02:56:00	52.4700012	90	1013	1.5	0.50999999	2018-12-04 17:58:00
Seal Beach	City	Orange	california	33.7414017	-118.105003	2.5999999	52	Moderate air quality	pm25	2018-12-05 02:53:00	59.6300011	1	1014	2.55999994	0	2018-12-04 17:58:00
Seaside	City	Monterey	california	36.6148987	-121.821999	1.80999994	45	Good air quality	pm25	2018-12-05 02:55:00	52.3899994	90	1012	1.5	0.50999999	2018-12-04 17:58:00
Sebastopol	City	Sonoma	california	38.4020996	-122.823997	1.5	60	Moderate air quality	pm25	2018-12-05 02:55:00	52.2999992	90	1013	2.5999999	0	2018-12-04 17:58:00
Selma	City	Fresno	california	36.5708008	-119.612	1.91999996	65	Moderate air quality	pm25	2018-12-05 02:55:00	53.1100006	90	1014	3.0999999	0	2018-12-04 17:58:00
Shafter	City	Kern	california	35.5004997	-119.272003	2.06999993	62	Moderate air quality	pm25	2018-12-05 02:56:00	54.75	1	1014	3.1099999	0	2018-12-04 17:58:00
Shasta Lake	City	Shasta	california	40.6804008	-122.371002	1.34000003	71	Moderate air quality	pm25	2018-12-05 02:50:00	50.4500008	90	1017	1.36000001	0	2018-12-04 17:58:00
Sierra Madre	City	Los Angeles	california	34.1617012	-118.053001	2.52999997	57	Moderate air quality	pm25	2018-12-05 02:53:00	58.8400002	1	1014	0.610000014	0	2018-12-04 17:58:00
Signal Hill	City	Los Angeles	california	33.8045006	-118.167999	2.55999994	67	Moderate air quality	pm25	2018-12-05 02:53:00	60.2999992	1	1014	2.55999994	0	2018-12-04 17:58:00
Simi Valley	City	Ventura	california	34.2694016	-118.780998	2.43000007	36	Good air quality	o3	2018-12-05 02:57:00	60.2999992	75	1015	2.0999999	0	2018-12-04 17:58:00
Solana Beach	City	San Diego	california	32.9911995	-117.271004	2.73000002	55	Moderate air quality	pm25	2018-12-05 02:56:00	56.25	1	1015	0.610000014	0	2018-12-04 17:58:00
Soledad	City	Monterey	california	36.4247017	-121.325996	1.88999999	61	Moderate air quality	pm25	2018-12-05 02:55:00	53.3699989	90	1012	1.5	0	2018-12-04 17:58:00
Solvang	City	Santa Barbara	california	34.5957985	-120.138	2.28999996	38	Good air quality	o3	2018-12-05 02:35:00	55.9799995	90	1014	4.5999999	0.50999999	2018-12-04 17:58:00
Sonoma	City	Sonoma	california	38.2919006	-122.458	1.52999997	52	Moderate air quality	pm25	2018-12-05 03:00:00	51.2799988	90	1013	2.5999999	0	2018-12-04 17:58:00
Sonora	City	Tuolumne	california	37.9828987	-120.382004	1.69000006	76	Moderate air quality	pm25	2018-12-05 02:53:00	50.0200005	75	1013	3.0999999	0	2018-12-04 17:58:00
South El Monte	City	Los Angeles	california	34.0519981	-118.046997	2.52999997	54	Moderate air quality	pm25	2018-12-05 02:53:00	60.0299988	1	1014	0.610000014	0	2018-12-04 17:58:00
South Gate	City	Los Angeles	california	33.9547005	-118.211998	2.55999994	64	Moderate air quality	pm25	2018-12-05 02:53:00	59.6300011	1	1014	0.610000014	0	2018-12-04 17:58:00
South Lake Tahoe	City	El Dorado	california	38.9398994	-119.976997	1.74000001	29	Good air quality	o3	2018-12-05 02:55:00	28.2600002	90	1016	1.40999997	0	2018-12-04 17:58:00
South Pasadena	City	Los Angeles	california	34.1161003	-118.150002	2.52999997	60	Moderate air quality	pm25	2018-12-05 02:53:00	58.8199997	1	1014	0.610000014	0	2018-12-04 17:58:00
South San Francisco	City	San Mateo	california	37.6547012	-122.407997	1.62	67	Moderate air quality	pm25	2018-12-05 02:56:00	51.8699989	75	1014	2.5999999	0.50999999	2018-12-04 17:58:00
Stanton	City	Orange	california	33.8028984	-117.992996	2.55999994	43	Good air quality	pm25	2018-12-05 02:53:00	59.4500008	1	1014	2.55999994	0	2018-12-04 17:58:00
Stockton	City	San Joaquin	california	37.9576988	-121.291	1.61000001	79	Moderate air quality	pm25	2018-12-05 02:55:00	49.2400017	90	1014	3.46000004	0	2018-12-04 17:58:00
Suisun City	City	Solano	california	38.2382011	-122.040001	1.55999994	30	Good air quality	pm25	2018-12-05 03:00:00	50.8100014	90	1014	1.5	0	2018-12-04 17:58:00
Sunnyvale	City	Santa Clara	california	37.3688011	-122.036003	1.69000006	73	Moderate air quality	pm25	2018-12-05 02:56:00	51.3699989	90	1013	1.5	0.50999999	2018-12-04 17:58:00
Susanville	City	Lassen	california	40.4163017	-120.653	1.50999999	51	Moderate air quality	pm25	2018-12-05 02:35:00	30.2000008	90	1020	2.0999999	0	2018-12-04 17:58:00
Sutter Creek	City	Amador	california	38.3930016	-120.802002	1.60000002	66	Moderate air quality	pm25	2018-12-05 02:55:00	48.3400002	40	1014	2.0999999	0	2018-12-04 17:58:00
Taft	City	Kern	california	35.1425018	-119.457001	2.18000007	55	Moderate air quality	pm25	2018-12-05 01:54:00	62.9599991	1	1012	10.3000002	0	2018-12-04 17:58:00
Tehachapi	City	Kern	california	35.1321983	-118.448997	2.36999989	39	Good air quality	pm25	2018-12-05 02:58:00	45.1800003	40	1017	6.69999981	0	2018-12-04 17:58:00
Tehama	City	Tehama	california	40.0270996	-122.123001	1.41999996	25	Good air quality	o3	2018-12-05 02:54:00	53.5499992	90	1015	3.0999999	0	2018-12-04 17:58:00
Temecula	City	Riverside	california	33.4935989	-117.148003	2.68000007	45	Good air quality	pm25	2018-12-05 02:55:00	55.4700012	20	1015	1.65999997	0	2018-12-04 17:58:00
Temple City	City	Los Angeles	california	34.1072006	-118.057999	2.52999997	51	Moderate air quality	pm25	2018-12-05 02:53:00	60.0299988	1	1014	0.610000014	0	2018-12-04 17:58:00
Thousand Oaks	City	Ventura	california	34.1706009	-118.837997	2.5	54	Moderate air quality	pm25	2018-12-05 02:57:00	60.2999992	75	1015	2.0999999	0	2018-12-04 17:58:00
Tiburon	Town	Marin	california	37.8735008	-122.457001	1.58000004	58	Moderate air quality	pm25	2018-12-05 02:56:00	51.4799995	75	1014	2.5999999	0.50999999	2018-12-04 17:58:00
Torrance	City	Los Angeles	california	33.8358002	-118.341003	2.54999995	56	Moderate air quality	pm25	2018-12-05 02:53:00	59.6300011	1	1014	2.55999994	0	2018-12-04 17:58:00
Tracy	City	San Joaquin	california	37.7397003	-121.425003	1.66999996	71	Moderate air quality	pm25	2018-12-05 02:56:00	51.4599991	90	1014	3.46000004	0	2018-12-04 17:58:00
Trinidad	City	Humboldt	california	41.0592995	-124.142998	1.28999996	22	Good air quality	o3	2018-12-05 02:35:00	52.2999992	90	1013	2.0999999	0	2018-12-04 17:58:00
Truckee	Town	Nevada	california	39.3279991	-120.182999	1.69000006	61	Moderate air quality	pm25	2018-12-05 02:55:00	27.9300003	90	1017	1.11000001	0	2018-12-04 17:58:00
Tulare	City	Tulare	california	36.2076988	-119.347	2	79	Moderate air quality	pm25	2018-12-05 02:56:00	51.2999992	1	1014	0.75999999	0	2018-12-04 17:58:00
Tulelake	City	Siskiyou	california	41.9560013	-121.476997	1.22000003	56	Moderate air quality	pm25	2018-12-05 01:53:00	30.0200005	90	1018	5.0999999	0	2018-12-04 17:58:00
Turlock	City	Stanislaus	california	37.4947014	-120.847	1.72000003	96	Moderate air quality	pm25	2018-12-05 02:53:00	50.9900017	75	1013	3.0999999	0	2018-12-04 17:58:00
Tustin	City	Orange	california	33.7420006	-117.823997	2.58999991	33	Good air quality	o3	2018-12-05 02:58:00	58.8600006	1	1015	3.5999999	0	2018-12-04 17:58:00
Twentynine Palms	City	San Bernardino	california	34.135601	-116.054001	2.6400001	43	Good air quality	pm25	2018-12-05 03:11:00	33.25	0	957.869995	1.15999997	0	2018-12-04 17:58:00
Ukiah	City	Mendocino	california	39.1501999	-123.208	1.47000003	74	Moderate air quality	pm25	2018-12-05 01:56:00	55.9399986	75	1013	3.5999999	0	2018-12-04 17:58:00
Union City	City	Alameda	california	37.593399	-122.043999	1.62	63	Moderate air quality	pm25	2018-12-05 02:56:00	51.7599983	90	1013	1.5	0.50999999	2018-12-04 17:58:00
Upland	City	San Bernardino	california	34.0974998	-117.648003	2.58999991	52	Moderate air quality	pm25	2018-12-05 02:58:00	59.3800011	1	1015	2.0999999	0	2018-12-04 17:58:00
Vacaville	City	Solano	california	38.3566017	-121.987999	1.53999996	58	Moderate air quality	pm25	2018-12-05 03:00:00	50.0699997	1	1015	1.86000001	0	2018-12-04 17:58:00
Vallejo	City	Solano	california	38.1040993	-122.257004	1.53999996	65	Moderate air quality	pm25	2018-12-05 03:00:00	50.9500008	90	1014	1.5	0.50999999	2018-12-04 17:58:00
Ventura	City	Ventura	california	34.2804985	-119.294998	2.41000009	62	Moderate air quality	pm25	2018-12-05 02:57:00	58.8699989	1	1014	3.0999999	0	2018-12-04 17:58:00
Vernon	City	Los Angeles	california	34.0038986	-118.230003	2.52999997	64	Moderate air quality	pm25	2018-12-05 02:53:00	59.6300011	1	1014	0.610000014	0	2018-12-04 17:58:00
Victorville	City	San Bernardino	california	34.5362015	-117.292999	2.48000002	56	Moderate air quality	pm25	2018-12-05 02:58:00	47.4099998	40	1017	6.69999981	0	2018-12-04 17:58:00
Villa Park	City	Orange	california	33.8139992	-117.821999	2.55999994	48	Good air quality	no2	2018-12-05 02:58:00	59.3800011	1	1015	2.0999999	0	2018-12-04 17:58:00
Visalia	City	Tulare	california	36.3302002	-119.292	1.97000003	79	Moderate air quality	pm25	2018-12-05 02:56:00	51.9099998	1	1014	1.55999994	0	2018-12-04 17:58:00
Vista	City	San Diego	california	33.2000008	-117.242996	2.71000004	45	Good air quality	pm25	2018-12-05 02:55:00	55.7400017	1	1015	0.610000014	0	2018-12-04 17:58:00
Walnut	City	Los Angeles	california	34.0203018	-117.864998	2.54999995	43	Good air quality	pm25	2018-12-05 02:53:00	59.8100014	1	1015	2.0999999	0	2018-12-04 17:58:00
Walnut Creek	City	Contra Costa	california	37.910099	-122.065002	1.59000003	67	Moderate air quality	pm25	2018-12-05 02:56:00	51.7599983	90	1014	1.5	0.50999999	2018-12-04 17:58:00
Wasco	City	Kern	california	35.594101	-119.341003	2.06999993	51	Moderate air quality	pm25	2018-12-05 02:56:00	54.9000015	1	1014	3.1099999	0	2018-12-04 17:58:00
Waterford	City	Stanislaus	california	37.6413002	-120.760002	1.66999996	85	Moderate air quality	pm25	2018-12-05 02:53:00	50.2299995	75	1013	3.0999999	0	2018-12-04 17:58:00
Watsonville	City	Santa Cruz	california	36.9101982	-121.757004	1.75999999	65	Moderate air quality	pm25	2018-12-05 02:56:00	52.2700005	20	1013	4.5999999	0.50999999	2018-12-04 17:58:00
Weed	City	Siskiyou	california	41.4225998	-122.386002	1.29999995	72	Moderate air quality	pm25	2018-12-05 02:50:00	36.75	90	1017	0.75999999	0	2018-12-04 17:58:00
West Covina	City	Los Angeles	california	34.0685997	-117.939003	2.54999995	62	Moderate air quality	pm25	2018-12-05 02:53:00	59.7900009	1	1015	2.0999999	0	2018-12-04 17:58:00
West Hollywood	City	Los Angeles	california	34.0900002	-118.362	2.5	63	Moderate air quality	pm25	2018-12-05 02:53:00	60.0099983	1	1014	0.610000014	0	2018-12-04 17:58:00
West Sacramento	City	Yolo	california	38.5805016	-121.529999	1.52999997	58	Moderate air quality	pm25	2018-12-05 03:00:00	48.4500008	1	1015	1.86000001	0	2018-12-04 17:58:00
Westlake Village	City	Los Angeles	california	34.1465988	-118.806999	2.5	36	Good air quality	o3	2018-12-05 02:57:00	60.2999992	75	1015	2.0999999	0	2018-12-04 17:58:00
Westminster	City	Orange	california	33.759201	-117.989998	2.55999994	54	Moderate air quality	pm25	2018-12-05 02:58:00	59.3100014	1	1014	2.55999994	0	2018-12-04 17:58:00
Westmorland	City	Imperial	california	33.0373001	-115.621002	2.68000007	65	Moderate air quality	pm25	2018-12-05 02:56:00	50.0900002	20	1018	2.5999999	0	2018-12-04 17:58:00
Wheatland	City	Yuba	california	39.0098991	-121.422997	1.50999999	44	Good air quality	pm25	2018-12-05 03:00:00	48.3400002	1	1014	0.959999979	0	2018-12-04 17:58:00
Whittier	City	Los Angeles	california	33.9791985	-118.032997	2.55999994	55	Moderate air quality	pm25	2018-12-05 02:53:00	60.4199982	1	1014	0.610000014	0	2018-12-04 17:58:00
Wildomar	City	Riverside	california	33.5988998	-117.279999	2.66000009	36	Good air quality	o3	2018-12-05 02:58:00	55.4500008	1	1015	2.0999999	0	2018-12-04 17:58:00
Williams	City	Colusa	california	39.1545982	-122.149002	1.47000003	65	Moderate air quality	pm25	2018-12-05 02:53:00	48.5099983	1	1014	0.310000002	0	2018-12-04 17:58:00
Willits	City	Mendocino	california	39.4095993	-123.356003	1.46000004	58	Moderate air quality	pm25	2018-12-05 01:56:00	55.9399986	75	1013	3.5999999	0	2018-12-04 17:58:00
Willows	City	Glenn	california	39.5242996	-122.194	1.45000005	38	Good air quality	pm25	2018-12-05 02:53:00	51.0800018	20	1014	2.0999999	0	2018-12-04 17:58:00
Windsor	Town	Sonoma	california	38.5471001	-122.816002	1.48000002	54	Moderate air quality	pm25	2018-12-05 02:55:00	52.2999992	90	1013	2.5999999	0	2018-12-04 17:58:00
Winters	City	Yolo	california	38.5248985	-121.971001	1.51999998	45	Good air quality	pm25	2018-12-05 03:00:00	50.25	1	1015	1.86000001	0	2018-12-04 17:58:00
Woodlake	City	Tulare	california	36.4136009	-119.098999	1.99000001	55	Moderate air quality	pm25	2018-12-05 02:56:00	52.4300003	1	1014	1.55999994	0	2018-12-04 17:58:00
Woodland	City	Yolo	california	38.6785011	-121.773003	1.51999998	67	Moderate air quality	pm25	2018-12-05 03:00:00	48.1300011	1	1015	1.86000001	0	2018-12-04 17:58:00
Woodside	Town	San Mateo	california	37.4299011	-122.253998	1.66999996	72	Moderate air quality	pm25	2018-12-05 02:56:00	52.0499992	90	1013	1.5	0.50999999	2018-12-04 17:58:00
Yorba Linda	City	Orange	california	33.8885002	-117.813004	2.55999994	47	Good air quality	no2	2018-12-05 02:58:00	59.6500015	1	1015	2.0999999	0	2018-12-04 17:58:00
Yountville	Town	Napa	california	38.4015999	-122.361	1.52999997	29	Good air quality	pm25	2018-12-05 03:00:00	51.1699982	90	1013	2.5999999	0	2018-12-04 17:58:00
Yreka	City	Siskiyou	california	41.7354012	-122.634003	1.25	68	Moderate air quality	pm25	2018-12-05 01:56:00	34.8400002	90	1018	1.36000001	0	2018-12-04 17:58:00
Yuba City	City	Sutter	california	39.1403999	-121.616997	1.5	62	Moderate air quality	pm25	2018-12-05 03:00:00	47.1399994	1	1014	1.86000001	0	2018-12-04 17:58:00
Yucaipa	City	San Bernardino	california	34.0335999	-117.042999	2.6400001	47	Good air quality	pm25	2018-12-05 02:58:00	56.6399994	1	1015	3.5999999	0	2018-12-04 17:58:00
Yucca Valley	Town	San Bernardino	california	34.1142006	-116.431999	2.66000009	38	Good air quality	o3	2018-12-05 03:12:00	28.8400002	0	910.369995	1.30999994	0	2018-12-04 17:58:00
Adelanto	City	San Bernardino	california	34.5828018	-117.408997	2.48000002	32	Good air quality	pm25	2018-12-05 16:58:00	43.7900009	90	1016	2.01999998	0	2018-12-05 08:58:00
Agoura Hills	City	Los Angeles	california	34.1533012	-118.762001	2.5	36	Good air quality	pm25	2018-12-05 16:57:00	54.3699989	75	1014	5.69999981	0	2018-12-05 08:58:00
Alameda	City	Alameda	california	37.7652016	-122.241997	1.59000003	61	Moderate air quality	pm25	2018-12-05 17:15:00	51.3100014	90	1013	3.0999999	0.25	2018-12-05 08:58:00
Albany	City	Alameda	california	37.8869019	-122.297997	1.58000004	69	Moderate air quality	pm25	2018-12-05 17:15:00	51.1199989	90	1013	5.69999981	0.25	2018-12-05 08:58:00
Alhambra	City	Los Angeles	california	34.0952988	-118.126999	2.52999997	59	Moderate air quality	pm25	2018-12-05 16:58:00	52.2099991	90	1015	1.32000005	1.01999998	2018-12-05 08:58:00
Aliso Viejo	City	Orange	california	33.5685005	-117.725998	2.6400001	39	Good air quality	pm25	2018-12-05 17:15:00	51.5999985	90	1015	2.17000008	0.930000007	2018-12-05 08:58:00
Alturas	City	Modoc	california	41.4870987	-120.542	1.30999994	72	Moderate air quality	pm25	2018-12-05 16:55:00	30.0200005	90	1016	1.5	0	2018-12-05 08:58:00
Amador City	City	Amador	california	38.4193993	-120.823997	1.60000002	54	Moderate air quality	pm25	2018-12-05 17:15:00	50.0699997	90	1013	3.0999999	0	2018-12-05 08:58:00
American Canyon	City	Napa	california	38.1749001	-122.261002	1.53999996	35	Good air quality	pm25	2018-12-05 17:15:00	50.8499985	90	1013	2.67000008	0.25	2018-12-05 08:58:00
Anaheim	City	Orange	california	33.8366013	-117.914001	2.55999994	50	Good air quality	pm25	2018-12-05 16:58:00	52.1199989	90	1014	6.19999981	0.930000007	2018-12-05 08:58:00
Anderson	City	Shasta	california	40.4482002	-122.297997	1.37	73	Moderate air quality	pm25	2018-12-05 16:54:00	43.4700012	90	1016	1.5	0.50999999	2018-12-05 08:58:00
Angels Camp	City	Calaveras	california	38.0677986	-120.539001	1.63999999	64	Moderate air quality	pm25	2018-12-05 17:15:00	50.1100006	90	1014	1.5	0	2018-12-05 08:58:00
Antioch	City	Contra Costa	california	38.0049019	-121.806	1.54999995	65	Moderate air quality	pm25	2018-12-05 17:15:00	50.3100014	90	1014	2.0999999	0.25	2018-12-05 08:58:00
Apple Valley	Town	San Bernardino	california	34.5008011	-117.185997	2.5	29	Good air quality	pm25	2018-12-05 16:58:00	43.9700012	90	1016	2.5999999	1.26999998	2018-12-05 08:58:00
Arcadia	City	Los Angeles	california	34.1397018	-118.035004	2.52999997	48	Good air quality	pm25	2018-12-05 16:58:00	51.3499985	90	1015	1.32000005	1.01999998	2018-12-05 08:58:00
Arcata	City	Humboldt	california	40.8665009	-124.083	1.32000005	19	Good air quality	pm10	2018-12-05 16:55:00	49.0499992	1	1014	2.5999999	0	2018-12-05 08:58:00
Arroyo Grande	City	San Luis Obispo	california	35.1185989	-120.591003	2.11999989	37	Good air quality	pm25	2018-12-05 17:01:00	53.1100006	90	1012	1.5	0.75999999	2018-12-05 08:58:00
Artesia	City	Los Angeles	california	33.865799	-118.083	2.55999994	55	Moderate air quality	pm25	2018-12-05 16:58:00	52.5900002	90	1014	6.19999981	0.930000007	2018-12-05 08:58:00
Arvin	City	Kern	california	35.2018013	-118.833	2.21000004	26	Good air quality	pm10	2018-12-05 17:00:00	52.8400002	90	1012	5.0999999	0	2018-12-05 08:58:00
Atascadero	City	San Luis Obispo	california	35.489399	-120.670998	2.0999999	51	Moderate air quality	pm25	2018-12-05 17:01:00	52.3400002	90	1012	3.0999999	0.75999999	2018-12-05 08:58:00
Atherton	Town	San Mateo	california	37.4612999	-122.197998	1.69000006	82	Moderate air quality	pm25	2018-12-05 17:15:00	51.5099983	90	1012	2.0999999	0.25	2018-12-05 08:58:00
Atwater	City	Merced	california	37.3476982	-120.609001	1.73000002	80	Moderate air quality	pm25	2018-12-05 16:53:00	52.0200005	90	1013	3.0999999	0	2018-12-05 08:58:00
Auburn	City	Placer	california	38.8965988	-121.077003	1.54999995	46	Good air quality	pm25	2018-12-05 17:15:00	49.7799988	90	1014	3.5999999	0	2018-12-05 08:58:00
Avalon	City	Los Angeles	california	33.3428001	-118.328003	2.6099999	34	Good air quality	pm25	2018-12-05 16:58:00	53.2900009	90	1013	4.5999999	0.889999986	2018-12-05 08:58:00
Avenal	City	Kings	california	36.0041008	-120.128998	1.95000005	53	Moderate air quality	pm25	2018-12-05 16:56:00	51.2999992	90	1013	1.5	0.25	2018-12-05 08:58:00
Azusa	City	Los Angeles	california	34.1335983	-117.907997	2.54999995	56	Moderate air quality	pm25	2018-12-05 16:58:00	51.5800018	90	1015	2.5999999	1.10000002	2018-12-05 08:58:00
Bakersfield	City	Kern	california	35.3732986	-119.018997	2.1400001	55	Moderate air quality	pm25	2018-12-05 16:55:00	56.0499992	90	1012	5.0999999	0	2018-12-05 08:58:00
Baldwin Park	City	Los Angeles	california	34.0853004	-117.960999	2.54999995	59	Moderate air quality	pm25	2018-12-05 16:58:00	51.5800018	90	1015	4.5999999	1.10000002	2018-12-05 08:58:00
Banning	City	Riverside	california	33.9255981	-116.875999	2.69000006	27	Good air quality	pm25	2018-12-05 16:58:00	46.7599983	90	1015	1.07000005	1.14999998	2018-12-05 08:58:00
Barstow	City	San Bernardino	california	34.8958015	-117.016998	2.4000001	27	Good air quality	pm25	2018-12-05 17:20:00	43.4500008	75	1017	1	0	2018-12-05 08:58:00
Beaumont	City	Riverside	california	33.9295006	-116.976997	2.69000006	55	Moderate air quality	pm25	2018-12-05 17:15:00	48.4500008	90	1015	1.07000005	1.14999998	2018-12-05 08:58:00
Bell	City	Los Angeles	california	33.9775009	-118.186996	2.55999994	62	Moderate air quality	pm25	2018-12-05 16:58:00	52.5900002	90	1015	2.5999999	0.930000007	2018-12-05 08:58:00
Bell Gardens	City	Los Angeles	california	33.9653015	-118.151001	2.55999994	60	Moderate air quality	pm25	2018-12-05 16:58:00	52.5900002	90	1014	6.19999981	0.930000007	2018-12-05 08:58:00
Bellflower	City	Los Angeles	california	33.8816986	-118.116997	2.55999994	52	Moderate air quality	pm25	2018-12-05 16:58:00	52.5900002	90	1014	6.19999981	0.930000007	2018-12-05 08:58:00
Belmont	City	San Mateo	california	37.5201988	-122.276001	1.62	82	Moderate air quality	pm25	2018-12-05 17:15:00	51.3300018	90	1012	2.0999999	0.25	2018-12-05 08:58:00
Belvedere	City	Marin	california	37.8726997	-122.463997	1.58000004	39	Good air quality	pm25	2018-12-05 17:15:00	51.3300018	90	1013	4.67000008	0.25	2018-12-05 08:58:00
Benicia	City	Solano	california	38.0494003	-122.158997	1.55999994	40	Good air quality	pm25	2018-12-05 17:20:00	50.8600006	90	1013	4.67000008	0.25	2018-12-05 08:58:00
Berkeley	City	Alameda	california	37.8716011	-122.273003	1.58000004	70	Moderate air quality	pm25	2018-12-05 17:15:00	51.1300011	90	1013	4.67000008	0.25	2018-12-05 08:58:00
Beverly Hills	City	Los Angeles	california	34.0736008	-118.400002	2.5	55	Moderate air quality	pm25	2018-12-05 16:58:00	53.0400009	90	1015	4.5999999	1.01999998	2018-12-05 08:58:00
Big Bear Lake	City	San Bernardino	california	34.2439003	-116.911003	2.77999997	35	Good air quality	pm25	2018-12-05 16:58:00	43.9700012	90	1015	1.07000005	1.26999998	2018-12-05 08:58:00
Biggs	City	Butte	california	39.4123993	-121.712997	1.49000001	57	Moderate air quality	pm25	2018-12-05 17:15:00	48.3300018	90	1014	2.0999999	0	2018-12-05 08:58:00
Bishop	City	Inyo	california	37.3614006	-118.400002	1.96000004	55	Moderate air quality	pm25	2018-12-05 17:15:00	25.7000008	90	1015	0.970000029	0	2018-12-05 08:58:00
Blue Lake	City	Humboldt	california	40.8829002	-123.984001	1.32000005	16	Good air quality	o3	2018-12-05 16:55:00	49.0499992	1	1014	2.5999999	0	2018-12-05 08:58:00
Blythe	City	Riverside	california	33.6178017	-114.587997	2.63000011	42	Good air quality	pm25	2018-12-05 17:36:43	50.0699997	12	1002.35999	1.97000003	0	2018-12-05 08:58:00
Bradbury	City	Los Angeles	california	34.1469002	-117.971001	2.54999995	29	Good air quality	pm25	2018-12-05 16:58:00	51.3499985	90	1015	2.5999999	1.01999998	2018-12-05 08:58:00
Brawley	City	Imperial	california	32.9786987	-115.529999	2.73000002	76	Moderate air quality	pm25	2018-12-05 16:56:00	51.9799995	20	1016	2.0999999	0	2018-12-05 08:58:00
Brea	City	Orange	california	33.9165001	-117.900002	2.55999994	51	Moderate air quality	pm25	2018-12-05 16:58:00	52.2099991	90	1015	4.5999999	1.01999998	2018-12-05 08:58:00
Brentwood	City	Contra Costa	california	37.9319	-121.695999	1.60000002	68	Moderate air quality	pm25	2018-12-05 17:15:00	50.5200005	90	1014	2.0999999	0.25	2018-12-05 08:58:00
Brisbane	City	San Mateo	california	37.6808014	-122.400002	1.62	42	Good air quality	pm25	2018-12-05 17:15:00	51.5699997	90	1012	5.0999999	0.25	2018-12-05 08:58:00
Buellton	City	Santa Barbara	california	34.6136017	-120.193001	2.28999996	43	Good air quality	pm25	2018-12-05 17:01:00	55.4500008	90	1012	4.5999999	0.75999999	2018-12-05 08:58:00
Buena Park	City	Orange	california	33.8674011	-117.998001	2.55999994	58	Moderate air quality	pm25	2018-12-05 16:58:00	52.1199989	90	1015	4.5999999	0.930000007	2018-12-05 08:58:00
Burbank	City	Los Angeles	california	34.1808014	-118.308998	2.5	64	Moderate air quality	pm25	2018-12-05 16:58:00	51.6199989	90	1015	1.32000005	1.01999998	2018-12-05 08:58:00
Burlingame	City	San Mateo	california	37.5778999	-122.348	1.62	69	Moderate air quality	pm25	2018-12-05 17:15:00	51.2200012	90	1012	5.0999999	0.25	2018-12-05 08:58:00
Calabasas	City	Los Angeles	california	34.1366997	-118.661003	2.5	28	Good air quality	pm25	2018-12-05 16:58:00	53.7099991	90	1015	2.42000008	0	2018-12-05 08:58:00
Calexico	City	Imperial	california	32.6789017	-115.499001	2.75999999	80	Moderate air quality	pm25	2018-12-05 16:56:00	51.9799995	20	1016	2.0999999	0	2018-12-05 08:58:00
California City	City	Kern	california	35.1258011	-117.986	2.30999994	29	Good air quality	o3	2018-12-05 17:19:00	42.9300003	90	1016	1.16999996	0	2018-12-05 08:58:00
Calimesa	City	Riverside	california	34.0038986	-117.061996	2.6400001	59	Moderate air quality	pm25	2018-12-05 16:58:00	46.6699982	90	1015	1.07000005	1.14999998	2018-12-05 08:58:00
Calipatria	City	Imperial	california	33.1255989	-115.514	2.68000007	73	Moderate air quality	pm25	2018-12-05 16:56:00	51.9599991	20	1016	2.0999999	0	2018-12-05 08:58:00
Calistoga	City	Napa	california	38.5788002	-122.580002	1.50999999	55	Moderate air quality	pm25	2018-12-05 17:15:00	50.3199997	90	1013	5.69999981	0	2018-12-05 08:58:00
Camarillo	City	Ventura	california	34.2164001	-119.038002	2.46000004	61	Moderate air quality	pm25	2018-12-05 16:57:00	54.4599991	75	1014	5.69999981	0	2018-12-05 08:58:00
Campbell	City	Santa Clara	california	37.2872009	-121.949997	1.69000006	72	Moderate air quality	pm25	2018-12-05 17:15:00	51.9799995	90	1012	1.66999996	0.25	2018-12-05 08:58:00
Canyon Lake	City	Riverside	california	33.6850014	-117.273003	2.66000009	16	Good air quality	no2	2018-12-05 17:15:00	50.1300011	90	1015	2.47000003	1.10000002	2018-12-05 08:58:00
Capitola	City	Santa Cruz	california	36.9752007	-121.953003	1.75999999	69	Moderate air quality	pm25	2018-12-05 16:56:00	52.1800003	90	1012	1.66999996	0	2018-12-05 08:58:00
Carlsbad	City	San Diego	california	33.1581001	-117.350998	2.68000007	56	Moderate air quality	pm25	2018-12-05 17:15:00	54.8400002	90	1015	4.67000008	0	2018-12-05 08:58:00
Carmel-by-the-Sea	City	Monterey	california	36.5551987	-121.922997	1.80999994	53	Moderate air quality	pm25	2018-12-05 17:15:00	54.3699989	90	1011	1.5	0	2018-12-05 08:58:00
Carpinteria	City	Santa Barbara	california	34.3988991	-119.517998	2.38000011	31	Good air quality	o3	2018-12-05 16:57:00	58.6399994	90	1012	4.0999999	0	2018-12-05 08:58:00
Carson	City	Los Angeles	california	33.8316994	-118.281998	2.54999995	54	Moderate air quality	pm25	2018-12-05 16:58:00	52.5900002	90	1015	2.5999999	0.930000007	2018-12-05 08:58:00
Cathedral City	City	Riverside	california	33.7804985	-116.467003	2.63000011	29	Good air quality	pm25	2018-12-05 17:15:00	50.6100006	1	1016	1.07000005	0	2018-12-05 08:58:00
Ceres	City	Stanislaus	california	37.5948982	-120.958	1.66999996	86	Moderate air quality	pm25	2018-12-05 17:15:00	50.3100014	90	1013	4.17000008	0	2018-12-05 08:58:00
Cerritos	City	Los Angeles	california	33.8582993	-118.065002	2.55999994	49	Good air quality	pm25	2018-12-05 16:58:00	52.6100006	90	1014	6.19999981	0.930000007	2018-12-05 08:58:00
Chico	City	Butte	california	39.7285004	-121.836998	1.46000004	70	Moderate air quality	pm25	2018-12-05 16:54:00	46.9399986	90	1017	2.5999999	0.50999999	2018-12-05 08:58:00
Chino	City	San Bernardino	california	34.0121994	-117.689003	2.58999991	46	Good air quality	pm25	2018-12-05 16:58:00	52.4500008	90	1016	1.5	1.01999998	2018-12-05 08:58:00
Chino Hills	City	San Bernardino	california	33.9897995	-117.733002	2.5999999	35	Good air quality	pm25	2018-12-05 16:58:00	52.2299995	90	1016	1.5	1.01999998	2018-12-05 08:58:00
Chowchilla	City	Madera	california	37.1230011	-120.260002	1.79999995	63	Moderate air quality	pm25	2018-12-05 16:55:00	53.3100014	90	1014	2.0999999	0	2018-12-05 08:58:00
Chula Vista	City	San Diego	california	32.6400986	-117.084	2.73000002	82	Moderate air quality	pm25	2018-12-05 16:56:00	57.1599998	40	1015	3.5999999	0	2018-12-05 08:58:00
Citrus Heights	City	Sacramento	california	38.7070999	-121.280998	1.53999996	61	Moderate air quality	pm25	2018-12-05 17:20:00	49.7299995	90	1015	3.0999999	0	2018-12-05 08:58:00
Claremont	City	Los Angeles	california	34.0966988	-117.720001	2.58999991	57	Moderate air quality	pm25	2018-12-05 16:58:00	51.5999985	90	1015	2.5999999	1.10000002	2018-12-05 08:58:00
Clayton	City	Contra Costa	california	37.9410019	-121.935997	1.61000001	56	Moderate air quality	pm25	2018-12-05 17:20:00	50.8800011	90	1014	2.0999999	0.25	2018-12-05 08:58:00
Clearlake	City	Lake	california	38.9581985	-122.625999	1.5	41	Good air quality	pm25	2018-12-05 16:56:00	48.0200005	90	1014	2.0999999	0.25	2018-12-05 08:58:00
Cloverdale	City	Sonoma	california	38.8055	-123.016998	1.47000003	61	Moderate air quality	pm25	2018-12-05 16:56:00	48.0200005	90	1014	2.0999999	0.25	2018-12-05 08:58:00
Clovis	City	Fresno	california	36.8251991	-119.703003	1.88999999	53	Moderate air quality	pm25	2018-12-05 17:15:00	54.1599998	90	1013	3.0999999	0.25	2018-12-05 08:58:00
Coachella	City	Riverside	california	33.6803017	-116.174004	2.61999989	31	Good air quality	pm10	2018-12-05 17:15:00	53.5999985	1	1016	1.07000005	0	2018-12-05 08:58:00
Coalinga	City	Fresno	california	36.1397018	-120.360001	1.96000004	53	Moderate air quality	pm25	2018-12-05 16:56:00	51.3300018	90	1013	1.5	0.25	2018-12-05 08:58:00
Colfax	City	Placer	california	39.1007004	-120.953003	1.59000003	36	Good air quality	pm25	2018-12-05 17:15:00	49.8899994	90	1014	3.5999999	0	2018-12-05 08:58:00
Colma	Town	San Mateo	california	37.676899	-122.459999	1.62	61	Moderate air quality	pm25	2018-12-05 17:15:00	51.5699997	90	1012	5.0999999	0.25	2018-12-05 08:58:00
Colton	City	San Bernardino	california	34.0738983	-117.314003	2.56999993	55	Moderate air quality	pm25	2018-12-05 16:58:00	48.9900017	90	1015	0.970000029	1.10000002	2018-12-05 08:58:00
Colusa	City	Colusa	california	39.2142982	-122.009003	1.47000003	58	Moderate air quality	pm25	2018-12-05 17:15:00	50.3800011	90	1014	2.0999999	0	2018-12-05 08:58:00
Commerce	City	Los Angeles	california	34.0005989	-118.160004	2.52999997	60	Moderate air quality	pm25	2018-12-05 16:58:00	52.7400017	90	1014	6.19999981	1.01999998	2018-12-05 08:58:00
Compton	City	Los Angeles	california	33.8958015	-118.220001	2.55999994	65	Moderate air quality	pm25	2018-12-05 16:58:00	52.5900002	90	1015	2.5999999	0.930000007	2018-12-05 08:58:00
Concord	City	Contra Costa	california	37.9780006	-122.030998	1.59000003	72	Moderate air quality	pm25	2018-12-05 17:15:00	50.9500008	90	1014	1.5	0.25	2018-12-05 08:58:00
Corcoran	City	Kings	california	36.0979996	-119.559998	1.98000002	70	Moderate air quality	pm25	2018-12-05 17:15:00	53.6500015	90	1013	1.72000003	0.25	2018-12-05 08:58:00
Corning	City	Tehama	california	39.9277	-122.179001	1.44000006	48	Good air quality	pm25	2018-12-05 16:54:00	46.9399986	90	1017	2.5999999	0.50999999	2018-12-05 08:58:00
Corona	City	Riverside	california	33.8753014	-117.566002	2.5999999	42	Good air quality	pm25	2018-12-05 17:15:00	50.5400009	90	1016	1.5	1.10000002	2018-12-05 08:58:00
Coronado	City	San Diego	california	32.6859016	-117.182999	2.73000002	75	Moderate air quality	pm25	2018-12-05 16:56:00	55.6899986	75	1015	2.0999999	0	2018-12-05 08:58:00
Corte Madera	Town	Marin	california	37.925499	-122.527	1.57000005	47	Good air quality	pm25	2018-12-05 17:15:00	51.3499985	90	1013	4.67000008	0.25	2018-12-05 08:58:00
Costa Mesa	City	Orange	california	33.641201	-117.918999	2.58999991	55	Moderate air quality	pm25	2018-12-05 17:15:00	52.0200005	90	1015	2.5999999	0.930000007	2018-12-05 08:58:00
Cotati	City	Sonoma	california	38.3292999	-122.709999	1.51999998	61	Moderate air quality	pm25	2018-12-05 17:15:00	50.8100014	90	1013	5.69999981	0	2018-12-05 08:58:00
Covina	City	Los Angeles	california	34.0900002	-117.889999	2.54999995	58	Moderate air quality	pm25	2018-12-05 16:58:00	51.5800018	90	1015	2.5999999	1.10000002	2018-12-05 08:58:00
Crescent City	City	Del Norte	california	41.7556992	-124.203003	1.19000006	53	Moderate air quality	pm25	2018-12-05 16:56:00	46.8100014	20	1014	3.0999999	0	2018-12-05 08:58:00
Cudahy	City	Los Angeles	california	33.9606018	-118.184998	2.55999994	58	Moderate air quality	pm25	2018-12-05 16:58:00	52.5900002	90	1015	2.5999999	0.930000007	2018-12-05 08:58:00
Culver City	City	Los Angeles	california	34.0210991	-118.396004	2.5	63	Moderate air quality	pm25	2018-12-05 16:58:00	53.4399986	90	1015	4.5999999	0.889999986	2018-12-05 08:58:00
Cupertino	City	Santa Clara	california	37.3230019	-122.031998	1.69000006	71	Moderate air quality	pm25	2018-12-05 17:15:00	51.6899986	90	1012	2.0999999	0.25	2018-12-05 08:58:00
Cypress	City	Orange	california	33.8168983	-118.037003	2.55999994	43	Good air quality	pm25	2018-12-05 16:58:00	52.6100006	90	1014	6.19999981	0.930000007	2018-12-05 08:58:00
Daly City	City	San Mateo	california	37.6879005	-122.470001	1.62	68	Moderate air quality	pm25	2018-12-05 17:15:00	51.5699997	90	1012	5.0999999	0.25	2018-12-05 08:58:00
Dana Point	City	Orange	california	33.4672012	-117.697998	2.61999989	54	Moderate air quality	pm25	2018-12-05 17:15:00	50.8800011	90	1015	2.17000008	1.01999998	2018-12-05 08:58:00
Danville	Town	Contra Costa	california	37.8216019	-122	1.61000001	64	Moderate air quality	pm25	2018-12-05 17:15:00	50.8800011	90	1014	2.0999999	0.25	2018-12-05 08:58:00
Davis	City	Yolo	california	38.544899	-121.740997	1.52999997	70	Moderate air quality	pm25	2018-12-05 17:20:00	50.2200012	90	1014	5.0999999	0	2018-12-05 08:58:00
Del Mar	City	San Diego	california	32.9594994	-117.264999	2.73000002	55	Moderate air quality	pm25	2018-12-05 17:15:00	55.2900009	90	1015	1.41999996	0	2018-12-05 08:58:00
Del Rey Oaks	City	Monterey	california	36.5932999	-121.834999	1.80999994	27	Good air quality	pm25	2018-12-05 17:15:00	54.3699989	90	1011	1.5	0	2018-12-05 08:58:00
Delano	City	Kern	california	35.7687988	-119.247002	2.04999995	47	Good air quality	pm25	2018-12-05 17:15:00	54.9700012	90	1013	1.72000003	0	2018-12-05 08:58:00
Desert Hot Springs	City	Riverside	california	33.9611015	-116.501999	2.69000006	40	Good air quality	pm25	2018-12-05 17:35:45	43.8600006	92	908.409973	1.16999996	0	2018-12-05 08:58:00
Diamond Bar	City	Los Angeles	california	34.0285988	-117.809998	2.54999995	58	Moderate air quality	pm25	2018-12-05 16:58:00	52.2299995	90	1015	2.5999999	1.01999998	2018-12-05 08:58:00
Dinuba	City	Tulare	california	36.5433006	-119.387001	1.94000006	54	Moderate air quality	pm25	2018-12-05 17:15:00	54	90	1013	3.0999999	0.25	2018-12-05 08:58:00
Dixon	City	Solano	california	38.4454994	-121.822998	1.53999996	66	Moderate air quality	pm25	2018-12-05 17:20:00	50.2299995	90	1014	5.0999999	0	2018-12-05 08:58:00
Dorris	City	Siskiyou	california	41.9673996	-121.917999	1.23000002	41	Good air quality	pm25	2018-12-05 16:53:00	31.2099991	90	1016	4.0999999	0	2018-12-05 08:58:00
Dos Palos	City	Merced	california	36.9860992	-120.626999	1.82000005	60	Moderate air quality	pm25	2018-12-05 16:53:00	52.6500015	90	1013	3.0999999	0	2018-12-05 08:58:00
Downey	City	Los Angeles	california	33.9401016	-118.133003	2.55999994	58	Moderate air quality	pm25	2018-12-05 16:58:00	52.5900002	90	1014	6.19999981	0.930000007	2018-12-05 08:58:00
Duarte	City	Los Angeles	california	34.1394997	-117.976997	2.54999995	56	Moderate air quality	pm25	2018-12-05 16:58:00	52.2299995	90	1015	2.5999999	1.01999998	2018-12-05 08:58:00
Dublin	City	Alameda	california	37.7022018	-121.935997	1.64999998	68	Moderate air quality	pm25	2018-12-05 17:15:00	51.0800018	90	1014	2.0999999	0.25	2018-12-05 08:58:00
Dunsmuir	City	Siskiyou	california	41.2081985	-122.272003	1.32000005	63	Moderate air quality	pm25	2018-12-05 17:10:00	35.6500015	90	1016	1.07000005	0.25	2018-12-05 08:58:00
East Palo Alto	City	San Mateo	california	37.4687996	-122.140999	1.69000006	82	Moderate air quality	pm25	2018-12-05 17:15:00	51.6599998	90	1012	2.0999999	0.25	2018-12-05 08:58:00
Eastvale	City	Riverside	california	33.9524994	-117.584999	2.5999999	30	Good air quality	pm10	2018-12-05 16:58:00	50.9500008	90	1016	1.5	1.10000002	2018-12-05 08:58:00
El Cajon	City	San Diego	california	32.7947998	-116.962997	2.76999998	78	Moderate air quality	pm25	2018-12-05 17:15:00	55.5400009	5	1016	1.41999996	0	2018-12-05 08:58:00
El Centro	City	Imperial	california	32.7919998	-115.563004	2.73000002	48	Good air quality	pm25	2018-12-05 16:56:00	51.9799995	1	1016	1.5	0	2018-12-05 08:58:00
El Cerrito	City	Contra Costa	california	37.9160995	-122.310997	1.58000004	64	Moderate air quality	pm25	2018-12-05 17:15:00	51.0600014	90	1013	4.67000008	0.25	2018-12-05 08:58:00
El Monte	City	Los Angeles	california	34.0685997	-118.028	2.52999997	61	Moderate air quality	pm25	2018-12-05 16:58:00	52.2099991	90	1015	4.5999999	1.01999998	2018-12-05 08:58:00
El Segundo	City	Los Angeles	california	33.9192009	-118.416	2.54999995	58	Moderate air quality	pm25	2018-12-05 16:58:00	53.4399986	90	1015	4.5999999	0.889999986	2018-12-05 08:58:00
Elk Grove	City	Sacramento	california	38.4087982	-121.372002	1.54999995	70	Moderate air quality	pm25	2018-12-05 17:20:00	49.8400002	90	1014	5.0999999	0	2018-12-05 08:58:00
Emeryville	City	Alameda	california	37.8312988	-122.285004	1.58000004	58	Moderate air quality	pm25	2018-12-05 17:15:00	51.1699982	90	1013	4.67000008	0.25	2018-12-05 08:58:00
Encinitas	City	San Diego	california	33.0369987	-117.292	2.68000007	56	Moderate air quality	pm25	2018-12-05 17:15:00	55.2900009	90	1015	1.41999996	0	2018-12-05 08:58:00
Escalon	City	San Joaquin	california	37.7974014	-120.997002	1.63	85	Moderate air quality	pm25	2018-12-05 17:15:00	50.4099998	90	1013	4.17000008	0	2018-12-05 08:58:00
Escondido	City	San Diego	california	33.1192017	-117.085999	2.71000004	61	Moderate air quality	pm25	2018-12-05 17:15:00	55.3100014	90	1015	1.41999996	0	2018-12-05 08:58:00
Etna	City	Siskiyou	california	41.4567986	-122.894997	1.29999995	52	Moderate air quality	pm25	2018-12-05 17:10:00	35.6500015	1	1016	0.970000029	0.25	2018-12-05 08:58:00
Eureka	City	Humboldt	california	40.8021011	-124.164001	1.32000005	41	Good air quality	pm25	2018-12-05 16:55:00	49.1500015	1	1014	2.5999999	0	2018-12-05 08:58:00
Exeter	City	Tulare	california	36.2961006	-119.141998	1.99000001	55	Moderate air quality	pm25	2018-12-05 17:15:00	53.9799995	90	1013	3.0999999	0	2018-12-05 08:58:00
Fairfax	Town	Marin	california	37.9870987	-122.588997	1.57000005	33	Good air quality	pm25	2018-12-05 17:15:00	51.5800018	90	1013	4.67000008	0.25	2018-12-05 08:58:00
Fairfield	City	Solano	california	38.2494011	-122.040001	1.55999994	54	Moderate air quality	pm25	2018-12-05 17:15:00	50.2700005	90	1014	8.19999981	0.25	2018-12-05 08:58:00
Farmersville	City	Tulare	california	36.297699	-119.207001	1.99000001	57	Moderate air quality	pm25	2018-12-05 17:15:00	53.8499985	90	1013	3.0999999	0.25	2018-12-05 08:58:00
Ferndale	City	Humboldt	california	40.5761986	-124.264	1.33000004	29	Good air quality	o3	2018-12-05 16:55:00	49.4799995	75	1014	3.0999999	0	2018-12-05 08:58:00
Fillmore	City	Ventura	california	34.3992004	-118.917999	2.43000007	26	Good air quality	o3	2018-12-05 16:57:00	54.5200005	75	1014	5.69999981	0	2018-12-05 08:58:00
Firebaugh	City	Fresno	california	36.858799	-120.456001	1.83000004	75	Moderate air quality	pm25	2018-12-05 16:55:00	53.3100014	90	1014	2.0999999	0	2018-12-05 08:58:00
Folsom	City	Sacramento	california	38.6780014	-121.176003	1.55999994	67	Moderate air quality	pm25	2018-12-05 17:20:00	49.7999992	90	1015	3.0999999	0	2018-12-05 08:58:00
Fontana	City	San Bernardino	california	34.0922012	-117.434998	2.56999993	54	Moderate air quality	pm25	2018-12-05 16:58:00	49.5	90	1015	0.970000029	1.10000002	2018-12-05 08:58:00
Fort Bragg	City	Mendocino	california	39.4457016	-123.805	1.44000006	46	Good air quality	pm25	2018-12-05 16:56:00	48.0200005	90	1014	2.0999999	0.25	2018-12-05 08:58:00
Fort Jones	City	Siskiyou	california	41.6076012	-122.839996	1.25999999	53	Moderate air quality	pm25	2018-12-05 16:56:00	33.9799995	90	1017	0.970000029	0.25	2018-12-05 08:58:00
Fortuna	City	Humboldt	california	40.5982018	-124.156998	1.34000003	29	Good air quality	pm25	2018-12-05 16:55:00	49.4799995	75	1014	3.0999999	0	2018-12-05 08:58:00
Foster City	City	San Mateo	california	37.5584984	-122.271004	1.62	74	Moderate air quality	pm25	2018-12-05 17:15:00	51.2200012	90	1012	5.0999999	0.25	2018-12-05 08:58:00
Fountain Valley	City	Orange	california	33.7089996	-117.954002	2.58999991	54	Moderate air quality	pm25	2018-12-05 16:58:00	52.2999992	90	1014	6.19999981	0.930000007	2018-12-05 08:58:00
Fowler	City	Fresno	california	36.6305008	-119.678001	1.91999996	54	Moderate air quality	pm25	2018-12-05 17:15:00	54.1599998	90	1013	3.0999999	0.25	2018-12-05 08:58:00
Fremont	City	Alameda	california	37.5483017	-121.988998	1.64999998	54	Moderate air quality	pm25	2018-12-05 17:15:00	51.5299988	90	1014	2.0999999	0.25	2018-12-05 08:58:00
Fresno	City	Fresno	california	36.7378006	-119.787003	1.90999997	72	Moderate air quality	pm25	2018-12-05 17:15:00	54.1599998	90	1013	3.0999999	0.25	2018-12-05 08:58:00
Fullerton	City	Orange	california	33.8703995	-117.924004	2.55999994	51	Moderate air quality	pm25	2018-12-05 16:58:00	52.1199989	90	1015	4.5999999	0.930000007	2018-12-05 08:58:00
Galt	City	Sacramento	california	38.2546005	-121.300003	1.54999995	74	Moderate air quality	pm25	2018-12-05 17:20:00	49.7999992	90	1014	5.0999999	0	2018-12-05 08:58:00
Garden Grove	City	Orange	california	33.7742996	-117.938004	2.55999994	49	Good air quality	pm25	2018-12-05 16:58:00	52.1199989	90	1014	6.19999981	0.930000007	2018-12-05 08:58:00
Gardena	City	Los Angeles	california	33.8883018	-118.308998	2.54999995	60	Moderate air quality	pm25	2018-12-05 16:58:00	52.5900002	90	1015	2.5999999	0.930000007	2018-12-05 08:58:00
Gilroy	City	Santa Clara	california	37.0057983	-121.568001	1.75999999	64	Moderate air quality	pm25	2018-12-05 17:10:00	52.6599998	90	1013	1.66999996	0	2018-12-05 08:58:00
Glendale	City	Los Angeles	california	34.1425018	-118.254997	2.5	59	Moderate air quality	pm25	2018-12-05 16:58:00	51.3499985	90	1015	1.32000005	1.01999998	2018-12-05 08:58:00
Glendora	City	Los Angeles	california	34.1361008	-117.864998	2.54999995	57	Moderate air quality	pm25	2018-12-05 16:58:00	51.5800018	90	1015	2.5999999	1.10000002	2018-12-05 08:58:00
Goleta	City	Santa Barbara	california	34.4357986	-119.828003	2.33999991	42	Good air quality	pm25	2018-12-05 16:56:00	58.3199997	90	1012	4.0999999	0	2018-12-05 08:58:00
Gonzales	City	Monterey	california	36.5065994	-121.444	1.85000002	59	Moderate air quality	pm25	2018-12-05 17:15:00	54.3699989	90	1012	4.0999999	0	2018-12-05 08:58:00
Grand Terrace	City	San Bernardino	california	34.0339012	-117.314003	2.56999993	52	Moderate air quality	pm25	2018-12-05 16:58:00	48.9900017	90	1015	0.970000029	1.10000002	2018-12-05 08:58:00
Grass Valley	City	Nevada	california	39.219101	-121.060997	1.54999995	55	Moderate air quality	pm25	2018-12-05 17:15:00	49.5499992	90	1014	3.5999999	0	2018-12-05 08:58:00
Greenfield	City	Monterey	california	36.3208008	-121.244003	1.89999998	60	Moderate air quality	pm25	2018-12-05 17:15:00	55.0600014	90	1012	4.0999999	0	2018-12-05 08:58:00
Gridley	City	Butte	california	39.3638	-121.694	1.49000001	58	Moderate air quality	pm25	2018-12-05 17:15:00	48.3100014	90	1014	2.0999999	0	2018-12-05 08:58:00
Grover Beach	City	San Luis Obispo	california	35.1216011	-120.621002	2.11999989	33	Good air quality	o3	2018-12-05 17:01:00	53.1100006	90	1012	1.5	0.75999999	2018-12-05 08:58:00
Guadalupe	City	Santa Barbara	california	34.9715996	-120.571999	2.18000007	35	Good air quality	o3	2018-12-05 17:01:00	54.2099991	90	1012	6.19999981	0.75999999	2018-12-05 08:58:00
Gustine	City	Merced	california	37.2577019	-120.999001	1.72000003	71	Moderate air quality	pm25	2018-12-05 17:15:00	52.7000008	90	1012	4.0999999	0	2018-12-05 08:58:00
Half Moon Bay	City	San Mateo	california	37.4636002	-122.429001	1.66999996	56	Moderate air quality	pm25	2018-12-05 16:56:00	51.4799995	90	1012	5.0999999	0.25	2018-12-05 08:58:00
Hanford	City	Kings	california	36.3274002	-119.646004	1.95000005	57	Moderate air quality	pm10	2018-12-05 17:35:00	54.0099983	20	1013	3.5999999	0.25	2018-12-05 08:58:00
Hawaiian Gardens	City	Los Angeles	california	33.8314018	-118.072998	2.55999994	56	Moderate air quality	pm25	2018-12-05 16:58:00	52.5900002	90	1014	6.19999981	0.930000007	2018-12-05 08:58:00
Hawthorne	City	Los Angeles	california	33.9164009	-118.352997	2.54999995	60	Moderate air quality	pm25	2018-12-05 16:58:00	52.5900002	90	1015	2.5999999	0.930000007	2018-12-05 08:58:00
Hayward	City	Alameda	california	37.6688004	-122.081001	1.62	71	Moderate air quality	pm25	2018-12-05 17:15:00	51.1500015	90	1012	5.0999999	0.25	2018-12-05 08:58:00
Healdsburg	City	Sonoma	california	38.6105003	-122.869003	1.48000002	62	Moderate air quality	pm25	2018-12-05 17:15:00	50.8600006	90	1013	5.69999981	0.25	2018-12-05 08:58:00
Hemet	City	Riverside	california	33.7475014	-116.972	2.72000003	50	Good air quality	pm25	2018-12-05 17:35:00	48.1599998	90	1016	2.47000003	1.14999998	2018-12-05 08:58:00
Hercules	City	Contra Costa	california	38.0171013	-122.289001	1.53999996	39	Good air quality	pm25	2018-12-05 17:15:00	51.0600014	90	1013	4.67000008	0.25	2018-12-05 08:58:00
Hermosa Beach	City	Los Angeles	california	33.8622017	-118.400002	2.54999995	61	Moderate air quality	pm25	2018-12-05 16:58:00	53.0200005	90	1015	4.5999999	0.889999986	2018-12-05 08:58:00
Hesperia	City	San Bernardino	california	34.4263992	-117.301003	2.56999993	33	Good air quality	pm25	2018-12-05 16:58:00	45.5900002	90	1015	0.970000029	1.14999998	2018-12-05 08:58:00
Hidden Hills	City	Los Angeles	california	34.1603012	-118.652	2.5	28	Good air quality	pm25	2018-12-05 16:58:00	53.7099991	90	1015	2.42000008	0	2018-12-05 08:58:00
Highland	City	San Bernardino	california	34.1282997	-117.209	2.6400001	54	Moderate air quality	pm25	2018-12-05 17:35:00	46.2000008	90	1016	1.07000005	1.14999998	2018-12-05 08:58:00
Hillsborough	Town	San Mateo	california	37.5741005	-122.378998	1.62	52	Moderate air quality	pm25	2018-12-05 17:15:00	51.3300018	90	1012	5.0999999	0.25	2018-12-05 08:58:00
Hollister	City	San Benito	california	36.8525009	-121.402	1.78999996	62	Moderate air quality	pm25	2018-12-05 17:15:00	53.9099998	90	1012	4.0999999	0	2018-12-05 08:58:00
Holtville	City	Imperial	california	32.8111992	-115.379997	2.73000002	84	Moderate air quality	pm25	2018-12-05 16:56:00	51.9799995	1	1016	1.5	0	2018-12-05 08:58:00
Hughson	City	Stanislaus	california	37.6026993	-120.865997	1.66999996	75	Moderate air quality	pm25	2018-12-05 17:10:00	50.3600006	90	1013	2.01999998	0	2018-12-05 08:58:00
Huntington Beach	City	Orange	california	33.6595001	-117.999001	2.58999991	55	Moderate air quality	pm25	2018-12-05 16:58:00	52.8400002	90	1014	6.19999981	0.930000007	2018-12-05 08:58:00
Huntington Park	City	Los Angeles	california	33.9817009	-118.224998	2.55999994	65	Moderate air quality	pm25	2018-12-05 16:58:00	52.5900002	90	1015	2.5999999	0.930000007	2018-12-05 08:58:00
Huron	City	Fresno	california	36.2027016	-120.102997	1.95000005	57	Moderate air quality	pm10	2018-12-05 16:56:00	53.4599991	90	1013	1.5	0.25	2018-12-05 08:58:00
Imperial	City	Imperial	california	32.847599	-115.569	2.73000002	68	Moderate air quality	pm25	2018-12-05 16:56:00	51.9799995	1	1016	1.5	0	2018-12-05 08:58:00
Imperial Beach	City	San Diego	california	32.5839005	-117.112999	2.73000002	90	Moderate air quality	pm25	2018-12-05 16:56:00	57.9000015	40	1015	3.5999999	0	2018-12-05 08:58:00
Indian Wells	City	Riverside	california	33.7176018	-116.341003	2.71000004	24	Good air quality	pm10	2018-12-05 17:15:00	53.5999985	1	1016	1.07000005	0	2018-12-05 08:58:00
Indio	City	Riverside	california	33.7206001	-116.216003	2.61999989	52	Moderate air quality	pm25	2018-12-05 17:15:00	53.5999985	1	1016	1.07000005	0	2018-12-05 08:58:00
Industry	City	Los Angeles	california	34.0196991	-117.959	2.54999995	54	Moderate air quality	pm25	2018-12-05 16:58:00	51.5699997	90	1015	4.5999999	1.10000002	2018-12-05 08:58:00
Inglewood	City	Los Angeles	california	33.9617004	-118.352997	2.54999995	65	Moderate air quality	pm25	2018-12-05 16:58:00	52.5900002	90	1015	2.5999999	0.930000007	2018-12-05 08:58:00
Ione	City	Amador	california	38.3526993	-120.932999	1.60000002	67	Moderate air quality	pm25	2018-12-05 17:15:00	49.5299988	90	1013	3.0999999	0	2018-12-05 08:58:00
Irvine	City	Orange	california	33.6846008	-117.827003	2.58999991	46	Good air quality	no2	2018-12-05 17:35:00	51.5099983	90	1016	2.17000008	0.930000007	2018-12-05 08:58:00
Irwindale	City	Los Angeles	california	34.1069984	-117.934998	2.54999995	51	Moderate air quality	pm25	2018-12-05 16:58:00	51.5800018	90	1015	2.5999999	1.10000002	2018-12-05 08:58:00
Isleton	City	Sacramento	california	38.1618996	-121.612	1.55999994	51	Moderate air quality	pm25	2018-12-05 17:20:00	49.9500008	90	1014	5.0999999	0	2018-12-05 08:58:00
Jackson	City	Amador	california	38.3488007	-120.774002	1.60000002	55	Moderate air quality	pm25	2018-12-05 17:15:00	50.3800011	90	1013	3.0999999	0	2018-12-05 08:58:00
Jurupa Valley	City	Riverside	california	33.9972	-117.485001	2.5999999	54	Moderate air quality	pm25	2018-12-05 17:35:00	49.8600006	90	1016	0.970000029	1.10000002	2018-12-05 08:58:00
Kerman	City	Fresno	california	36.7235985	-120.059998	1.87	62	Moderate air quality	pm25	2018-12-05 17:35:00	54.0099983	20	1013	3.5999999	0.25	2018-12-05 08:58:00
King City	City	Monterey	california	36.2126999	-121.125999	1.92999995	65	Moderate air quality	pm25	2018-12-05 16:53:00	53.0600014	90	1011	9.80000019	0	2018-12-05 08:58:00
Kingsburg	City	Fresno	california	36.5138016	-119.554001	1.91999996	56	Moderate air quality	pm25	2018-12-05 17:35:00	54.0099983	20	1013	3.5999999	0.25	2018-12-05 08:58:00
La CaÃ±ada Flintridge	City	Los Angeles	california	34.2067986	-118.199997	2.52999997	58	Moderate air quality	pm25	2018-12-05 16:58:00	51.3499985	90	1015	1.32000005	1.01999998	2018-12-05 08:58:00
La Habra	City	Orange	california	33.9319	-117.945999	2.55999994	49	Good air quality	pm25	2018-12-05 16:58:00	52.2099991	90	1015	4.5999999	1.01999998	2018-12-05 08:58:00
La Habra Heights	City	Los Angeles	california	33.9608002	-117.950996	2.55999994	36	Good air quality	pm25	2018-12-05 16:58:00	52.2099991	90	1015	4.5999999	1.01999998	2018-12-05 08:58:00
La Mesa	City	San Diego	california	32.7677994	-117.023003	2.72000003	78	Moderate air quality	pm25	2018-12-05 17:15:00	55.5400009	90	1015	2.5999999	0	2018-12-05 08:58:00
La Mirada	City	Los Angeles	california	33.9171982	-118.012001	2.55999994	53	Moderate air quality	pm25	2018-12-05 16:58:00	52.1199989	90	1015	4.5999999	0.930000007	2018-12-05 08:58:00
La Palma	City	Orange	california	33.8462982	-118.045998	2.55999994	42	Good air quality	pm25	2018-12-05 16:58:00	52.5900002	90	1014	6.19999981	0.930000007	2018-12-05 08:58:00
La Puente	City	Los Angeles	california	34.0200005	-117.949997	2.54999995	49	Good air quality	pm25	2018-12-05 16:58:00	51.5699997	90	1015	4.5999999	1.10000002	2018-12-05 08:58:00
La Quinta	City	Riverside	california	33.6633987	-116.309998	2.71000004	25	Good air quality	pm10	2018-12-05 17:15:00	53.5999985	1	1016	1.07000005	0	2018-12-05 08:58:00
La Verne	City	Los Angeles	california	34.1007996	-117.767998	2.54999995	54	Moderate air quality	pm25	2018-12-05 16:58:00	51.5800018	90	1015	2.5999999	1.10000002	2018-12-05 08:58:00
Lafayette	City	Contra Costa	california	37.8857994	-122.117996	1.59000003	54	Moderate air quality	pm25	2018-12-05 17:15:00	51.1699982	90	1014	2.0999999	0.25	2018-12-05 08:58:00
Laguna Beach	City	Orange	california	33.5427017	-117.785004	2.58999991	55	Moderate air quality	pm25	2018-12-05 17:35:00	51.2400017	90	1016	2.17000008	1.01999998	2018-12-05 08:58:00
Laguna Hills	City	Orange	california	33.5915985	-117.698997	2.6400001	39	Good air quality	pm25	2018-12-05 17:35:00	50.9900017	90	1016	2.17000008	1.01999998	2018-12-05 08:58:00
Laguna Niguel	City	Orange	california	33.5237007	-117.714996	2.6400001	52	Moderate air quality	pm25	2018-12-05 17:35:00	50.7599983	90	1016	2.17000008	1.01999998	2018-12-05 08:58:00
Laguna Woods	City	Orange	california	33.610199	-117.724998	2.6400001	48	Good air quality	no2	2018-12-05 17:35:00	51.2400017	90	1016	2.17000008	1.01999998	2018-12-05 08:58:00
Lake Elsinore	City	Riverside	california	33.6680984	-117.327003	2.66000009	41	Good air quality	pm25	2018-12-05 17:15:00	50.3600006	90	1015	2.17000008	1.10000002	2018-12-05 08:58:00
Lake Forest	City	Orange	california	33.6469002	-117.685997	2.6400001	33	Good air quality	pm10	2018-12-05 17:35:00	51.2599983	90	1016	2.17000008	1.10000002	2018-12-05 08:58:00
Lakeport	City	Lake	california	39.0429001	-122.916	1.47000003	67	Moderate air quality	pm25	2018-12-05 16:56:00	48.0200005	90	1014	2.0999999	0.25	2018-12-05 08:58:00
Lakewood	City	Los Angeles	california	33.8535995	-118.134003	2.55999994	55	Moderate air quality	pm25	2018-12-05 16:58:00	52.5900002	90	1014	6.19999981	0.930000007	2018-12-05 08:58:00
Lancaster	City	Los Angeles	california	34.6867981	-118.153999	2.44000006	26	Good air quality	pm25	2018-12-05 17:19:00	45.1800003	90	1016	1.57000005	0	2018-12-05 08:58:00
Larkspur	City	Marin	california	37.9341011	-122.535004	1.57000005	33	Good air quality	pm25	2018-12-05 17:15:00	51.3499985	90	1013	4.67000008	0.25	2018-12-05 08:58:00
Lathrop	City	San Joaquin	california	37.8227005	-121.277	1.61000001	64	Moderate air quality	pm25	2018-12-05 17:15:00	50	90	1014	2.0999999	0	2018-12-05 08:58:00
Lawndale	City	Los Angeles	california	33.8871994	-118.352997	2.54999995	61	Moderate air quality	pm25	2018-12-05 16:58:00	52.5900002	90	1015	2.5999999	0.930000007	2018-12-05 08:58:00
Lemon Grove	City	San Diego	california	32.7425003	-117.030998	2.73000002	77	Moderate air quality	pm25	2018-12-05 16:56:00	55.6899986	90	1015	2.5999999	0	2018-12-05 08:58:00
Lemoore	City	Kings	california	36.3008003	-119.782997	1.94000006	60	Moderate air quality	pm10	2018-12-05 17:35:00	54.0299988	20	1013	3.5999999	0.25	2018-12-05 08:58:00
Lincoln	City	Placer	california	38.8916016	-121.292999	1.51999998	70	Moderate air quality	pm25	2018-12-05 17:20:00	49.6199989	90	1014	2.0999999	0	2018-12-05 08:58:00
Lindsay	City	Tulare	california	36.2029991	-119.087997	2.01999998	52	Moderate air quality	pm25	2018-12-05 17:15:00	54	1	1013	2.5999999	0	2018-12-05 08:58:00
Live Oak	City	Sutter	california	39.2756996	-121.660004	1.49000001	68	Moderate air quality	pm25	2018-12-05 17:15:00	49.9500008	90	1014	2.0999999	0	2018-12-05 08:58:00
Livermore	City	Alameda	california	37.6819	-121.767998	1.64999998	69	Moderate air quality	pm25	2018-12-05 17:15:00	51.1899986	90	1014	2.0999999	0.25	2018-12-05 08:58:00
Livingston	City	Merced	california	37.3869019	-120.723999	1.73000002	76	Moderate air quality	pm25	2018-12-05 16:53:00	52.0299988	90	1013	3.0999999	0	2018-12-05 08:58:00
Loma Linda	City	San Bernardino	california	34.0483017	-117.261002	2.56999993	54	Moderate air quality	pm25	2018-12-05 17:35:00	48.7200012	90	1016	1.07000005	1.10000002	2018-12-05 08:58:00
Lomita	City	Los Angeles	california	33.7921982	-118.315002	2.54999995	37	Good air quality	pm25	2018-12-05 16:58:00	52.5900002	90	1014	2.0999999	0.930000007	2018-12-05 08:58:00
Lompoc	City	Santa Barbara	california	34.6390991	-120.458	2.26999998	46	Good air quality	pm25	2018-12-05 17:01:00	55.1800003	90	1012	4.5999999	0.75999999	2018-12-05 08:58:00
Long Beach	City	Los Angeles	california	33.7700996	-118.194	2.55999994	68	Moderate air quality	pm25	2018-12-05 16:58:00	52.5900002	90	1014	6.19999981	0.930000007	2018-12-05 08:58:00
Loomis	Town	Placer	california	38.8213005	-121.193001	1.54999995	67	Moderate air quality	pm25	2018-12-05 17:20:00	49.7999992	90	1014	2.0999999	0	2018-12-05 08:58:00
Los Alamitos	City	Orange	california	33.8031998	-118.071999	2.55999994	56	Moderate air quality	pm25	2018-12-05 16:58:00	52.5900002	90	1014	6.19999981	0.930000007	2018-12-05 08:58:00
Los Altos	City	Santa Clara	california	37.3852005	-122.113998	1.69000006	71	Moderate air quality	pm25	2018-12-05 17:41:00	51.6399994	90	1013	3.0999999	0.25	2018-12-05 08:58:00
Los Altos Hills	Town	Santa Clara	california	37.3796997	-122.137001	1.69000006	60	Moderate air quality	pm25	2018-12-05 17:15:00	51.6599998	90	1012	2.0999999	0.25	2018-12-05 08:58:00
Los Angeles	City	Los Angeles	california	34.0522003	-118.244003	2.52999997	69	Moderate air quality	pm25	2018-12-05 16:58:00	52.2099991	90	1015	1.32000005	1.01999998	2018-12-05 08:58:00
Los Banos	City	Merced	california	37.0583	-120.849998	1.76999998	60	Moderate air quality	pm25	2018-12-05 17:15:00	53.0999985	90	1012	4.0999999	0	2018-12-05 08:58:00
Los Gatos	Town	Santa Clara	california	37.2358017	-121.961998	1.75	61	Moderate air quality	pm25	2018-12-05 17:41:00	52.1199989	90	1013	3.0999999	0.25	2018-12-05 08:58:00
Loyalton	City	Sierra	california	39.6763	-120.240997	1.65999997	39	Good air quality	pm25	2018-12-05 17:35:00	27.6299992	90	1016	2.5999999	0	2018-12-05 08:58:00
Lynwood	City	Los Angeles	california	33.9303017	-118.210999	2.55999994	61	Moderate air quality	pm25	2018-12-05 16:58:00	52.5900002	90	1015	2.5999999	0.930000007	2018-12-05 08:58:00
Madera	City	Madera	california	36.9612999	-120.060997	1.84000003	78	Moderate air quality	pm25	2018-12-05 17:35:00	53.6399994	20	1013	3.5999999	0	2018-12-05 08:58:00
Malibu	City	Los Angeles	california	34.0259018	-118.779999	2.5	28	Good air quality	pm25	2018-12-05 16:57:00	54.3699989	75	1014	5.69999981	0	2018-12-05 08:58:00
Mammoth Lakes	Town	Mono	california	37.6484985	-118.972	1.97000003	40	Good air quality	pm25	2018-12-05 17:15:00	25.7000008	90	1015	0.870000005	0	2018-12-05 08:58:00
Manhattan Beach	City	Los Angeles	california	33.8847008	-118.411003	2.54999995	56	Moderate air quality	pm25	2018-12-05 16:58:00	53.0200005	90	1015	4.5999999	0.889999986	2018-12-05 08:58:00
Manteca	City	San Joaquin	california	37.7974014	-121.216003	1.62	82	Moderate air quality	pm25	2018-12-05 17:15:00	50	90	1014	2.0999999	0	2018-12-05 08:58:00
Maricopa	City	Kern	california	35.0588989	-119.401001	2.18000007	38	Good air quality	pm25	2018-12-05 16:54:00	60.0800018	90	1012	5.0999999	0	2018-12-05 08:58:00
Marina	City	Monterey	california	36.6843987	-121.802002	1.80999994	52	Moderate air quality	pm25	2018-12-05 17:15:00	54.3699989	90	1012	4.0999999	0	2018-12-05 08:58:00
Martinez	City	Contra Costa	california	38.0194016	-122.134003	1.55999994	63	Moderate air quality	pm25	2018-12-05 17:41:00	50.8600006	90	1013	3.0999999	0.25	2018-12-05 08:58:00
Marysville	City	Yuba	california	39.1456985	-121.591003	1.5	77	Moderate air quality	pm25	2018-12-05 17:15:00	49.9599991	90	1014	2.0999999	0	2018-12-05 08:58:00
Maywood	City	Los Angeles	california	33.9866982	-118.184998	2.55999994	62	Moderate air quality	pm25	2018-12-05 16:58:00	52.5900002	90	1015	2.5999999	0.930000007	2018-12-05 08:58:00
McFarland	City	Kern	california	35.6780014	-119.228996	2.0999999	64	Moderate air quality	pm25	2018-12-05 17:15:00	55.6500015	90	1013	0.620000005	0	2018-12-05 08:58:00
Mendota	City	Fresno	california	36.7536011	-120.382004	1.83000004	66	Moderate air quality	pm25	2018-12-05 17:35:00	53.3300018	20	1013	3.5999999	0.25	2018-12-05 08:58:00
Menifee	City	Riverside	california	33.6971016	-117.184998	2.6500001	17	Good air quality	no2	2018-12-05 17:35:00	49.5099983	90	1016	2.47000003	1.10000002	2018-12-05 08:58:00
Menlo Park	City	San Mateo	california	37.4529991	-122.181999	1.69000006	86	Moderate air quality	pm25	2018-12-05 17:41:00	51.6399994	90	1013	3.0999999	0.25	2018-12-05 08:58:00
Merced	City	Merced	california	37.3022003	-120.483002	1.75	66	Moderate air quality	pm25	2018-12-05 16:53:00	52	90	1013	3.0999999	0	2018-12-05 08:58:00
Mill Valley	City	Marin	california	37.9059982	-122.544998	1.57000005	56	Moderate air quality	pm25	2018-12-05 17:45:00	51.4599991	90	1013	3.0999999	0.25	2018-12-05 08:58:00
Millbrae	City	San Mateo	california	37.5984993	-122.387001	1.62	68	Moderate air quality	pm25	2018-12-05 17:45:00	51.5299988	90	1013	3.0999999	0.25	2018-12-05 08:58:00
Milpitas	City	Santa Clara	california	37.4323006	-121.900002	1.69000006	75	Moderate air quality	pm25	2018-12-05 17:15:00	51.6599998	90	1012	1.66999996	0.25	2018-12-05 08:58:00
Mission Viejo	City	Orange	california	33.5969009	-117.657997	2.6400001	40	Good air quality	pm25	2018-12-05 17:35:00	50.7400017	90	1016	2.17000008	1.10000002	2018-12-05 08:58:00
Modesto	City	Stanislaus	california	37.6390991	-120.997002	1.66999996	94	Moderate air quality	pm25	2018-12-05 17:15:00	50.3100014	90	1013	4.17000008	0	2018-12-05 08:58:00
Monrovia	City	Los Angeles	california	34.1442986	-118.001999	2.52999997	57	Moderate air quality	pm25	2018-12-05 16:58:00	51.3499985	90	1015	4.5999999	1.01999998	2018-12-05 08:58:00
Montague	City	Siskiyou	california	41.728199	-122.528	1.25	53	Moderate air quality	pm25	2018-12-05 16:56:00	33.9799995	90	1017	1.32000005	0.25	2018-12-05 08:58:00
Montclair	City	San Bernardino	california	34.0774994	-117.690002	2.58999991	52	Moderate air quality	pm25	2018-12-05 16:58:00	52.2299995	90	1016	1.5	1.01999998	2018-12-05 08:58:00
Monte Sereno	City	Santa Clara	california	37.2363014	-121.991997	1.75	56	Moderate air quality	pm25	2018-12-05 17:41:00	52.1199989	90	1013	3.0999999	0.25	2018-12-05 08:58:00
Montebello	City	Los Angeles	california	34.0164986	-118.113998	2.52999997	52	Moderate air quality	pm25	2018-12-05 16:58:00	52.2099991	90	1014	6.19999981	1.01999998	2018-12-05 08:58:00
Monterey	City	Monterey	california	36.6002007	-121.894997	1.80999994	61	Moderate air quality	pm25	2018-12-05 17:15:00	54.3699989	90	1011	1.5	0	2018-12-05 08:58:00
Monterey Park	City	Los Angeles	california	34.0625	-118.123001	2.52999997	58	Moderate air quality	pm25	2018-12-05 16:58:00	52.2099991	90	1014	6.19999981	1.01999998	2018-12-05 08:58:00
Moorpark	City	Ventura	california	34.2855988	-118.882004	2.43000007	49	Good air quality	pm25	2018-12-05 16:57:00	54.5400009	75	1014	5.69999981	0	2018-12-05 08:58:00
Moraga	Town	Contra Costa	california	37.8348999	-122.129997	1.59000003	40	Good air quality	pm25	2018-12-05 17:45:00	51.2599983	90	1013	2.5999999	0.25	2018-12-05 08:58:00
Moreno Valley	City	Riverside	california	33.9425011	-117.230003	2.61999989	49	Good air quality	pm25	2018-12-05 17:35:00	49.4099998	90	1016	1.07000005	1.10000002	2018-12-05 08:58:00
Morgan Hill	City	Santa Clara	california	37.1305008	-121.653999	1.75999999	65	Moderate air quality	pm25	2018-12-05 17:45:00	52.3199997	90	1013	1.66999996	0	2018-12-05 08:58:00
Morro Bay	City	San Luis Obispo	california	35.3658981	-120.849998	2.06999993	32	Good air quality	o3	2018-12-05 17:01:00	52.2700005	90	1012	1.5	0.75999999	2018-12-05 08:58:00
Mount Shasta	City	Siskiyou	california	41.3098984	-122.310997	1.29999995	59	Moderate air quality	pm25	2018-12-05 17:10:00	35.7099991	90	1016	1.07000005	0.25	2018-12-05 08:58:00
Mountain View	City	Santa Clara	california	37.3861008	-122.084	1.69000006	79	Moderate air quality	pm25	2018-12-05 17:15:00	51.6599998	90	1012	2.0999999	0.25	2018-12-05 08:58:00
Murrieta	City	Riverside	california	33.5539017	-117.213997	2.6500001	19	Good air quality	o3	2018-12-05 17:35:00	50.5900002	90	1016	2.47000003	1.10000002	2018-12-05 08:58:00
Napa	City	Napa	california	38.2975006	-122.287003	1.52999997	55	Moderate air quality	pm25	2018-12-05 17:20:00	50.5400009	90	1013	5.69999981	0.25	2018-12-05 08:58:00
National City	City	San Diego	california	32.6781006	-117.098999	2.73000002	81	Moderate air quality	pm25	2018-12-05 16:56:00	57.1599998	40	1015	3.5999999	0	2018-12-05 08:58:00
Needles	City	San Bernardino	california	34.8480988	-114.613998	2.41000009	59	Moderate air quality	pm25	2018-12-05 17:35:00	53.0800018	1	1017	5.0999999	0	2018-12-05 08:58:00
Nevada City	City	Nevada	california	39.2616005	-121.015999	1.54999995	34	Good air quality	pm25	2018-12-05 17:15:00	48.0699997	90	1014	3.5999999	0	2018-12-05 08:58:00
Newark	City	Alameda	california	37.5297012	-122.040001	1.62	60	Moderate air quality	pm25	2018-12-05 17:15:00	51.6599998	90	1012	2.0999999	0.25	2018-12-05 08:58:00
Newman	City	Stanislaus	california	37.3138008	-121.021004	1.72000003	71	Moderate air quality	pm25	2018-12-05 17:15:00	52.0699997	90	1012	4.0999999	0	2018-12-05 08:58:00
Newport Beach	City	Orange	california	33.6189003	-117.93	2.58999991	34	Good air quality	pm25	2018-12-05 17:15:00	51.8699989	90	1015	2.5999999	0.930000007	2018-12-05 08:58:00
Norco	City	Riverside	california	33.9310989	-117.549004	2.5999999	32	Good air quality	pm10	2018-12-05 17:35:00	50.4300003	90	1016	0.970000029	1.10000002	2018-12-05 08:58:00
Norwalk	City	Los Angeles	california	33.9021988	-118.082001	2.55999994	59	Moderate air quality	pm25	2018-12-05 16:58:00	52.5900002	90	1014	6.19999981	0.930000007	2018-12-05 08:58:00
Novato	City	Marin	california	38.107399	-122.57	1.53999996	60	Moderate air quality	pm25	2018-12-05 17:41:00	51.7099991	90	1013	2.67000008	0.25	2018-12-05 08:58:00
Oakdale	City	Stanislaus	california	37.7666016	-120.847	1.63	85	Moderate air quality	pm25	2018-12-05 17:15:00	50.5	90	1014	1.5	0	2018-12-05 08:58:00
Oakland	City	Alameda	california	37.8044014	-122.271004	1.58000004	67	Moderate air quality	pm25	2018-12-05 17:15:00	51.1699982	90	1013	3.0999999	0.25	2018-12-05 08:58:00
Oakley	City	Contra Costa	california	37.9973984	-121.711998	1.60000002	64	Moderate air quality	pm25	2018-12-05 17:20:00	50.1399994	90	1014	2.0999999	0.25	2018-12-05 08:58:00
Oceanside	City	San Diego	california	33.1959	-117.378998	2.68000007	58	Moderate air quality	pm25	2018-12-05 17:35:00	54.2299995	90	1016	4.67000008	1.01999998	2018-12-05 08:58:00
Ojai	City	Ventura	california	34.4480019	-119.242996	2.42000008	49	Good air quality	pm25	2018-12-05 16:57:00	58.6399994	90	1013	6.69999981	0	2018-12-05 08:58:00
Ontario	City	San Bernardino	california	34.0633011	-117.651001	2.58999991	51	Moderate air quality	pm25	2018-12-05 16:58:00	52.2999992	90	1016	1.5	1.01999998	2018-12-05 08:58:00
Orange	City	Orange	california	33.787899	-117.852997	2.55999994	54	Moderate air quality	pm25	2018-12-05 16:58:00	52.2999992	90	1014	6.19999981	0.930000007	2018-12-05 08:58:00
Orange Cove	City	Fresno	california	36.6244011	-119.314003	1.94000006	52	Moderate air quality	pm25	2018-12-05 17:35:00	54	90	1013	3.0999999	0.25	2018-12-05 08:58:00
Orinda	City	Contra Costa	california	37.8771019	-122.18	1.59000003	58	Moderate air quality	pm25	2018-12-05 17:41:00	51.1500015	90	1013	3.0999999	0.25	2018-12-05 08:58:00
Orland	City	Glenn	california	39.7473984	-122.195999	1.45000005	35	Good air quality	pm25	2018-12-05 16:54:00	46.9399986	90	1017	2.5999999	0.50999999	2018-12-05 08:58:00
Oroville	City	Butte	california	39.5138016	-121.556	1.49000001	55	Moderate air quality	pm25	2018-12-05 17:15:00	48.3600006	90	1014	2.0999999	0	2018-12-05 08:58:00
Oxnard	City	Ventura	california	34.1974983	-119.177002	2.46000004	68	Moderate air quality	pm25	2018-12-05 16:57:00	58.6599998	75	1014	5.69999981	0	2018-12-05 08:58:00
Pacific Grove	City	Monterey	california	36.6176987	-121.917	1.80999994	47	Good air quality	pm25	2018-12-05 17:15:00	54.3699989	90	1011	1.5	0	2018-12-05 08:58:00
Pacifica	City	San Mateo	california	37.6138	-122.487	1.62	51	Moderate air quality	pm25	2018-12-05 17:15:00	51.4000015	90	1012	5.0999999	0.25	2018-12-05 08:58:00
Palm Springs	City	Riverside	california	33.8302994	-116.544998	2.69000006	37	Good air quality	pm25	2018-12-05 17:35:00	47.9099998	90	1016	1.07000005	1.26999998	2018-12-05 08:58:00
Palo Alto	City	Santa Clara	california	37.4418983	-122.142998	1.69000006	81	Moderate air quality	pm25	2018-12-05 17:41:00	51.6399994	90	1013	3.0999999	0.25	2018-12-05 08:58:00
Palos Verdes Estates	City	Los Angeles	california	33.8005981	-118.389999	2.54999995	38	Good air quality	pm25	2018-12-05 16:58:00	53.0200005	90	1014	2.0999999	0.889999986	2018-12-05 08:58:00
Paradise	Town	Butte	california	39.7596016	-121.622002	1.51999998	53	Moderate air quality	pm25	2018-12-05 16:54:00	46.9399986	90	1017	2.5999999	0.50999999	2018-12-05 08:58:00
Paramount	City	Los Angeles	california	33.8894997	-118.160004	2.55999994	34	Good air quality	pm25	2018-12-05 16:58:00	52.5900002	90	1014	6.19999981	0.930000007	2018-12-05 08:58:00
Parlier	City	Fresno	california	36.611599	-119.527	1.91999996	53	Moderate air quality	pm25	2018-12-05 17:35:00	54.1599998	20	1013	3.5999999	0.25	2018-12-05 08:58:00
Pasadena	City	Los Angeles	california	34.1478004	-118.144997	2.52999997	60	Moderate air quality	pm25	2018-12-05 16:58:00	51.3499985	90	1015	1.32000005	1.01999998	2018-12-05 08:58:00
Paso Robles	City	San Luis Obispo	california	35.6369019	-120.654999	2.04999995	25	Good air quality	pm25	2018-12-05 16:56:00	51.6899986	90	1012	3.0999999	0	2018-12-05 08:58:00
Patterson	City	Stanislaus	california	37.4715996	-121.129997	1.72000003	77	Moderate air quality	pm25	2018-12-05 17:15:00	50.9000015	90	1013	1.97000003	0	2018-12-05 08:58:00
Perris	City	Riverside	california	33.7825012	-117.228996	2.61999989	54	Moderate air quality	pm25	2018-12-05 17:35:00	48.5600014	90	1016	2.47000003	1.10000002	2018-12-05 08:58:00
Petaluma	City	Sonoma	california	38.232399	-122.637001	1.53999996	63	Moderate air quality	pm25	2018-12-05 17:15:00	50.8499985	90	1013	5.69999981	0.25	2018-12-05 08:58:00
Pico Rivera	City	Los Angeles	california	33.9831009	-118.097	2.55999994	56	Moderate air quality	pm25	2018-12-05 16:58:00	52.7400017	90	1014	6.19999981	1.01999998	2018-12-05 08:58:00
Piedmont	City	Alameda	california	37.8244019	-122.232002	1.59000003	35	Good air quality	pm25	2018-12-05 17:45:00	51.2599983	90	1013	3.0999999	0.25	2018-12-05 08:58:00
Pinole	City	Contra Costa	california	38.0043983	-122.299004	1.53999996	58	Moderate air quality	pm25	2018-12-05 17:45:00	51.1699982	90	1013	3.0999999	0.25	2018-12-05 08:58:00
Pismo Beach	City	San Luis Obispo	california	35.1427994	-120.640999	2.11999989	40	Good air quality	pm25	2018-12-05 17:01:00	53.1100006	90	1012	1.5	0.75999999	2018-12-05 08:58:00
Pittsburg	City	Contra Costa	california	38.0279999	-121.885002	1.54999995	64	Moderate air quality	pm25	2018-12-05 17:45:00	50.6100006	90	1013	2.5999999	0.25	2018-12-05 08:58:00
Placentia	City	Orange	california	33.8711014	-117.862999	2.55999994	49	Good air quality	no2	2018-12-05 16:58:00	52.2099991	90	1015	4.5999999	1.01999998	2018-12-05 08:58:00
Placerville	City	El Dorado	california	38.729599	-120.799004	1.59000003	53	Moderate air quality	pm25	2018-12-05 17:15:00	49.8699989	90	1014	3.5999999	0	2018-12-05 08:58:00
Pleasant Hill	City	Contra Costa	california	37.9480019	-122.060997	1.59000003	69	Moderate air quality	pm25	2018-12-05 17:45:00	51.0400009	90	1013	2.5999999	0.25	2018-12-05 08:58:00
Pleasanton	City	Alameda	california	37.6623993	-121.875	1.64999998	51	Moderate air quality	pm25	2018-12-05 17:45:00	51.3100014	90	1013	2.5999999	0.25	2018-12-05 08:58:00
Plymouth	City	Amador	california	38.4818993	-120.845001	1.60000002	52	Moderate air quality	pm25	2018-12-05 17:15:00	50.2900009	90	1013	3.0999999	0	2018-12-05 08:58:00
Point Arena	City	Mendocino	california	38.9087982	-123.693001	1.47000003	47	Good air quality	pm25	2018-12-05 16:56:00	48.0200005	90	1014	2.0999999	0.25	2018-12-05 08:58:00
Pomona	City	Los Angeles	california	34.0550995	-117.75	2.58999991	55	Moderate air quality	pm25	2018-12-05 16:58:00	52.2299995	90	1015	2.5999999	1.01999998	2018-12-05 08:58:00
Port Hueneme	City	Ventura	california	34.1478004	-119.195	2.46000004	61	Moderate air quality	pm25	2018-12-05 16:57:00	58.6599998	75	1014	5.69999981	0	2018-12-05 08:58:00
Porterville	City	Tulare	california	36.0652008	-119.016998	2.01999998	69	Moderate air quality	pm25	2018-12-05 17:15:00	53.6500015	1	1013	2.5999999	0	2018-12-05 08:58:00
Portola	City	Plumas	california	39.8105011	-120.469002	1.62	52	Moderate air quality	pm25	2018-12-05 17:35:00	28.4500008	90	1016	2.5999999	0	2018-12-05 08:58:00
Portola Valley	Town	San Mateo	california	37.3841019	-122.235001	1.69000006	62	Moderate air quality	pm25	2018-12-05 17:41:00	51.7599983	90	1013	3.0999999	0.25	2018-12-05 08:58:00
Poway	City	San Diego	california	32.9627991	-117.036003	2.72000003	46	Good air quality	pm25	2018-12-05 17:35:00	54.9500008	90	1016	1.41999996	0	2018-12-05 08:58:00
Rancho Cordova	City	Sacramento	california	38.5890999	-121.303001	1.53999996	72	Moderate air quality	pm25	2018-12-05 17:20:00	49.9799995	90	1015	3.0999999	0	2018-12-05 08:58:00
Rancho Cucamonga	City	San Bernardino	california	34.1063995	-117.593002	2.58999991	36	Good air quality	pm25	2018-12-05 16:58:00	50.9399986	90	1016	1.5	1.10000002	2018-12-05 08:58:00
Rancho Mirage	City	Riverside	california	33.7397003	-116.413002	2.71000004	25	Good air quality	pm25	2018-12-05 17:35:00	50.1599998	90	1016	1.07000005	0	2018-12-05 08:58:00
Rancho Palos Verdes	City	Los Angeles	california	33.7444992	-118.387001	2.58999991	37	Good air quality	pm25	2018-12-05 16:58:00	53.0200005	90	1014	2.0999999	0.889999986	2018-12-05 08:58:00
Rancho Santa Margarita	City	Orange	california	33.6402016	-117.602997	2.6400001	28	Good air quality	pm10	2018-12-05 17:35:00	50.5	90	1016	2.17000008	1.10000002	2018-12-05 08:58:00
Red Bluff	City	Tehama	california	40.1785011	-122.236	1.41999996	43	Good air quality	pm25	2018-12-05 16:54:00	46.9399986	90	1017	2.5999999	0.50999999	2018-12-05 08:58:00
Redding	City	Shasta	california	40.5864983	-122.391998	1.34000003	89	Moderate air quality	pm25	2018-12-05 17:10:00	44.4000015	90	1016	1.5	0.50999999	2018-12-05 08:58:00
Redlands	City	San Bernardino	california	34.0555992	-117.182999	2.6400001	62	Moderate air quality	pm25	2018-12-05 17:35:00	46.2000008	90	1016	1.07000005	1.14999998	2018-12-05 08:58:00
Redondo Beach	City	Los Angeles	california	33.8492012	-118.388	2.54999995	59	Moderate air quality	pm25	2018-12-05 16:58:00	53.0200005	90	1015	2.5999999	0.889999986	2018-12-05 08:58:00
Redwood City	City	San Mateo	california	37.485199	-122.236	1.69000006	79	Moderate air quality	pm25	2018-12-05 17:41:00	51.3100014	90	1013	3.0999999	0.25	2018-12-05 08:58:00
Reedley	City	Fresno	california	36.5962982	-119.449997	1.94000006	54	Moderate air quality	pm25	2018-12-05 17:35:00	54	20	1013	3.5999999	0.25	2018-12-05 08:58:00
Rialto	City	San Bernardino	california	34.1063995	-117.370003	2.56999993	54	Moderate air quality	pm25	2018-12-05 17:35:00	48.7000008	90	1016	0.970000029	1.10000002	2018-12-05 08:58:00
Richmond	City	Contra Costa	california	37.9357986	-122.348	1.58000004	66	Moderate air quality	pm25	2018-12-05 17:45:00	51.1699982	90	1013	3.0999999	0.25	2018-12-05 08:58:00
Ridgecrest	City	Kern	california	35.6225014	-117.670998	2.23000002	42	Good air quality	pm25	2018-12-05 16:56:00	44.0600014	75	1016	1.5	0	2018-12-05 08:58:00
Rio Dell	City	Humboldt	california	40.4992981	-124.106003	1.38999999	26	Good air quality	o3	2018-12-05 17:35:00	50.6300011	20	1014	1.5	0	2018-12-05 08:58:00
Rio Vista	City	Solano	california	38.1557999	-121.691002	1.55999994	44	Good air quality	pm25	2018-12-05 17:20:00	50.0400009	90	1014	5.0999999	0.25	2018-12-05 08:58:00
Ripon	City	San Joaquin	california	37.7394981	-121.135002	1.65999997	69	Moderate air quality	pm25	2018-12-05 17:15:00	50.1399994	90	1014	2.0999999	0	2018-12-05 08:58:00
Riverbank	City	Stanislaus	california	37.7360001	-120.934998	1.66999996	73	Moderate air quality	pm25	2018-12-05 17:15:00	50.3199997	90	1013	4.17000008	0	2018-12-05 08:58:00
Riverside	City	Riverside	california	33.9805984	-117.375	2.5999999	56	Moderate air quality	pm25	2018-12-05 17:35:00	49.2799988	90	1016	0.970000029	1.10000002	2018-12-05 08:58:00
Rocklin	City	Placer	california	38.790699	-121.236	1.54999995	70	Moderate air quality	pm25	2018-12-05 17:20:00	49.7999992	90	1014	2.0999999	0	2018-12-05 08:58:00
Rohnert Park	City	Sonoma	california	38.3395996	-122.700996	1.51999998	48	Good air quality	pm25	2018-12-05 17:15:00	50.7900009	90	1013	5.69999981	0	2018-12-05 08:58:00
Rolling Hills	City	Los Angeles	california	33.757	-118.353996	2.54999995	37	Good air quality	pm25	2018-12-05 16:58:00	53.0200005	90	1014	2.0999999	0.889999986	2018-12-05 08:58:00
Rolling Hills Estates	City	Los Angeles	california	33.7877998	-118.358002	2.54999995	51	Moderate air quality	pm25	2018-12-05 16:58:00	53.0200005	90	1014	2.0999999	0.889999986	2018-12-05 08:58:00
Rosemead	City	Los Angeles	california	34.0806007	-118.072998	2.52999997	57	Moderate air quality	pm25	2018-12-05 16:58:00	52.2099991	90	1014	6.19999981	1.01999998	2018-12-05 08:58:00
Roseville	City	Placer	california	38.7521019	-121.288002	1.51999998	70	Moderate air quality	pm25	2018-12-05 17:20:00	49.7999992	90	1014	2.0999999	0	2018-12-05 08:58:00
Ross	Town	Marin	california	37.9623985	-122.555	1.57000005	45	Good air quality	pm25	2018-12-05 17:45:00	51.4000015	90	1013	3.0999999	0.25	2018-12-05 08:58:00
Sacramento	City	Sacramento	california	38.5816002	-121.494003	1.53999996	66	Moderate air quality	pm25	2018-12-05 17:20:00	49.9799995	90	1014	5.0999999	0	2018-12-05 08:58:00
St. Helena	City	Napa	california	38.5051994	-122.470001	1.51999998	46	Good air quality	pm25	2018-12-05 17:20:00	50.4500008	90	1013	5.69999981	0	2018-12-05 08:58:00
Salinas	City	Monterey	california	36.6777	-121.655998	1.82000005	53	Moderate air quality	pm25	2018-12-05 17:15:00	54.3699989	90	1012	4.0999999	0	2018-12-05 08:58:00
San Anselmo	Town	Marin	california	37.9746017	-122.561996	1.57000005	45	Good air quality	pm25	2018-12-05 17:45:00	51.4000015	90	1013	3.0999999	0.25	2018-12-05 08:58:00
San Bernardino	City	San Bernardino	california	34.1082993	-117.290001	2.56999993	56	Moderate air quality	pm25	2018-12-05 17:35:00	47.8199997	90	1016	1.07000005	1.14999998	2018-12-05 08:58:00
San Bruno	City	San Mateo	california	37.6305008	-122.411003	1.62	71	Moderate air quality	pm25	2018-12-05 17:45:00	51.5299988	90	1013	3.0999999	0.25	2018-12-05 08:58:00
San Carlos	City	San Mateo	california	37.5071983	-122.261002	1.62	80	Moderate air quality	pm25	2018-12-05 17:45:00	51.4799995	90	1013	2.5999999	0.25	2018-12-05 08:58:00
San Clemente	City	Orange	california	33.4273987	-117.612999	2.61999989	52	Moderate air quality	pm25	2018-12-05 17:35:00	50.8800011	90	1016	2.17000008	1.10000002	2018-12-05 08:58:00
San Diego	City	San Diego	california	32.7156982	-117.161003	2.73000002	84	Moderate air quality	pm25	2018-12-05 16:56:00	55.6899986	75	1015	1.5	0	2018-12-05 08:58:00
San Dimas	City	Los Angeles	california	34.1067009	-117.806999	2.54999995	54	Moderate air quality	pm25	2018-12-05 17:50:00	51.8499985	90	1016	3.0999999	1.10000002	2018-12-05 08:58:00
San Fernando	City	Los Angeles	california	34.2818985	-118.439003	2.49000001	62	Moderate air quality	pm25	2018-12-05 16:58:00	52.0299988	90	1016	1.32000005	0	2018-12-05 08:58:00
San Francisco	City and county	San Francisco	california	37.7748985	-122.418999	1.58000004	69	Moderate air quality	pm25	2018-12-05 17:45:00	51.5099983	90	1013	3.0999999	0.25	2018-12-05 08:58:00
San Gabriel	City	Los Angeles	california	34.0960999	-118.106003	2.52999997	57	Moderate air quality	pm25	2018-12-05 16:58:00	52.2099991	90	1015	1.32000005	1.01999998	2018-12-05 08:58:00
San Jacinto	City	Riverside	california	33.7839012	-116.959	2.69000006	53	Moderate air quality	pm25	2018-12-05 17:35:00	47.7900009	90	1016	2.47000003	1.14999998	2018-12-05 08:58:00
San Joaquin	City	Fresno	california	36.6066017	-120.189003	1.87	57	Moderate air quality	pm25	2018-12-05 17:35:00	54.0299988	20	1013	3.5999999	0.25	2018-12-05 08:58:00
San Jose	City	Santa Clara	california	37.3381996	-121.886002	1.69000006	81	Moderate air quality	pm25	2018-12-05 17:45:00	52.1100006	90	1013	2.5999999	0.25	2018-12-05 08:58:00
San Juan Bautista	City	San Benito	california	36.8455009	-121.538002	1.77999997	31	Good air quality	pm25	2018-12-05 17:10:00	53.0800018	90	1013	3.92000008	0	2018-12-05 08:58:00
San Juan Capistrano	City	Orange	california	33.5018997	-117.663002	2.6400001	55	Moderate air quality	pm25	2018-12-05 17:35:00	50.5	90	1016	2.17000008	1.10000002	2018-12-05 08:58:00
San Leandro	City	Alameda	california	37.7248993	-122.155998	1.62	58	Moderate air quality	pm25	2018-12-05 17:45:00	51.2799988	90	1013	2.5999999	0.25	2018-12-05 08:58:00
San Luis Obispo	City	San Luis Obispo	california	35.2827988	-120.660004	2.0999999	32	Good air quality	o3	2018-12-05 17:25:00	52.5600014	90	1012	1.5	0.75999999	2018-12-05 08:58:00
San Marcos	City	San Diego	california	33.1433983	-117.166	2.71000004	44	Good air quality	pm25	2018-12-05 17:35:00	55.2000008	90	1016	1.41999996	0	2018-12-05 08:58:00
San Marino	City	Los Angeles	california	34.1213989	-118.106003	2.52999997	57	Moderate air quality	pm25	2018-12-05 17:50:00	51.6199989	90	1016	3.0999999	1.01999998	2018-12-05 08:58:00
San Mateo	City	San Mateo	california	37.5629997	-122.325996	1.62	78	Moderate air quality	pm25	2018-12-05 17:45:00	51.3699989	90	1013	2.5999999	0.25	2018-12-05 08:58:00
San Pablo	City	Contra Costa	california	37.962101	-122.346001	1.58000004	63	Moderate air quality	pm25	2018-12-05 17:45:00	51.1699982	90	1013	3.0999999	0.25	2018-12-05 08:58:00
San Rafael	City	Marin	california	37.9734993	-122.530998	1.57000005	63	Moderate air quality	pm25	2018-12-05 17:45:00	51.2799988	90	1013	3.0999999	0.25	2018-12-05 08:58:00
San Ramon	City	Contra Costa	california	37.7798996	-121.977997	1.61000001	63	Moderate air quality	pm25	2018-12-05 17:45:00	50.9700012	90	1013	2.5999999	0.25	2018-12-05 08:58:00
Sand City	City	Monterey	california	36.6171989	-121.848	1.80999994	26	Good air quality	pm25	2018-12-05 17:15:00	54.3699989	90	1011	1.5	0	2018-12-05 08:58:00
Sanger	City	Fresno	california	36.7080002	-119.556	1.91999996	56	Moderate air quality	pm25	2018-12-05 17:35:00	54.1599998	20	1013	3.5999999	0.25	2018-12-05 08:58:00
Santa Ana	City	Orange	california	33.7454987	-117.867996	2.58999991	58	Moderate air quality	pm25	2018-12-05 16:58:00	51.8899994	90	1015	2.5999999	0.930000007	2018-12-05 08:58:00
Santa Barbara	City	Santa Barbara	california	34.4207993	-119.697998	2.38000011	47	Good air quality	pm25	2018-12-05 16:57:00	58.6199989	90	1012	4.0999999	0	2018-12-05 08:58:00
Santa Clara	City	Santa Clara	california	37.3540993	-121.955002	1.69000006	71	Moderate air quality	pm25	2018-12-05 17:45:00	51.8400002	90	1013	2.5999999	0.25	2018-12-05 08:58:00
Santa Clarita	City	Los Angeles	california	34.3917007	-118.542999	2.45000005	12	Good air quality	o3	2018-12-05 17:50:00	53.3499985	90	1016	3.0999999	0	2018-12-05 08:58:00
Santa Cruz	City	Santa Cruz	california	36.9740982	-122.030998	1.75999999	65	Moderate air quality	pm25	2018-12-05 17:45:00	52.5699997	90	1013	2.5999999	0	2018-12-05 08:58:00
Santa Fe Springs	City	Los Angeles	california	33.9472008	-118.084999	2.55999994	52	Moderate air quality	pm25	2018-12-05 17:50:00	52.9000015	90	1016	3.0999999	0.930000007	2018-12-05 08:58:00
Santa Maria	City	Santa Barbara	california	34.9529991	-120.435997	2.19000006	40	Good air quality	pm25	2018-12-05 17:25:00	54.6599998	90	1011	7.19999981	0.75999999	2018-12-05 08:58:00
Santa Monica	City	Los Angeles	california	34.0195007	-118.490997	2.5	69	Moderate air quality	pm25	2018-12-05 16:58:00	53.8699989	90	1015	4.5999999	0.889999986	2018-12-05 08:58:00
Santa Paula	City	Ventura	california	34.3541985	-119.058998	2.42000008	60	Moderate air quality	pm25	2018-12-05 17:50:00	55.5999985	90	1016	3.0999999	0	2018-12-05 08:58:00
Santa Rosa	City	Sonoma	california	38.4403992	-122.713997	1.51999998	67	Moderate air quality	pm25	2018-12-05 17:15:00	51.0600014	90	1013	5.69999981	0	2018-12-05 08:58:00
Santee	City	San Diego	california	32.8384018	-116.973999	2.76999998	65	Moderate air quality	pm25	2018-12-05 17:15:00	55.5400009	5	1016	1.41999996	0	2018-12-05 08:58:00
Saratoga	City	Santa Clara	california	37.2638016	-122.023003	1.69000006	56	Moderate air quality	pm25	2018-12-05 17:45:00	52.2700005	90	1013	2.5999999	0.25	2018-12-05 08:58:00
Sausalito	City	Marin	california	37.8591003	-122.485001	1.58000004	52	Moderate air quality	pm25	2018-12-05 17:45:00	51.4599991	90	1013	3.0999999	0.25	2018-12-05 08:58:00
Scotts Valley	City	Santa Cruz	california	37.0511017	-122.014999	1.75	42	Good air quality	pm25	2018-12-05 17:45:00	52.9700012	90	1013	2.5999999	0	2018-12-05 08:58:00
Seal Beach	City	Orange	california	33.7414017	-118.105003	2.5999999	42	Good air quality	pm25	2018-12-05 17:50:00	52.9000015	90	1016	3.0999999	0.930000007	2018-12-05 08:58:00
Seaside	City	Monterey	california	36.6148987	-121.821999	1.80999994	47	Good air quality	pm25	2018-12-05 17:15:00	54.3699989	90	1011	1.5	0	2018-12-05 08:58:00
Sebastopol	City	Sonoma	california	38.4020996	-122.823997	1.5	60	Moderate air quality	pm25	2018-12-05 17:15:00	51.8499985	90	1013	5.69999981	0	2018-12-05 08:58:00
Selma	City	Fresno	california	36.5708008	-119.612	1.91999996	61	Moderate air quality	pm25	2018-12-05 17:35:00	54.1599998	20	1013	3.5999999	0.25	2018-12-05 08:58:00
Shafter	City	Kern	california	35.5004997	-119.272003	2.06999993	49	Good air quality	pm25	2018-12-05 17:15:00	55.5400009	90	1013	0.620000005	0	2018-12-05 08:58:00
Shasta Lake	City	Shasta	california	40.6804008	-122.371002	1.34000003	65	Moderate air quality	pm25	2018-12-05 17:10:00	44.4700012	1	1016	1.26999998	0.50999999	2018-12-05 08:58:00
Sierra Madre	City	Los Angeles	california	34.1617012	-118.053001	2.52999997	56	Moderate air quality	pm25	2018-12-05 17:50:00	51.6199989	90	1016	3.0999999	1.01999998	2018-12-05 08:58:00
Signal Hill	City	Los Angeles	california	33.8045006	-118.167999	2.55999994	61	Moderate air quality	pm25	2018-12-05 16:58:00	52.5900002	90	1014	4.0999999	0.930000007	2018-12-05 08:58:00
Simi Valley	City	Ventura	california	34.2694016	-118.780998	2.43000007	24	Good air quality	o3	2018-12-05 16:57:00	54.4300003	75	1014	5.69999981	0	2018-12-05 08:58:00
Solana Beach	City	San Diego	california	32.9911995	-117.271004	2.73000002	58	Moderate air quality	pm25	2018-12-05 17:35:00	55.1800003	90	1016	1.41999996	0	2018-12-05 08:58:00
Soledad	City	Monterey	california	36.4247017	-121.325996	1.88999999	61	Moderate air quality	pm25	2018-12-05 17:15:00	55.0600014	90	1012	4.0999999	0	2018-12-05 08:58:00
Solvang	City	Santa Barbara	california	34.5957985	-120.138	2.28999996	31	Good air quality	o3	2018-12-05 17:25:00	55.9399986	90	1011	7.19999981	0.75999999	2018-12-05 08:58:00
Sonoma	City	Sonoma	california	38.2919006	-122.458	1.52999997	54	Moderate air quality	pm25	2018-12-05 17:20:00	50.5200005	90	1013	5.69999981	0.25	2018-12-05 08:58:00
Sonora	City	Tuolumne	california	37.9828987	-120.382004	1.69000006	71	Moderate air quality	pm25	2018-12-05 17:15:00	50.8800011	90	1014	1.5	0	2018-12-05 08:58:00
South El Monte	City	Los Angeles	california	34.0519981	-118.046997	2.52999997	55	Moderate air quality	pm25	2018-12-05 17:50:00	52.5200005	90	1016	3.0999999	1.01999998	2018-12-05 08:58:00
South Gate	City	Los Angeles	california	33.9547005	-118.211998	2.55999994	62	Moderate air quality	pm25	2018-12-05 17:50:00	52.9000015	90	1016	3.0999999	0.930000007	2018-12-05 08:58:00
South Lake Tahoe	City	El Dorado	california	38.9398994	-119.976997	1.74000001	26	Good air quality	o3	2018-12-05 17:41:00	27.9500008	90	1014	2.0999999	0	2018-12-05 08:58:00
South Pasadena	City	Los Angeles	california	34.1161003	-118.150002	2.52999997	58	Moderate air quality	pm25	2018-12-05 17:50:00	51.6199989	90	1016	3.0999999	1.01999998	2018-12-05 08:58:00
South San Francisco	City	San Mateo	california	37.6547012	-122.407997	1.62	69	Moderate air quality	pm25	2018-12-05 17:45:00	51.6899986	90	1013	3.0999999	0.25	2018-12-05 08:58:00
Stanton	City	Orange	california	33.8028984	-117.992996	2.55999994	37	Good air quality	pm25	2018-12-05 16:58:00	52.1199989	90	1014	6.19999981	0.930000007	2018-12-05 08:58:00
Stockton	City	San Joaquin	california	37.9576988	-121.291	1.61000001	81	Moderate air quality	pm25	2018-12-05 17:15:00	50.2900009	90	1014	2.0999999	0	2018-12-05 08:58:00
Suisun City	City	Solano	california	38.2382011	-122.040001	1.55999994	34	Good air quality	pm25	2018-12-05 17:20:00	50.2700005	90	1014	5.0999999	0.25	2018-12-05 08:58:00
Sunnyvale	City	Santa Clara	california	37.3688011	-122.036003	1.69000006	74	Moderate air quality	pm25	2018-12-05 17:45:00	51.7599983	90	1013	2.5999999	0.25	2018-12-05 08:58:00
Susanville	City	Lassen	california	40.4163017	-120.653	1.50999999	51	Moderate air quality	pm25	2018-12-05 17:35:00	32	90	1017	1.22000003	0	2018-12-05 08:58:00
Taft	City	Kern	california	35.1425018	-119.457001	2.18000007	43	Good air quality	pm25	2018-12-05 16:54:00	60.0800018	90	1012	5.0999999	0	2018-12-05 08:58:00
Tehachapi	City	Kern	california	35.1321983	-118.448997	2.36999989	37	Good air quality	pm25	2018-12-05 17:19:00	42.6899986	90	1016	1.16999996	0	2018-12-05 08:58:00
Tehama	City	Tehama	california	40.0270996	-122.123001	1.41999996	26	Good air quality	pm25	2018-12-05 16:54:00	46.9399986	90	1017	2.5999999	0.50999999	2018-12-05 08:58:00
Temecula	City	Riverside	california	33.4935989	-117.148003	2.68000007	43	Good air quality	pm25	2018-12-05 17:35:00	51.75	90	1016	2.47000003	1.10000002	2018-12-05 08:58:00
Temple City	City	Los Angeles	california	34.1072006	-118.057999	2.52999997	48	Good air quality	pm25	2018-12-05 16:58:00	52.2099991	90	1015	4.5999999	1.01999998	2018-12-05 08:58:00
Thousand Oaks	City	Ventura	california	34.1706009	-118.837997	2.5	51	Moderate air quality	pm25	2018-12-05 17:50:00	54.8800011	90	1016	3.0999999	0	2018-12-05 08:58:00
Tiburon	Town	Marin	california	37.8735008	-122.457001	1.58000004	61	Moderate air quality	pm25	2018-12-05 17:45:00	51.4599991	90	1013	3.0999999	0.25	2018-12-05 08:58:00
Torrance	City	Los Angeles	california	33.8358002	-118.341003	2.54999995	49	Good air quality	pm25	2018-12-05 16:58:00	52.5900002	90	1015	2.5999999	0.930000007	2018-12-05 08:58:00
Tracy	City	San Joaquin	california	37.7397003	-121.425003	1.66999996	75	Moderate air quality	pm25	2018-12-05 17:15:00	50.7900009	90	1014	2.0999999	0.25	2018-12-05 08:58:00
Trinidad	City	Humboldt	california	41.0592995	-124.142998	1.28999996	16	Good air quality	o3	2018-12-05 17:35:00	50.2000008	20	1014	1.5	0	2018-12-05 08:58:00
Truckee	Town	Nevada	california	39.3279991	-120.182999	1.69000006	61	Moderate air quality	pm25	2018-12-05 17:41:00	28.1100006	90	1014	2.0999999	0	2018-12-05 08:58:00
Tulare	City	Tulare	california	36.2076988	-119.347	2	74	Moderate air quality	pm25	2018-12-05 17:15:00	53.6500015	90	1013	3.5999999	0.25	2018-12-05 08:58:00
Tulelake	City	Siskiyou	california	41.9560013	-121.476997	1.22000003	40	Good air quality	pm25	2018-12-05 16:53:00	28.0400009	90	1016	4.0999999	0	2018-12-05 08:58:00
Turlock	City	Stanislaus	california	37.4947014	-120.847	1.72000003	99	Moderate air quality	pm25	2018-12-05 16:55:00	50.4500008	90	1013	3.56999993	0	2018-12-05 08:58:00
Tustin	City	Orange	california	33.7420006	-117.823997	2.58999991	20	Good air quality	no2	2018-12-05 17:35:00	51.6199989	90	1016	2.17000008	0.930000007	2018-12-05 08:58:00
Twentynine Palms	City	San Bernardino	california	34.135601	-116.054001	2.6400001	38	Good air quality	pm25	2018-12-05 17:47:34	47.6399994	88	956.559998	1.66999996	0	2018-12-05 08:58:00
Ukiah	City	Mendocino	california	39.1501999	-123.208	1.47000003	70	Moderate air quality	pm25	2018-12-05 16:56:00	48.0200005	90	1014	2.0999999	0.25	2018-12-05 08:58:00
Union City	City	Alameda	california	37.593399	-122.043999	1.62	67	Moderate air quality	pm25	2018-12-05 17:45:00	51.6699982	90	1013	2.5999999	0.25	2018-12-05 08:58:00
Upland	City	San Bernardino	california	34.0974998	-117.648003	2.58999991	51	Moderate air quality	pm25	2018-12-05 16:58:00	52.1599998	90	1016	1.5	1.01999998	2018-12-05 08:58:00
Vacaville	City	Solano	california	38.3566017	-121.987999	1.53999996	59	Moderate air quality	pm25	2018-12-05 17:20:00	50.0400009	90	1014	5.0999999	0	2018-12-05 08:58:00
Vallejo	City	Solano	california	38.1040993	-122.257004	1.53999996	65	Moderate air quality	pm25	2018-12-05 17:45:00	50.9199982	90	1013	3.0999999	0.25	2018-12-05 08:58:00
Ventura	City	Ventura	california	34.2804985	-119.294998	2.41000009	62	Moderate air quality	pm25	2018-12-05 16:57:00	58.6599998	90	1013	6.69999981	0	2018-12-05 08:58:00
Vernon	City	Los Angeles	california	34.0038986	-118.230003	2.52999997	62	Moderate air quality	pm25	2018-12-05 17:50:00	52.9000015	90	1016	3.0999999	0.930000007	2018-12-05 08:58:00
Victorville	City	San Bernardino	california	34.5362015	-117.292999	2.48000002	57	Moderate air quality	pm25	2018-12-05 17:19:00	44.5299988	90	1016	1.41999996	0	2018-12-05 08:58:00
Villa Park	City	Orange	california	33.8139992	-117.821999	2.55999994	46	Good air quality	no2	2018-12-05 17:35:00	51.9399986	90	1016	2.17000008	1.01999998	2018-12-05 08:58:00
Visalia	City	Tulare	california	36.3302002	-119.292	1.97000003	74	Moderate air quality	pm25	2018-12-05 17:35:00	53.8199997	20	1013	3.5999999	0.25	2018-12-05 08:58:00
Vista	City	San Diego	california	33.2000008	-117.242996	2.71000004	51	Moderate air quality	pm25	2018-12-05 17:35:00	54.3400002	90	1016	1.41999996	0	2018-12-05 08:58:00
Walnut	City	Los Angeles	california	34.0203018	-117.864998	2.54999995	41	Good air quality	pm25	2018-12-05 17:50:00	52.5200005	90	1016	3.0999999	1.01999998	2018-12-05 08:58:00
Walnut Creek	City	Contra Costa	california	37.910099	-122.065002	1.59000003	69	Moderate air quality	pm25	2018-12-05 17:45:00	51.2799988	90	1013	2.5999999	0.25	2018-12-05 08:58:00
Wasco	City	Kern	california	35.594101	-119.341003	2.06999993	36	Good air quality	pm25	2018-12-05 17:15:00	55.6199989	90	1013	0.620000005	0	2018-12-05 08:58:00
Waterford	City	Stanislaus	california	37.6413002	-120.760002	1.66999996	87	Moderate air quality	pm25	2018-12-05 17:10:00	50.3600006	90	1013	2.01999998	0	2018-12-05 08:58:00
Watsonville	City	Santa Cruz	california	36.9101982	-121.757004	1.75999999	62	Moderate air quality	pm25	2018-12-05 17:10:00	52.6599998	90	1013	1.66999996	0	2018-12-05 08:58:00
Weed	City	Siskiyou	california	41.4225998	-122.386002	1.29999995	67	Moderate air quality	pm25	2018-12-05 17:10:00	35.7299995	90	1016	1.07000005	0.25	2018-12-05 08:58:00
West Covina	City	Los Angeles	california	34.0685997	-117.939003	2.54999995	60	Moderate air quality	pm25	2018-12-05 17:50:00	51.8499985	90	1016	3.0999999	1.10000002	2018-12-05 08:58:00
West Hollywood	City	Los Angeles	california	34.0900002	-118.362	2.5	61	Moderate air quality	pm25	2018-12-05 16:58:00	52.5900002	90	1015	1.32000005	1.01999998	2018-12-05 08:58:00
West Sacramento	City	Yolo	california	38.5805016	-121.529999	1.52999997	59	Moderate air quality	pm25	2018-12-05 17:20:00	49.9799995	90	1014	5.0999999	0	2018-12-05 08:58:00
Westlake Village	City	Los Angeles	california	34.1465988	-118.806999	2.5	25	Good air quality	o3	2018-12-05 17:50:00	54.8800011	90	1016	3.0999999	0	2018-12-05 08:58:00
Westminster	City	Orange	california	33.759201	-117.989998	2.55999994	51	Moderate air quality	pm25	2018-12-05 17:50:00	52.3899994	90	1016	3.0999999	0.930000007	2018-12-05 08:58:00
Westmorland	City	Imperial	california	33.0373001	-115.621002	2.68000007	67	Moderate air quality	pm25	2018-12-05 17:35:00	52.7700005	1	1016	2.22000003	0	2018-12-05 08:58:00
Wheatland	City	Yuba	california	39.0098991	-121.422997	1.50999999	53	Moderate air quality	pm25	2018-12-05 17:20:00	49.6199989	90	1014	2.0999999	0	2018-12-05 08:58:00
Whittier	City	Los Angeles	california	33.9791985	-118.032997	2.55999994	54	Moderate air quality	pm25	2018-12-05 17:50:00	53.0800018	90	1016	3.0999999	1.01999998	2018-12-05 08:58:00
Wildomar	City	Riverside	california	33.5988998	-117.279999	2.66000009	16	Good air quality	pm10	2018-12-05 17:35:00	49.8899994	90	1016	2.47000003	1.10000002	2018-12-05 08:58:00
Williams	City	Colusa	california	39.1545982	-122.149002	1.47000003	64	Moderate air quality	pm25	2018-12-05 16:58:00	49.9099998	90	1015	3.5999999	0	2018-12-05 08:58:00
Willits	City	Mendocino	california	39.4095993	-123.356003	1.46000004	58	Moderate air quality	pm25	2018-12-05 16:56:00	48.0200005	90	1014	2.0999999	0.25	2018-12-05 08:58:00
Willows	City	Glenn	california	39.5242996	-122.194	1.45000005	37	Good air quality	pm25	2018-12-05 17:53:20	44.1300011	92	986.549988	2.76999998	0.330000013	2018-12-05 08:58:00
Windsor	Town	Sonoma	california	38.5471001	-122.816002	1.48000002	55	Moderate air quality	pm25	2018-12-05 17:15:00	51.8400002	90	1013	5.69999981	0	2018-12-05 08:58:00
Winters	City	Yolo	california	38.5248985	-121.971001	1.51999998	53	Moderate air quality	pm25	2018-12-05 17:20:00	50.2200012	90	1014	5.0999999	0	2018-12-05 08:58:00
Woodlake	City	Tulare	california	36.4136009	-119.098999	1.99000001	53	Moderate air quality	pm25	2018-12-05 17:15:00	54.4799995	90	1013	3.0999999	0	2018-12-05 08:58:00
Woodland	City	Yolo	california	38.6785011	-121.773003	1.51999998	69	Moderate air quality	pm25	2018-12-05 17:20:00	50.0200005	90	1014	5.0999999	0	2018-12-05 08:58:00
Woodside	Town	San Mateo	california	37.4299011	-122.253998	1.66999996	73	Moderate air quality	pm25	2018-12-05 17:45:00	51.9300003	90	1013	2.5999999	0.25	2018-12-05 08:58:00
Yorba Linda	City	Orange	california	33.8885002	-117.813004	2.55999994	43	Good air quality	pm25	2018-12-05 17:50:00	52.5200005	90	1016	3.0999999	1.01999998	2018-12-05 08:58:00
Yountville	Town	Napa	california	38.4015999	-122.361	1.52999997	32	Good air quality	pm25	2018-12-05 17:20:00	50.4500008	90	1013	5.69999981	0	2018-12-05 08:58:00
Yreka	City	Siskiyou	california	41.7354012	-122.634003	1.25	60	Moderate air quality	pm25	2018-12-05 16:56:00	33.9799995	90	1017	1.32000005	0.25	2018-12-05 08:58:00
Yuba City	City	Sutter	california	39.1403999	-121.616997	1.5	66	Moderate air quality	pm25	2018-12-05 17:20:00	49.7099991	90	1014	2.0999999	0	2018-12-05 08:58:00
Yucaipa	City	San Bernardino	california	34.0335999	-117.042999	2.6400001	47	Good air quality	pm25	2018-12-05 17:35:00	46.2000008	90	1016	1.07000005	1.14999998	2018-12-05 08:58:00
Yucca Valley	Town	San Bernardino	california	34.1142006	-116.431999	2.66000009	35	Good air quality	o3	2018-12-05 17:53:42	43.8600006	92	908.409973	1.16999996	0	2018-12-05 08:58:00
Adelanto	City	San Bernardino	california	34.5828018	-117.408997	2.48000002	33	Good air quality	pm25	2018-12-05 19:58:00	49.1699982	40	1014	3.0999999	0	2018-12-05 11:58:00
Agoura Hills	City	Los Angeles	california	34.1533012	-118.762001	2.5	35	Good air quality	pm25	2018-12-05 20:24:00	58.4099998	90	1012	10.3000002	0	2018-12-05 11:58:00
Alameda	City	Alameda	california	37.7652016	-122.241997	1.59000003	61	Moderate air quality	pm25	2018-12-05 20:53:00	55.4399986	75	1011	5.69999981	0.25	2018-12-05 11:58:00
Albany	City	Alameda	california	37.8869019	-122.297997	1.58000004	70	Moderate air quality	pm25	2018-12-05 20:40:00	55.2700005	90	1011	5.0999999	0.25	2018-12-05 11:58:00
Alhambra	City	Los Angeles	california	34.0952988	-118.126999	2.52999997	60	Moderate air quality	pm25	2018-12-05 20:32:00	57.6100006	90	1013	4.0999999	0	2018-12-05 11:58:00
Aliso Viejo	City	Orange	california	33.5685005	-117.725998	2.6400001	37	Good air quality	pm25	2018-12-05 20:35:00	54.0699997	90	1013	4.0999999	0.550000012	2018-12-05 11:58:00
Alturas	City	Modoc	california	41.4870987	-120.542	1.30999994	74	Moderate air quality	pm25	2018-12-05 20:47:00	35.0600014	75	1015	1.5	0	2018-12-05 11:58:00
Amador City	City	Amador	california	38.4193993	-120.823997	1.60000002	52	Moderate air quality	pm25	2018-12-05 20:35:00	55.4500008	90	1012	1.40999997	0	2018-12-05 11:58:00
American Canyon	City	Napa	california	38.1749001	-122.261002	1.53999996	35	Good air quality	pm25	2018-12-05 20:20:00	54.1800003	90	1012	2.5999999	0.25	2018-12-05 11:58:00
Anaheim	City	Orange	california	33.8366013	-117.914001	2.55999994	49	Good air quality	pm25	2018-12-05 20:32:00	57.0699997	90	1013	4.0999999	0.75999999	2018-12-05 11:58:00
Anderson	City	Shasta	california	40.4482002	-122.297997	1.37	74	Moderate air quality	pm25	2018-12-05 20:10:00	49.0800018	40	1015	2.0999999	0.25	2018-12-05 11:58:00
Angels Camp	City	Calaveras	california	38.0677986	-120.539001	1.63999999	63	Moderate air quality	pm25	2018-12-05 20:35:00	55.0200005	90	1012	1.96000004	0	2018-12-05 11:58:00
Antioch	City	Contra Costa	california	38.0049019	-121.806	1.54999995	65	Moderate air quality	pm25	2018-12-05 20:20:00	54.7000008	90	1012	2.41000009	0.25	2018-12-05 11:58:00
Apple Valley	Town	San Bernardino	california	34.5008011	-117.185997	2.5	29	Good air quality	pm25	2018-12-05 19:58:00	44.8699989	90	1015	2.0999999	1.01999998	2018-12-05 11:58:00
Arcadia	City	Los Angeles	california	34.1397018	-118.035004	2.52999997	47	Good air quality	pm25	2018-12-05 20:32:00	56.7999992	90	1013	4.0999999	0	2018-12-05 11:58:00
Arcata	City	Humboldt	california	40.8665009	-124.083	1.32000005	21	Good air quality	pm10	2018-12-05 20:35:00	60.7099991	1	1013	2.0999999	0	2018-12-05 11:58:00
Arroyo Grande	City	San Luis Obispo	california	35.1185989	-120.591003	2.11999989	40	Good air quality	pm25	2018-12-05 20:31:00	59.5600014	90	1011	1.5	1.51999998	2018-12-05 11:58:00
Artesia	City	Los Angeles	california	33.865799	-118.083	2.55999994	55	Moderate air quality	pm25	2018-12-05 20:51:00	57.0900002	90	1013	4.0999999	0.25	2018-12-05 11:58:00
Arvin	City	Kern	california	35.2018013	-118.833	2.21000004	24	Good air quality	pm10	2018-12-05 20:00:00	55.0900002	90	1011	2.0999999	0	2018-12-05 11:58:00
Atascadero	City	San Luis Obispo	california	35.489399	-120.670998	2.0999999	51	Moderate air quality	pm25	2018-12-05 20:31:00	58.5	90	1011	1.5	1.51999998	2018-12-05 11:58:00
Atherton	Town	San Mateo	california	37.4612999	-122.197998	1.69000006	84	Moderate air quality	pm25	2018-12-05 20:40:00	55.9799995	90	1011	5.0999999	0.25	2018-12-05 11:58:00
Atwater	City	Merced	california	37.3476982	-120.609001	1.73000002	79	Moderate air quality	pm25	2018-12-05 20:53:00	57.0400009	90	1011	2.0999999	0	2018-12-05 11:58:00
Auburn	City	Placer	california	38.8965988	-121.077003	1.54999995	48	Good air quality	pm25	2018-12-05 20:35:00	54.6599998	90	1012	1.71000004	0	2018-12-05 11:58:00
Avalon	City	Los Angeles	california	33.3428001	-118.328003	2.6099999	31	Good air quality	pm25	2018-12-05 20:32:00	58.8199997	90	1013	4.0999999	0.50999999	2018-12-05 11:58:00
Avenal	City	Kings	california	36.0041008	-120.128998	1.95000005	52	Moderate air quality	pm25	2018-12-05 20:31:00	54.9000015	90	1011	1.5	1.51999998	2018-12-05 11:58:00
Bakersfield	City	Kern	california	35.3732986	-119.018997	2.1400001	54	Moderate air quality	pm25	2018-12-05 20:15:00	58.5999985	90	1011	2.0999999	0	2018-12-05 11:58:00
Baldwin Park	City	Los Angeles	california	34.0853004	-117.960999	2.54999995	58	Moderate air quality	pm25	2018-12-05 20:32:00	56.6399994	90	1013	4.0999999	0	2018-12-05 11:58:00
Banning	City	Riverside	california	33.9255981	-116.875999	2.69000006	28	Good air quality	pm25	2018-12-05 20:35:00	47.3899994	90	1013	2.0999999	0.639999986	2018-12-05 11:58:00
Barstow	City	San Bernardino	california	34.8958015	-117.016998	2.4000001	28	Good air quality	pm25	2018-12-05 19:55:00	46.2000008	90	1015	2.0999999	0	2018-12-05 11:58:00
Beaumont	City	Riverside	california	33.9295006	-116.976997	2.69000006	55	Moderate air quality	pm25	2018-12-05 20:35:00	47.5	90	1013	2.0999999	0.589999974	2018-12-05 11:58:00
Bell	City	Los Angeles	california	33.9775009	-118.186996	2.55999994	61	Moderate air quality	pm25	2018-12-05 20:51:00	57.0699997	90	1013	4.0999999	0.25	2018-12-05 11:58:00
Bell Gardens	City	Los Angeles	california	33.9653015	-118.151001	2.55999994	59	Moderate air quality	pm25	2018-12-05 20:51:00	57.0699997	90	1013	4.0999999	0.25	2018-12-05 11:58:00
Bellflower	City	Los Angeles	california	33.8816986	-118.116997	2.55999994	51	Moderate air quality	pm25	2018-12-05 20:51:00	57.0900002	90	1013	4.0999999	0.25	2018-12-05 11:58:00
Belmont	City	San Mateo	california	37.5201988	-122.276001	1.62	83	Moderate air quality	pm25	2018-12-05 20:53:00	55.6300011	90	1011	5.0999999	0.25	2018-12-05 11:58:00
Belvedere	City	Marin	california	37.8726997	-122.463997	1.58000004	40	Good air quality	pm25	2018-12-05 20:53:00	54.9900017	75	1011	5.69999981	0.25	2018-12-05 11:58:00
Benicia	City	Solano	california	38.0494003	-122.158997	1.55999994	40	Good air quality	pm25	2018-12-05 20:53:00	54.5200005	75	1011	5.69999981	0.25	2018-12-05 11:58:00
Berkeley	City	Alameda	california	37.8716011	-122.273003	1.58000004	71	Moderate air quality	pm25	2018-12-05 20:40:00	55.2700005	90	1011	5.0999999	0.25	2018-12-05 11:58:00
Beverly Hills	City	Los Angeles	california	34.0736008	-118.400002	2.5	54	Moderate air quality	pm25	2018-12-05 20:32:00	58.0600014	90	1013	4.0999999	0	2018-12-05 11:58:00
Big Bear Lake	City	San Bernardino	california	34.2439003	-116.911003	2.77999997	37	Good air quality	pm25	2018-12-05 19:58:00	44.7799988	90	1013	0.860000014	1.01999998	2018-12-05 11:58:00
Biggs	City	Butte	california	39.4123993	-121.712997	1.49000001	56	Moderate air quality	pm25	2018-12-05 20:35:00	53.3800011	1	1013	4.5999999	0	2018-12-05 11:58:00
Bishop	City	Inyo	california	37.3614006	-118.400002	1.96000004	54	Moderate air quality	pm25	2018-12-05 20:15:00	28.9400005	90	1015	1.5	0	2018-12-05 11:58:00
Blue Lake	City	Humboldt	california	40.8829002	-123.984001	1.32000005	18	Good air quality	pm10	2018-12-05 20:35:00	60.7099991	1	1013	2.0999999	0	2018-12-05 11:58:00
Blythe	City	Riverside	california	33.6178017	-114.587997	2.63000011	43	Good air quality	pm25	2018-12-05 20:57:41	57.7999992	76	999.929993	2.21000004	0	2018-12-05 11:58:00
Bradbury	City	Los Angeles	california	34.1469002	-117.971001	2.54999995	28	Good air quality	pm25	2018-12-05 20:32:00	56.8199997	90	1013	4.0999999	0	2018-12-05 11:58:00
Brawley	City	Imperial	california	32.9786987	-115.529999	2.73000002	77	Moderate air quality	pm25	2018-12-05 19:56:00	64.4499969	40	1014	2.0999999	0	2018-12-05 11:58:00
Brea	City	Orange	california	33.9165001	-117.900002	2.55999994	51	Moderate air quality	pm25	2018-12-05 20:32:00	57.6300011	90	1013	4.0999999	0	2018-12-05 11:58:00
Brentwood	City	Contra Costa	california	37.9319	-121.695999	1.60000002	68	Moderate air quality	pm25	2018-12-05 20:53:00	55.3600006	75	1011	5.69999981	0.25	2018-12-05 11:58:00
Brisbane	City	San Mateo	california	37.6808014	-122.400002	1.62	42	Good air quality	pm25	2018-12-05 20:53:00	55.7099991	90	1011	5.0999999	0.25	2018-12-05 11:58:00
Buellton	City	Santa Barbara	california	34.6136017	-120.193001	2.28999996	44	Good air quality	pm25	2018-12-05 19:58:00	61.7900009	1	1010	4.5999999	0	2018-12-05 11:58:00
Buena Park	City	Orange	california	33.8674011	-117.998001	2.55999994	58	Moderate air quality	pm25	2018-12-05 20:51:00	57.0900002	90	1013	4.0999999	0.25	2018-12-05 11:58:00
Burbank	City	Los Angeles	california	34.1808014	-118.308998	2.5	64	Moderate air quality	pm25	2018-12-05 20:32:00	57.3300018	90	1013	4.0999999	0	2018-12-05 11:58:00
Burlingame	City	San Mateo	california	37.5778999	-122.348	1.62	69	Moderate air quality	pm25	2018-12-05 20:53:00	55.4500008	90	1011	5.0999999	0.25	2018-12-05 11:58:00
Calabasas	City	Los Angeles	california	34.1366997	-118.661003	2.5	28	Good air quality	pm25	2018-12-05 20:32:00	58.3499985	90	1012	10.3000002	0	2018-12-05 11:58:00
Calexico	City	Imperial	california	32.6789017	-115.499001	2.75999999	81	Moderate air quality	pm25	2018-12-05 19:56:00	64.4499969	40	1014	2.0999999	0	2018-12-05 11:58:00
California City	City	Kern	california	35.1258011	-117.986	2.30999994	29	Good air quality	o3	2018-12-05 20:20:00	49.5699997	90	1013	4.5999999	0	2018-12-05 11:58:00
Calimesa	City	Riverside	california	34.0038986	-117.061996	2.6400001	59	Moderate air quality	pm25	2018-12-05 20:35:00	49.5099983	90	1013	2.0999999	0.639999986	2018-12-05 11:58:00
Calipatria	City	Imperial	california	33.1255989	-115.514	2.68000007	74	Moderate air quality	pm25	2018-12-05 19:56:00	64.4499969	40	1014	2.0999999	0	2018-12-05 11:58:00
Calistoga	City	Napa	california	38.5788002	-122.580002	1.50999999	55	Moderate air quality	pm25	2018-12-05 20:20:00	54.2099991	90	1012	2.5999999	0	2018-12-05 11:58:00
Camarillo	City	Ventura	california	34.2164001	-119.038002	2.46000004	60	Moderate air quality	pm25	2018-12-05 20:24:00	57.5999985	90	1012	10.3000002	0	2018-12-05 11:58:00
Campbell	City	Santa Clara	california	37.2872009	-121.949997	1.69000006	72	Moderate air quality	pm25	2018-12-05 20:53:00	56.3499985	75	1011	5.69999981	0.25	2018-12-05 11:58:00
Canyon Lake	City	Riverside	california	33.6850014	-117.273003	2.66000009	13	Good air quality	pm10	2018-12-05 20:35:00	52.7400017	90	1013	2.0999999	0.50999999	2018-12-05 11:58:00
Capitola	City	Santa Cruz	california	36.9752007	-121.953003	1.75999999	67	Moderate air quality	pm25	2018-12-05 20:15:00	57.7000008	90	1012	3.0999999	0	2018-12-05 11:58:00
Carlsbad	City	San Diego	california	33.1581001	-117.350998	2.68000007	54	Moderate air quality	pm25	2018-12-05 20:35:00	59.8300018	90	1013	4.0999999	0.419999987	2018-12-05 11:58:00
Carmel-by-the-Sea	City	Monterey	california	36.5551987	-121.922997	1.80999994	52	Moderate air quality	pm25	2018-12-05 20:15:00	58.3899994	90	1011	1.5	0	2018-12-05 11:58:00
Carpinteria	City	Santa Barbara	california	34.3988991	-119.517998	2.38000011	40	Good air quality	o3	2018-12-05 20:24:00	56.2999992	90	1012	10.3000002	0	2018-12-05 11:58:00
Carson	City	Los Angeles	california	33.8316994	-118.281998	2.54999995	53	Moderate air quality	pm25	2018-12-05 20:51:00	57.0900002	90	1011	7.69999981	0.25	2018-12-05 11:58:00
Cathedral City	City	Riverside	california	33.7804985	-116.467003	2.63000011	30	Good air quality	pm25	2018-12-05 20:35:00	54.3600006	75	1013	1.5	0.25	2018-12-05 11:58:00
Ceres	City	Stanislaus	california	37.5948982	-120.958	1.66999996	86	Moderate air quality	pm25	2018-12-05 20:53:00	56.0099983	90	1011	2.0999999	0	2018-12-05 11:58:00
Cerritos	City	Los Angeles	california	33.8582993	-118.065002	2.55999994	46	Good air quality	pm25	2018-12-05 20:51:00	57.0900002	90	1013	4.0999999	0.25	2018-12-05 11:58:00
Chico	City	Butte	california	39.7285004	-121.836998	1.46000004	69	Moderate air quality	pm25	2018-12-05 19:54:00	50	90	1016	3.0999999	0.25	2018-12-05 11:58:00
Chino	City	San Bernardino	california	34.0121994	-117.689003	2.58999991	46	Good air quality	pm25	2018-12-05 20:53:00	57.5800018	90	1012	5.0999999	0	2018-12-05 11:58:00
Chino Hills	City	San Bernardino	california	33.9897995	-117.733002	2.5999999	34	Good air quality	pm25	2018-12-05 20:53:00	57.5800018	90	1012	5.0999999	0	2018-12-05 11:58:00
Chowchilla	City	Madera	california	37.1230011	-120.260002	1.79999995	62	Moderate air quality	pm25	2018-12-05 20:53:00	57.25	90	1012	1.5	0	2018-12-05 11:58:00
Chula Vista	City	San Diego	california	32.6400986	-117.084	2.73000002	82	Moderate air quality	pm25	2018-12-05 19:56:00	62.4599991	75	1013	3.5999999	0	2018-12-05 11:58:00
Citrus Heights	City	Sacramento	california	38.7070999	-121.280998	1.53999996	59	Moderate air quality	pm25	2018-12-05 20:45:00	54.5	75	1012	2.0999999	0	2018-12-05 11:58:00
Claremont	City	Los Angeles	california	34.0966988	-117.720001	2.58999991	56	Moderate air quality	pm25	2018-12-05 20:32:00	56.6599998	90	1013	4.0999999	0	2018-12-05 11:58:00
Clayton	City	Contra Costa	california	37.9410019	-121.935997	1.61000001	56	Moderate air quality	pm25	2018-12-05 20:53:00	55.2400017	75	1011	5.69999981	0.25	2018-12-05 11:58:00
Clearlake	City	Lake	california	38.9581985	-122.625999	1.5	41	Good air quality	pm25	2018-12-05 19:56:00	51.0800018	90	1013	2.0999999	0	2018-12-05 11:58:00
Cloverdale	City	Sonoma	california	38.8055	-123.016998	1.47000003	60	Moderate air quality	pm25	2018-12-05 19:56:00	51.0800018	90	1013	2.0999999	0	2018-12-05 11:58:00
Clovis	City	Fresno	california	36.8251991	-119.703003	1.88999999	52	Moderate air quality	pm25	2018-12-05 20:53:00	58.1699982	90	1012	1.5	0	2018-12-05 11:58:00
Coachella	City	Riverside	california	33.6803017	-116.174004	2.61999989	32	Good air quality	pm10	2018-12-05 20:35:00	64.4000015	75	1013	1.5	0	2018-12-05 11:58:00
Coalinga	City	Fresno	california	36.1397018	-120.360001	1.96000004	52	Moderate air quality	pm25	2018-12-05 20:31:00	54.9700012	90	1011	1.5	1.51999998	2018-12-05 11:58:00
Colfax	City	Placer	california	39.1007004	-120.953003	1.59000003	34	Good air quality	pm25	2018-12-05 20:45:00	54.1599998	90	1013	1.71000004	0	2018-12-05 11:58:00
Colma	Town	San Mateo	california	37.676899	-122.459999	1.62	62	Moderate air quality	pm25	2018-12-05 20:40:00	55.6199989	90	1011	5.0999999	0.25	2018-12-05 11:58:00
Colton	City	San Bernardino	california	34.0738983	-117.314003	2.56999993	56	Moderate air quality	pm25	2018-12-05 20:35:00	52.1399994	90	1013	2.0999999	0.639999986	2018-12-05 11:58:00
Colusa	City	Colusa	california	39.2142982	-122.009003	1.47000003	59	Moderate air quality	pm25	2018-12-05 20:35:00	54.6300011	1	1013	4.5999999	0	2018-12-05 11:58:00
Commerce	City	Los Angeles	california	34.0005989	-118.160004	2.52999997	60	Moderate air quality	pm25	2018-12-05 20:32:00	58.2799988	90	1013	4.0999999	0	2018-12-05 11:58:00
Compton	City	Los Angeles	california	33.8958015	-118.220001	2.55999994	64	Moderate air quality	pm25	2018-12-05 20:51:00	57.0699997	90	1013	4.0999999	0.25	2018-12-05 11:58:00
Concord	City	Contra Costa	california	37.9780006	-122.030998	1.59000003	71	Moderate air quality	pm25	2018-12-05 20:53:00	55.1300011	75	1011	5.69999981	0.25	2018-12-05 11:58:00
Corcoran	City	Kings	california	36.0979996	-119.559998	1.98000002	68	Moderate air quality	pm25	2018-12-05 20:15:00	58.0499992	90	1012	2.16000009	0	2018-12-05 11:58:00
Corning	City	Tehama	california	39.9277	-122.179001	1.44000006	51	Moderate air quality	pm25	2018-12-05 19:54:00	51.7599983	90	1016	3.0999999	0.25	2018-12-05 11:58:00
Corona	City	Riverside	california	33.8753014	-117.566002	2.5999999	42	Good air quality	pm25	2018-12-05 20:35:00	53.5299988	90	1013	4.0999999	0.569999993	2018-12-05 11:58:00
Coronado	City	San Diego	california	32.6859016	-117.182999	2.73000002	75	Moderate air quality	pm25	2018-12-05 19:56:00	61.8300018	90	1013	1.5	0.25	2018-12-05 11:58:00
Corte Madera	Town	Marin	california	37.925499	-122.527	1.57000005	47	Good air quality	pm25	2018-12-05 20:53:00	55.3100014	90	1012	4.5999999	0.25	2018-12-05 11:58:00
Costa Mesa	City	Orange	california	33.641201	-117.918999	2.58999991	55	Moderate air quality	pm25	2018-12-05 20:51:00	55.9000015	90	1013	4.0999999	0.419999987	2018-12-05 11:58:00
Cotati	City	Sonoma	california	38.3292999	-122.709999	1.51999998	60	Moderate air quality	pm25	2018-12-05 20:15:00	54.7299995	90	1012	2.5999999	0	2018-12-05 11:58:00
Covina	City	Los Angeles	california	34.0900002	-117.889999	2.54999995	57	Moderate air quality	pm25	2018-12-05 20:32:00	56.6599998	90	1013	4.0999999	0	2018-12-05 11:58:00
Crescent City	City	Del Norte	california	41.7556992	-124.203003	1.19000006	53	Moderate air quality	pm25	2018-12-05 20:56:00	55.5800018	1	1013	4.5999999	0	2018-12-05 11:58:00
Cudahy	City	Los Angeles	california	33.9606018	-118.184998	2.55999994	58	Moderate air quality	pm25	2018-12-05 20:53:00	57	90	1012	5.0999999	0.25	2018-12-05 11:58:00
Culver City	City	Los Angeles	california	34.0210991	-118.396004	2.5	63	Moderate air quality	pm25	2018-12-05 20:53:00	57.9700012	90	1012	5.0999999	0	2018-12-05 11:58:00
Cupertino	City	Santa Clara	california	37.3230019	-122.031998	1.69000006	72	Moderate air quality	pm25	2018-12-05 20:40:00	56.0499992	90	1011	5.0999999	0.25	2018-12-05 11:58:00
Cypress	City	Orange	california	33.8168983	-118.037003	2.55999994	42	Good air quality	pm25	2018-12-05 20:53:00	57.0200005	90	1013	4.0999999	0.25	2018-12-05 11:58:00
Daly City	City	San Mateo	california	37.6879005	-122.470001	1.62	67	Moderate air quality	pm25	2018-12-05 20:53:00	55.7799988	90	1011	5.0999999	0.25	2018-12-05 11:58:00
Dana Point	City	Orange	california	33.4672012	-117.697998	2.61999989	55	Moderate air quality	pm25	2018-12-05 20:51:00	53.6500015	90	1011	7.69999981	0.469999999	2018-12-05 11:58:00
Danville	Town	Contra Costa	california	37.8216019	-122	1.61000001	64	Moderate air quality	pm25	2018-12-05 20:53:00	55.4900017	90	1012	4.5999999	0.25	2018-12-05 11:58:00
Davis	City	Yolo	california	38.544899	-121.740997	1.52999997	70	Moderate air quality	pm25	2018-12-05 20:53:00	55	75	1012	2.0999999	0	2018-12-05 11:58:00
Del Mar	City	San Diego	california	32.9594994	-117.264999	2.73000002	53	Moderate air quality	pm25	2018-12-05 20:35:00	60.2200012	90	1013	4.0999999	0.419999987	2018-12-05 11:58:00
Del Rey Oaks	City	Monterey	california	36.5932999	-121.834999	1.80999994	28	Good air quality	pm25	2018-12-05 20:15:00	58.3899994	90	1011	1.5	0	2018-12-05 11:58:00
Delano	City	Kern	california	35.7687988	-119.247002	2.04999995	47	Good air quality	pm25	2018-12-05 20:15:00	59.0900002	90	1012	2.16000009	0	2018-12-05 11:58:00
Desert Hot Springs	City	Riverside	california	33.9611015	-116.501999	2.69000006	41	Good air quality	pm25	2018-12-05 20:59:28	44.75	100	906.950012	1.30999994	1.20749998	2018-12-05 11:58:00
Diamond Bar	City	Los Angeles	california	34.0285988	-117.809998	2.54999995	57	Moderate air quality	pm25	2018-12-05 20:53:00	57.5600014	90	1012	5.0999999	0	2018-12-05 11:58:00
Dinuba	City	Tulare	california	36.5433006	-119.387001	1.94000006	53	Moderate air quality	pm25	2018-12-05 20:35:00	58.1500015	90	1012	1.5	0	2018-12-05 11:58:00
Dixon	City	Solano	california	38.4454994	-121.822998	1.53999996	65	Moderate air quality	pm25	2018-12-05 20:53:00	54.9900017	90	1012	4.5999999	0	2018-12-05 11:58:00
Dorris	City	Siskiyou	california	41.9673996	-121.917999	1.23000002	39	Good air quality	pm25	2018-12-05 19:53:00	38.3699989	1	1015	3.0999999	0	2018-12-05 11:58:00
Dos Palos	City	Merced	california	36.9860992	-120.626999	1.82000005	60	Moderate air quality	pm25	2018-12-05 20:53:00	57.0400009	90	1011	2.0999999	0	2018-12-05 11:58:00
Downey	City	Los Angeles	california	33.9401016	-118.133003	2.55999994	58	Moderate air quality	pm25	2018-12-05 20:53:00	57	90	1012	5.0999999	0.25	2018-12-05 11:58:00
Duarte	City	Los Angeles	california	34.1394997	-117.976997	2.54999995	55	Moderate air quality	pm25	2018-12-05 20:53:00	57.5400009	90	1012	5.0999999	0	2018-12-05 11:58:00
Dublin	City	Alameda	california	37.7022018	-121.935997	1.64999998	68	Moderate air quality	pm25	2018-12-05 20:53:00	56.0299988	75	1011	5.69999981	0.25	2018-12-05 11:58:00
Dunsmuir	City	Siskiyou	california	41.2081985	-122.272003	1.32000005	63	Moderate air quality	pm25	2018-12-05 20:54:00	43.1399994	75	1014	1.05999994	0	2018-12-05 11:58:00
East Palo Alto	City	San Mateo	california	37.4687996	-122.140999	1.69000006	83	Moderate air quality	pm25	2018-12-05 20:53:00	56.6399994	75	1011	5.69999981	0.25	2018-12-05 11:58:00
Eastvale	City	Riverside	california	33.9524994	-117.584999	2.5999999	29	Good air quality	pm10	2018-12-05 20:35:00	54.9900017	90	1013	4.0999999	0.639999986	2018-12-05 11:58:00
El Cajon	City	San Diego	california	32.7947998	-116.962997	2.76999998	76	Moderate air quality	pm25	2018-12-05 19:56:00	61	90	1013	1.15999997	0.379999995	2018-12-05 11:58:00
El Centro	City	Imperial	california	32.7919998	-115.563004	2.73000002	49	Good air quality	pm25	2018-12-05 19:56:00	64.4499969	1	1013	2.5999999	0	2018-12-05 11:58:00
El Cerrito	City	Contra Costa	california	37.9160995	-122.310997	1.58000004	65	Moderate air quality	pm25	2018-12-05 20:53:00	55	90	1012	4.5999999	0.25	2018-12-05 11:58:00
El Monte	City	Los Angeles	california	34.0685997	-118.028	2.52999997	61	Moderate air quality	pm25	2018-12-05 20:53:00	57.5400009	90	1012	5.0999999	0	2018-12-05 11:58:00
El Segundo	City	Los Angeles	california	33.9192009	-118.416	2.54999995	57	Moderate air quality	pm25	2018-12-05 20:53:00	57.9700012	90	1012	5.0999999	0	2018-12-05 11:58:00
Elk Grove	City	Sacramento	california	38.4087982	-121.372002	1.54999995	69	Moderate air quality	pm25	2018-12-05 20:35:00	54.6300011	75	1013	4.0999999	0	2018-12-05 11:58:00
Emeryville	City	Alameda	california	37.8312988	-122.285004	1.58000004	59	Moderate air quality	pm25	2018-12-05 20:53:00	55.3499985	75	1011	5.69999981	0.25	2018-12-05 11:58:00
Encinitas	City	San Diego	california	33.0369987	-117.292	2.68000007	55	Moderate air quality	pm25	2018-12-05 20:35:00	60.2400017	90	1013	4.0999999	0.419999987	2018-12-05 11:58:00
Escalon	City	San Joaquin	california	37.7974014	-120.997002	1.63	85	Moderate air quality	pm25	2018-12-05 20:53:00	55.4199982	90	1011	1.5	0	2018-12-05 11:58:00
Escondido	City	San Diego	california	33.1192017	-117.085999	2.71000004	60	Moderate air quality	pm25	2018-12-05 20:35:00	60.2599983	90	1013	4.0999999	0.419999987	2018-12-05 11:58:00
Etna	City	Siskiyou	california	41.4567986	-122.894997	1.29999995	50	Good air quality	pm25	2018-12-05 20:54:00	43.1599998	75	1014	1.05999994	0	2018-12-05 11:58:00
Eureka	City	Humboldt	california	40.8021011	-124.164001	1.32000005	42	Good air quality	pm25	2018-12-05 20:35:00	60.7599983	1	1013	2.0999999	0	2018-12-05 11:58:00
Exeter	City	Tulare	california	36.2961006	-119.141998	1.99000001	53	Moderate air quality	pm25	2018-12-05 20:15:00	58.6399994	90	1012	3.0999999	0	2018-12-05 11:58:00
Fairfax	Town	Marin	california	37.9870987	-122.588997	1.57000005	33	Good air quality	pm25	2018-12-05 20:40:00	54.5499992	90	1011	5.0999999	0.25	2018-12-05 11:58:00
Fairfield	City	Solano	california	38.2494011	-122.040001	1.55999994	54	Moderate air quality	pm25	2018-12-05 20:53:00	54.6300011	90	1012	4.5999999	0.25	2018-12-05 11:58:00
Farmersville	City	Tulare	california	36.297699	-119.207001	1.99000001	55	Moderate air quality	pm25	2018-12-05 20:15:00	57.9900017	90	1012	3.0999999	0	2018-12-05 11:58:00
Ferndale	City	Humboldt	california	40.5761986	-124.264	1.33000004	27	Good air quality	o3	2018-12-05 20:35:00	60.9599991	1	1013	2.0999999	0	2018-12-05 11:58:00
Fillmore	City	Ventura	california	34.3992004	-118.917999	2.43000007	29	Good air quality	o3	2018-12-05 20:24:00	57.5600014	90	1012	10.3000002	0	2018-12-05 11:58:00
Firebaugh	City	Fresno	california	36.858799	-120.456001	1.83000004	75	Moderate air quality	pm25	2018-12-05 20:53:00	57.25	90	1012	1.5	0	2018-12-05 11:58:00
Folsom	City	Sacramento	california	38.6780014	-121.176003	1.55999994	64	Moderate air quality	pm25	2018-12-05 20:35:00	54.4099998	75	1013	4.0999999	0	2018-12-05 11:58:00
Fontana	City	San Bernardino	california	34.0922012	-117.434998	2.56999993	55	Moderate air quality	pm25	2018-12-05 20:35:00	52.7700005	90	1013	2.0999999	0.639999986	2018-12-05 11:58:00
Fort Bragg	City	Mendocino	california	39.4457016	-123.805	1.44000006	45	Good air quality	pm25	2018-12-05 19:56:00	51.0800018	90	1013	2.0999999	0	2018-12-05 11:58:00
Fort Jones	City	Siskiyou	california	41.6076012	-122.839996	1.25999999	51	Moderate air quality	pm25	2018-12-05 20:54:00	42.3699989	75	1014	1.05999994	0	2018-12-05 11:58:00
Fortuna	City	Humboldt	california	40.5982018	-124.156998	1.34000003	29	Good air quality	pm25	2018-12-05 20:35:00	60.9399986	1	1013	2.0999999	0	2018-12-05 11:58:00
Foster City	City	San Mateo	california	37.5584984	-122.271004	1.62	76	Moderate air quality	pm25	2018-12-05 20:53:00	55.6899986	90	1011	5.0999999	0.25	2018-12-05 11:58:00
Fountain Valley	City	Orange	california	33.7089996	-117.954002	2.58999991	54	Moderate air quality	pm25	2018-12-05 20:53:00	57.0200005	90	1013	4.0999999	0.25	2018-12-05 11:58:00
Fowler	City	Fresno	california	36.6305008	-119.678001	1.91999996	54	Moderate air quality	pm25	2018-12-05 20:53:00	58.1699982	90	1012	1.5	0	2018-12-05 11:58:00
Fremont	City	Alameda	california	37.5483017	-121.988998	1.64999998	60	Moderate air quality	pm25	2018-12-05 20:53:00	56.0499992	75	1011	5.69999981	0.25	2018-12-05 11:58:00
Fresno	City	Fresno	california	36.7378006	-119.787003	1.90999997	71	Moderate air quality	pm25	2018-12-05 20:53:00	58.1699982	90	1012	1.5	0	2018-12-05 11:58:00
Fullerton	City	Orange	california	33.8703995	-117.924004	2.55999994	49	Good air quality	pm25	2018-12-05 20:53:00	57.0200005	90	1013	4.0999999	0.25	2018-12-05 11:58:00
Galt	City	Sacramento	california	38.2546005	-121.300003	1.54999995	72	Moderate air quality	pm25	2018-12-05 20:35:00	54.0499992	90	1012	1.61000001	0	2018-12-05 11:58:00
Garden Grove	City	Orange	california	33.7742996	-117.938004	2.55999994	48	Good air quality	pm25	2018-12-05 20:53:00	57.0200005	90	1013	4.0999999	0.25	2018-12-05 11:58:00
Gilroy	City	Santa Clara	california	37.0057983	-121.568001	1.75999999	64	Moderate air quality	pm25	2018-12-05 20:56:00	58.0099983	90	1010	2.5999999	0	2018-12-05 11:58:00
Glendale	City	Los Angeles	california	34.1425018	-118.254997	2.5	60	Moderate air quality	pm25	2018-12-05 20:53:00	56.7099991	90	1012	5.0999999	0	2018-12-05 11:58:00
Glendora	City	Los Angeles	california	34.1361008	-117.864998	2.54999995	56	Moderate air quality	pm25	2018-12-05 20:53:00	56.5900002	90	1012	5.0999999	0	2018-12-05 11:58:00
Goleta	City	Santa Barbara	california	34.4357986	-119.828003	2.33999991	40	Good air quality	pm25	2018-12-05 19:56:00	58.7299995	90	1011	5.69999981	0	2018-12-05 11:58:00
Gonzales	City	Monterey	california	36.5065994	-121.444	1.85000002	58	Moderate air quality	pm25	2018-12-05 20:54:00	58.1699982	90	1010	2.5999999	0	2018-12-05 11:58:00
Grand Terrace	City	San Bernardino	california	34.0339012	-117.314003	2.56999993	54	Moderate air quality	pm25	2018-12-05 20:35:00	52.1599998	90	1013	2.0999999	0.639999986	2018-12-05 11:58:00
Grass Valley	City	Nevada	california	39.219101	-121.060997	1.54999995	55	Moderate air quality	pm25	2018-12-05 20:35:00	53.4700012	90	1013	1.71000004	0	2018-12-05 11:58:00
Greenfield	City	Monterey	california	36.3208008	-121.244003	1.89999998	57	Moderate air quality	pm25	2018-12-05 20:54:00	57.9599991	90	1010	2.5999999	0	2018-12-05 11:58:00
Gridley	City	Butte	california	39.3638	-121.694	1.49000001	56	Moderate air quality	pm25	2018-12-05 20:35:00	54.1199989	1	1013	4.5999999	0	2018-12-05 11:58:00
Grover Beach	City	San Luis Obispo	california	35.1216011	-120.621002	2.11999989	32	Good air quality	o3	2018-12-05 20:31:00	59.5600014	90	1011	1.5	1.51999998	2018-12-05 11:58:00
Guadalupe	City	Santa Barbara	california	34.9715996	-120.571999	2.18000007	34	Good air quality	o3	2018-12-05 19:58:00	61.5	90	1010	4.5999999	0	2018-12-05 11:58:00
Gustine	City	Merced	california	37.2577019	-120.999001	1.72000003	70	Moderate air quality	pm25	2018-12-05 20:53:00	57.6699982	90	1011	2.0999999	0	2018-12-05 11:58:00
Half Moon Bay	City	San Mateo	california	37.4636002	-122.429001	1.66999996	57	Moderate air quality	pm25	2018-12-05 20:56:00	56.0299988	20	1011	3.0999999	0.25	2018-12-05 11:58:00
Hanford	City	Kings	california	36.3274002	-119.646004	1.95000005	56	Moderate air quality	pm10	2018-12-05 20:56:00	58.2099991	90	1012	1.5	0	2018-12-05 11:58:00
Hawaiian Gardens	City	Los Angeles	california	33.8314018	-118.072998	2.55999994	55	Moderate air quality	pm25	2018-12-05 20:53:00	56.9300003	90	1012	2.0999999	0.25	2018-12-05 11:58:00
Hawthorne	City	Los Angeles	california	33.9164009	-118.352997	2.54999995	59	Moderate air quality	pm25	2018-12-05 20:51:00	57.0699997	90	1011	7.69999981	0.25	2018-12-05 11:58:00
Hayward	City	Alameda	california	37.6688004	-122.081001	1.62	71	Moderate air quality	pm25	2018-12-05 20:56:00	55.5600014	75	1011	5.69999981	0.25	2018-12-05 11:58:00
Healdsburg	City	Sonoma	california	38.6105003	-122.869003	1.48000002	61	Moderate air quality	pm25	2018-12-05 20:15:00	54.1599998	90	1012	2.5999999	0	2018-12-05 11:58:00
Hemet	City	Riverside	california	33.7475014	-116.972	2.72000003	51	Moderate air quality	pm25	2018-12-05 20:35:00	49.4399986	90	1013	2.0999999	0.50999999	2018-12-05 11:58:00
Hercules	City	Contra Costa	california	38.0171013	-122.289001	1.53999996	39	Good air quality	pm25	2018-12-05 20:53:00	54.9300003	90	1012	4.5999999	0.25	2018-12-05 11:58:00
Hermosa Beach	City	Los Angeles	california	33.8622017	-118.400002	2.54999995	60	Moderate air quality	pm25	2018-12-05 20:53:00	58.0800018	90	1012	2.0999999	0	2018-12-05 11:58:00
Hesperia	City	San Bernardino	california	34.4263992	-117.301003	2.56999993	35	Good air quality	pm25	2018-12-05 19:58:00	49.0600014	90	1013	1.11000001	1.01999998	2018-12-05 11:58:00
Hidden Hills	City	Los Angeles	california	34.1603012	-118.652	2.5	29	Good air quality	pm25	2018-12-05 20:32:00	58.3499985	90	1012	10.3000002	0	2018-12-05 11:58:00
Highland	City	San Bernardino	california	34.1282997	-117.209	2.6400001	54	Moderate air quality	pm25	2018-12-05 20:35:00	49.4199982	90	1013	2.0999999	0.639999986	2018-12-05 11:58:00
Hillsborough	Town	San Mateo	california	37.5741005	-122.378998	1.62	53	Moderate air quality	pm25	2018-12-05 20:53:00	55.7099991	90	1011	5.0999999	0.25	2018-12-05 11:58:00
Hollister	City	San Benito	california	36.8525009	-121.402	1.78999996	62	Moderate air quality	pm25	2018-12-05 20:15:00	58.3699989	90	1011	2.0999999	0	2018-12-05 11:58:00
Holtville	City	Imperial	california	32.8111992	-115.379997	2.73000002	84	Moderate air quality	pm25	2018-12-05 20:56:00	64.9599991	1	1013	2.5999999	0	2018-12-05 11:58:00
Hughson	City	Stanislaus	california	37.6026993	-120.865997	1.66999996	74	Moderate air quality	pm25	2018-12-05 20:53:00	56.6599998	90	1011	1.5	0	2018-12-05 11:58:00
Huntington Beach	City	Orange	california	33.6595001	-117.999001	2.58999991	54	Moderate air quality	pm25	2018-12-05 20:51:00	57.1100006	90	1013	4.0999999	0.25	2018-12-05 11:58:00
Huntington Park	City	Los Angeles	california	33.9817009	-118.224998	2.55999994	65	Moderate air quality	pm25	2018-12-05 20:53:00	56.9099998	90	1012	2.0999999	0.25	2018-12-05 11:58:00
Huron	City	Fresno	california	36.2027016	-120.102997	1.95000005	56	Moderate air quality	pm10	2018-12-05 20:56:00	57.4300003	90	1012	1.5	0	2018-12-05 11:58:00
Imperial	City	Imperial	california	32.847599	-115.569	2.73000002	68	Moderate air quality	pm25	2018-12-05 19:56:00	64.4499969	1	1013	2.5999999	0	2018-12-05 11:58:00
Imperial Beach	City	San Diego	california	32.5839005	-117.112999	2.73000002	90	Moderate air quality	pm25	2018-12-05 20:56:00	61.5	90	1013	5.69999981	1.14999998	2018-12-05 11:58:00
Indian Wells	City	Riverside	california	33.7176018	-116.341003	2.71000004	25	Good air quality	pm10	2018-12-05 20:35:00	64.4000015	75	1013	1.5	0	2018-12-05 11:58:00
Indio	City	Riverside	california	33.7206001	-116.216003	2.61999989	53	Moderate air quality	pm25	2018-12-05 20:35:00	64.4000015	75	1013	1.5	0	2018-12-05 11:58:00
Industry	City	Los Angeles	california	34.0196991	-117.959	2.54999995	54	Moderate air quality	pm25	2018-12-05 20:53:00	57.4500008	90	1012	2.0999999	0	2018-12-05 11:58:00
Inglewood	City	Los Angeles	california	33.9617004	-118.352997	2.54999995	65	Moderate air quality	pm25	2018-12-05 20:53:00	56.9099998	90	1012	2.0999999	0.25	2018-12-05 11:58:00
Ione	City	Amador	california	38.3526993	-120.932999	1.60000002	65	Moderate air quality	pm25	2018-12-05 20:45:00	55.2200012	90	1012	1.61000001	0	2018-12-05 11:58:00
Irvine	City	Orange	california	33.6846008	-117.827003	2.58999991	47	Good air quality	pm25	2018-12-05 20:55:00	54.2999992	90	1013	4.0999999	0.75999999	2018-12-05 11:58:00
Irwindale	City	Los Angeles	california	34.1069984	-117.934998	2.54999995	49	Good air quality	pm25	2018-12-05 20:53:00	57.4500008	90	1012	5.0999999	0	2018-12-05 11:58:00
Isleton	City	Sacramento	california	38.1618996	-121.612	1.55999994	52	Moderate air quality	pm25	2018-12-05 20:53:00	54.6599998	90	1012	4.5999999	0	2018-12-05 11:58:00
Jackson	City	Amador	california	38.3488007	-120.774002	1.60000002	53	Moderate air quality	pm25	2018-12-05 20:55:00	55.8100014	90	1012	1.40999997	0	2018-12-05 11:58:00
Jurupa Valley	City	Riverside	california	33.9972	-117.485001	2.5999999	55	Moderate air quality	pm25	2018-12-05 20:35:00	53.5800018	90	1013	2.0999999	0.639999986	2018-12-05 11:58:00
Kerman	City	Fresno	california	36.7235985	-120.059998	1.87	62	Moderate air quality	pm25	2018-12-05 20:55:00	57.9900017	90	1012	1.5	0	2018-12-05 11:58:00
King City	City	Monterey	california	36.2126999	-121.125999	1.92999995	62	Moderate air quality	pm25	2018-12-05 19:53:00	57.0200005	90	1011	7.19999981	0	2018-12-05 11:58:00
Kingsburg	City	Fresno	california	36.5138016	-119.554001	1.91999996	55	Moderate air quality	pm25	2018-12-05 20:56:00	58.1899986	90	1011	3.0999999	0	2018-12-05 11:58:00
La CaÃ±ada Flintridge	City	Los Angeles	california	34.2067986	-118.199997	2.52999997	58	Moderate air quality	pm25	2018-12-05 20:53:00	56.6399994	90	1012	5.0999999	0	2018-12-05 11:58:00
La Habra	City	Orange	california	33.9319	-117.945999	2.55999994	51	Moderate air quality	pm25	2018-12-05 20:53:00	57.5400009	90	1012	5.0999999	0	2018-12-05 11:58:00
La Habra Heights	City	Los Angeles	california	33.9608002	-117.950996	2.55999994	36	Good air quality	pm25	2018-12-05 20:53:00	57.4500008	90	1012	2.0999999	0	2018-12-05 11:58:00
La Mesa	City	San Diego	california	32.7677994	-117.023003	2.72000003	76	Moderate air quality	pm25	2018-12-05 19:56:00	61	90	1013	4.5999999	0.379999995	2018-12-05 11:58:00
La Mirada	City	Los Angeles	california	33.9171982	-118.012001	2.55999994	53	Moderate air quality	pm25	2018-12-05 20:53:00	56.9300003	90	1012	2.0999999	0.25	2018-12-05 11:58:00
La Palma	City	Orange	california	33.8462982	-118.045998	2.55999994	42	Good air quality	pm25	2018-12-05 20:53:00	57.0200005	90	1013	4.0999999	0.25	2018-12-05 11:58:00
La Puente	City	Los Angeles	california	34.0200005	-117.949997	2.54999995	48	Good air quality	pm25	2018-12-05 20:53:00	56.5699997	90	1012	5.0999999	0	2018-12-05 11:58:00
La Quinta	City	Riverside	california	33.6633987	-116.309998	2.71000004	26	Good air quality	pm10	2018-12-05 20:35:00	64.4000015	75	1013	1.5	0	2018-12-05 11:58:00
La Verne	City	Los Angeles	california	34.1007996	-117.767998	2.54999995	54	Moderate air quality	pm25	2018-12-05 20:53:00	56.5900002	90	1012	5.0999999	0	2018-12-05 11:58:00
Lafayette	City	Contra Costa	california	37.8857994	-122.117996	1.59000003	54	Moderate air quality	pm25	2018-12-05 20:56:00	55.4500008	90	1012	4.5999999	0	2018-12-05 11:58:00
Laguna Beach	City	Orange	california	33.5427017	-117.785004	2.58999991	55	Moderate air quality	pm25	2018-12-05 20:55:00	53.8499985	90	1014	1.5	1.20000005	2018-12-05 11:58:00
Laguna Hills	City	Orange	california	33.5915985	-117.698997	2.6400001	41	Good air quality	pm25	2018-12-05 20:55:00	53.4599991	90	1014	1.5	1.20000005	2018-12-05 11:58:00
Laguna Niguel	City	Orange	california	33.5237007	-117.714996	2.6400001	52	Moderate air quality	pm25	2018-12-05 20:51:00	53.6500015	90	1011	7.69999981	0.469999999	2018-12-05 11:58:00
Laguna Woods	City	Orange	california	33.610199	-117.724998	2.6400001	39	Good air quality	pm25	2018-12-05 20:51:00	54.5200005	90	1013	4.0999999	0.469999999	2018-12-05 11:58:00
Lake Elsinore	City	Riverside	california	33.6680984	-117.327003	2.66000009	43	Good air quality	pm25	2018-12-05 20:55:00	52.25	90	1014	1.5	1.36000001	2018-12-05 11:58:00
Lake Forest	City	Orange	california	33.6469002	-117.685997	2.6400001	35	Good air quality	pm25	2018-12-05 20:35:00	54.75	90	1013	4.0999999	0.50999999	2018-12-05 11:58:00
Lakeport	City	Lake	california	39.0429001	-122.916	1.47000003	65	Moderate air quality	pm25	2018-12-05 19:56:00	51.0800018	90	1013	2.0999999	0	2018-12-05 11:58:00
Lakewood	City	Los Angeles	california	33.8535995	-118.134003	2.55999994	53	Moderate air quality	pm25	2018-12-05 20:53:00	56.9300003	90	1012	2.0999999	0.25	2018-12-05 11:58:00
Lancaster	City	Los Angeles	california	34.6867981	-118.153999	2.44000006	27	Good air quality	pm25	2018-12-05 20:53:00	50.1800003	90	1012	5.0999999	0	2018-12-05 11:58:00
Larkspur	City	Marin	california	37.9341011	-122.535004	1.57000005	33	Good air quality	pm25	2018-12-05 20:53:00	55.3100014	90	1012	4.5999999	0.25	2018-12-05 11:58:00
Lathrop	City	San Joaquin	california	37.8227005	-121.277	1.61000001	64	Moderate air quality	pm25	2018-12-05 20:53:00	55.2599983	90	1011	1.5	0	2018-12-05 11:58:00
Lawndale	City	Los Angeles	california	33.8871994	-118.352997	2.54999995	60	Moderate air quality	pm25	2018-12-05 20:53:00	56.9099998	90	1012	2.0999999	0.25	2018-12-05 11:58:00
Lemon Grove	City	San Diego	california	32.7425003	-117.030998	2.73000002	75	Moderate air quality	pm25	2018-12-05 20:56:00	60.5699997	90	1013	3.0999999	1.52999997	2018-12-05 11:58:00
Lemoore	City	Kings	california	36.3008003	-119.782997	1.94000006	59	Moderate air quality	pm10	2018-12-05 20:35:00	57.6899986	90	1012	1.5	0	2018-12-05 11:58:00
Lincoln	City	Placer	california	38.8916016	-121.292999	1.51999998	67	Moderate air quality	pm25	2018-12-05 20:53:00	53.6899986	1	1013	6.69999981	0	2018-12-05 11:58:00
Lindsay	City	Tulare	california	36.2029991	-119.087997	2.01999998	51	Moderate air quality	pm25	2018-12-05 20:55:00	58.6199989	90	1011	3.0999999	0	2018-12-05 11:58:00
Live Oak	City	Sutter	california	39.2756996	-121.660004	1.49000001	65	Moderate air quality	pm25	2018-12-05 20:53:00	53.4000015	1	1013	6.69999981	0	2018-12-05 11:58:00
Livermore	City	Alameda	california	37.6819	-121.767998	1.64999998	68	Moderate air quality	pm25	2018-12-05 20:56:00	56.4300003	75	1011	5.69999981	0.25	2018-12-05 11:58:00
Livingston	City	Merced	california	37.3869019	-120.723999	1.73000002	75	Moderate air quality	pm25	2018-12-05 20:53:00	57.25	90	1011	2.0999999	0	2018-12-05 11:58:00
Lodi	City	San Joaquin	california	38.1341019	-121.272003	1.57000005	72	Moderate air quality	pm25	2018-12-05 20:53:00	54.7900009	75	1012	2.0999999	0	2018-12-05 11:58:00
Loma Linda	City	San Bernardino	california	34.0483017	-117.261002	2.56999993	55	Moderate air quality	pm25	2018-12-05 20:35:00	52.2000008	90	1013	2.0999999	0.639999986	2018-12-05 11:58:00
Lomita	City	Los Angeles	california	33.7921982	-118.315002	2.54999995	34	Good air quality	pm25	2018-12-05 20:53:00	57	90	1012	5.0999999	0.25	2018-12-05 11:58:00
Lompoc	City	Santa Barbara	california	34.6390991	-120.458	2.26999998	49	Good air quality	pm25	2018-12-05 19:58:00	60.4900017	1	1010	4.5999999	0	2018-12-05 11:58:00
Long Beach	City	Los Angeles	california	33.7700996	-118.194	2.55999994	65	Moderate air quality	pm25	2018-12-05 20:53:00	57.0200005	90	1013	4.0999999	0.25	2018-12-05 11:58:00
Loomis	Town	Placer	california	38.8213005	-121.193001	1.54999995	65	Moderate air quality	pm25	2018-12-05 20:53:00	54.3699989	75	1012	2.0999999	0	2018-12-05 11:58:00
Los Alamitos	City	Orange	california	33.8031998	-118.071999	2.55999994	54	Moderate air quality	pm25	2018-12-05 20:53:00	56.9300003	90	1013	4.0999999	0.25	2018-12-05 11:58:00
Los Altos	City	Santa Clara	california	37.3852005	-122.113998	1.69000006	72	Moderate air quality	pm25	2018-12-05 20:53:00	56.6399994	75	1011	5.69999981	0.25	2018-12-05 11:58:00
Los Altos Hills	Town	Santa Clara	california	37.3796997	-122.137001	1.69000006	62	Moderate air quality	pm25	2018-12-05 20:56:00	56.7299995	20	1011	3.0999999	0	2018-12-05 11:58:00
Los Angeles	City	Los Angeles	california	34.0522003	-118.244003	2.52999997	70	Moderate air quality	pm25	2018-12-05 20:53:00	57.5200005	90	1012	5.0999999	0	2018-12-05 11:58:00
Los Banos	City	Merced	california	37.0583	-120.849998	1.76999998	59	Moderate air quality	pm25	2018-12-05 20:55:00	57.8499985	90	1011	2.0999999	0	2018-12-05 11:58:00
Los Gatos	Town	Santa Clara	california	37.2358017	-121.961998	1.75	61	Moderate air quality	pm25	2018-12-05 20:56:00	57.1100006	20	1011	3.0999999	0	2018-12-05 11:58:00
Loyalton	City	Sierra	california	39.6763	-120.240997	1.65999997	42	Good air quality	pm25	2018-12-05 20:55:00	30.7399998	90	1015	3.5999999	0	2018-12-05 11:58:00
Lynwood	City	Los Angeles	california	33.9303017	-118.210999	2.55999994	61	Moderate air quality	pm25	2018-12-05 20:53:00	57	90	1012	5.0999999	0.25	2018-12-05 11:58:00
Madera	City	Madera	california	36.9612999	-120.060997	1.84000003	77	Moderate air quality	pm25	2018-12-05 20:55:00	57.5200005	90	1012	1.5	0	2018-12-05 11:58:00
Malibu	City	Los Angeles	california	34.0259018	-118.779999	2.5	29	Good air quality	pm25	2018-12-05 20:57:00	58.1899986	90	1012	6.69999981	0	2018-12-05 11:58:00
Mammoth Lakes	Town	Mono	california	37.6484985	-118.972	1.97000003	41	Good air quality	pm25	2018-12-05 20:55:00	29.1200008	90	1014	0.959999979	0	2018-12-05 11:58:00
Manhattan Beach	City	Los Angeles	california	33.8847008	-118.411003	2.54999995	54	Moderate air quality	pm25	2018-12-05 20:53:00	58.0800018	90	1012	2.0999999	0	2018-12-05 11:58:00
Manteca	City	San Joaquin	california	37.7974014	-121.216003	1.62	82	Moderate air quality	pm25	2018-12-05 20:53:00	55.4399986	90	1011	1.5	0	2018-12-05 11:58:00
Maricopa	City	Kern	california	35.0588989	-119.401001	2.18000007	37	Good air quality	pm25	2018-12-05 19:54:00	60.9799995	90	1011	2.0999999	0	2018-12-05 11:58:00
Marina	City	Monterey	california	36.6843987	-121.802002	1.80999994	52	Moderate air quality	pm25	2018-12-05 20:55:00	58.1500015	90	1010	2.5999999	0	2018-12-05 11:58:00
Martinez	City	Contra Costa	california	38.0194016	-122.134003	1.55999994	62	Moderate air quality	pm25	2018-12-05 20:56:00	54.7299995	90	1012	4.5999999	0	2018-12-05 11:58:00
Marysville	City	Yuba	california	39.1456985	-121.591003	1.5	77	Moderate air quality	pm25	2018-12-05 20:53:00	54.9000015	1	1013	6.69999981	0	2018-12-05 11:58:00
Maywood	City	Los Angeles	california	33.9866982	-118.184998	2.55999994	63	Moderate air quality	pm25	2018-12-05 20:53:00	56.9099998	90	1012	2.0999999	0.25	2018-12-05 11:58:00
McFarland	City	Kern	california	35.6780014	-119.228996	2.0999999	65	Moderate air quality	pm25	2018-12-05 20:55:00	59.7700005	90	1011	2.5999999	0	2018-12-05 11:58:00
Mendota	City	Fresno	california	36.7536011	-120.382004	1.83000004	65	Moderate air quality	pm25	2018-12-05 20:56:00	56.8199997	90	1012	1.5	0	2018-12-05 11:58:00
Menifee	City	Riverside	california	33.6971016	-117.184998	2.6500001	15	Good air quality	pm10	2018-12-05 20:55:00	50.9399986	90	1014	1.5	1.36000001	2018-12-05 11:58:00
Menlo Park	City	San Mateo	california	37.4529991	-122.181999	1.69000006	89	Moderate air quality	pm25	2018-12-05 20:56:00	56.7299995	20	1011	3.0999999	0	2018-12-05 11:58:00
Merced	City	Merced	california	37.3022003	-120.483002	1.75	65	Moderate air quality	pm25	2018-12-05 20:53:00	57.2700005	90	1011	2.0999999	0	2018-12-05 11:58:00
Mill Valley	City	Marin	california	37.9059982	-122.544998	1.57000005	57	Moderate air quality	pm25	2018-12-05 20:56:00	54.9900017	90	1012	3.0999999	0	2018-12-05 11:58:00
Millbrae	City	San Mateo	california	37.5984993	-122.387001	1.62	69	Moderate air quality	pm25	2018-12-05 20:56:00	55.7400017	75	1012	4.5999999	0	2018-12-05 11:58:00
Milpitas	City	Santa Clara	california	37.4323006	-121.900002	1.69000006	75	Moderate air quality	pm25	2018-12-05 20:56:00	56.7099991	20	1011	3.0999999	0	2018-12-05 11:58:00
Mission Viejo	City	Orange	california	33.5969009	-117.657997	2.6400001	41	Good air quality	pm25	2018-12-05 20:55:00	53.1300011	90	1014	1.5	1.36000001	2018-12-05 11:58:00
Modesto	City	Stanislaus	california	37.6390991	-120.997002	1.66999996	94	Moderate air quality	pm25	2018-12-05 20:53:00	56.4599991	90	1011	1.5	0	2018-12-05 11:58:00
Monrovia	City	Los Angeles	california	34.1442986	-118.001999	2.52999997	56	Moderate air quality	pm25	2018-12-05 20:53:00	56.6399994	90	1012	5.0999999	0	2018-12-05 11:58:00
Montague	City	Siskiyou	california	41.728199	-122.528	1.25	51	Moderate air quality	pm25	2018-12-05 20:54:00	42.3899994	75	1014	1.36000001	0	2018-12-05 11:58:00
Montclair	City	San Bernardino	california	34.0774994	-117.690002	2.58999991	51	Moderate air quality	pm25	2018-12-05 20:53:00	57.5800018	90	1012	5.0999999	0	2018-12-05 11:58:00
Monte Sereno	City	Santa Clara	california	37.2363014	-121.991997	1.75	56	Moderate air quality	pm25	2018-12-05 20:56:00	57.1100006	20	1011	3.0999999	0	2018-12-05 11:58:00
Montebello	City	Los Angeles	california	34.0164986	-118.113998	2.52999997	52	Moderate air quality	pm25	2018-12-05 20:53:00	57.4300003	90	1012	2.0999999	0	2018-12-05 11:58:00
Monterey	City	Monterey	california	36.6002007	-121.894997	1.80999994	61	Moderate air quality	pm25	2018-12-05 20:55:00	58.1699982	90	1010	2.5999999	0	2018-12-05 11:58:00
Monterey Park	City	Los Angeles	california	34.0625	-118.123001	2.52999997	58	Moderate air quality	pm25	2018-12-05 20:53:00	57.4300003	90	1012	2.0999999	0	2018-12-05 11:58:00
Moorpark	City	Ventura	california	34.2855988	-118.882004	2.43000007	51	Moderate air quality	pm25	2018-12-05 20:57:00	58.2599983	90	1012	6.69999981	0	2018-12-05 11:58:00
Moraga	Town	Contra Costa	california	37.8348999	-122.129997	1.59000003	40	Good air quality	pm25	2018-12-05 20:56:00	55.4500008	75	1012	4.5999999	0	2018-12-05 11:58:00
Moreno Valley	City	Riverside	california	33.9425011	-117.230003	2.61999989	51	Moderate air quality	pm25	2018-12-05 20:35:00	51.6199989	90	1013	2.0999999	0.589999974	2018-12-05 11:58:00
Morgan Hill	City	Santa Clara	california	37.1305008	-121.653999	1.75999999	64	Moderate air quality	pm25	2018-12-05 20:56:00	57.4500008	20	1011	3.0999999	0	2018-12-05 11:58:00
Morro Bay	City	San Luis Obispo	california	35.3658981	-120.849998	2.06999993	28	Good air quality	o3	2018-12-05 20:31:00	58.4199982	90	1011	1.5	1.51999998	2018-12-05 11:58:00
Mount Shasta	City	Siskiyou	california	41.3098984	-122.310997	1.29999995	58	Moderate air quality	pm25	2018-12-05 20:54:00	43.6599998	75	1014	1.05999994	0	2018-12-05 11:58:00
Mountain View	City	Santa Clara	california	37.3861008	-122.084	1.69000006	80	Moderate air quality	pm25	2018-12-05 20:56:00	56.7099991	20	1011	3.0999999	0	2018-12-05 11:58:00
Murrieta	City	Riverside	california	33.5539017	-117.213997	2.6500001	17	Good air quality	o3	2018-12-05 20:55:00	51.3300018	90	1014	1.5	1.36000001	2018-12-05 11:58:00
Napa	City	Napa	california	38.2975006	-122.287003	1.52999997	55	Moderate air quality	pm25	2018-12-05 20:53:00	54.6399994	90	1012	4.5999999	0.25	2018-12-05 11:58:00
National City	City	San Diego	california	32.6781006	-117.098999	2.73000002	80	Moderate air quality	pm25	2018-12-05 20:56:00	61.3199997	90	1013	5.69999981	1.14999998	2018-12-05 11:58:00
Needles	City	San Bernardino	california	34.8480988	-114.613998	2.41000009	59	Moderate air quality	pm25	2018-12-05 20:56:00	58.2999992	1	1014	4.0999999	0	2018-12-05 11:58:00
Nevada City	City	Nevada	california	39.2616005	-121.015999	1.54999995	34	Good air quality	pm25	2018-12-05 20:53:00	52.8100014	90	1013	1.71000004	0	2018-12-05 11:58:00
Newark	City	Alameda	california	37.5297012	-122.040001	1.62	61	Moderate air quality	pm25	2018-12-05 20:56:00	56.7099991	20	1011	3.0999999	0	2018-12-05 11:58:00
Newman	City	Stanislaus	california	37.3138008	-121.021004	1.72000003	70	Moderate air quality	pm25	2018-12-05 20:55:00	57.6699982	90	1011	1.5	0	2018-12-05 11:58:00
Newport Beach	City	Orange	california	33.6189003	-117.93	2.58999991	34	Good air quality	pm25	2018-12-05 20:55:00	54.7299995	90	1011	7.69999981	1.26999998	2018-12-05 11:58:00
Norco	City	Riverside	california	33.9310989	-117.549004	2.5999999	30	Good air quality	pm10	2018-12-05 20:47:00	54.25	90	1012	2.0999999	0.639999986	2018-12-05 11:58:00
Norwalk	City	Los Angeles	california	33.9021988	-118.082001	2.55999994	58	Moderate air quality	pm25	2018-12-05 20:53:00	56.9300003	90	1012	2.0999999	0.25	2018-12-05 11:58:00
Novato	City	Marin	california	38.107399	-122.57	1.53999996	60	Moderate air quality	pm25	2018-12-05 20:55:00	54.3400002	90	1012	3.0999999	0	2018-12-05 11:58:00
Oakdale	City	Stanislaus	california	37.7666016	-120.847	1.63	84	Moderate air quality	pm25	2018-12-05 20:55:00	56.3499985	90	1011	1.5	0	2018-12-05 11:58:00
Oakland	City	Alameda	california	37.8044014	-122.271004	1.58000004	67	Moderate air quality	pm25	2018-12-05 20:56:00	55.4500008	75	1012	4.5999999	0	2018-12-05 11:58:00
Oakley	City	Contra Costa	california	37.9973984	-121.711998	1.60000002	64	Moderate air quality	pm25	2018-12-05 20:53:00	55.8499985	90	1012	4.5999999	0	2018-12-05 11:58:00
Oceanside	City	San Diego	california	33.1959	-117.378998	2.68000007	57	Moderate air quality	pm25	2018-12-05 20:55:00	56.3199997	90	1013	2.5999999	1.26999998	2018-12-05 11:58:00
Ojai	City	Ventura	california	34.4480019	-119.242996	2.42000008	48	Good air quality	pm25	2018-12-05 20:57:00	56.7000008	90	1011	7.19999981	0.25	2018-12-05 11:58:00
Ontario	City	San Bernardino	california	34.0633011	-117.651001	2.58999991	49	Good air quality	pm25	2018-12-05 20:53:00	57.2000008	90	1012	5.0999999	0	2018-12-05 11:58:00
Orange	City	Orange	california	33.787899	-117.852997	2.55999994	54	Moderate air quality	pm25	2018-12-05 20:53:00	56.9500008	90	1013	4.0999999	0.25	2018-12-05 11:58:00
Orange Cove	City	Fresno	california	36.6244011	-119.314003	1.94000006	51	Moderate air quality	pm25	2018-12-05 20:56:00	58.1899986	90	1011	3.0999999	0	2018-12-05 11:58:00
Orinda	City	Contra Costa	california	37.8771019	-122.18	1.59000003	58	Moderate air quality	pm25	2018-12-05 20:56:00	55.5800018	90	1012	4.5999999	0.25	2018-12-05 11:58:00
Orland	City	Glenn	california	39.7473984	-122.195999	1.45000005	38	Good air quality	pm25	2018-12-05 19:54:00	50	90	1016	3.0999999	0.25	2018-12-05 11:58:00
Oroville	City	Butte	california	39.5138016	-121.556	1.49000001	53	Moderate air quality	pm25	2018-12-05 20:53:00	52.9000015	1	1013	6.69999981	0	2018-12-05 11:58:00
Oxnard	City	Ventura	california	34.1974983	-119.177002	2.46000004	68	Moderate air quality	pm25	2018-12-05 20:57:00	56.7099991	90	1012	6.69999981	0.25	2018-12-05 11:58:00
Pacific Grove	City	Monterey	california	36.6176987	-121.917	1.80999994	48	Good air quality	pm25	2018-12-05 20:55:00	58.1699982	90	1010	2.5999999	0	2018-12-05 11:58:00
Pacifica	City	San Mateo	california	37.6138	-122.487	1.62	52	Moderate air quality	pm25	2018-12-05 20:56:00	55.7400017	90	1011	5.0999999	0.25	2018-12-05 11:58:00
Palm Desert	City	Riverside	california	33.7221985	-116.374001	2.71000004	51	Moderate air quality	pm25	2018-12-05 20:35:00	64.4000015	75	1013	1.5	0	2018-12-05 11:58:00
Palm Springs	City	Riverside	california	33.8302994	-116.544998	2.69000006	41	Good air quality	pm25	2018-12-05 20:35:00	51.2400017	90	1013	2.0999999	0.639999986	2018-12-05 11:58:00
Palmdale	City	Los Angeles	california	34.5793991	-118.115997	2.44000006	44	Good air quality	pm25	2018-12-05 20:58:00	51.9099998	90	1014	1.96000004	0	2018-12-05 11:58:00
Palo Alto	City	Santa Clara	california	37.4418983	-122.142998	1.69000006	83	Moderate air quality	pm25	2018-12-05 20:56:00	56.7299995	20	1011	3.0999999	0	2018-12-05 11:58:00
Palos Verdes Estates	City	Los Angeles	california	33.8005981	-118.389999	2.54999995	36	Good air quality	pm25	2018-12-05 20:53:00	57.6899986	90	1012	2.0999999	0.25	2018-12-05 11:58:00
Paradise	Town	Butte	california	39.7596016	-121.622002	1.51999998	53	Moderate air quality	pm25	2018-12-05 19:54:00	50	90	1016	3.0999999	0.25	2018-12-05 11:58:00
Paramount	City	Los Angeles	california	33.8894997	-118.160004	2.55999994	32	Good air quality	pm25	2018-12-05 20:53:00	56.4799995	90	1012	2.0999999	0.25	2018-12-05 11:58:00
Parlier	City	Fresno	california	36.611599	-119.527	1.91999996	52	Moderate air quality	pm25	2018-12-05 20:55:00	58.1500015	90	1011	3.0999999	0	2018-12-05 11:58:00
Pasadena	City	Los Angeles	california	34.1478004	-118.144997	2.52999997	60	Moderate air quality	pm25	2018-12-05 20:53:00	56.6399994	90	1012	5.0999999	0	2018-12-05 11:58:00
Paso Robles	City	San Luis Obispo	california	35.6369019	-120.654999	2.04999995	25	Good air quality	o3	2018-12-05 20:53:00	54.6300011	90	1010	1.55999994	1.51999998	2018-12-05 11:58:00
Patterson	City	Stanislaus	california	37.4715996	-121.129997	1.72000003	75	Moderate air quality	pm25	2018-12-05 20:55:00	57.0600014	90	1011	1.5	0	2018-12-05 11:58:00
Perris	City	Riverside	california	33.7825012	-117.228996	2.61999989	55	Moderate air quality	pm25	2018-12-05 20:55:00	49.5999985	90	1014	1.5	1.26999998	2018-12-05 11:58:00
Petaluma	City	Sonoma	california	38.232399	-122.637001	1.53999996	62	Moderate air quality	pm25	2018-12-05 20:55:00	54.7900009	90	1012	2.5999999	0	2018-12-05 11:58:00
Pico Rivera	City	Los Angeles	california	33.9831009	-118.097	2.55999994	54	Moderate air quality	pm25	2018-12-05 20:53:00	57.6500015	90	1012	2.0999999	0	2018-12-05 11:58:00
Piedmont	City	Alameda	california	37.8244019	-122.232002	1.59000003	35	Good air quality	pm25	2018-12-05 20:56:00	55.4500008	75	1012	4.5999999	0	2018-12-05 11:58:00
Pinole	City	Contra Costa	california	38.0043983	-122.299004	1.53999996	58	Moderate air quality	pm25	2018-12-05 20:56:00	54.9500008	90	1012	4.5999999	0	2018-12-05 11:58:00
Pismo Beach	City	San Luis Obispo	california	35.1427994	-120.640999	2.11999989	38	Good air quality	pm25	2018-12-05 20:53:00	59.8499985	90	1010	1.55999994	1.51999998	2018-12-05 11:58:00
Pittsburg	City	Contra Costa	california	38.0279999	-121.885002	1.54999995	64	Moderate air quality	pm25	2018-12-05 21:00:00	55.3600006	90	1012	4.5999999	0	2018-12-05 11:58:00
Placentia	City	Orange	california	33.8711014	-117.862999	2.55999994	48	Good air quality	pm25	2018-12-05 20:53:00	57	90	1013	3.5999999	0	2018-12-05 11:58:00
Placerville	City	El Dorado	california	38.729599	-120.799004	1.59000003	52	Moderate air quality	pm25	2018-12-05 20:45:00	53.7299995	75	1012	2.0999999	0	2018-12-05 11:58:00
Pleasant Hill	City	Contra Costa	california	37.9480019	-122.060997	1.59000003	68	Moderate air quality	pm25	2018-12-05 21:00:00	55.3499985	90	1012	4.5999999	0	2018-12-05 11:58:00
Pleasanton	City	Alameda	california	37.6623993	-121.875	1.64999998	59	Moderate air quality	pm25	2018-12-05 20:56:00	56.4300003	75	1011	5.69999981	0	2018-12-05 11:58:00
Plymouth	City	Amador	california	38.4818993	-120.845001	1.60000002	49	Good air quality	pm25	2018-12-05 20:55:00	55.5099983	90	1012	1.40999997	0	2018-12-05 11:58:00
Point Arena	City	Mendocino	california	38.9087982	-123.693001	1.47000003	46	Good air quality	pm25	2018-12-05 19:56:00	51.0800018	90	1013	2.0999999	0	2018-12-05 11:58:00
Pomona	City	Los Angeles	california	34.0550995	-117.75	2.58999991	54	Moderate air quality	pm25	2018-12-05 20:53:00	57.0200005	90	1013	3.5999999	0	2018-12-05 11:58:00
Port Hueneme	City	Ventura	california	34.1478004	-119.195	2.46000004	61	Moderate air quality	pm25	2018-12-05 20:57:00	56.7099991	90	1012	6.69999981	0.25	2018-12-05 11:58:00
Porterville	City	Tulare	california	36.0652008	-119.016998	2.01999998	69	Moderate air quality	pm25	2018-12-05 20:56:00	58.2999992	90	1011	4.0999999	0	2018-12-05 11:58:00
Portola	City	Plumas	california	39.8105011	-120.469002	1.62	53	Moderate air quality	pm25	2018-12-05 20:35:00	31.3299999	90	1015	3.5999999	0	2018-12-05 11:58:00
Portola Valley	Town	San Mateo	california	37.3841019	-122.235001	1.69000006	64	Moderate air quality	pm25	2018-12-05 20:56:00	56.8400002	20	1011	3.0999999	0	2018-12-05 11:58:00
Poway	City	San Diego	california	32.9627991	-117.036003	2.72000003	43	Good air quality	pm25	2018-12-05 20:56:00	58.8600006	90	1013	3.0999999	1.48000002	2018-12-05 11:58:00
Rancho Cordova	City	Sacramento	california	38.5890999	-121.303001	1.53999996	70	Moderate air quality	pm25	2018-12-05 21:00:00	54.9500008	75	1012	2.0999999	0	2018-12-05 11:58:00
Rancho Cucamonga	City	San Bernardino	california	34.1063995	-117.593002	2.58999991	34	Good air quality	pm25	2018-12-05 20:47:00	54.7900009	90	1013	3.5999999	1.01999998	2018-12-05 11:58:00
Rancho Mirage	City	Riverside	california	33.7397003	-116.413002	2.71000004	26	Good air quality	pm25	2018-12-05 20:35:00	54.0900002	75	1013	1.5	0.25	2018-12-05 11:58:00
Rancho Palos Verdes	City	Los Angeles	california	33.7444992	-118.387001	2.58999991	34	Good air quality	pm25	2018-12-05 20:53:00	57.6899986	90	1011	7.69999981	0.25	2018-12-05 11:58:00
Rancho Santa Margarita	City	Orange	california	33.6402016	-117.602997	2.6400001	27	Good air quality	pm10	2018-12-05 20:55:00	52.7900009	90	1014	1.5	1.36000001	2018-12-05 11:58:00
Red Bluff	City	Tehama	california	40.1785011	-122.236	1.41999996	43	Good air quality	pm25	2018-12-05 19:54:00	51.7099991	90	1016	3.0999999	0.25	2018-12-05 11:58:00
Redding	City	Shasta	california	40.5864983	-122.391998	1.34000003	90	Moderate air quality	pm25	2018-12-05 20:50:00	50.0200005	1	1014	1.5	0.25	2018-12-05 11:58:00
Redlands	City	San Bernardino	california	34.0555992	-117.182999	2.6400001	63	Moderate air quality	pm25	2018-12-05 20:47:00	47.8800011	90	1013	3.5999999	0.639999986	2018-12-05 11:58:00
Redondo Beach	City	Los Angeles	california	33.8492012	-118.388	2.54999995	59	Moderate air quality	pm25	2018-12-05 20:53:00	57.6899986	90	1012	2.0999999	0.25	2018-12-05 11:58:00
Redwood City	City	San Mateo	california	37.485199	-122.236	1.69000006	82	Moderate air quality	pm25	2018-12-05 20:56:00	55.9599991	20	1011	3.0999999	0	2018-12-05 11:58:00
Reedley	City	Fresno	california	36.5962982	-119.449997	1.94000006	53	Moderate air quality	pm25	2018-12-05 20:56:00	57.6899986	90	1011	3.0999999	0	2018-12-05 11:58:00
Rialto	City	San Bernardino	california	34.1063995	-117.370003	2.56999993	55	Moderate air quality	pm25	2018-12-05 20:35:00	52.1199989	90	1013	2.0999999	0.639999986	2018-12-05 11:58:00
Richmond	City	Contra Costa	california	37.9357986	-122.348	1.58000004	66	Moderate air quality	pm25	2018-12-05 20:56:00	54.9500008	90	1012	3.0999999	0	2018-12-05 11:58:00
Ridgecrest	City	Kern	california	35.6225014	-117.670998	2.23000002	41	Good air quality	pm25	2018-12-05 20:56:00	53.9599991	90	1013	1.65999997	0	2018-12-05 11:58:00
Rio Dell	City	Humboldt	california	40.4992981	-124.106003	1.38999999	23	Good air quality	o3	2018-12-05 20:35:00	61.0299988	1	1013	2.0999999	0	2018-12-05 11:58:00
Rio Vista	City	Solano	california	38.1557999	-121.691002	1.55999994	46	Good air quality	pm25	2018-12-05 21:00:00	55.5099983	90	1013	4.5999999	0	2018-12-05 11:58:00
Ripon	City	San Joaquin	california	37.7394981	-121.135002	1.65999997	68	Moderate air quality	pm25	2018-12-05 20:53:00	55.7400017	90	1011	1.5	0	2018-12-05 11:58:00
Riverbank	City	Stanislaus	california	37.7360001	-120.934998	1.66999996	73	Moderate air quality	pm25	2018-12-05 20:55:00	56.7700005	90	1011	1.5	0	2018-12-05 11:58:00
Riverside	City	Riverside	california	33.9805984	-117.375	2.5999999	59	Moderate air quality	pm25	2018-12-05 20:47:00	52.0499992	90	1013	3.5999999	0.639999986	2018-12-05 11:58:00
Rocklin	City	Placer	california	38.790699	-121.236	1.54999995	68	Moderate air quality	pm25	2018-12-05 21:00:00	54.5499992	75	1012	2.0999999	0	2018-12-05 11:58:00
Rohnert Park	City	Sonoma	california	38.3395996	-122.700996	1.51999998	44	Good air quality	pm25	2018-12-05 20:55:00	54.6100006	90	1012	2.5999999	0	2018-12-05 11:58:00
Rolling Hills	City	Los Angeles	california	33.757	-118.353996	2.54999995	34	Good air quality	pm25	2018-12-05 20:53:00	57.6899986	90	1012	2.0999999	0.25	2018-12-05 11:58:00
Rolling Hills Estates	City	Los Angeles	california	33.7877998	-118.358002	2.54999995	50	Good air quality	pm25	2018-12-05 20:53:00	57.6899986	90	1012	2.0999999	0.25	2018-12-05 11:58:00
Rosemead	City	Los Angeles	california	34.0806007	-118.072998	2.52999997	56	Moderate air quality	pm25	2018-12-05 20:53:00	56.9799995	90	1012	5.0999999	0	2018-12-05 11:58:00
Roseville	City	Placer	california	38.7521019	-121.288002	1.51999998	68	Moderate air quality	pm25	2018-12-05 21:00:00	54.5499992	75	1012	2.0999999	0	2018-12-05 11:58:00
Ross	Town	Marin	california	37.9623985	-122.555	1.57000005	46	Good air quality	pm25	2018-12-05 20:55:00	54.7200012	90	1012	3.0999999	0	2018-12-05 11:58:00
Sacramento	City	Sacramento	california	38.5816002	-121.494003	1.53999996	65	Moderate air quality	pm25	2018-12-05 20:53:00	54.8100014	75	1012	2.0999999	0	2018-12-05 11:58:00
St. Helena	City	Napa	california	38.5051994	-122.470001	1.51999998	45	Good air quality	pm25	2018-12-05 21:00:00	54.4599991	90	1012	2.5999999	0	2018-12-05 11:58:00
Salinas	City	Monterey	california	36.6777	-121.655998	1.82000005	55	Moderate air quality	pm25	2018-12-05 20:55:00	58.1500015	90	1010	2.5999999	0	2018-12-05 11:58:00
San Anselmo	Town	Marin	california	37.9746017	-122.561996	1.57000005	46	Good air quality	pm25	2018-12-05 20:55:00	54.7200012	90	1012	3.0999999	0	2018-12-05 11:58:00
San Bernardino	City	San Bernardino	california	34.1082993	-117.290001	2.56999993	56	Moderate air quality	pm25	2018-12-05 20:47:00	50.2700005	90	1013	3.5999999	0.639999986	2018-12-05 11:58:00
San Bruno	City	San Mateo	california	37.6305008	-122.411003	1.62	70	Moderate air quality	pm25	2018-12-05 20:56:00	55.7400017	75	1012	4.5999999	0	2018-12-05 11:58:00
San Carlos	City	San Mateo	california	37.5071983	-122.261002	1.62	83	Moderate air quality	pm25	2018-12-05 20:56:00	55.9799995	20	1011	3.0999999	0	2018-12-05 11:58:00
San Clemente	City	Orange	california	33.4273987	-117.612999	2.61999989	52	Moderate air quality	pm25	2018-12-05 20:55:00	52.5600014	90	1014	1.5	1.36000001	2018-12-05 11:58:00
San Diego	City	San Diego	california	32.7156982	-117.161003	2.73000002	83	Moderate air quality	pm25	2018-12-05 20:56:00	60.5499992	90	1013	4.5999999	1.52999997	2018-12-05 11:58:00
San Dimas	City	Los Angeles	california	34.1067009	-117.806999	2.54999995	53	Moderate air quality	pm25	2018-12-05 20:53:00	55.3600006	90	1013	3.5999999	1.01999998	2018-12-05 11:58:00
San Fernando	City	Los Angeles	california	34.2818985	-118.439003	2.49000001	62	Moderate air quality	pm25	2018-12-05 20:57:00	55.9000015	90	1012	5.0999999	0	2018-12-05 11:58:00
San Francisco	City and county	San Francisco	california	37.7748985	-122.418999	1.58000004	69	Moderate air quality	pm25	2018-12-05 20:56:00	55.5800018	75	1012	4.5999999	0	2018-12-05 11:58:00
San Gabriel	City	Los Angeles	california	34.0960999	-118.106003	2.52999997	57	Moderate air quality	pm25	2018-12-05 20:53:00	56.9799995	90	1012	5.0999999	0	2018-12-05 11:58:00
San Jacinto	City	Riverside	california	33.7839012	-116.959	2.69000006	54	Moderate air quality	pm25	2018-12-05 20:55:00	47.7700005	90	1013	2.0999999	1.01999998	2018-12-05 11:58:00
San Joaquin	City	Fresno	california	36.6066017	-120.189003	1.87	57	Moderate air quality	pm25	2018-12-05 20:55:00	57.9900017	90	1012	1.5	0	2018-12-05 11:58:00
San Jose	City	Santa Clara	california	37.3381996	-121.886002	1.69000006	83	Moderate air quality	pm25	2018-12-05 20:56:00	56.9700012	20	1011	3.0999999	0	2018-12-05 11:58:00
San Juan Bautista	City	San Benito	california	36.8455009	-121.538002	1.77999997	31	Good air quality	pm25	2018-12-05 20:55:00	58.2999992	75	1010	2.91000009	0	2018-12-05 11:58:00
San Juan Capistrano	City	Orange	california	33.5018997	-117.663002	2.6400001	55	Moderate air quality	pm25	2018-12-05 20:55:00	52.3199997	90	1014	1.5	1.36000001	2018-12-05 11:58:00
San Leandro	City	Alameda	california	37.7248993	-122.155998	1.62	57	Moderate air quality	pm25	2018-12-05 20:56:00	55.5600014	75	1012	4.5999999	0	2018-12-05 11:58:00
San Luis Obispo	City	San Luis Obispo	california	35.2827988	-120.660004	2.0999999	29	Good air quality	o3	2018-12-05 20:53:00	59.2299995	90	1010	1.55999994	1.51999998	2018-12-05 11:58:00
San Marcos	City	San Diego	california	33.1433983	-117.166	2.71000004	42	Good air quality	pm25	2018-12-05 20:56:00	58.6599998	90	1013	1.5	1.48000002	2018-12-05 11:58:00
San Marino	City	Los Angeles	california	34.1213989	-118.106003	2.52999997	58	Moderate air quality	pm25	2018-12-05 20:53:00	55.5099983	90	1012	5.0999999	0	2018-12-05 11:58:00
San Mateo	City	San Mateo	california	37.5629997	-122.325996	1.62	79	Moderate air quality	pm25	2018-12-05 20:56:00	55.7799988	75	1012	4.5999999	0	2018-12-05 11:58:00
San Pablo	City	Contra Costa	california	37.962101	-122.346001	1.58000004	63	Moderate air quality	pm25	2018-12-05 20:56:00	54.9500008	90	1012	3.0999999	0	2018-12-05 11:58:00
San Rafael	City	Marin	california	37.9734993	-122.530998	1.57000005	63	Moderate air quality	pm25	2018-12-05 20:55:00	54.7299995	90	1012	3.0999999	0	2018-12-05 11:58:00
San Ramon	City	Contra Costa	california	37.7798996	-121.977997	1.61000001	62	Moderate air quality	pm25	2018-12-05 20:56:00	55.5600014	75	1011	5.69999981	0	2018-12-05 11:58:00
Sand City	City	Monterey	california	36.6171989	-121.848	1.80999994	28	Good air quality	o3	2018-12-05 20:55:00	58.1500015	90	1010	2.5999999	0	2018-12-05 11:58:00
Sanger	City	Fresno	california	36.7080002	-119.556	1.91999996	55	Moderate air quality	pm25	2018-12-05 20:55:00	58.1500015	90	1011	3.0999999	0	2018-12-05 11:58:00
Santa Ana	City	Orange	california	33.7454987	-117.867996	2.58999991	58	Moderate air quality	pm25	2018-12-05 20:55:00	56.3400002	90	1013	4.0999999	1.26999998	2018-12-05 11:58:00
Santa Barbara	City	Santa Barbara	california	34.4207993	-119.697998	2.38000011	47	Good air quality	pm25	2018-12-05 20:57:00	56.6800003	90	1011	7.19999981	0.25	2018-12-05 11:58:00
Santa Clara	City	Santa Clara	california	37.3540993	-121.955002	1.69000006	72	Moderate air quality	pm25	2018-12-05 20:56:00	56.7900009	20	1011	3.0999999	0	2018-12-05 11:58:00
Santa Clarita	City	Los Angeles	california	34.3917007	-118.542999	2.45000005	15	Good air quality	o3	2018-12-05 20:57:00	55.8499985	90	1012	5.0999999	0.25	2018-12-05 11:58:00
Santa Cruz	City	Santa Cruz	california	36.9740982	-122.030998	1.75999999	63	Moderate air quality	pm25	2018-12-05 20:56:00	57.9900017	90	1010	2.5999999	0	2018-12-05 11:58:00
Santa Fe Springs	City	Los Angeles	california	33.9472008	-118.084999	2.55999994	51	Moderate air quality	pm25	2018-12-05 20:53:00	56.5	90	1012	2.0999999	0.25	2018-12-05 11:58:00
Santa Maria	City	Santa Barbara	california	34.9529991	-120.435997	2.19000006	42	Good air quality	pm25	2018-12-05 19:58:00	61.4700012	90	1010	4.5999999	0	2018-12-05 11:58:00
Santa Monica	City	Los Angeles	california	34.0195007	-118.490997	2.5	69	Moderate air quality	pm25	2018-12-05 20:57:00	57.4700012	90	1012	5.0999999	0.25	2018-12-05 11:58:00
Santa Paula	City	Ventura	california	34.3541985	-119.058998	2.42000008	60	Moderate air quality	pm25	2018-12-05 20:57:00	56.6800003	90	1012	6.69999981	0.25	2018-12-05 11:58:00
Santa Rosa	City	Sonoma	california	38.4403992	-122.713997	1.51999998	66	Moderate air quality	pm25	2018-12-05 20:55:00	54.4799995	90	1012	2.5999999	0	2018-12-05 11:58:00
Santee	City	San Diego	california	32.8384018	-116.973999	2.76999998	64	Moderate air quality	pm25	2018-12-05 20:56:00	58.8400002	90	1013	3.0999999	1.48000002	2018-12-05 11:58:00
Saratoga	City	Santa Clara	california	37.2638016	-122.023003	1.69000006	56	Moderate air quality	pm25	2018-12-05 20:56:00	57.1100006	20	1011	3.0999999	0	2018-12-05 11:58:00
Sausalito	City	Marin	california	37.8591003	-122.485001	1.58000004	51	Moderate air quality	pm25	2018-12-05 20:56:00	54.9900017	75	1012	4.5999999	0	2018-12-05 11:58:00
Scotts Valley	City	Santa Cruz	california	37.0511017	-122.014999	1.75	38	Good air quality	pm25	2018-12-05 20:56:00	57.8300018	20	1011	3.0999999	0	2018-12-05 11:58:00
Seal Beach	City	Orange	california	33.7414017	-118.105003	2.5999999	40	Good air quality	pm25	2018-12-05 20:53:00	56.5	90	1013	4.0999999	0.25	2018-12-05 11:58:00
Seaside	City	Monterey	california	36.6148987	-121.821999	1.80999994	47	Good air quality	pm25	2018-12-05 20:55:00	58.1500015	90	1010	2.5999999	0	2018-12-05 11:58:00
Sebastopol	City	Sonoma	california	38.4020996	-122.823997	1.5	59	Moderate air quality	pm25	2018-12-05 20:55:00	54.7200012	90	1012	2.5999999	0	2018-12-05 11:58:00
Selma	City	Fresno	california	36.5708008	-119.612	1.91999996	60	Moderate air quality	pm25	2018-12-05 20:55:00	58.1699982	90	1011	3.0999999	0	2018-12-05 11:58:00
Shafter	City	Kern	california	35.5004997	-119.272003	2.06999993	46	Good air quality	pm25	2018-12-05 20:56:00	59.2900009	90	1011	2.5999999	0	2018-12-05 11:58:00
Shasta Lake	City	Shasta	california	40.6804008	-122.371002	1.34000003	67	Moderate air quality	pm25	2018-12-05 20:54:00	50.4300003	90	1014	2.5999999	0	2018-12-05 11:58:00
Sierra Madre	City	Los Angeles	california	34.1617012	-118.053001	2.52999997	56	Moderate air quality	pm25	2018-12-05 20:53:00	55.5299988	90	1012	5.0999999	0	2018-12-05 11:58:00
Signal Hill	City	Los Angeles	california	33.8045006	-118.167999	2.55999994	58	Moderate air quality	pm25	2018-12-05 20:53:00	56.4799995	90	1012	2.0999999	0.25	2018-12-05 11:58:00
Simi Valley	City	Ventura	california	34.2694016	-118.780998	2.43000007	28	Good air quality	o3	2018-12-05 20:57:00	58.2400017	90	1012	6.69999981	0.25	2018-12-05 11:58:00
Solana Beach	City	San Diego	california	32.9911995	-117.271004	2.73000002	57	Moderate air quality	pm25	2018-12-05 20:56:00	57.7599983	90	1013	1.5	1.26999998	2018-12-05 11:58:00
Soledad	City	Monterey	california	36.4247017	-121.325996	1.88999999	61	Moderate air quality	pm25	2018-12-05 20:55:00	57.9000015	90	1010	2.5999999	0	2018-12-05 11:58:00
Solvang	City	Santa Barbara	california	34.5957985	-120.138	2.28999996	33	Good air quality	o3	2018-12-05 19:58:00	61.8300018	1	1010	4.5999999	0	2018-12-05 11:58:00
Sonoma	City	Sonoma	california	38.2919006	-122.458	1.52999997	54	Moderate air quality	pm25	2018-12-05 21:00:00	54.6399994	90	1012	2.5999999	0	2018-12-05 11:58:00
Sonora	City	Tuolumne	california	37.9828987	-120.382004	1.69000006	70	Moderate air quality	pm25	2018-12-05 20:55:00	55.6199989	90	1012	1.5	0	2018-12-05 11:58:00
South El Monte	City	Los Angeles	california	34.0519981	-118.046997	2.52999997	55	Moderate air quality	pm25	2018-12-05 20:53:00	56.9799995	90	1012	2.0999999	0	2018-12-05 11:58:00
South Gate	City	Los Angeles	california	33.9547005	-118.211998	2.55999994	61	Moderate air quality	pm25	2018-12-05 20:53:00	56.4799995	90	1012	2.0999999	0.25	2018-12-05 11:58:00
South Lake Tahoe	City	El Dorado	california	38.9398994	-119.976997	1.74000001	26	Good air quality	o3	2018-12-05 20:55:00	32.4500008	90	1015	5.0999999	0	2018-12-05 11:58:00
South Pasadena	City	Los Angeles	california	34.1161003	-118.150002	2.52999997	58	Moderate air quality	pm25	2018-12-05 20:53:00	55.5099983	90	1012	5.0999999	0	2018-12-05 11:58:00
South San Francisco	City	San Mateo	california	37.6547012	-122.407997	1.62	69	Moderate air quality	pm25	2018-12-05 20:56:00	55.7200012	75	1012	4.5999999	0	2018-12-05 11:58:00
Stanton	City	Orange	california	33.8028984	-117.992996	2.55999994	38	Good air quality	pm25	2018-12-05 20:58:00	55.9000015	90	1013	4.0999999	0.25	2018-12-05 11:58:00
Stockton	City	San Joaquin	california	37.9576988	-121.291	1.61000001	82	Moderate air quality	pm25	2018-12-05 20:53:00	55.5800018	90	1011	1.5	0	2018-12-05 11:58:00
Suisun City	City	Solano	california	38.2382011	-122.040001	1.55999994	34	Good air quality	pm25	2018-12-05 21:00:00	54.6300011	90	1012	4.5999999	0	2018-12-05 11:58:00
Sunnyvale	City	Santa Clara	california	37.3688011	-122.036003	1.69000006	75	Moderate air quality	pm25	2018-12-05 20:56:00	56.7099991	20	1011	3.0999999	0	2018-12-05 11:58:00
Susanville	City	Lassen	california	40.4163017	-120.653	1.50999999	48	Good air quality	pm25	2018-12-05 20:35:00	32	90	1016	2.0999999	0	2018-12-05 11:58:00
Sutter Creek	City	Amador	california	38.3930016	-120.802002	1.60000002	63	Moderate air quality	pm25	2018-12-05 20:55:00	55.9799995	90	1012	1.40999997	0	2018-12-05 11:58:00
Taft	City	Kern	california	35.1425018	-119.457001	2.18000007	44	Good air quality	pm25	2018-12-05 19:54:00	60.9799995	90	1011	2.0999999	0	2018-12-05 11:58:00
Tehachapi	City	Kern	california	35.1321983	-118.448997	2.36999989	36	Good air quality	pm25	2018-12-05 20:58:00	49.6399994	40	1013	3.0999999	0	2018-12-05 11:58:00
Tehama	City	Tehama	california	40.0270996	-122.123001	1.41999996	26	Good air quality	pm25	2018-12-05 20:54:00	52.5699997	40	1015	2.5999999	0	2018-12-05 11:58:00
Temecula	City	Riverside	california	33.4935989	-117.148003	2.68000007	42	Good air quality	pm25	2018-12-05 20:55:00	51.3300018	90	1014	1.5	1.36000001	2018-12-05 11:58:00
Temple City	City	Los Angeles	california	34.1072006	-118.057999	2.52999997	48	Good air quality	pm25	2018-12-05 20:53:00	56.9799995	90	1012	5.0999999	0	2018-12-05 11:58:00
Thousand Oaks	City	Ventura	california	34.1706009	-118.837997	2.5	52	Moderate air quality	pm25	2018-12-05 20:57:00	58.2599983	90	1012	6.69999981	0.25	2018-12-05 11:58:00
Tiburon	Town	Marin	california	37.8735008	-122.457001	1.58000004	61	Moderate air quality	pm25	2018-12-05 20:56:00	54.9900017	75	1012	4.5999999	0	2018-12-05 11:58:00
Torrance	City	Los Angeles	california	33.8358002	-118.341003	2.54999995	46	Good air quality	pm25	2018-12-05 20:53:00	56.4799995	90	1012	2.0999999	0.25	2018-12-05 11:58:00
Tracy	City	San Joaquin	california	37.7397003	-121.425003	1.66999996	75	Moderate air quality	pm25	2018-12-05 20:56:00	56.9799995	75	1011	5.69999981	0	2018-12-05 11:58:00
Trinidad	City	Humboldt	california	41.0592995	-124.142998	1.28999996	18	Good air quality	pm10	2018-12-05 20:55:00	60.7599983	1	1013	1.5	0	2018-12-05 11:58:00
Truckee	Town	Nevada	california	39.3279991	-120.182999	1.69000006	62	Moderate air quality	pm25	2018-12-05 20:55:00	31.5	90	1015	5.0999999	0	2018-12-05 11:58:00
Tulare	City	Tulare	california	36.2076988	-119.347	2	71	Moderate air quality	pm25	2018-12-05 20:56:00	57.8800011	90	1011	4.0999999	0	2018-12-05 11:58:00
Tulelake	City	Siskiyou	california	41.9560013	-121.476997	1.22000003	38	Good air quality	pm25	2018-12-05 19:53:00	33.9799995	1	1015	3.0999999	0	2018-12-05 11:58:00
Turlock	City	Stanislaus	california	37.4947014	-120.847	1.72000003	97	Moderate air quality	pm25	2018-12-05 20:53:00	57.0200005	90	1011	1.5	0	2018-12-05 11:58:00
Tustin	City	Orange	california	33.7420006	-117.823997	2.58999991	21	Good air quality	pm10	2018-12-05 20:55:00	53.9099998	90	1013	3.5999999	0.860000014	2018-12-05 11:58:00
Twentynine Palms	City	San Bernardino	california	34.135601	-116.054001	2.6400001	37	Good air quality	pm25	2018-12-05 21:12:27	50.5499992	88	954.539978	1.65999997	0	2018-12-05 11:58:00
Ukiah	City	Mendocino	california	39.1501999	-123.208	1.47000003	70	Moderate air quality	pm25	2018-12-05 19:56:00	51.0800018	90	1013	2.0999999	0	2018-12-05 11:58:00
Union City	City	Alameda	california	37.593399	-122.043999	1.62	67	Moderate air quality	pm25	2018-12-05 20:56:00	56.6100006	20	1011	3.0999999	0	2018-12-05 11:58:00
Upland	City	San Bernardino	california	34.0974998	-117.648003	2.58999991	49	Good air quality	pm25	2018-12-05 20:53:00	56.6599998	90	1013	3.5999999	0	2018-12-05 11:58:00
Vacaville	City	Solano	california	38.3566017	-121.987999	1.53999996	58	Moderate air quality	pm25	2018-12-05 21:00:00	54.5400009	90	1013	4.5999999	0	2018-12-05 11:58:00
Vallejo	City	Solano	california	38.1040993	-122.257004	1.53999996	64	Moderate air quality	pm25	2018-12-05 21:00:00	54.5	90	1012	4.5999999	0	2018-12-05 11:58:00
Ventura	City	Ventura	california	34.2804985	-119.294998	2.41000009	62	Moderate air quality	pm25	2018-12-05 20:57:00	56.7000008	90	1011	7.19999981	0.25	2018-12-05 11:58:00
Vernon	City	Los Angeles	california	34.0038986	-118.230003	2.52999997	62	Moderate air quality	pm25	2018-12-05 20:53:00	56.4799995	90	1012	2.0999999	0.25	2018-12-05 11:58:00
Victorville	City	San Bernardino	california	34.5362015	-117.292999	2.48000002	58	Moderate air quality	pm25	2018-12-05 20:58:00	49.5900002	40	1013	3.0999999	0	2018-12-05 11:58:00
Villa Park	City	Orange	california	33.8139992	-117.821999	2.55999994	45	Good air quality	pm25	2018-12-05 20:58:00	55.5600014	90	1013	3.5999999	0.25	2018-12-05 11:58:00
Visalia	City	Tulare	california	36.3302002	-119.292	1.97000003	71	Moderate air quality	pm25	2018-12-05 20:56:00	57.8100014	90	1011	4.0999999	0	2018-12-05 11:58:00
Vista	City	San Diego	california	33.2000008	-117.242996	2.71000004	49	Good air quality	pm25	2018-12-05 20:55:00	56.5	90	1013	1.5	1.26999998	2018-12-05 11:58:00
Walnut	City	Los Angeles	california	34.0203018	-117.864998	2.54999995	39	Good air quality	pm25	2018-12-05 20:58:00	56.2999992	90	1012	2.0999999	0	2018-12-05 11:58:00
Walnut Creek	City	Contra Costa	california	37.910099	-122.065002	1.59000003	68	Moderate air quality	pm25	2018-12-05 20:56:00	55.4500008	90	1012	4.5999999	0	2018-12-05 11:58:00
Wasco	City	Kern	california	35.594101	-119.341003	2.06999993	37	Good air quality	pm25	2018-12-05 20:56:00	59.3199997	90	1011	2.5999999	0	2018-12-05 11:58:00
Waterford	City	Stanislaus	california	37.6413002	-120.760002	1.66999996	88	Moderate air quality	pm25	2018-12-05 20:55:00	57.4500008	90	1011	1.5	0	2018-12-05 11:58:00
Watsonville	City	Santa Cruz	california	36.9101982	-121.757004	1.75999999	61	Moderate air quality	pm25	2018-12-05 20:56:00	57.9900017	75	1010	1.40999997	0	2018-12-05 11:58:00
Weed	City	Siskiyou	california	41.4225998	-122.386002	1.29999995	66	Moderate air quality	pm25	2018-12-05 20:54:00	43.6800003	75	1014	1.05999994	0	2018-12-05 11:58:00
West Covina	City	Los Angeles	california	34.0685997	-117.939003	2.54999995	59	Moderate air quality	pm25	2018-12-05 20:58:00	55.5800018	90	1012	2.0999999	0	2018-12-05 11:58:00
West Hollywood	City	Los Angeles	california	34.0900002	-118.362	2.5	60	Moderate air quality	pm25	2018-12-05 20:53:00	57.5800018	90	1012	5.0999999	0	2018-12-05 11:58:00
West Sacramento	City	Yolo	california	38.5805016	-121.529999	1.52999997	57	Moderate air quality	pm25	2018-12-05 21:00:00	54.9700012	90	1013	4.5999999	0	2018-12-05 11:58:00
Westlake Village	City	Los Angeles	california	34.1465988	-118.806999	2.5	28	Good air quality	o3	2018-12-05 20:57:00	58.2400017	90	1012	6.69999981	0.25	2018-12-05 11:58:00
Westminster	City	Orange	california	33.759201	-117.989998	2.55999994	49	Good air quality	pm25	2018-12-05 20:58:00	55.9000015	90	1013	4.0999999	0.25	2018-12-05 11:58:00
Westmorland	City	Imperial	california	33.0373001	-115.621002	2.68000007	67	Moderate air quality	pm25	2018-12-05 20:56:00	65.3000031	1	1013	2.5999999	0	2018-12-05 11:58:00
Wheatland	City	Yuba	california	39.0098991	-121.422997	1.50999999	52	Moderate air quality	pm25	2018-12-05 21:00:00	54.6100006	1	1013	6.69999981	0	2018-12-05 11:58:00
Whittier	City	Los Angeles	california	33.9791985	-118.032997	2.55999994	54	Moderate air quality	pm25	2018-12-05 20:53:00	57.6500015	90	1012	2.0999999	0	2018-12-05 11:58:00
Wildomar	City	Riverside	california	33.5988998	-117.279999	2.66000009	15	Good air quality	pm10	2018-12-05 20:58:00	50.9500008	90	1013	1.5	1.41999996	2018-12-05 11:58:00
Williams	City	Colusa	california	39.1545982	-122.149002	1.47000003	66	Moderate air quality	pm25	2018-12-05 20:53:00	53.2400017	1	1013	6.69999981	0	2018-12-05 11:58:00
Willits	City	Mendocino	california	39.4095993	-123.356003	1.46000004	58	Moderate air quality	pm25	2018-12-05 19:56:00	51.0800018	90	1013	2.0999999	0	2018-12-05 11:58:00
Willows	City	Glenn	california	39.5242996	-122.194	1.45000005	42	Good air quality	pm25	2018-12-05 21:14:08	46.2299995	92	985.340027	2.75999999	0.834999979	2018-12-05 11:58:00
Windsor	Town	Sonoma	california	38.5471001	-122.816002	1.48000002	54	Moderate air quality	pm25	2018-12-05 20:55:00	54.7200012	90	1012	2.5999999	0	2018-12-05 11:58:00
Winters	City	Yolo	california	38.5248985	-121.971001	1.51999998	53	Moderate air quality	pm25	2018-12-05 21:00:00	54.7000008	90	1013	4.5999999	0	2018-12-05 11:58:00
Woodlake	City	Tulare	california	36.4136009	-119.098999	1.99000001	52	Moderate air quality	pm25	2018-12-05 20:56:00	58.75	90	1011	4.0999999	0	2018-12-05 11:58:00
Woodland	City	Yolo	california	38.6785011	-121.773003	1.51999998	69	Moderate air quality	pm25	2018-12-05 21:00:00	54.7200012	90	1013	4.5999999	0	2018-12-05 11:58:00
Woodside	Town	San Mateo	california	37.4299011	-122.253998	1.66999996	75	Moderate air quality	pm25	2018-12-05 21:00:00	56.3699989	90	1011	5.69999981	0	2018-12-05 11:58:00
Yorba Linda	City	Orange	california	33.8885002	-117.813004	2.55999994	41	Good air quality	pm25	2018-12-05 20:58:00	56.3199997	90	1013	3.5999999	0	2018-12-05 11:58:00
Yountville	Town	Napa	california	38.4015999	-122.361	1.52999997	33	Good air quality	pm25	2018-12-05 21:00:00	54.4599991	90	1012	2.5999999	0	2018-12-05 11:58:00
Yreka	City	Siskiyou	california	41.7354012	-122.634003	1.25	58	Moderate air quality	pm25	2018-12-05 20:54:00	42.3899994	75	1014	1.36000001	0	2018-12-05 11:58:00
Yuba City	City	Sutter	california	39.1403999	-121.616997	1.5	65	Moderate air quality	pm25	2018-12-05 21:00:00	54.7200012	1	1013	6.69999981	0	2018-12-05 11:58:00
Yucaipa	City	San Bernardino	california	34.0335999	-117.042999	2.6400001	51	Moderate air quality	pm25	2018-12-05 20:58:00	48.6300011	90	1012	1.5	0.25	2018-12-05 11:58:00
Yucca Valley	Town	San Bernardino	california	34.1142006	-116.431999	2.66000009	36	Good air quality	o3	2018-12-05 21:10:04	44.75	100	906.950012	1.30999994	1.20749998	2018-12-05 11:58:00
Adelanto	City	San Bernardino	california	34.5828018	-117.408997	2.27999997	25	Good air quality	pm25	2018-12-06 18:13:00	45.4300003	90	1016	6.19999981	1.26999998	2018-12-06 10:13:00
Agoura Hills	City	Los Angeles	california	34.1533012	-118.762001	2.31999993	34	Good air quality	pm25	2018-12-06 18:26:00	51.5099983	90	1013	5.69999981	2.75999999	2018-12-06 10:13:00
Alameda	City	Alameda	california	37.7652016	-122.241997	1.72000003	53	Moderate air quality	pm25	2018-12-06 18:15:00	55.4399986	20	1015	4.5999999	0	2018-12-06 10:13:00
Albany	City	Alameda	california	37.8869019	-122.297997	1.71000004	60	Moderate air quality	pm25	2018-12-06 18:15:00	55.4199982	20	1015	4.5999999	0	2018-12-06 10:13:00
Alhambra	City	Los Angeles	california	34.0952988	-118.126999	2.32999992	55	Moderate air quality	pm25	2018-12-06 18:26:00	53.0999985	90	1013	1.5	2.72000003	2018-12-06 10:13:00
Aliso Viejo	City	Orange	california	33.5685005	-117.725998	2.48000002	33	Good air quality	pm25	2018-12-06 18:15:00	55.2000008	90	1014	3.5999999	2.44000006	2018-12-06 10:13:00
Alturas	City	Modoc	california	41.4870987	-120.542	1.40999997	79	Moderate air quality	pm25	2018-12-06 17:55:00	30.0200005	1	1018	2.5999999	0	2018-12-06 10:13:00
Amador City	City	Amador	california	38.4193993	-120.823997	1.65999997	42	Good air quality	pm25	2018-12-06 18:15:00	52.6500015	1	1014	1.50999999	0	2018-12-06 10:13:00
American Canyon	City	Napa	california	38.1749001	-122.261002	1.67999995	32	Good air quality	pm25	2018-12-06 18:15:00	55.2000008	1	1015	2.0999999	0	2018-12-06 10:13:00
Anaheim	City	Orange	california	33.8366013	-117.914001	2.38000011	43	Good air quality	pm25	2018-12-06 18:26:00	52.75	90	1013	1.5	2.75999999	2018-12-06 10:13:00
Anderson	City	Shasta	california	40.4482002	-122.297997	1.47000003	81	Moderate air quality	pm25	2018-12-06 18:10:00	45.4099998	1	1016	4.5999999	0	2018-12-06 10:13:00
Angels Camp	City	Calaveras	california	38.0677986	-120.539001	1.71000004	59	Moderate air quality	pm25	2018-12-06 18:15:00	53.4599991	1	1014	2.0999999	0	2018-12-06 10:13:00
Antioch	City	Contra Costa	california	38.0049019	-121.806	1.66999996	56	Moderate air quality	pm25	2018-12-06 18:20:00	54.8600006	1	1015	2.0999999	0	2018-12-06 10:13:00
Apple Valley	Town	San Bernardino	california	34.5008011	-117.185997	2.29999995	25	Good air quality	pm25	2018-12-06 17:58:00	49.8199997	90	1016	4.5999999	0	2018-12-06 10:13:00
Arcadia	City	Los Angeles	california	34.1397018	-118.035004	2.32999992	48	Good air quality	pm25	2018-12-06 18:26:00	52.1599998	90	1013	1.5	2.56999993	2018-12-06 10:13:00
Arcata	City	Humboldt	california	40.8665009	-124.083	1.44000006	21	Good air quality	pm10	2018-12-06 17:55:00	48.1100006	1	1016	1.5	0	2018-12-06 10:13:00
Arroyo Grande	City	San Luis Obispo	california	35.1185989	-120.591003	2.07999992	35	Good air quality	pm25	2018-12-06 17:56:00	55.9399986	90	1012	1.75999999	0.25	2018-12-06 10:13:00
Artesia	City	Los Angeles	california	33.865799	-118.083	2.36999989	49	Good air quality	pm25	2018-12-06 18:26:00	52.9199982	90	1013	1.5	2.75999999	2018-12-06 10:13:00
Arvin	City	Kern	california	35.2018013	-118.833	2.06999993	23	Good air quality	pm25	2018-12-06 18:00:00	44.7799988	90	1015	1.5	2.02999997	2018-12-06 10:13:00
Atascadero	City	San Luis Obispo	california	35.489399	-120.670998	2.05999994	49	Good air quality	pm25	2018-12-06 17:56:00	56.0999985	90	1014	5.69999981	0	2018-12-06 10:13:00
Atherton	Town	San Mateo	california	37.4612999	-122.197998	1.80999994	73	Moderate air quality	pm25	2018-12-06 18:15:00	55.6199989	75	1015	2.0999999	0	2018-12-06 10:13:00
Atwater	City	Merced	california	37.3476982	-120.609001	1.75999999	67	Moderate air quality	pm25	2018-12-06 18:23:00	53.1100006	75	1014	2.5999999	0	2018-12-06 10:13:00
Auburn	City	Placer	california	38.8965988	-121.077003	1.62	40	Good air quality	pm25	2018-12-06 18:15:00	51.0299988	1	1014	1.96000004	0	2018-12-06 10:13:00
Avalon	City	Los Angeles	california	33.3428001	-118.328003	2.5	24	Good air quality	o3	2018-12-06 18:00:00	55.0400009	90	1012	6.19999981	2.6099999	2018-12-06 10:13:00
Avenal	City	Kings	california	36.0041008	-120.128998	1.90999997	32	Good air quality	pm25	2018-12-06 18:25:00	51.0800018	90	1015	1.5	0	2018-12-06 10:13:00
Azusa	City	Los Angeles	california	34.1335983	-117.907997	2.3499999	58	Moderate air quality	pm25	2018-12-06 18:26:00	52.9000015	90	1013	1.5	2.72000003	2018-12-06 10:13:00
Bakersfield	City	Kern	california	35.3732986	-119.018997	2.00999999	60	Moderate air quality	pm25	2018-12-06 18:20:00	49.6599998	90	1015	1.5	0.75999999	2018-12-06 10:13:00
Baldwin Park	City	Los Angeles	california	34.0853004	-117.960999	2.3499999	60	Moderate air quality	pm25	2018-12-06 18:26:00	52.9000015	90	1013	1.5	2.72000003	2018-12-06 10:13:00
Banning	City	Riverside	california	33.9255981	-116.875999	2.49000001	41	Good air quality	pm25	2018-12-06 18:08:00	53.2799988	90	1014	5.69999981	0	2018-12-06 10:13:00
Barstow	City	San Bernardino	california	34.8958015	-117.016998	2.20000005	25	Good air quality	pm25	2018-12-06 17:55:00	47.2799988	90	1016	4.5999999	0	2018-12-06 10:13:00
Beaumont	City	Riverside	california	33.9295006	-116.976997	2.49000001	60	Moderate air quality	pm25	2018-12-06 18:15:00	53.7999992	90	1014	5.69999981	0	2018-12-06 10:13:00
Bell	City	Los Angeles	california	33.9775009	-118.186996	2.36999989	56	Moderate air quality	pm25	2018-12-06 18:26:00	52.9300003	90	1013	1.5	2.75999999	2018-12-06 10:13:00
Bell Gardens	City	Los Angeles	california	33.9653015	-118.151001	2.36999989	54	Moderate air quality	pm25	2018-12-06 18:26:00	52.9300003	90	1013	1.5	2.75999999	2018-12-06 10:13:00
Bellflower	City	Los Angeles	california	33.8816986	-118.116997	2.36999989	39	Good air quality	pm25	2018-12-06 18:26:00	52.9199982	90	1013	1.5	2.75999999	2018-12-06 10:13:00
Belmont	City	San Mateo	california	37.5201988	-122.276001	1.75999999	74	Moderate air quality	pm25	2018-12-06 18:15:00	55.6300011	1	1014	2.46000004	0	2018-12-06 10:13:00
Belvedere	City	Marin	california	37.8726997	-122.463997	1.71000004	26	Good air quality	pm10	2018-12-06 18:00:00	55.5600014	20	1014	4.0999999	0	2018-12-06 10:13:00
Benicia	City	Solano	california	38.0494003	-122.158997	1.69000006	31	Good air quality	pm25	2018-12-06 18:20:00	55.5099983	1	1015	2.0999999	0	2018-12-06 10:13:00
Berkeley	City	Alameda	california	37.8716011	-122.273003	1.71000004	62	Moderate air quality	pm25	2018-12-06 18:15:00	55.4199982	1	1015	2.0999999	0	2018-12-06 10:13:00
Beverly Hills	City	Los Angeles	california	34.0736008	-118.400002	2.29999995	47	Good air quality	pm25	2018-12-06 18:26:00	52.9199982	90	1013	1.5	2.50999999	2018-12-06 10:13:00
Big Bear Lake	City	San Bernardino	california	34.2439003	-116.911003	2.55999994	34	Good air quality	pm25	2018-12-06 17:58:00	49.7299995	90	1014	5.69999981	0	2018-12-06 10:13:00
Biggs	City	Butte	california	39.4123993	-121.712997	1.55999994	36	Good air quality	pm25	2018-12-06 18:15:00	49.6199989	1	1015	3.0999999	0	2018-12-06 10:13:00
Bishop	City	Inyo	california	37.3614006	-118.400002	1.96000004	52	Moderate air quality	pm25	2018-12-06 18:15:00	27.1399994	40	1017	0.860000014	0	2018-12-06 10:13:00
Blue Lake	City	Humboldt	california	40.8829002	-123.984001	1.45000005	17	Good air quality	pm10	2018-12-06 17:55:00	48.0900002	1	1016	1.5	0	2018-12-06 10:13:00
Blythe	City	Riverside	california	33.6178017	-114.587997	2.5	36	Good air quality	pm25	2018-12-06 18:38:28	46.5400009	92	1003.59998	2.1099999	0.57249999	2018-12-06 10:13:00
Bradbury	City	Los Angeles	california	34.1469002	-117.971001	2.3499999	31	Good air quality	pm25	2018-12-06 18:26:00	52.1599998	90	1013	1.5	2.56999993	2018-12-06 10:13:00
Brawley	City	Imperial	california	32.9786987	-115.529999	2.70000005	62	Moderate air quality	pm25	2018-12-06 17:56:00	55.1699982	75	1018	2.0999999	0	2018-12-06 10:13:00
Brea	City	Orange	california	33.9165001	-117.900002	2.38000011	44	Good air quality	pm25	2018-12-06 18:26:00	52.8800011	90	1013	1.5	2.72000003	2018-12-06 10:13:00
Brentwood	City	Contra Costa	california	37.9319	-121.695999	1.71000004	58	Moderate air quality	pm25	2018-12-06 18:20:00	55.1300011	1	1015	2.0999999	0	2018-12-06 10:13:00
Brisbane	City	San Mateo	california	37.6808014	-122.400002	1.75999999	30	Good air quality	pm10	2018-12-06 18:15:00	55.5999985	20	1014	4.0999999	0	2018-12-06 10:13:00
Buellton	City	Santa Barbara	california	34.6136017	-120.193001	2.18000007	47	Good air quality	pm25	2018-12-06 18:15:00	56.1899986	90	1012	1.36000001	0.25	2018-12-06 10:13:00
Buena Park	City	Orange	california	33.8674011	-117.998001	2.38000011	47	Good air quality	pm25	2018-12-06 18:26:00	52.75	90	1013	1.5	2.75999999	2018-12-06 10:13:00
Burbank	City	Los Angeles	california	34.1808014	-118.308998	2.29999995	61	Moderate air quality	pm25	2018-12-06 18:26:00	50.9700012	90	1013	5.69999981	2.53999996	2018-12-06 10:13:00
Burlingame	City	San Mateo	california	37.5778999	-122.348	1.75999999	59	Moderate air quality	pm25	2018-12-06 18:15:00	55.3499985	20	1014	4.0999999	0	2018-12-06 10:13:00
Calabasas	City	Los Angeles	california	34.1366997	-118.661003	2.30999994	24	Good air quality	o3	2018-12-06 18:26:00	52.2900009	90	1013	5.69999981	2.70000005	2018-12-06 10:13:00
Calexico	City	Imperial	california	32.6789017	-115.499001	2.77999997	65	Moderate air quality	pm25	2018-12-06 17:56:00	55.1699982	75	1018	2.0999999	0	2018-12-06 10:13:00
California City	City	Kern	california	35.1258011	-117.986	2.1400001	29	Good air quality	o3	2018-12-06 18:22:00	41.6300011	90	1015	6.19999981	1.71000004	2018-12-06 10:13:00
Calimesa	City	Riverside	california	34.0038986	-117.061996	2.43000007	58	Moderate air quality	pm25	2018-12-06 18:08:00	52.8800011	90	1014	5.69999981	0	2018-12-06 10:13:00
Calipatria	City	Imperial	california	33.1255989	-115.514	2.61999989	59	Moderate air quality	pm25	2018-12-06 17:56:00	55.1699982	75	1018	2.0999999	0	2018-12-06 10:13:00
Calistoga	City	Napa	california	38.5788002	-122.580002	1.65999997	50	Good air quality	pm25	2018-12-06 18:20:00	53.8499985	1	1015	1.5	0	2018-12-06 10:13:00
Camarillo	City	Ventura	california	34.2164001	-119.038002	2.28999996	61	Moderate air quality	pm25	2018-12-06 18:22:00	49.8899994	90	1012	11.3000002	2.5999999	2018-12-06 10:13:00
Campbell	City	Santa Clara	california	37.2872009	-121.949997	1.77999997	61	Moderate air quality	pm25	2018-12-06 18:15:00	55.3600006	40	1015	1.55999994	0	2018-12-06 10:13:00
Canyon Lake	City	Riverside	california	33.6850014	-117.273003	2.5	19	Good air quality	pm25	2018-12-06 18:15:00	55.8100014	90	1013	1.5	1.26999998	2018-12-06 10:13:00
Capitola	City	Santa Cruz	california	36.9752007	-121.953003	1.84000003	71	Moderate air quality	pm25	2018-12-06 18:15:00	55.5299988	1	1015	3.5999999	0	2018-12-06 10:13:00
Carlsbad	City	San Diego	california	33.1581001	-117.350998	2.5999999	51	Moderate air quality	pm25	2018-12-06 18:15:00	58.6800003	90	1013	4.5999999	0.400000006	2018-12-06 10:13:00
Carmel-by-the-Sea	City	Monterey	california	36.5551987	-121.922997	1.88999999	54	Moderate air quality	pm25	2018-12-06 18:15:00	55.9399986	20	1013	1.5	0	2018-12-06 10:13:00
Carpinteria	City	Santa Barbara	california	34.3988991	-119.517998	2.25	28	Good air quality	o3	2018-12-06 18:15:00	53.6699982	90	1012	6.01000023	1.35000002	2018-12-06 10:13:00
Carson	City	Los Angeles	california	33.8316994	-118.281998	2.36999989	48	Good air quality	pm25	2018-12-06 18:26:00	52.9199982	90	1013	1.5	2.75999999	2018-12-06 10:13:00
Cathedral City	City	Riverside	california	33.7804985	-116.467003	2.44000006	32	Good air quality	pm25	2018-12-06 18:15:00	52.7900009	90	1017	0.75999999	0	2018-12-06 10:13:00
Ceres	City	Stanislaus	california	37.5948982	-120.958	1.73000002	63	Moderate air quality	pm25	2018-12-06 18:23:00	53.4599991	75	1014	2.5999999	0	2018-12-06 10:13:00
Cerritos	City	Los Angeles	california	33.8582993	-118.065002	2.36999989	41	Good air quality	pm25	2018-12-06 18:26:00	52.9199982	90	1013	1.5	2.75999999	2018-12-06 10:13:00
Chico	City	Butte	california	39.7285004	-121.836998	1.53999996	60	Moderate air quality	pm25	2018-12-06 17:54:00	51.9799995	1	1017	4.0999999	0	2018-12-06 10:13:00
Chino	City	San Bernardino	california	34.0121994	-117.689003	2.38000011	45	Good air quality	pm25	2018-12-06 18:26:00	53.4399986	90	1014	3.5999999	2.72000003	2018-12-06 10:13:00
Chino Hills	City	San Bernardino	california	33.9897995	-117.733002	2.41000009	24	Good air quality	pm25	2018-12-06 18:26:00	52.8800011	90	1014	3.5999999	2.72000003	2018-12-06 10:13:00
Chowchilla	City	Madera	california	37.1230011	-120.260002	1.77999997	54	Moderate air quality	pm25	2018-12-06 18:23:00	51.8400002	90	1015	2.5999999	0	2018-12-06 10:13:00
Chula Vista	City	San Diego	california	32.6400986	-117.084	2.73000002	64	Moderate air quality	pm25	2018-12-06 18:12:00	59.8300018	90	1014	5.69999981	0.400000006	2018-12-06 10:13:00
Citrus Heights	City	Sacramento	california	38.7070999	-121.280998	1.63	41	Good air quality	pm25	2018-12-06 18:20:00	51.2400017	1	1016	3.0999999	0	2018-12-06 10:13:00
Claremont	City	Los Angeles	california	34.0966988	-117.720001	2.38000011	54	Moderate air quality	pm25	2018-12-06 18:26:00	52.9000015	90	1013	1.5	2.72000003	2018-12-06 10:13:00
Clayton	City	Contra Costa	california	37.9410019	-121.935997	1.73000002	28	Good air quality	pm25	2018-12-06 18:20:00	55.2400017	1	1015	2.0999999	0	2018-12-06 10:13:00
Clearlake	City	Lake	california	38.9581985	-122.625999	1.65999997	27	Good air quality	pm25	2018-12-06 18:04:00	44.0600014	20	1016	1.5	0	2018-12-06 10:13:00
Cloverdale	City	Sonoma	california	38.8055	-123.016998	1.64999998	64	Moderate air quality	pm25	2018-12-06 18:04:00	44.0600014	20	1016	1.5	0	2018-12-06 10:13:00
Clovis	City	Fresno	california	36.8251991	-119.703003	1.84000003	44	Good air quality	pm25	2018-12-06 18:25:00	50.7900009	90	1015	2.5999999	0	2018-12-06 10:13:00
Coachella	City	Riverside	california	33.6803017	-116.174004	2.47000003	34	Good air quality	pm10	2018-12-06 18:15:00	51.7999992	90	1017	0.75999999	0	2018-12-06 10:13:00
Coalinga	City	Fresno	california	36.1397018	-120.360001	1.92999995	33	Good air quality	pm25	2018-12-06 18:25:00	51.0800018	90	1015	1.5	0	2018-12-06 10:13:00
Colfax	City	Placer	california	39.1007004	-120.953003	1.63	29	Good air quality	pm25	2018-12-06 18:15:00	50.7200012	1	1014	1.96000004	0	2018-12-06 10:13:00
Colma	Town	San Mateo	california	37.676899	-122.459999	1.75999999	54	Moderate air quality	pm25	2018-12-06 18:15:00	55.5999985	20	1014	4.0999999	0	2018-12-06 10:13:00
Colton	City	San Bernardino	california	34.0738983	-117.314003	2.36999989	53	Moderate air quality	pm25	2018-12-06 18:08:00	54.4500008	90	1014	3.5999999	1.26999998	2018-12-06 10:13:00
Colusa	City	Colusa	california	39.2142982	-122.009003	1.58000004	52	Moderate air quality	pm25	2018-12-06 18:15:00	49.7999992	1	1015	3.0999999	0	2018-12-06 10:13:00
Commerce	City	Los Angeles	california	34.0005989	-118.160004	2.32999992	56	Moderate air quality	pm25	2018-12-06 18:26:00	53.0999985	90	1013	1.5	2.72000003	2018-12-06 10:13:00
Compton	City	Los Angeles	california	33.8958015	-118.220001	2.36999989	57	Moderate air quality	pm25	2018-12-06 18:26:00	52.9300003	90	1013	1.5	2.75999999	2018-12-06 10:13:00
Concord	City	Contra Costa	california	37.9780006	-122.030998	1.72000003	60	Moderate air quality	pm25	2018-12-06 18:20:00	55.3100014	40	1015	5.0999999	0	2018-12-06 10:13:00
Corcoran	City	Kings	california	36.0979996	-119.559998	1.90999997	67	Moderate air quality	pm25	2018-12-06 18:25:00	50.3100014	90	1015	1.5	0	2018-12-06 10:13:00
Corning	City	Tehama	california	39.9277	-122.179001	1.51999998	41	Good air quality	pm25	2018-12-06 17:54:00	52.5900002	1	1017	4.0999999	0	2018-12-06 10:13:00
Corona	City	Riverside	california	33.8753014	-117.566002	2.41000009	50	Good air quality	pm25	2018-12-06 18:26:00	54.5900002	90	1014	3.5999999	1.77999997	2018-12-06 10:13:00
Coronado	City	San Diego	california	32.6859016	-117.182999	2.73000002	58	Moderate air quality	pm25	2018-12-06 18:12:00	59.5	90	1013	7.19999981	0.400000006	2018-12-06 10:13:00
Corte Madera	Town	Marin	california	37.925499	-122.527	1.72000003	32	Good air quality	pm25	2018-12-06 18:15:00	55.7099991	1	1015	2.0999999	0	2018-12-06 10:13:00
Costa Mesa	City	Orange	california	33.641201	-117.918999	2.44000006	46	Good air quality	pm25	2018-12-06 18:26:00	53.9599991	90	1013	1.5	2.86999989	2018-12-06 10:13:00
Cotati	City	Sonoma	california	38.3292999	-122.709999	1.66999996	57	Moderate air quality	pm25	2018-12-06 18:15:00	54.4799995	1	1015	1.5	0	2018-12-06 10:13:00
Covina	City	Los Angeles	california	34.0900002	-117.889999	2.3499999	54	Moderate air quality	pm25	2018-12-06 18:26:00	52.9000015	90	1013	1.5	2.72000003	2018-12-06 10:13:00
Crescent City	City	Del Norte	california	41.7556992	-124.203003	1.29999995	58	Moderate air quality	pm25	2018-12-06 17:56:00	49.9099998	1	1016	1.5	0	2018-12-06 10:13:00
Cudahy	City	Los Angeles	california	33.9606018	-118.184998	2.36999989	54	Moderate air quality	pm25	2018-12-06 18:26:00	52.9300003	90	1013	1.5	2.75999999	2018-12-06 10:13:00
Culver City	City	Los Angeles	california	34.0210991	-118.396004	2.29999995	59	Moderate air quality	pm25	2018-12-06 18:26:00	52.7700005	90	1013	1.5	2.56999993	2018-12-06 10:13:00
Cupertino	City	Santa Clara	california	37.3230019	-122.031998	1.80999994	60	Moderate air quality	pm25	2018-12-06 18:15:00	55.5099983	75	1015	2.0999999	0	2018-12-06 10:13:00
Cypress	City	Orange	california	33.8168983	-118.037003	2.36999989	34	Good air quality	pm25	2018-12-06 18:26:00	52.9199982	90	1013	1.5	2.75999999	2018-12-06 10:13:00
Daly City	City	San Mateo	california	37.6879005	-122.470001	1.75999999	60	Moderate air quality	pm25	2018-12-06 18:15:00	55.5999985	20	1014	4.0999999	0	2018-12-06 10:13:00
Dana Point	City	Orange	california	33.4672012	-117.697998	2.50999999	50	Good air quality	pm25	2018-12-06 18:15:00	55.4399986	90	1013	1.5	1.72000003	2018-12-06 10:13:00
Danville	Town	Contra Costa	california	37.8216019	-122	1.73000002	56	Moderate air quality	pm25	2018-12-06 18:15:00	55.3300018	1	1015	2.0999999	0	2018-12-06 10:13:00
Davis	City	Yolo	california	38.544899	-121.740997	1.63	53	Moderate air quality	pm25	2018-12-06 18:15:00	53.1500015	1	1015	6.19999981	0	2018-12-06 10:13:00
Del Mar	City	San Diego	california	32.9594994	-117.264999	2.69000006	37	Good air quality	pm25	2018-12-06 18:15:00	58.7799988	90	1013	4.5999999	0.400000006	2018-12-06 10:13:00
Del Rey Oaks	City	Monterey	california	36.5932999	-121.834999	1.88999999	29	Good air quality	pm25	2018-12-06 18:15:00	55.9399986	20	1013	1.5	0	2018-12-06 10:13:00
Delano	City	Kern	california	35.7687988	-119.247002	1.94000006	66	Moderate air quality	pm25	2018-12-06 18:20:00	50.25	90	1015	1.5	0.75999999	2018-12-06 10:13:00
Desert Hot Springs	City	Riverside	california	33.9611015	-116.501999	2.5	52	Moderate air quality	pm25	2018-12-06 18:37:12	39.3400002	92	908.840027	1.30999994	1.77750003	2018-12-06 10:13:00
Diamond Bar	City	Los Angeles	california	34.0285988	-117.809998	2.3499999	59	Moderate air quality	pm25	2018-12-06 18:26:00	52.9000015	90	1013	1.5	2.72000003	2018-12-06 10:13:00
Dinuba	City	Tulare	california	36.5433006	-119.387001	1.87	52	Moderate air quality	pm25	2018-12-06 18:35:00	50.5	90	1015	2.0999999	0	2018-12-06 10:13:00
Dixon	City	Solano	california	38.4454994	-121.822998	1.64999998	47	Good air quality	pm25	2018-12-06 18:20:00	53.4199982	1	1015	5.69999981	0	2018-12-06 10:13:00
Dorris	City	Siskiyou	california	41.9673996	-121.917999	1.36000001	39	Good air quality	pm25	2018-12-06 17:53:00	29.7999992	1	1018	4.5999999	0	2018-12-06 10:13:00
Dos Palos	City	Merced	california	36.9860992	-120.626999	1.80999994	54	Moderate air quality	pm25	2018-12-06 18:23:00	53.5499992	75	1014	2.5999999	0	2018-12-06 10:13:00
Downey	City	Los Angeles	california	33.9401016	-118.133003	2.36999989	56	Moderate air quality	pm25	2018-12-06 18:26:00	52.9199982	90	1013	1.5	2.75999999	2018-12-06 10:13:00
Duarte	City	Los Angeles	california	34.1394997	-117.976997	2.3499999	55	Moderate air quality	pm25	2018-12-06 18:26:00	53.0999985	90	1013	1.5	2.72000003	2018-12-06 10:13:00
Dublin	City	Alameda	california	37.7022018	-121.935997	1.75999999	56	Moderate air quality	pm25	2018-12-06 18:15:00	55.4500008	1	1015	2.0999999	0	2018-12-06 10:13:00
Dunsmuir	City	Siskiyou	california	41.2081985	-122.272003	1.46000004	57	Moderate air quality	pm25	2018-12-06 18:10:00	33.0099983	1	1017	1.5	0	2018-12-06 10:13:00
East Palo Alto	City	San Mateo	california	37.4687996	-122.140999	1.80999994	75	Moderate air quality	pm25	2018-12-06 18:15:00	55.6199989	75	1015	2.0999999	0	2018-12-06 10:13:00
Eastvale	City	Riverside	california	33.9524994	-117.584999	2.41000009	30	Good air quality	pm25	2018-12-06 18:35:00	54.5	90	1014	3.5999999	2.49000001	2018-12-06 10:13:00
El Cajon	City	San Diego	california	32.7947998	-116.962997	2.72000003	55	Moderate air quality	pm25	2018-12-06 18:15:00	59.2000008	90	1014	2.5999999	0.400000006	2018-12-06 10:13:00
El Centro	City	Imperial	california	32.7919998	-115.563004	2.70000005	39	Good air quality	pm25	2018-12-06 17:56:00	55.1699982	90	1017	2.30999994	0	2018-12-06 10:13:00
El Cerrito	City	Contra Costa	california	37.9160995	-122.310997	1.71000004	58	Moderate air quality	pm25	2018-12-06 18:15:00	55.5299988	1	1015	2.0999999	0	2018-12-06 10:13:00
El Monte	City	Los Angeles	california	34.0685997	-118.028	2.32999992	61	Moderate air quality	pm25	2018-12-06 18:26:00	53.0999985	90	1013	1.5	2.72000003	2018-12-06 10:13:00
El Segundo	City	Los Angeles	california	33.9192009	-118.416	2.36999989	52	Moderate air quality	pm25	2018-12-06 18:26:00	52.75	90	1013	1.5	2.56999993	2018-12-06 10:13:00
Elk Grove	City	Sacramento	california	38.4087982	-121.372002	1.64999998	51	Moderate air quality	pm25	2018-12-06 18:20:00	52.8300018	1	1016	3.0999999	0	2018-12-06 10:13:00
Emeryville	City	Alameda	california	37.8312988	-122.285004	1.71000004	53	Moderate air quality	pm25	2018-12-06 18:15:00	55.5400009	1	1015	2.0999999	0	2018-12-06 10:13:00
Encinitas	City	San Diego	california	33.0369987	-117.292	2.5999999	46	Good air quality	pm25	2018-12-06 18:35:00	58.9300003	90	1013	4.5999999	0.560000002	2018-12-06 10:13:00
Escalon	City	San Joaquin	california	37.7974014	-120.997002	1.71000004	66	Moderate air quality	pm25	2018-12-06 18:15:00	53.5800018	90	1015	4.5999999	0	2018-12-06 10:13:00
Escondido	City	San Diego	california	33.1192017	-117.085999	2.61999989	52	Moderate air quality	pm25	2018-12-06 18:35:00	58.9500008	90	1014	3.0999999	0.560000002	2018-12-06 10:13:00
Etna	City	Siskiyou	california	41.4567986	-122.894997	1.44000006	45	Good air quality	pm25	2018-12-06 18:10:00	33.0400009	90	1017	1.5	0	2018-12-06 10:13:00
Eureka	City	Humboldt	california	40.8021011	-124.164001	1.44000006	46	Good air quality	pm25	2018-12-06 17:55:00	48.25	1	1016	1.5	0	2018-12-06 10:13:00
Exeter	City	Tulare	california	36.2961006	-119.141998	1.89999998	54	Moderate air quality	pm25	2018-12-06 18:20:00	50.3400002	90	1015	2.5999999	0	2018-12-06 10:13:00
Fairfax	Town	Marin	california	37.9870987	-122.588997	1.72000003	26	Good air quality	no2	2018-12-06 18:15:00	56.2599983	1	1015	2.0999999	0	2018-12-06 10:13:00
Fairfield	City	Solano	california	38.2494011	-122.040001	1.69000006	44	Good air quality	pm25	2018-12-06 18:20:00	54.0900002	1	1015	5.69999981	0	2018-12-06 10:13:00
Farmersville	City	Tulare	california	36.297699	-119.207001	1.89999998	54	Moderate air quality	pm25	2018-12-06 18:35:00	50.25	90	1015	2.5999999	0	2018-12-06 10:13:00
Ferndale	City	Humboldt	california	40.5761986	-124.264	1.45000005	24	Good air quality	o3	2018-12-06 18:35:00	49.8600006	1	1016	2.5999999	0	2018-12-06 10:13:00
Fillmore	City	Ventura	california	34.3992004	-118.917999	2.25999999	25	Good air quality	o3	2018-12-06 18:22:00	49.9500008	90	1013	5.69999981	2.5999999	2018-12-06 10:13:00
Firebaugh	City	Fresno	california	36.858799	-120.456001	1.80999994	68	Moderate air quality	pm25	2018-12-06 18:35:00	52.1599998	90	1015	2.5999999	0	2018-12-06 10:13:00
Folsom	City	Sacramento	california	38.6780014	-121.176003	1.63	57	Moderate air quality	pm25	2018-12-06 18:20:00	51.2400017	1	1016	3.0999999	0	2018-12-06 10:13:00
Fontana	City	San Bernardino	california	34.0922012	-117.434998	2.36999989	56	Moderate air quality	pm25	2018-12-06 18:35:00	55	90	1013	4.0999999	1.77999997	2018-12-06 10:13:00
Fort Bragg	City	Mendocino	california	39.4457016	-123.805	1.59000003	52	Moderate air quality	pm25	2018-12-06 18:04:00	44.0600014	20	1016	1.5	0	2018-12-06 10:13:00
Fort Jones	City	Siskiyou	california	41.6076012	-122.839996	1.38999999	45	Good air quality	pm25	2018-12-06 17:56:00	33.5499992	1	1019	0.959999979	0	2018-12-06 10:13:00
Fortuna	City	Humboldt	california	40.5982018	-124.156998	1.46000004	36	Good air quality	pm25	2018-12-06 18:35:00	49.8600006	1	1016	2.5999999	0	2018-12-06 10:13:00
Foster City	City	San Mateo	california	37.5584984	-122.271004	1.75999999	66	Moderate air quality	pm25	2018-12-06 18:15:00	55.3499985	20	1014	4.0999999	0	2018-12-06 10:13:00
Fountain Valley	City	Orange	california	33.7089996	-117.954002	2.44000006	47	Good air quality	pm25	2018-12-06 18:26:00	53.2400017	90	1013	1.5	2.75999999	2018-12-06 10:13:00
Fowler	City	Fresno	california	36.6305008	-119.678001	1.86000001	47	Good air quality	pm25	2018-12-06 18:35:00	50.9500008	90	1015	2.0999999	0	2018-12-06 10:13:00
Fremont	City	Alameda	california	37.5483017	-121.988998	1.75999999	58	Moderate air quality	pm25	2018-12-06 18:15:00	55.6300011	1	1015	2.0999999	0	2018-12-06 10:13:00
Fresno	City	Fresno	california	36.7378006	-119.787003	1.85000002	68	Moderate air quality	pm25	2018-12-06 18:25:00	50.7900009	90	1015	2.5999999	0	2018-12-06 10:13:00
Fullerton	City	Orange	california	33.8703995	-117.924004	2.38000011	43	Good air quality	pm25	2018-12-06 18:26:00	52.75	90	1013	1.5	2.75999999	2018-12-06 10:13:00
Galt	City	Sacramento	california	38.2546005	-121.300003	1.64999998	55	Moderate air quality	pm25	2018-12-06 18:20:00	53.7099991	1	1015	5.69999981	0	2018-12-06 10:13:00
Garden Grove	City	Orange	california	33.7742996	-117.938004	2.38000011	41	Good air quality	pm25	2018-12-06 18:26:00	52.75	90	1013	1.5	2.75999999	2018-12-06 10:13:00
Gardena	City	Los Angeles	california	33.8883018	-118.308998	2.36999989	54	Moderate air quality	pm25	2018-12-06 18:26:00	52.9300003	90	1013	1.5	2.75999999	2018-12-06 10:13:00
Gilroy	City	Santa Clara	california	37.0057983	-121.568001	1.83000004	64	Moderate air quality	pm25	2018-12-06 18:15:00	55.5299988	1	1015	3.5999999	0	2018-12-06 10:13:00
Glendale	City	Los Angeles	california	34.1425018	-118.254997	2.29999995	58	Moderate air quality	pm25	2018-12-06 18:26:00	52.1599998	90	1013	1.5	2.56999993	2018-12-06 10:13:00
Glendora	City	Los Angeles	california	34.1361008	-117.864998	2.3499999	58	Moderate air quality	pm25	2018-12-06 18:26:00	52.9900017	90	1013	1.5	2.72000003	2018-12-06 10:13:00
Goleta	City	Santa Barbara	california	34.4357986	-119.828003	2.22000003	46	Good air quality	pm25	2018-12-06 18:15:00	54.3600006	90	1012	7.51000023	1.10000002	2018-12-06 10:13:00
Gonzales	City	Monterey	california	36.5065994	-121.444	1.88999999	58	Moderate air quality	pm25	2018-12-06 18:15:00	55.9399986	1	1014	1.40999997	0	2018-12-06 10:13:00
Grand Terrace	City	San Bernardino	california	34.0339012	-117.314003	2.36999989	53	Moderate air quality	pm25	2018-12-06 18:40:00	54.7700005	90	1013	4.0999999	1.26999998	2018-12-06 10:13:00
Grass Valley	City	Nevada	california	39.219101	-121.060997	1.61000001	55	Moderate air quality	pm25	2018-12-06 18:15:00	50.5600014	1	1014	1.96000004	0	2018-12-06 10:13:00
Greenfield	City	Monterey	california	36.3208008	-121.244003	1.92999995	58	Moderate air quality	pm25	2018-12-06 18:15:00	56.1399994	1	1014	1.40999997	0	2018-12-06 10:13:00
Gridley	City	Butte	california	39.3638	-121.694	1.55999994	36	Good air quality	pm25	2018-12-06 18:15:00	50.4099998	1	1015	3.0999999	0	2018-12-06 10:13:00
Grover Beach	City	San Luis Obispo	california	35.1216011	-120.621002	2.07999992	35	Good air quality	pm25	2018-12-06 17:56:00	55.9199982	90	1012	1.75999999	0.25	2018-12-06 10:13:00
Guadalupe	City	Santa Barbara	california	34.9715996	-120.571999	2.11999989	21	Good air quality	o3	2018-12-06 18:15:00	56.1199989	90	1012	1.96000004	0.25	2018-12-06 10:13:00
Gustine	City	Merced	california	37.2577019	-120.999001	1.75999999	52	Moderate air quality	pm25	2018-12-06 18:23:00	54.0499992	75	1014	2.5999999	0	2018-12-06 10:13:00
Half Moon Bay	City	San Mateo	california	37.4636002	-122.429001	1.79999995	44	Good air quality	pm25	2018-12-06 18:00:00	55.8100014	1	1014	2.21000004	0	2018-12-06 10:13:00
Hanford	City	Kings	california	36.3274002	-119.646004	1.88999999	49	Good air quality	pm25	2018-12-06 18:35:00	50.5200005	90	1015	1.5	0	2018-12-06 10:13:00
Hawaiian Gardens	City	Los Angeles	california	33.8314018	-118.072998	2.36999989	52	Moderate air quality	pm25	2018-12-06 18:40:00	52.8400002	90	1013	3.5999999	2.75999999	2018-12-06 10:13:00
Hawthorne	City	Los Angeles	california	33.9164009	-118.352997	2.36999989	56	Moderate air quality	pm25	2018-12-06 18:40:00	52.8600006	90	1013	3.5999999	2.75999999	2018-12-06 10:13:00
Hayward	City	Alameda	california	37.6688004	-122.081001	1.74000001	60	Moderate air quality	pm25	2018-12-06 18:15:00	55.4399986	20	1015	4.0999999	0	2018-12-06 10:13:00
Healdsburg	City	Sonoma	california	38.6105003	-122.869003	1.64999998	57	Moderate air quality	pm25	2018-12-06 18:15:00	50.3600006	1	1015	1.5	0	2018-12-06 10:13:00
Hemet	City	Riverside	california	33.7475014	-116.972	2.55999994	55	Moderate air quality	pm25	2018-12-06 18:35:00	55.7200012	90	1013	4.0999999	0	2018-12-06 10:13:00
Hercules	City	Contra Costa	california	38.0171013	-122.289001	1.67999995	28	Good air quality	pm25	2018-12-06 18:15:00	55.6500015	1	1015	2.0999999	0	2018-12-06 10:13:00
Hermosa Beach	City	Los Angeles	california	33.8622017	-118.400002	2.36999989	53	Moderate air quality	pm25	2018-12-06 18:40:00	52.6500015	90	1013	3.5999999	2.75999999	2018-12-06 10:13:00
Hesperia	City	San Bernardino	california	34.4263992	-117.301003	2.36999989	28	Good air quality	pm25	2018-12-06 18:08:00	51.6599998	90	1014	3.5999999	0	2018-12-06 10:13:00
Hidden Hills	City	Los Angeles	california	34.1603012	-118.652	2.30999994	23	Good air quality	o3	2018-12-06 18:26:00	52.2900009	90	1013	5.69999981	2.70000005	2018-12-06 10:13:00
Highland	City	San Bernardino	california	34.1282997	-117.209	2.43000007	51	Moderate air quality	pm25	2018-12-06 18:08:00	52.8800011	90	1014	5.69999981	0	2018-12-06 10:13:00
Hillsborough	Town	San Mateo	california	37.5741005	-122.378998	1.75999999	37	Good air quality	pm25	2018-12-06 18:15:00	55.4900017	20	1014	4.0999999	0	2018-12-06 10:13:00
Hollister	City	San Benito	california	36.8525009	-121.402	1.84000003	59	Moderate air quality	pm25	2018-12-06 18:15:00	56.2299995	1	1014	1.40999997	0	2018-12-06 10:13:00
Holtville	City	Imperial	california	32.8111992	-115.379997	2.71000004	69	Moderate air quality	pm25	2018-12-06 17:56:00	55.1699982	90	1017	1.96000004	0	2018-12-06 10:13:00
Hughson	City	Stanislaus	california	37.6026993	-120.865997	1.73000002	51	Moderate air quality	pm25	2018-12-06 18:23:00	53.4199982	75	1014	2.5999999	0	2018-12-06 10:13:00
Huntington Beach	City	Orange	california	33.6595001	-117.999001	2.44000006	45	Good air quality	pm25	2018-12-06 18:26:00	53.4599991	90	1013	1.5	2.75999999	2018-12-06 10:13:00
Huntington Park	City	Los Angeles	california	33.9817009	-118.224998	2.36999989	58	Moderate air quality	pm25	2018-12-06 18:40:00	52.8600006	90	1013	3.5999999	2.75999999	2018-12-06 10:13:00
Huron	City	Fresno	california	36.2027016	-120.102997	1.90999997	31	Good air quality	pm10	2018-12-06 18:35:00	50.4700012	90	1015	1.5	0	2018-12-06 10:13:00
Imperial	City	Imperial	california	32.847599	-115.569	2.70000005	60	Moderate air quality	pm25	2018-12-06 17:56:00	55.1699982	90	1017	2.30999994	0	2018-12-06 10:13:00
Imperial Beach	City	San Diego	california	32.5839005	-117.112999	2.73000002	71	Moderate air quality	pm25	2018-12-06 18:15:00	59.8100014	90	1014	5.69999981	0.560000002	2018-12-06 10:13:00
Indian Wells	City	Riverside	california	33.7176018	-116.341003	2.55999994	27	Good air quality	pm25	2018-12-06 18:15:00	51.7999992	90	1017	0.75999999	0	2018-12-06 10:13:00
Indio	City	Riverside	california	33.7206001	-116.216003	2.47000003	51	Moderate air quality	pm25	2018-12-06 18:15:00	51.7999992	90	1017	0.75999999	0	2018-12-06 10:13:00
Industry	City	Los Angeles	california	34.0196991	-117.959	2.3499999	54	Moderate air quality	pm25	2018-12-06 18:40:00	52.9000015	90	1013	3.5999999	2.72000003	2018-12-06 10:13:00
Inglewood	City	Los Angeles	california	33.9617004	-118.352997	2.36999989	59	Moderate air quality	pm25	2018-12-06 18:40:00	52.8600006	90	1013	1.5	2.75999999	2018-12-06 10:13:00
Ione	City	Amador	california	38.3526993	-120.932999	1.65999997	60	Moderate air quality	pm25	2018-12-06 18:15:00	52.2299995	1	1014	1.30999994	0	2018-12-06 10:13:00
Irvine	City	Orange	california	33.6846008	-117.827003	2.44000006	41	Good air quality	pm25	2018-12-06 18:40:00	54.0699997	90	1013	3.5999999	2.86999989	2018-12-06 10:13:00
Irwindale	City	Los Angeles	california	34.1069984	-117.934998	2.3499999	56	Moderate air quality	pm25	2018-12-06 18:40:00	52.9199982	90	1013	3.5999999	2.72000003	2018-12-06 10:13:00
Isleton	City	Sacramento	california	38.1618996	-121.612	1.66999996	31	Good air quality	pm25	2018-12-06 18:20:00	53.4700012	1	1015	5.69999981	0	2018-12-06 10:13:00
Jackson	City	Amador	california	38.3488007	-120.774002	1.65999997	49	Good air quality	pm25	2018-12-06 18:15:00	52.5200005	1	1014	1.50999999	0	2018-12-06 10:13:00
Jurupa Valley	City	Riverside	california	33.9972	-117.485001	2.41000009	57	Moderate air quality	pm25	2018-12-06 18:40:00	55.1500015	90	1013	3.5999999	1.26999998	2018-12-06 10:13:00
Kerman	City	Fresno	california	36.7235985	-120.059998	1.83000004	56	Moderate air quality	pm25	2018-12-06 18:35:00	50.8100014	90	1015	1.11000001	0	2018-12-06 10:13:00
King City	City	Monterey	california	36.2126999	-121.125999	1.96000004	62	Moderate air quality	pm25	2018-12-06 17:53:00	57.0200005	1	1013	1.40999997	0	2018-12-06 10:13:00
Kingsburg	City	Fresno	california	36.5138016	-119.554001	1.86000001	52	Moderate air quality	pm25	2018-12-06 18:35:00	50.5	90	1015	2.0999999	0	2018-12-06 10:13:00
La CaÃ±ada Flintridge	City	Los Angeles	california	34.2067986	-118.199997	2.32999992	54	Moderate air quality	pm25	2018-12-06 18:40:00	52.0900002	90	1013	3.5999999	2.56999993	2018-12-06 10:13:00
La Habra	City	Orange	california	33.9319	-117.945999	2.38000011	47	Good air quality	pm25	2018-12-06 18:40:00	52.9000015	90	1013	3.5999999	2.72000003	2018-12-06 10:13:00
La Habra Heights	City	Los Angeles	california	33.9608002	-117.950996	2.38000011	30	Good air quality	pm25	2018-12-06 18:40:00	52.9000015	90	1013	3.5999999	2.72000003	2018-12-06 10:13:00
La Mesa	City	San Diego	california	32.7677994	-117.023003	2.68000007	65	Moderate air quality	no2	2018-12-06 18:15:00	59.2000008	90	1014	3.0999999	0.560000002	2018-12-06 10:13:00
La Mirada	City	Los Angeles	california	33.9171982	-118.012001	2.36999989	48	Good air quality	pm25	2018-12-06 18:40:00	52.7700005	90	1013	3.5999999	2.75999999	2018-12-06 10:13:00
La Palma	City	Orange	california	33.8462982	-118.045998	2.36999989	40	Good air quality	no2	2018-12-06 18:40:00	52.8400002	90	1013	3.5999999	2.75999999	2018-12-06 10:13:00
La Puente	City	Los Angeles	california	34.0200005	-117.949997	2.3499999	49	Good air quality	pm25	2018-12-06 18:40:00	52.9000015	90	1013	3.5999999	2.72000003	2018-12-06 10:13:00
La Quinta	City	Riverside	california	33.6633987	-116.309998	2.55999994	27	Good air quality	pm10	2018-12-06 18:15:00	51.7999992	90	1017	0.75999999	0	2018-12-06 10:13:00
La Verne	City	Los Angeles	california	34.1007996	-117.767998	2.3499999	54	Moderate air quality	pm25	2018-12-06 18:40:00	52.9000015	90	1013	3.5999999	2.72000003	2018-12-06 10:13:00
Lafayette	City	Contra Costa	california	37.8857994	-122.117996	1.72000003	44	Good air quality	pm25	2018-12-06 18:40:00	55.5299988	1	1014	5.69999981	0	2018-12-06 10:13:00
Laguna Beach	City	Orange	california	33.5427017	-117.785004	2.44000006	49	Good air quality	pm25	2018-12-06 18:35:00	55.4000015	90	1013	4.0999999	2.44000006	2018-12-06 10:13:00
Laguna Hills	City	Orange	california	33.5915985	-117.698997	2.48000002	33	Good air quality	pm25	2018-12-06 18:40:00	55.3499985	90	1013	3.5999999	2.44000006	2018-12-06 10:13:00
Laguna Niguel	City	Orange	california	33.5237007	-117.714996	2.48000002	51	Moderate air quality	pm25	2018-12-06 18:40:00	55.5099983	90	1013	3.5999999	1.72000003	2018-12-06 10:13:00
Laguna Woods	City	Orange	california	33.610199	-117.724998	2.48000002	34	Good air quality	pm25	2018-12-06 18:40:00	55	90	1013	3.5999999	2.57999992	2018-12-06 10:13:00
Lake Elsinore	City	Riverside	california	33.6680984	-117.327003	2.5	51	Moderate air quality	pm25	2018-12-06 18:35:00	56.0499992	90	1013	4.0999999	1.77999997	2018-12-06 10:13:00
Lake Forest	City	Orange	california	33.6469002	-117.685997	2.48000002	33	Good air quality	o3	2018-12-06 18:26:00	55.1500015	90	1014	3.5999999	2.49000001	2018-12-06 10:13:00
Lakeport	City	Lake	california	39.0429001	-122.916	1.63999999	56	Moderate air quality	pm25	2018-12-06 18:04:00	44.0600014	20	1016	1.5	0	2018-12-06 10:13:00
Lakewood	City	Los Angeles	california	33.8535995	-118.134003	2.36999989	44	Good air quality	pm25	2018-12-06 18:40:00	52.8400002	90	1013	3.5999999	2.75999999	2018-12-06 10:13:00
Lancaster	City	Los Angeles	california	34.6867981	-118.153999	2.25999999	30	Good air quality	pm25	2018-12-06 18:22:00	42.9099998	90	1016	4.5999999	2.16000009	2018-12-06 10:13:00
Larkspur	City	Marin	california	37.9341011	-122.535004	1.72000003	25	Good air quality	pm10	2018-12-06 18:15:00	55.7099991	1	1015	2.0999999	0	2018-12-06 10:13:00
Lathrop	City	San Joaquin	california	37.8227005	-121.277	1.71000004	49	Good air quality	pm25	2018-12-06 18:15:00	53.0200005	1	1015	2.0999999	0	2018-12-06 10:13:00
Lawndale	City	Los Angeles	california	33.8871994	-118.352997	2.36999989	54	Moderate air quality	pm25	2018-12-06 18:26:00	52.9300003	90	1013	1.5	2.75999999	2018-12-06 10:13:00
Lemon Grove	City	San Diego	california	32.7425003	-117.030998	2.73000002	60	Moderate air quality	no2	2018-12-06 18:15:00	59.5	90	1014	3.0999999	0.560000002	2018-12-06 10:13:00
Lemoore	City	Kings	california	36.3008003	-119.782997	1.88	41	Good air quality	pm25	2018-12-06 18:35:00	50.6100006	90	1015	1.5	0	2018-12-06 10:13:00
Lincoln	City	Placer	california	38.8916016	-121.292999	1.60000002	55	Moderate air quality	pm25	2018-12-06 18:20:00	50.9399986	1	1015	3.0999999	0	2018-12-06 10:13:00
Lindsay	City	Tulare	california	36.2029991	-119.087997	1.91999996	54	Moderate air quality	pm25	2018-12-06 18:20:00	50.3600006	90	1015	2.5999999	0	2018-12-06 10:13:00
Live Oak	City	Sutter	california	39.2756996	-121.660004	1.55999994	53	Moderate air quality	pm25	2018-12-06 18:15:00	50.1599998	1	1015	3.0999999	0	2018-12-06 10:13:00
Livermore	City	Alameda	california	37.6819	-121.767998	1.75999999	61	Moderate air quality	pm25	2018-12-06 18:15:00	55.3499985	1	1015	2.0999999	0	2018-12-06 10:13:00
Livingston	City	Merced	california	37.3869019	-120.723999	1.75999999	55	Moderate air quality	pm25	2018-12-06 18:23:00	53.1300011	75	1014	2.5999999	0	2018-12-06 10:13:00
Lodi	City	San Joaquin	california	38.1341019	-121.272003	1.66999996	60	Moderate air quality	pm25	2018-12-06 18:20:00	53.4199982	1	1015	2.0999999	0	2018-12-06 10:13:00
Loma Linda	City	San Bernardino	california	34.0483017	-117.261002	2.36999989	53	Moderate air quality	pm25	2018-12-06 18:40:00	54.7700005	90	1013	4.0999999	1.26999998	2018-12-06 10:13:00
Lomita	City	Los Angeles	california	33.7921982	-118.315002	2.36999989	20	Good air quality	pm25	2018-12-06 18:26:00	52.9199982	90	1013	1.5	2.75999999	2018-12-06 10:13:00
Lompoc	City	Santa Barbara	california	34.6390991	-120.458	2.18000007	44	Good air quality	pm25	2018-12-06 18:15:00	56.3400002	90	1012	1.96000004	0.25	2018-12-06 10:13:00
Long Beach	City	Los Angeles	california	33.7700996	-118.194	2.36999989	58	Moderate air quality	pm25	2018-12-06 18:40:00	52.8400002	90	1013	3.5999999	2.75999999	2018-12-06 10:13:00
Loomis	Town	Placer	california	38.8213005	-121.193001	1.62	54	Moderate air quality	pm25	2018-12-06 18:20:00	51.2400017	1	1015	3.0999999	0	2018-12-06 10:13:00
Los Alamitos	City	Orange	california	33.8031998	-118.071999	2.36999989	44	Good air quality	pm25	2018-12-06 18:40:00	52.8400002	90	1013	3.5999999	2.75999999	2018-12-06 10:13:00
Los Altos	City	Santa Clara	california	37.3852005	-122.113998	1.80999994	62	Moderate air quality	pm25	2018-12-06 18:15:00	55.6300011	75	1015	2.0999999	0	2018-12-06 10:13:00
Los Altos Hills	Town	Santa Clara	california	37.3796997	-122.137001	1.80999994	51	Moderate air quality	pm25	2018-12-06 18:40:00	55.6199989	1	1014	5.69999981	0	2018-12-06 10:13:00
Los Angeles	City	Los Angeles	california	34.0522003	-118.244003	2.32999992	66	Moderate air quality	pm25	2018-12-06 18:40:00	53.0200005	90	1013	1.5	2.72000003	2018-12-06 10:13:00
Los Banos	City	Merced	california	37.0583	-120.849998	1.78999996	53	Moderate air quality	pm25	2018-12-06 18:23:00	53.8899994	75	1014	2.5999999	0	2018-12-06 10:13:00
Los Gatos	Town	Santa Clara	california	37.2358017	-121.961998	1.84000003	52	Moderate air quality	pm25	2018-12-06 18:15:00	55.6500015	1	1015	3.5999999	0	2018-12-06 10:13:00
Loyalton	City	Sierra	california	39.6763	-120.240997	1.64999998	43	Good air quality	pm25	2018-12-06 18:35:00	29.1700001	90	1018	5.0999999	0	2018-12-06 10:13:00
Lynwood	City	Los Angeles	california	33.9303017	-118.210999	2.36999989	57	Moderate air quality	pm25	2018-12-06 18:40:00	52.8600006	90	1013	3.5999999	2.75999999	2018-12-06 10:13:00
Madera	City	Madera	california	36.9612999	-120.060997	1.79999995	69	Moderate air quality	pm25	2018-12-06 18:35:00	52.1100006	90	1015	2.5999999	0	2018-12-06 10:13:00
Malibu	City	Los Angeles	california	34.0259018	-118.779999	2.31999993	25	Good air quality	pm25	2018-12-06 18:26:00	51.4900017	90	1013	1.5	2.75999999	2018-12-06 10:13:00
Mammoth Lakes	Town	Mono	california	37.6484985	-118.972	2	57	Moderate air quality	pm25	2018-12-06 18:15:00	27.1399994	40	1017	1.11000001	0	2018-12-06 10:13:00
Manhattan Beach	City	Los Angeles	california	33.8847008	-118.411003	2.36999989	53	Moderate air quality	pm25	2018-12-06 18:40:00	52.6500015	90	1013	3.5999999	2.75999999	2018-12-06 10:13:00
Manteca	City	San Joaquin	california	37.7974014	-121.216003	1.71000004	65	Moderate air quality	pm25	2018-12-06 18:15:00	53.0200005	1	1015	2.0999999	0	2018-12-06 10:13:00
Maricopa	City	Kern	california	35.0588989	-119.401001	2.05999994	49	Good air quality	pm25	2018-12-06 17:54:00	51.0800018	90	1015	1.5	0.75999999	2018-12-06 10:13:00
Marina	City	Monterey	california	36.6843987	-121.802002	1.88999999	52	Moderate air quality	pm25	2018-12-06 18:15:00	55.9399986	1	1014	1.96000004	0	2018-12-06 10:13:00
Martinez	City	Contra Costa	california	38.0194016	-122.134003	1.69000006	57	Moderate air quality	pm25	2018-12-06 18:40:00	55.4000015	1	1014	5.69999981	0	2018-12-06 10:13:00
Marysville	City	Yuba	california	39.1456985	-121.591003	1.58000004	61	Moderate air quality	pm25	2018-12-06 18:35:00	50.4099998	1	1014	2.5999999	0	2018-12-06 10:13:00
Maywood	City	Los Angeles	california	33.9866982	-118.184998	2.36999989	57	Moderate air quality	pm25	2018-12-06 18:40:00	52.8600006	90	1013	3.5999999	2.75999999	2018-12-06 10:13:00
McFarland	City	Kern	california	35.6780014	-119.228996	1.98000002	117	Unhealthy for sensitive groups air quality	pm25	2018-12-06 18:20:00	49.8600006	90	1015	1.5	0.75999999	2018-12-06 10:13:00
Mendota	City	Fresno	california	36.7536011	-120.382004	1.80999994	58	Moderate air quality	pm25	2018-12-06 18:35:00	51.4000015	90	1015	1.65999997	0	2018-12-06 10:13:00
Menifee	City	Riverside	california	33.6971016	-117.184998	2.49000001	22	Good air quality	pm25	2018-12-06 18:35:00	56.1199989	90	1013	4.0999999	1.26999998	2018-12-06 10:13:00
Menlo Park	City	San Mateo	california	37.4529991	-122.181999	1.80999994	78	Moderate air quality	pm25	2018-12-06 18:40:00	55.6199989	1	1014	5.69999981	0	2018-12-06 10:13:00
Merced	City	Merced	california	37.3022003	-120.483002	1.75999999	57	Moderate air quality	pm25	2018-12-06 18:23:00	53.1100006	75	1014	2.5999999	0	2018-12-06 10:13:00
Mill Valley	City	Marin	california	37.9059982	-122.544998	1.72000003	43	Good air quality	pm25	2018-12-06 18:40:00	55.7099991	1	1014	5.69999981	0	2018-12-06 10:13:00
Millbrae	City	San Mateo	california	37.5984993	-122.387001	1.75999999	60	Moderate air quality	pm25	2018-12-06 18:40:00	55.5999985	1	1014	5.69999981	0	2018-12-06 10:13:00
Milpitas	City	Santa Clara	california	37.4323006	-121.900002	1.77999997	61	Moderate air quality	pm25	2018-12-06 18:40:00	55.6199989	1	1014	5.69999981	0	2018-12-06 10:13:00
Mission Viejo	City	Orange	california	33.5969009	-117.657997	2.48000002	37	Good air quality	pm25	2018-12-06 18:40:00	55.8499985	90	1013	3.5999999	1.26999998	2018-12-06 10:13:00
Modesto	City	Stanislaus	california	37.6390991	-120.997002	1.73000002	71	Moderate air quality	pm25	2018-12-06 18:23:00	53.4599991	90	1015	4.5999999	0	2018-12-06 10:13:00
Monrovia	City	Los Angeles	california	34.1442986	-118.001999	2.32999992	56	Moderate air quality	pm25	2018-12-06 18:40:00	52.0699997	90	1013	3.5999999	2.56999993	2018-12-06 10:13:00
Montague	City	Siskiyou	california	41.728199	-122.528	1.38	44	Good air quality	pm25	2018-12-06 17:56:00	33.5800018	1	1019	1.30999994	0	2018-12-06 10:13:00
Montclair	City	San Bernardino	california	34.0774994	-117.690002	2.38000011	50	Good air quality	pm25	2018-12-06 18:40:00	52.9000015	90	1013	3.5999999	2.72000003	2018-12-06 10:13:00
Monte Sereno	City	Santa Clara	california	37.2363014	-121.991997	1.84000003	43	Good air quality	pm25	2018-12-06 18:40:00	55.6500015	1	1014	5.69999981	0	2018-12-06 10:13:00
Montebello	City	Los Angeles	california	34.0164986	-118.113998	2.32999992	44	Good air quality	pm25	2018-12-06 18:40:00	53.0099983	90	1013	3.5999999	2.72000003	2018-12-06 10:13:00
Monterey	City	Monterey	california	36.6002007	-121.894997	1.88999999	61	Moderate air quality	pm25	2018-12-06 18:15:00	55.9399986	20	1013	1.5	0	2018-12-06 10:13:00
Monterey Park	City	Los Angeles	california	34.0625	-118.123001	2.32999992	54	Moderate air quality	pm25	2018-12-06 18:40:00	53.0099983	90	1013	3.5999999	2.72000003	2018-12-06 10:13:00
Moorpark	City	Ventura	california	34.2855988	-118.882004	2.25999999	48	Good air quality	pm25	2018-12-06 18:26:00	50.4000015	90	1013	5.69999981	3.17000008	2018-12-06 10:13:00
Moraga	Town	Contra Costa	california	37.8348999	-122.129997	1.72000003	25	Good air quality	pm10	2018-12-06 18:40:00	55.5299988	1	1014	5.69999981	0	2018-12-06 10:13:00
Moreno Valley	City	Riverside	california	33.9425011	-117.230003	2.43000007	53	Moderate air quality	pm25	2018-12-06 18:40:00	54.8600006	90	1013	4.0999999	1.26999998	2018-12-06 10:13:00
Morgan Hill	City	Santa Clara	california	37.1305008	-121.653999	1.83000004	61	Moderate air quality	pm25	2018-12-06 18:15:00	55.5299988	1	1015	3.5999999	0	2018-12-06 10:13:00
Morro Bay	City	San Luis Obispo	california	35.3658981	-120.849998	2.04999995	25	Good air quality	o3	2018-12-06 17:56:00	56.0299988	90	1012	1.75999999	0	2018-12-06 10:13:00
Mount Shasta	City	Siskiyou	california	41.3098984	-122.310997	1.42999995	53	Moderate air quality	pm25	2018-12-06 18:10:00	33.0099983	1	1017	1.5	0	2018-12-06 10:13:00
Mountain View	City	Santa Clara	california	37.3861008	-122.084	1.80999994	69	Moderate air quality	pm25	2018-12-06 18:40:00	55.6199989	1	1014	5.69999981	0	2018-12-06 10:13:00
Murrieta	City	Riverside	california	33.5539017	-117.213997	2.49000001	22	Good air quality	pm25	2018-12-06 18:35:00	56.4799995	90	1013	4.0999999	1.14999998	2018-12-06 10:13:00
Napa	City	Napa	california	38.2975006	-122.287003	1.66999996	54	Moderate air quality	pm25	2018-12-06 18:20:00	55.8300018	1	1015	2.0999999	0	2018-12-06 10:13:00
National City	City	San Diego	california	32.6781006	-117.098999	2.73000002	62	Moderate air quality	pm25	2018-12-06 18:15:00	59.8300018	90	1014	5.69999981	0.560000002	2018-12-06 10:13:00
Needles	City	San Bernardino	california	34.8480988	-114.613998	2.19000006	59	Moderate air quality	pm25	2018-12-06 18:35:00	58.9099998	20	1018	3.5999999	0	2018-12-06 10:13:00
Nevada City	City	Nevada	california	39.2616005	-121.015999	1.60000002	34	Good air quality	pm25	2018-12-06 18:35:00	50.3800011	1	1014	2.5999999	0	2018-12-06 10:13:00
Newark	City	Alameda	california	37.5297012	-122.040001	1.74000001	50	Good air quality	pm25	2018-12-06 18:40:00	55.6199989	1	1014	5.69999981	0	2018-12-06 10:13:00
Newman	City	Stanislaus	california	37.3138008	-121.021004	1.76999998	51	Moderate air quality	pm25	2018-12-06 18:23:00	53.7099991	75	1014	2.5999999	0	2018-12-06 10:13:00
Newport Beach	City	Orange	california	33.6189003	-117.93	2.44000006	24	Good air quality	o3	2018-12-06 18:40:00	54.3899994	90	1013	3.5999999	2.86999989	2018-12-06 10:13:00
Norco	City	Riverside	california	33.9310989	-117.549004	2.41000009	32	Good air quality	pm25	2018-12-06 18:40:00	54.5699997	90	1013	3.5999999	1.77999997	2018-12-06 10:13:00
Norwalk	City	Los Angeles	california	33.9021988	-118.082001	2.36999989	55	Moderate air quality	pm25	2018-12-06 18:40:00	52.8400002	90	1013	3.5999999	2.75999999	2018-12-06 10:13:00
Novato	City	Marin	california	38.107399	-122.57	1.67999995	51	Moderate air quality	pm25	2018-12-06 18:40:00	56.3699989	1	1015	2.0999999	0	2018-12-06 10:13:00
Oakdale	City	Stanislaus	california	37.7666016	-120.847	1.71000004	63	Moderate air quality	pm25	2018-12-06 18:23:00	53.6199989	75	1014	2.5999999	0	2018-12-06 10:13:00
Oakland	City	Alameda	california	37.8044014	-122.271004	1.71000004	58	Moderate air quality	pm25	2018-12-06 18:40:00	55.5299988	1	1014	5.69999981	0	2018-12-06 10:13:00
Oakley	City	Contra Costa	california	37.9973984	-121.711998	1.71000004	55	Moderate air quality	pm25	2018-12-06 18:20:00	55.1500015	1	1015	2.0999999	0	2018-12-06 10:13:00
Oceanside	City	San Diego	california	33.1959	-117.378998	2.5999999	56	Moderate air quality	pm25	2018-12-06 18:35:00	58.5099983	90	1013	4.0999999	0.680000007	2018-12-06 10:13:00
Ojai	City	Ventura	california	34.4480019	-119.242996	2.25999999	50	Good air quality	pm25	2018-12-06 17:57:00	53.7999992	90	1012	6.19999981	1.35000002	2018-12-06 10:13:00
Ontario	City	San Bernardino	california	34.0633011	-117.651001	2.38000011	50	Good air quality	pm25	2018-12-06 18:40:00	53.6699982	90	1013	3.5999999	2.41000009	2018-12-06 10:13:00
Orange	City	Orange	california	33.787899	-117.852997	2.38000011	46	Good air quality	pm25	2018-12-06 18:40:00	53.2599983	90	1013	3.5999999	2.75999999	2018-12-06 10:13:00
Orange Cove	City	Fresno	california	36.6244011	-119.314003	1.87	52	Moderate air quality	pm25	2018-12-06 18:35:00	50.5	90	1015	2.0999999	0	2018-12-06 10:13:00
Orinda	City	Contra Costa	california	37.8771019	-122.18	1.72000003	49	Good air quality	pm25	2018-12-06 18:40:00	55.5299988	1	1014	5.69999981	0	2018-12-06 10:13:00
Orland	City	Glenn	california	39.7473984	-122.195999	1.53999996	28	Good air quality	pm25	2018-12-06 17:54:00	51.9799995	1	1017	4.0999999	0	2018-12-06 10:13:00
Oroville	City	Butte	california	39.5138016	-121.556	1.54999995	35	Good air quality	pm25	2018-12-06 18:35:00	49.6800003	1	1014	2.5999999	0	2018-12-06 10:13:00
Oxnard	City	Ventura	california	34.1974983	-119.177002	2.28999996	69	Moderate air quality	pm25	2018-12-06 17:57:00	53.9099998	90	1012	11.3000002	1.35000002	2018-12-06 10:13:00
Pacific Grove	City	Monterey	california	36.6176987	-121.917	1.88999999	48	Good air quality	pm25	2018-12-06 18:15:00	55.9399986	20	1013	1.5	0	2018-12-06 10:13:00
Pacifica	City	San Mateo	california	37.6138	-122.487	1.75999999	35	Good air quality	pm10	2018-12-06 18:40:00	55.5999985	1	1014	5.69999981	0	2018-12-06 10:13:00
Palm Desert	City	Riverside	california	33.7221985	-116.374001	2.55999994	54	Moderate air quality	pm25	2018-12-06 18:15:00	51.7999992	90	1017	0.75999999	0	2018-12-06 10:13:00
Palm Springs	City	Riverside	california	33.8302994	-116.544998	2.5	38	Good air quality	pm25	2018-12-06 18:35:00	52.9000015	90	1013	4.0999999	0	2018-12-06 10:13:00
Palmdale	City	Los Angeles	california	34.5793991	-118.115997	2.25999999	41	Good air quality	pm25	2018-12-06 18:26:00	44.7099991	90	1016	4.5999999	2.3900001	2018-12-06 10:13:00
Palo Alto	City	Santa Clara	california	37.4418983	-122.142998	1.80999994	70	Moderate air quality	pm25	2018-12-06 18:40:00	55.6199989	1	1014	5.69999981	0	2018-12-06 10:13:00
Palos Verdes Estates	City	Los Angeles	california	33.8005981	-118.389999	2.36999989	23	Good air quality	pm25	2018-12-06 18:40:00	52.6500015	90	1013	3.5999999	2.75999999	2018-12-06 10:13:00
Paradise	Town	Butte	california	39.7596016	-121.622002	1.57000005	35	Good air quality	pm25	2018-12-06 17:54:00	51.9799995	1	1017	4.0999999	0	2018-12-06 10:13:00
Paramount	City	Los Angeles	california	33.8894997	-118.160004	2.36999989	49	Good air quality	pm25	2018-12-06 18:40:00	52.8400002	90	1013	3.5999999	2.75999999	2018-12-06 10:13:00
Parlier	City	Fresno	california	36.611599	-119.527	1.86000001	48	Good air quality	pm25	2018-12-06 18:36:00	51.1199989	90	1015	2.0999999	0	2018-12-06 10:13:00
Pasadena	City	Los Angeles	california	34.1478004	-118.144997	2.32999992	56	Moderate air quality	pm25	2018-12-06 18:40:00	52.0900002	90	1013	3.5999999	2.56999993	2018-12-06 10:13:00
Paso Robles	City	San Luis Obispo	california	35.6369019	-120.654999	2.01999998	21	Good air quality	pm25	2018-12-06 17:56:00	55.2400017	90	1014	5.69999981	0	2018-12-06 10:13:00
Patterson	City	Stanislaus	california	37.4715996	-121.129997	1.76999998	53	Moderate air quality	pm25	2018-12-06 18:23:00	53.9099998	75	1014	2.5999999	0	2018-12-06 10:13:00
Perris	City	Riverside	california	33.7825012	-117.228996	2.43000007	58	Moderate air quality	pm25	2018-12-06 18:35:00	55.6300011	90	1013	4.0999999	1.26999998	2018-12-06 10:13:00
Petaluma	City	Sonoma	california	38.232399	-122.637001	1.67999995	57	Moderate air quality	pm25	2018-12-06 18:15:00	55.1300011	1	1015	1.5	0	2018-12-06 10:13:00
Pico Rivera	City	Los Angeles	california	33.9831009	-118.097	2.36999989	55	Moderate air quality	pm25	2018-12-06 18:40:00	53.0099983	90	1013	3.5999999	2.72000003	2018-12-06 10:13:00
Piedmont	City	Alameda	california	37.8244019	-122.232002	1.72000003	25	Good air quality	pm10	2018-12-06 18:40:00	55.5299988	1	1014	5.69999981	0	2018-12-06 10:13:00
Pinole	City	Contra Costa	california	38.0043983	-122.299004	1.67999995	51	Moderate air quality	pm25	2018-12-06 18:40:00	55.5299988	1	1014	5.69999981	0	2018-12-06 10:13:00
Pismo Beach	City	San Luis Obispo	california	35.1427994	-120.640999	2.07999992	37	Good air quality	pm25	2018-12-06 17:56:00	55.9399986	90	1012	1.75999999	0.25	2018-12-06 10:13:00
Pittsburg	City	Contra Costa	california	38.0279999	-121.885002	1.66999996	56	Moderate air quality	pm25	2018-12-06 18:20:00	54.8600006	1	1015	2.0999999	0	2018-12-06 10:13:00
Placentia	City	Orange	california	33.8711014	-117.862999	2.38000011	43	Good air quality	pm25	2018-12-06 18:40:00	52.9000015	90	1013	3.5999999	2.72000003	2018-12-06 10:13:00
Placerville	City	El Dorado	california	38.729599	-120.799004	1.64999998	54	Moderate air quality	pm25	2018-12-06 18:15:00	51.6399994	1	1015	1.21000004	0	2018-12-06 10:13:00
Pleasant Hill	City	Contra Costa	california	37.9480019	-122.060997	1.72000003	56	Moderate air quality	pm25	2018-12-06 18:40:00	55.3100014	1	1014	5.69999981	0	2018-12-06 10:13:00
Pleasanton	City	Alameda	california	37.6623993	-121.875	1.75999999	57	Moderate air quality	pm25	2018-12-06 18:40:00	55.3499985	1	1014	5.69999981	0	2018-12-06 10:13:00
Plymouth	City	Amador	california	38.4818993	-120.845001	1.65999997	37	Good air quality	pm25	2018-12-06 18:15:00	52.0200005	1	1014	1.50999999	0	2018-12-06 10:13:00
Point Arena	City	Mendocino	california	38.9087982	-123.693001	1.63999999	55	Moderate air quality	pm25	2018-12-06 18:04:00	44.0600014	20	1016	1.5	0	2018-12-06 10:13:00
Pomona	City	Los Angeles	california	34.0550995	-117.75	2.38000011	54	Moderate air quality	pm25	2018-12-06 18:40:00	52.9000015	90	1013	3.5999999	2.72000003	2018-12-06 10:13:00
Port Hueneme	City	Ventura	california	34.1478004	-119.195	2.28999996	59	Moderate air quality	pm25	2018-12-06 17:57:00	53.9099998	90	1012	11.3000002	1.35000002	2018-12-06 10:13:00
Porterville	City	Tulare	california	36.0652008	-119.016998	1.91999996	73	Moderate air quality	pm25	2018-12-06 18:36:00	50.2700005	90	1015	1.05999994	0	2018-12-06 10:13:00
Portola	City	Plumas	california	39.8105011	-120.469002	1.62	51	Moderate air quality	pm25	2018-12-06 18:35:00	30.3400002	90	1018	5.0999999	0	2018-12-06 10:13:00
Portola Valley	Town	San Mateo	california	37.3841019	-122.235001	1.80999994	53	Moderate air quality	pm25	2018-12-06 18:40:00	56.1399994	1	1014	5.69999981	0	2018-12-06 10:13:00
Poway	City	San Diego	california	32.9627991	-117.036003	2.68000007	23	Good air quality	o3	2018-12-06 18:35:00	58.9300003	90	1014	3.0999999	0.560000002	2018-12-06 10:13:00
Rancho Cordova	City	Sacramento	california	38.5890999	-121.303001	1.63	54	Moderate air quality	pm25	2018-12-06 18:20:00	52.2099991	1	1016	3.0999999	0	2018-12-06 10:13:00
Rancho Cucamonga	City	San Bernardino	california	34.1063995	-117.593002	2.38000011	35	Good air quality	pm25	2018-12-06 18:40:00	54.4799995	90	1013	3.5999999	1.77999997	2018-12-06 10:13:00
Rancho Mirage	City	Riverside	california	33.7397003	-116.413002	2.55999994	30	Good air quality	pm25	2018-12-06 18:35:00	53.5099983	90	1013	4.0999999	0	2018-12-06 10:13:00
Rancho Palos Verdes	City	Los Angeles	california	33.7444992	-118.387001	2.44000006	21	Good air quality	pm25	2018-12-06 18:40:00	52.6300011	90	1013	3.5999999	2.75999999	2018-12-06 10:13:00
Rancho Santa Margarita	City	Orange	california	33.6402016	-117.602997	2.48000002	30	Good air quality	o3	2018-12-06 18:40:00	56.0499992	90	1013	3.5999999	1.26999998	2018-12-06 10:13:00
Red Bluff	City	Tehama	california	40.1785011	-122.236	1.5	38	Good air quality	pm25	2018-12-06 17:54:00	52.5699997	1	1017	4.0999999	0	2018-12-06 10:13:00
Redding	City	Shasta	california	40.5864983	-122.391998	1.45000005	94	Moderate air quality	pm25	2018-12-06 18:10:00	45.75	1	1016	4.5999999	0	2018-12-06 10:13:00
Redlands	City	San Bernardino	california	34.0555992	-117.182999	2.43000007	60	Moderate air quality	pm25	2018-12-06 18:35:00	53.5499992	90	1013	4.0999999	0	2018-12-06 10:13:00
Redondo Beach	City	Los Angeles	california	33.8492012	-118.388	2.36999989	54	Moderate air quality	pm25	2018-12-06 18:40:00	52.6500015	90	1013	3.5999999	2.75999999	2018-12-06 10:13:00
Redwood City	City	San Mateo	california	37.485199	-122.236	1.80999994	70	Moderate air quality	pm25	2018-12-06 18:40:00	55.6300011	1	1014	5.69999981	0	2018-12-06 10:13:00
Reedley	City	Fresno	california	36.5962982	-119.449997	1.87	51	Moderate air quality	pm25	2018-12-06 18:36:00	50.7700005	90	1015	2.0999999	0	2018-12-06 10:13:00
Rialto	City	San Bernardino	california	34.1063995	-117.370003	2.36999989	55	Moderate air quality	pm25	2018-12-06 18:40:00	54.7700005	90	1013	3.5999999	1.26999998	2018-12-06 10:13:00
Richmond	City	Contra Costa	california	37.9357986	-122.348	1.71000004	60	Moderate air quality	pm25	2018-12-06 18:40:00	55.5299988	1	1014	5.69999981	0	2018-12-06 10:13:00
Ridgecrest	City	Kern	california	35.6225014	-117.670998	2.05999994	42	Good air quality	pm25	2018-12-06 18:10:00	44.0600014	90	1018	3.5999999	0.25	2018-12-06 10:13:00
Rio Dell	City	Humboldt	california	40.4992981	-124.106003	1.50999999	20	Good air quality	o3	2018-12-06 18:35:00	49.9799995	1	1016	2.5999999	0	2018-12-06 10:13:00
Rio Vista	City	Solano	california	38.1557999	-121.691002	1.66999996	30	Good air quality	pm25	2018-12-06 18:20:00	54.1899986	1	1015	5.69999981	0	2018-12-06 10:13:00
Ripon	City	San Joaquin	california	37.7394981	-121.135002	1.73000002	46	Good air quality	pm25	2018-12-06 18:15:00	53.1300011	1	1015	2.0999999	0	2018-12-06 10:13:00
Riverbank	City	Stanislaus	california	37.7360001	-120.934998	1.73000002	47	Good air quality	pm25	2018-12-06 18:23:00	53.4599991	90	1015	4.5999999	0	2018-12-06 10:13:00
Riverside	City	Riverside	california	33.9805984	-117.375	2.41000009	61	Moderate air quality	pm25	2018-12-06 18:40:00	54.8800011	90	1013	3.5999999	1.77999997	2018-12-06 10:13:00
Rocklin	City	Placer	california	38.790699	-121.236	1.62	57	Moderate air quality	pm25	2018-12-06 18:20:00	51.2400017	1	1015	3.0999999	0	2018-12-06 10:13:00
Rohnert Park	City	Sonoma	california	38.3395996	-122.700996	1.66999996	36	Good air quality	pm25	2018-12-06 18:15:00	54.4799995	1	1015	1.5	0	2018-12-06 10:13:00
Rolling Hills	City	Los Angeles	california	33.757	-118.353996	2.36999989	20	Good air quality	pm25	2018-12-06 18:40:00	52.6300011	90	1013	3.5999999	2.75999999	2018-12-06 10:13:00
Rolling Hills Estates	City	Los Angeles	california	33.7877998	-118.358002	2.36999989	38	Good air quality	pm25	2018-12-06 18:40:00	52.6300011	90	1013	3.5999999	2.75999999	2018-12-06 10:13:00
Rosemead	City	Los Angeles	california	34.0806007	-118.072998	2.32999992	53	Moderate air quality	pm25	2018-12-06 18:40:00	53.0099983	90	1013	3.5999999	2.72000003	2018-12-06 10:13:00
Roseville	City	Placer	california	38.7521019	-121.288002	1.60000002	57	Moderate air quality	pm25	2018-12-06 18:35:00	51.2400017	1	1016	3.0999999	0	2018-12-06 10:13:00
Ross	Town	Marin	california	37.9623985	-122.555	1.72000003	32	Good air quality	pm25	2018-12-06 18:40:00	56.1699982	1	1014	5.69999981	0	2018-12-06 10:13:00
Sacramento	City	Sacramento	california	38.5816002	-121.494003	1.63	51	Moderate air quality	pm25	2018-12-06 18:20:00	52.2099991	1	1016	3.0999999	0	2018-12-06 10:13:00
St. Helena	City	Napa	california	38.5051994	-122.470001	1.65999997	40	Good air quality	pm25	2018-12-06 18:20:00	54.2999992	1	1015	1.5	0	2018-12-06 10:13:00
Salinas	City	Monterey	california	36.6777	-121.655998	1.88	57	Moderate air quality	pm25	2018-12-06 18:15:00	55.9399986	1	1014	1.96000004	0	2018-12-06 10:13:00
San Anselmo	Town	Marin	california	37.9746017	-122.561996	1.72000003	32	Good air quality	pm25	2018-12-06 18:40:00	56.1699982	1	1014	5.69999981	0	2018-12-06 10:13:00
San Bernardino	City	San Bernardino	california	34.1082993	-117.290001	2.36999989	52	Moderate air quality	pm25	2018-12-06 18:40:00	53.8499985	90	1013	3.5999999	0	2018-12-06 10:13:00
San Bruno	City	San Mateo	california	37.6305008	-122.411003	1.75999999	61	Moderate air quality	pm25	2018-12-06 18:40:00	55.5999985	1	1014	5.69999981	0	2018-12-06 10:13:00
San Carlos	City	San Mateo	california	37.5071983	-122.261002	1.75999999	72	Moderate air quality	pm25	2018-12-06 18:40:00	55.6300011	1	1014	5.69999981	0	2018-12-06 10:13:00
San Clemente	City	Orange	california	33.4273987	-117.612999	2.50999999	53	Moderate air quality	pm25	2018-12-06 18:40:00	56.4399986	90	1013	4.0999999	1.26999998	2018-12-06 10:13:00
San Diego	City	San Diego	california	32.7156982	-117.161003	2.73000002	66	Moderate air quality	pm25	2018-12-06 18:15:00	59.5	90	1014	4.5999999	0.560000002	2018-12-06 10:13:00
San Dimas	City	Los Angeles	california	34.1067009	-117.806999	2.3499999	56	Moderate air quality	pm25	2018-12-06 18:40:00	52.9199982	90	1013	3.5999999	2.72000003	2018-12-06 10:13:00
San Fernando	City	Los Angeles	california	34.2818985	-118.439003	2.29999995	57	Moderate air quality	pm25	2018-12-06 18:40:00	51.3300018	90	1013	5.69999981	2.53999996	2018-12-06 10:13:00
San Francisco	City and county	San Francisco	california	37.7748985	-122.418999	1.71000004	62	Moderate air quality	pm25	2018-12-06 18:40:00	55.4399986	1	1014	5.69999981	0	2018-12-06 10:13:00
San Gabriel	City	Los Angeles	california	34.0960999	-118.106003	2.32999992	56	Moderate air quality	pm25	2018-12-06 18:40:00	53.0200005	90	1013	3.5999999	2.72000003	2018-12-06 10:13:00
San Jacinto	City	Riverside	california	33.7839012	-116.959	2.49000001	58	Moderate air quality	pm25	2018-12-06 18:35:00	54.8100014	90	1013	4.0999999	0	2018-12-06 10:13:00
San Joaquin	City	Fresno	california	36.6066017	-120.189003	1.83000004	49	Good air quality	pm25	2018-12-06 18:36:00	51.0099983	90	1015	1.11000001	0	2018-12-06 10:13:00
San Jose	City	Santa Clara	california	37.3381996	-121.886002	1.77999997	68	Moderate air quality	pm25	2018-12-06 18:40:00	55.4900017	1	1014	5.69999981	0	2018-12-06 10:13:00
San Juan Bautista	City	San Benito	california	36.8455009	-121.538002	1.84000003	30	Good air quality	pm25	2018-12-06 18:15:00	55.8100014	1	1014	1.96000004	0	2018-12-06 10:13:00
San Juan Capistrano	City	Orange	california	33.5018997	-117.663002	2.48000002	53	Moderate air quality	pm25	2018-12-06 18:40:00	56.0499992	90	1013	3.5999999	1.26999998	2018-12-06 10:13:00
San Leandro	City	Alameda	california	37.7248993	-122.155998	1.74000001	51	Moderate air quality	pm25	2018-12-06 18:40:00	55.4399986	1	1014	5.69999981	0	2018-12-06 10:13:00
San Luis Obispo	City	San Luis Obispo	california	35.2827988	-120.660004	2.05999994	20	Good air quality	o3	2018-12-06 17:56:00	55.9599991	90	1012	1.75999999	0	2018-12-06 10:13:00
San Marcos	City	San Diego	california	33.1433983	-117.166	2.61999989	37	Good air quality	pm25	2018-12-06 18:35:00	58.9500008	90	1013	4.5999999	0.560000002	2018-12-06 10:13:00
San Marino	City	Los Angeles	california	34.1213989	-118.106003	2.32999992	57	Moderate air quality	pm25	2018-12-06 18:40:00	52.0900002	90	1013	3.5999999	2.56999993	2018-12-06 10:13:00
San Mateo	City	San Mateo	california	37.5629997	-122.325996	1.75999999	69	Moderate air quality	pm25	2018-12-06 18:40:00	55.3499985	1	1014	5.69999981	0	2018-12-06 10:13:00
San Pablo	City	Contra Costa	california	37.962101	-122.346001	1.71000004	55	Moderate air quality	pm25	2018-12-06 18:40:00	55.5299988	1	1014	5.69999981	0	2018-12-06 10:13:00
San Rafael	City	Marin	california	37.9734993	-122.530998	1.72000003	56	Moderate air quality	pm25	2018-12-06 18:40:00	55.8100014	1	1014	5.69999981	0	2018-12-06 10:13:00
San Ramon	City	Contra Costa	california	37.7798996	-121.977997	1.73000002	53	Moderate air quality	pm25	2018-12-06 18:40:00	55.3300018	1	1014	5.69999981	0	2018-12-06 10:13:00
Sand City	City	Monterey	california	36.6171989	-121.848	1.88999999	28	Good air quality	pm25	2018-12-06 18:15:00	55.9399986	20	1013	1.5	0	2018-12-06 10:13:00
Sanger	City	Fresno	california	36.7080002	-119.556	1.86000001	51	Moderate air quality	pm25	2018-12-06 18:36:00	51.1199989	90	1015	2.0999999	0	2018-12-06 10:13:00
Santa Ana	City	Orange	california	33.7454987	-117.867996	2.44000006	47	Good air quality	pm25	2018-12-06 18:40:00	53.4599991	90	1013	3.5999999	2.75999999	2018-12-06 10:13:00
Santa Barbara	City	Santa Barbara	california	34.4207993	-119.697998	2.25	43	Good air quality	pm25	2018-12-06 18:15:00	53.6199989	90	1012	7.51000023	1.35000002	2018-12-06 10:13:00
Santa Clara	City	Santa Clara	california	37.3540993	-121.955002	1.77999997	62	Moderate air quality	pm25	2018-12-06 18:40:00	55.4900017	1	1014	5.69999981	0	2018-12-06 10:13:00
Santa Clarita	City	Los Angeles	california	34.3917007	-118.542999	2.26999998	21	Good air quality	o3	2018-12-06 18:26:00	48.7799988	90	1013	5.69999981	2.78999996	2018-12-06 10:13:00
Santa Cruz	City	Santa Cruz	california	36.9740982	-122.030998	1.86000001	59	Moderate air quality	pm25	2018-12-06 18:15:00	55.5299988	1	1015	3.5999999	0	2018-12-06 10:13:00
Santa Fe Springs	City	Los Angeles	california	33.9472008	-118.084999	2.36999989	44	Good air quality	pm25	2018-12-06 18:40:00	52.8400002	90	1013	3.5999999	2.75999999	2018-12-06 10:13:00
Santa Maria	City	Santa Barbara	california	34.9529991	-120.435997	2.1099999	42	Good air quality	pm25	2018-12-06 18:15:00	56.1199989	90	1012	1.96000004	0.25	2018-12-06 10:13:00
Santa Monica	City	Los Angeles	california	34.0195007	-118.490997	2.29999995	62	Moderate air quality	pm25	2018-12-06 18:40:00	52.5699997	90	1013	1.5	2.58999991	2018-12-06 10:13:00
Santa Paula	City	Ventura	california	34.3541985	-119.058998	2.25999999	59	Moderate air quality	pm25	2018-12-06 18:22:00	49.5900002	90	1012	11.3000002	1.95000005	2018-12-06 10:13:00
Santa Rosa	City	Sonoma	california	38.4403992	-122.713997	1.66999996	61	Moderate air quality	pm25	2018-12-06 18:15:00	53.7299995	1	1015	1.5	0	2018-12-06 10:13:00
Santee	City	San Diego	california	32.8384018	-116.973999	2.72000003	39	Good air quality	pm25	2018-12-06 18:15:00	59.2000008	90	1014	3.0999999	0.560000002	2018-12-06 10:13:00
Saratoga	City	Santa Clara	california	37.2638016	-122.023003	1.80999994	42	Good air quality	pm25	2018-12-06 18:40:00	55.6500015	1	1014	5.69999981	0	2018-12-06 10:13:00
Sausalito	City	Marin	california	37.8591003	-122.485001	1.71000004	35	Good air quality	pm25	2018-12-06 18:40:00	55.5600014	1	1014	5.69999981	0	2018-12-06 10:13:00
Scotts Valley	City	Santa Cruz	california	37.0511017	-122.014999	1.85000002	37	Good air quality	pm25	2018-12-06 18:40:00	55.8899994	1	1014	5.69999981	0	2018-12-06 10:13:00
Seal Beach	City	Orange	california	33.7414017	-118.105003	2.44000006	26	Good air quality	pm25	2018-12-06 18:40:00	52.8300018	90	1013	3.5999999	2.75999999	2018-12-06 10:13:00
Seaside	City	Monterey	california	36.6148987	-121.821999	1.88999999	43	Good air quality	pm25	2018-12-06 18:15:00	55.9399986	20	1013	1.5	0	2018-12-06 10:13:00
Sebastopol	City	Sonoma	california	38.4020996	-122.823997	1.65999997	58	Moderate air quality	pm25	2018-12-06 18:15:00	52.5900002	1	1015	1.5	0	2018-12-06 10:13:00
Selma	City	Fresno	california	36.5708008	-119.612	1.86000001	58	Moderate air quality	pm25	2018-12-06 18:36:00	51.1199989	90	1015	2.0999999	0	2018-12-06 10:13:00
Shafter	City	Kern	california	35.5004997	-119.272003	1.97000003	52	Moderate air quality	pm25	2018-12-06 18:20:00	49.8199997	90	1015	1.5	0.75999999	2018-12-06 10:13:00
Shasta Lake	City	Shasta	california	40.6804008	-122.371002	1.45000005	72	Moderate air quality	pm25	2018-12-06 18:10:00	45.9900017	90	1017	1.5	0	2018-12-06 10:13:00
Sierra Madre	City	Los Angeles	california	34.1617012	-118.053001	2.32999992	54	Moderate air quality	pm25	2018-12-06 18:45:00	51.1500015	90	1013	3.5999999	2.93000007	2018-12-06 10:13:00
Signal Hill	City	Los Angeles	california	33.8045006	-118.167999	2.36999989	51	Moderate air quality	pm25	2018-12-06 18:40:00	52.8400002	90	1013	3.5999999	2.75999999	2018-12-06 10:13:00
Simi Valley	City	Ventura	california	34.2694016	-118.780998	2.25999999	25	Good air quality	o3	2018-12-06 18:26:00	50.8100014	90	1013	5.69999981	3.17000008	2018-12-06 10:13:00
Solana Beach	City	San Diego	california	32.9911995	-117.271004	2.69000006	48	Good air quality	pm25	2018-12-06 18:35:00	58.9300003	90	1013	4.5999999	0.560000002	2018-12-06 10:13:00
Soledad	City	Monterey	california	36.4247017	-121.325996	1.92999995	60	Moderate air quality	pm25	2018-12-06 18:15:00	56.1399994	1	1014	1.40999997	0	2018-12-06 10:13:00
Solvang	City	Santa Barbara	california	34.5957985	-120.138	2.18000007	22	Good air quality	pm25	2018-12-06 18:35:00	56.25	90	1012	1.36000001	0.25	2018-12-06 10:13:00
Sonoma	City	Sonoma	california	38.2919006	-122.458	1.66999996	51	Moderate air quality	pm25	2018-12-06 18:20:00	55.8300018	1	1015	2.0999999	0	2018-12-06 10:13:00
Sonora	City	Tuolumne	california	37.9828987	-120.382004	1.74000001	64	Moderate air quality	pm25	2018-12-06 18:15:00	53.8899994	1	1014	2.0999999	0	2018-12-06 10:13:00
South El Monte	City	Los Angeles	california	34.0519981	-118.046997	2.32999992	52	Moderate air quality	pm25	2018-12-06 18:40:00	53.0099983	90	1013	3.5999999	2.72000003	2018-12-06 10:13:00
South Gate	City	Los Angeles	california	33.9547005	-118.211998	2.36999989	56	Moderate air quality	pm25	2018-12-06 18:40:00	52.8600006	90	1013	3.5999999	2.75999999	2018-12-06 10:13:00
South Lake Tahoe	City	El Dorado	california	38.9398994	-119.976997	1.74000001	27	Good air quality	pm25	2018-12-06 18:15:00	29.9099998	90	1019	4.0999999	0	2018-12-06 10:13:00
South Pasadena	City	Los Angeles	california	34.1161003	-118.150002	2.32999992	54	Moderate air quality	pm25	2018-12-06 18:45:00	51.1500015	90	1013	3.5999999	2.93000007	2018-12-06 10:13:00
South San Francisco	City	San Mateo	california	37.6547012	-122.407997	1.75999999	63	Moderate air quality	pm25	2018-12-06 18:40:00	55.5999985	1	1014	5.69999981	0	2018-12-06 10:13:00
Stanton	City	Orange	california	33.8028984	-117.992996	2.38000011	35	Good air quality	pm25	2018-12-06 18:40:00	52.75	90	1013	3.5999999	2.75999999	2018-12-06 10:13:00
Stockton	City	San Joaquin	california	37.9576988	-121.291	1.71000004	72	Moderate air quality	pm25	2018-12-06 18:15:00	53.5600014	1	1015	2.0999999	0	2018-12-06 10:13:00
Suisun City	City	Solano	california	38.2382011	-122.040001	1.69000006	21	Good air quality	pm25	2018-12-06 18:20:00	54.0900002	1	1015	5.69999981	0	2018-12-06 10:13:00
Sunnyvale	City	Santa Clara	california	37.3688011	-122.036003	1.80999994	63	Moderate air quality	pm25	2018-12-06 18:40:00	55.6199989	1	1014	5.69999981	0	2018-12-06 10:13:00
Susanville	City	Lassen	california	40.4163017	-120.653	1.54999995	43	Good air quality	pm25	2018-12-06 18:35:00	32	90	1019	2.5999999	0	2018-12-06 10:13:00
Sutter Creek	City	Amador	california	38.3930016	-120.802002	1.65999997	59	Moderate air quality	pm25	2018-12-06 18:35:00	52.7200012	1	1014	1.50999999	0	2018-12-06 10:13:00
Taft	City	Kern	california	35.1425018	-119.457001	2.05999994	44	Good air quality	pm25	2018-12-06 17:54:00	51.0800018	90	1015	1.5	0.75999999	2018-12-06 10:13:00
Tehachapi	City	Kern	california	35.1321983	-118.448997	2.20000005	36	Good air quality	pm25	2018-12-06 18:45:00	40.9300003	90	1017	2.5999999	3.55999994	2018-12-06 10:13:00
Tehama	City	Tehama	california	40.0270996	-122.123001	1.5	22	Good air quality	pm25	2018-12-06 17:54:00	52.5900002	1	1017	4.0999999	0	2018-12-06 10:13:00
Temecula	City	Riverside	california	33.4935989	-117.148003	2.54999995	52	Moderate air quality	pm25	2018-12-06 18:35:00	56.9500008	90	1013	4.0999999	1.01999998	2018-12-06 10:13:00
Temple City	City	Los Angeles	california	34.1072006	-118.057999	2.32999992	42	Good air quality	pm25	2018-12-06 18:40:00	53.0099983	90	1013	3.5999999	2.72000003	2018-12-06 10:13:00
Thousand Oaks	City	Ventura	california	34.1706009	-118.837997	2.31999993	52	Moderate air quality	pm25	2018-12-06 18:26:00	50.8100014	90	1013	5.69999981	3.17000008	2018-12-06 10:13:00
Tiburon	Town	Marin	california	37.8735008	-122.457001	1.71000004	52	Moderate air quality	pm25	2018-12-06 18:40:00	55.5600014	1	1014	5.69999981	0	2018-12-06 10:13:00
Torrance	City	Los Angeles	california	33.8358002	-118.341003	2.36999989	32	Good air quality	pm25	2018-12-06 18:40:00	52.8600006	90	1013	3.5999999	2.75999999	2018-12-06 10:13:00
Tracy	City	San Joaquin	california	37.7397003	-121.425003	1.75	58	Moderate air quality	pm25	2018-12-06 18:15:00	54.5200005	1	1015	2.0999999	0	2018-12-06 10:13:00
Trinidad	City	Humboldt	california	41.0592995	-124.142998	1.40999997	19	Good air quality	pm25	2018-12-06 18:35:00	49.3300018	1	1016	2.5999999	0	2018-12-06 10:13:00
Truckee	Town	Nevada	california	39.3279991	-120.182999	1.66999996	62	Moderate air quality	pm25	2018-12-06 18:35:00	29.0699997	90	1018	5.0999999	0	2018-12-06 10:13:00
Tulare	City	Tulare	california	36.2076988	-119.347	1.91999996	71	Moderate air quality	pm25	2018-12-06 18:36:00	50.4700012	90	1015	2.05999994	0	2018-12-06 10:13:00
Tulelake	City	Siskiyou	california	41.9560013	-121.476997	1.35000002	41	Good air quality	pm25	2018-12-06 17:53:00	26.0599995	1	1018	4.5999999	0	2018-12-06 10:13:00
Turlock	City	Stanislaus	california	37.4947014	-120.847	1.75999999	71	Moderate air quality	pm25	2018-12-06 18:23:00	52.8600006	75	1014	2.5999999	0	2018-12-06 10:13:00
Tustin	City	Orange	california	33.7420006	-117.823997	2.44000006	23	Good air quality	o3	2018-12-06 18:40:00	54.1899986	90	1013	3.5999999	2.86999989	2018-12-06 10:13:00
Twentynine Palms	City	San Bernardino	california	34.135601	-116.054001	2.43000007	39	Good air quality	pm25	2018-12-06 18:48:59	41.4599991	92	957.47998	1.61000001	4.69999981	2018-12-06 10:13:00
Ukiah	City	Mendocino	california	39.1501999	-123.208	1.63999999	74	Moderate air quality	pm25	2018-12-06 18:04:00	44.0600014	20	1016	1.5	0	2018-12-06 10:13:00
Union City	City	Alameda	california	37.593399	-122.043999	1.74000001	49	Good air quality	pm25	2018-12-06 18:40:00	55.6199989	1	1014	5.69999981	0	2018-12-06 10:13:00
Upland	City	San Bernardino	california	34.0974998	-117.648003	2.38000011	46	Good air quality	pm25	2018-12-06 18:40:00	53.6899986	90	1013	3.5999999	2.41000009	2018-12-06 10:13:00
Vacaville	City	Solano	california	38.3566017	-121.987999	1.64999998	46	Good air quality	pm25	2018-12-06 18:20:00	53.1300011	1	1015	5.69999981	0	2018-12-06 10:13:00
Vallejo	City	Solano	california	38.1040993	-122.257004	1.67999995	65	Moderate air quality	pm25	2018-12-06 18:40:00	55.5099983	1	1015	2.0999999	0	2018-12-06 10:13:00
Ventura	City	Ventura	california	34.2804985	-119.294998	2.25999999	62	Moderate air quality	pm25	2018-12-06 17:57:00	53.8300018	90	1012	6.19999981	1.35000002	2018-12-06 10:13:00
Vernon	City	Los Angeles	california	34.0038986	-118.230003	2.32999992	61	Moderate air quality	pm25	2018-12-06 18:40:00	52.8600006	90	1013	3.5999999	2.75999999	2018-12-06 10:13:00
Victorville	City	San Bernardino	california	34.5362015	-117.292999	2.27999997	55	Moderate air quality	pm25	2018-12-06 18:22:00	48.1500015	90	1015	6.19999981	0	2018-12-06 10:13:00
Villa Park	City	Orange	california	33.8139992	-117.821999	2.38000011	40	Good air quality	pm25	2018-12-06 18:40:00	53.5800018	90	1013	3.5999999	2.72000003	2018-12-06 10:13:00
Visalia	City	Tulare	california	36.3302002	-119.292	1.88999999	69	Moderate air quality	pm25	2018-12-06 18:36:00	50.3400002	90	1015	1.40999997	0	2018-12-06 10:13:00
Vista	City	San Diego	california	33.2000008	-117.242996	2.61999989	51	Moderate air quality	pm25	2018-12-06 18:35:00	58.4799995	90	1013	4.0999999	0.560000002	2018-12-06 10:13:00
Walnut	City	Los Angeles	california	34.0203018	-117.864998	2.3499999	42	Good air quality	pm25	2018-12-06 18:40:00	52.9000015	90	1013	3.5999999	2.72000003	2018-12-06 10:13:00
Walnut Creek	City	Contra Costa	california	37.910099	-122.065002	1.72000003	59	Moderate air quality	pm25	2018-12-06 18:40:00	55.5299988	1	1014	5.69999981	0	2018-12-06 10:13:00
Wasco	City	Kern	california	35.594101	-119.341003	1.97000003	80	Moderate air quality	pm25	2018-12-06 18:20:00	49.8400002	90	1015	1.5	0.75999999	2018-12-06 10:13:00
Waterford	City	Stanislaus	california	37.6413002	-120.760002	1.73000002	64	Moderate air quality	pm25	2018-12-06 18:23:00	53.4199982	75	1014	2.5999999	0	2018-12-06 10:13:00
Watsonville	City	Santa Cruz	california	36.9101982	-121.757004	1.84000003	61	Moderate air quality	pm25	2018-12-06 18:15:00	55.5299988	1	1014	1.55999994	0	2018-12-06 10:13:00
Weed	City	Siskiyou	california	41.4225998	-122.386002	1.42999995	64	Moderate air quality	pm25	2018-12-06 18:10:00	33.0099983	1	1017	1.5	0	2018-12-06 10:13:00
West Covina	City	Los Angeles	california	34.0685997	-117.939003	2.3499999	59	Moderate air quality	pm25	2018-12-06 18:40:00	52.9199982	90	1013	3.5999999	2.72000003	2018-12-06 10:13:00
West Hollywood	City	Los Angeles	california	34.0900002	-118.362	2.29999995	56	Moderate air quality	pm25	2018-12-06 18:40:00	52.8100014	90	1013	1.5	2.72000003	2018-12-06 10:13:00
West Sacramento	City	Yolo	california	38.5805016	-121.529999	1.63	31	Good air quality	pm25	2018-12-06 18:35:00	52.25	1	1016	3.0999999	0	2018-12-06 10:13:00
Westlake Village	City	Los Angeles	california	34.1465988	-118.806999	2.31999993	26	Good air quality	o3	2018-12-06 18:26:00	50.8100014	90	1013	5.69999981	3.17000008	2018-12-06 10:13:00
Westminster	City	Orange	california	33.759201	-117.989998	2.38000011	40	Good air quality	pm25	2018-12-06 18:40:00	52.75	90	1013	3.5999999	2.75999999	2018-12-06 10:13:00
Westmorland	City	Imperial	california	33.0373001	-115.621002	2.61999989	56	Moderate air quality	pm25	2018-12-06 18:35:00	54.3699989	75	1017	2.0999999	0	2018-12-06 10:13:00
Wheatland	City	Yuba	california	39.0098991	-121.422997	1.58000004	32	Good air quality	pm25	2018-12-06 18:35:00	50.9399986	1	1014	2.5999999	0	2018-12-06 10:13:00
Whittier	City	Los Angeles	california	33.9791985	-118.032997	2.36999989	51	Moderate air quality	pm25	2018-12-06 18:40:00	53.0099983	90	1013	3.5999999	2.72000003	2018-12-06 10:13:00
Wildomar	City	Riverside	california	33.5988998	-117.279999	2.5	22	Good air quality	pm25	2018-12-06 18:35:00	56.8899994	90	1013	4.0999999	1.26999998	2018-12-06 10:13:00
Williams	City	Colusa	california	39.1545982	-122.149002	1.58000004	59	Moderate air quality	pm25	2018-12-06 17:58:00	49.7299995	1	1016	3.5999999	0	2018-12-06 10:13:00
Willits	City	Mendocino	california	39.4095993	-123.356003	1.61000001	61	Moderate air quality	pm25	2018-12-06 18:04:00	44.0600014	20	1016	1.5	0	2018-12-06 10:13:00
Willows	City	Glenn	california	39.5242996	-122.194	1.53999996	42	Good air quality	pm25	2018-12-06 18:53:53	46.1800003	0	987.22998	2.50999999	0	2018-12-06 10:13:00
Windsor	Town	Sonoma	california	38.5471001	-122.816002	1.64999998	53	Moderate air quality	pm25	2018-12-06 18:15:00	52.5900002	1	1015	1.5	0	2018-12-06 10:13:00
Winters	City	Yolo	california	38.5248985	-121.971001	1.63	28	Good air quality	pm25	2018-12-06 18:35:00	53.0099983	1	1015	5.69999981	0	2018-12-06 10:13:00
Woodlake	City	Tulare	california	36.4136009	-119.098999	1.89999998	55	Moderate air quality	pm25	2018-12-06 18:36:00	50.9199982	90	1015	1.40999997	0	2018-12-06 10:13:00
Woodland	City	Yolo	california	38.6785011	-121.773003	1.63	57	Moderate air quality	pm25	2018-12-06 18:20:00	52.6100006	1	1015	5.69999981	0	2018-12-06 10:13:00
Woodside	Town	San Mateo	california	37.4299011	-122.253998	1.79999995	65	Moderate air quality	pm25	2018-12-06 18:40:00	56.1399994	1	1014	5.69999981	0	2018-12-06 10:13:00
Yorba Linda	City	Orange	california	33.8885002	-117.813004	2.38000011	36	Good air quality	pm25	2018-12-06 18:40:00	52.9000015	90	1013	3.5999999	2.72000003	2018-12-06 10:13:00
Yountville	Town	Napa	california	38.4015999	-122.361	1.66999996	27	Good air quality	pm25	2018-12-06 18:20:00	54.2999992	1	1015	1.5	0	2018-12-06 10:13:00
Yreka	City	Siskiyou	california	41.7354012	-122.634003	1.38	54	Moderate air quality	pm25	2018-12-06 17:56:00	33.5800018	1	1019	1.30999994	0	2018-12-06 10:13:00
Yuba City	City	Sutter	california	39.1403999	-121.616997	1.58000004	52	Moderate air quality	pm25	2018-12-06 18:35:00	50.8100014	1	1014	2.5999999	0	2018-12-06 10:13:00
Yucaipa	City	San Bernardino	california	34.0335999	-117.042999	2.43000007	53	Moderate air quality	pm25	2018-12-06 18:35:00	53.5499992	90	1013	4.0999999	0	2018-12-06 10:13:00
Yucca Valley	Town	San Bernardino	california	34.1142006	-116.431999	2.45000005	35	Good air quality	o3	2018-12-06 18:54:19	39.3400002	92	908.840027	1.30999994	1.77750003	2018-12-06 10:13:00
Adelanto	City	San Bernardino	california	34.5828018	-117.408997	2.27999997	24	Good air quality	pm25	2018-12-06 19:27:00	43.0900002	90	1016	4.0999999	2.02999997	2018-12-06 11:27:00
Agoura Hills	City	Los Angeles	california	34.1533012	-118.762001	2.31999993	34	Good air quality	pm25	2018-12-06 18:57:00	52.5699997	75	1012	11.3000002	1.22000003	2018-12-06 11:27:00
Alameda	City	Alameda	california	37.7652016	-122.241997	1.72000003	53	Moderate air quality	pm25	2018-12-06 19:15:00	57.1599998	20	1015	4.5999999	0	2018-12-06 11:27:00
Albany	City	Alameda	california	37.8869019	-122.297997	1.71000004	59	Moderate air quality	pm25	2018-12-06 19:15:00	57.1599998	1	1015	2.97000003	0	2018-12-06 11:27:00
Alhambra	City	Los Angeles	california	34.0952988	-118.126999	2.32999992	54	Moderate air quality	pm25	2018-12-06 18:58:00	53.4000015	90	1013	1.32000005	5.17000008	2018-12-06 11:27:00
Aliso Viejo	City	Orange	california	33.5685005	-117.725998	2.48000002	33	Good air quality	pm25	2018-12-06 19:35:00	55.0600014	90	1013	4.0999999	5.88999987	2018-12-06 11:27:00
Alturas	City	Modoc	california	41.4870987	-120.542	1.40999997	79	Moderate air quality	pm25	2018-12-06 18:55:00	33.9799995	1	1017	2.0999999	0	2018-12-06 11:27:00
Amador City	City	Amador	california	38.4193993	-120.823997	1.65999997	43	Good air quality	pm25	2018-12-06 19:15:00	54.9500008	1	1014	3.0999999	0	2018-12-06 11:27:00
American Canyon	City	Napa	california	38.1749001	-122.261002	1.67999995	32	Good air quality	pm25	2018-12-06 19:20:00	57.2400017	1	1015	1.32000005	0	2018-12-06 11:27:00
Anaheim	City	Orange	california	33.8366013	-117.914001	2.38000011	43	Good air quality	pm25	2018-12-06 18:58:00	52.4500008	90	1013	5.69999981	1.30999994	2018-12-06 11:27:00
Anderson	City	Shasta	california	40.4482002	-122.297997	1.47000003	81	Moderate air quality	pm25	2018-12-06 19:10:00	48.9399986	1	1016	4.0999999	0	2018-12-06 11:27:00
Angels Camp	City	Calaveras	california	38.0677986	-120.539001	1.71000004	59	Moderate air quality	pm25	2018-12-06 19:15:00	55.3499985	1	1014	3.0999999	0	2018-12-06 11:27:00
Antioch	City	Contra Costa	california	38.0049019	-121.806	1.66999996	55	Moderate air quality	pm25	2018-12-06 19:20:00	56.5699997	1	1015	3.5999999	0	2018-12-06 11:27:00
Apple Valley	Town	San Bernardino	california	34.5008011	-117.185997	2.29999995	25	Good air quality	pm25	2018-12-06 19:28:00	49.6599998	90	1013	5.0999999	0	2018-12-06 11:27:00
Arcadia	City	Los Angeles	california	34.1397018	-118.035004	2.32999992	48	Good air quality	pm25	2018-12-06 19:18:00	52.3400002	90	1013	5.0999999	4.03000021	2018-12-06 11:27:00
Arcata	City	Humboldt	california	40.8665009	-124.083	1.44000006	20	Good air quality	pm10	2018-12-06 19:35:00	54.9000015	1	1015	1.32000005	0	2018-12-06 11:27:00
Arroyo Grande	City	San Luis Obispo	california	35.1185989	-120.591003	2.07999992	34	Good air quality	pm25	2018-12-06 18:56:00	57.7900009	75	1012	2.51999998	0	2018-12-06 11:27:00
Artesia	City	Los Angeles	california	33.865799	-118.083	2.36999989	48	Good air quality	pm25	2018-12-06 18:58:00	53.0999985	90	1013	5.69999981	4.63999987	2018-12-06 11:27:00
Arvin	City	Kern	california	35.2018013	-118.833	2.06999993	24	Good air quality	pm25	2018-12-06 19:00:00	44.2599983	90	1015	4.0999999	2.67000008	2018-12-06 11:27:00
Atascadero	City	San Luis Obispo	california	35.489399	-120.670998	2.05999994	50	Good air quality	pm25	2018-12-06 18:56:00	58.1500015	75	1013	7.19999981	0	2018-12-06 11:27:00
Atherton	Town	San Mateo	california	37.4612999	-122.197998	1.80999994	71	Moderate air quality	pm25	2018-12-06 19:40:00	57.5400009	1	1014	3.5999999	0	2018-12-06 11:27:00
Atwater	City	Merced	california	37.3476982	-120.609001	1.75999999	68	Moderate air quality	pm25	2018-12-06 19:03:00	54.5200005	90	1014	1.87	0	2018-12-06 11:27:00
Auburn	City	Placer	california	38.8965988	-121.077003	1.62	39	Good air quality	pm25	2018-12-06 19:15:00	54.2700005	1	1014	2.5999999	0	2018-12-06 11:27:00
Avalon	City	Los Angeles	california	33.3428001	-118.328003	2.5	25	Good air quality	o3	2018-12-06 19:35:00	54.6399994	90	1012	2.5999999	3.00999999	2018-12-06 11:27:00
Avenal	City	Kings	california	36.0041008	-120.128998	1.90999997	34	Good air quality	pm25	2018-12-06 19:16:00	52.1100006	90	1015	2.0999999	0	2018-12-06 11:27:00
Azusa	City	Los Angeles	california	34.1335983	-117.907997	2.3499999	58	Moderate air quality	pm25	2018-12-06 19:35:00	53.2400017	90	1012	2.5999999	3.50999999	2018-12-06 11:27:00
Bakersfield	City	Kern	california	35.3732986	-119.018997	2.00999999	60	Moderate air quality	pm25	2018-12-06 19:15:00	49.1699982	90	1015	4.0999999	1.39999998	2018-12-06 11:27:00
Baldwin Park	City	Los Angeles	california	34.0853004	-117.960999	2.3499999	60	Moderate air quality	pm25	2018-12-06 19:35:00	53.2400017	90	1012	5.69999981	3.50999999	2018-12-06 11:27:00
Banning	City	Riverside	california	33.9255981	-116.875999	2.49000001	42	Good air quality	pm25	2018-12-06 19:35:00	53.5800018	90	1013	4.0999999	0	2018-12-06 11:27:00
Barstow	City	San Bernardino	california	34.8958015	-117.016998	2.20000005	25	Good air quality	pm25	2018-12-06 18:55:00	45.8100014	90	1016	7.19999981	1.01999998	2018-12-06 11:27:00
Beaumont	City	Riverside	california	33.9295006	-116.976997	2.49000001	60	Moderate air quality	pm25	2018-12-06 19:15:00	54.3600006	90	1013	6.19999981	1.01999998	2018-12-06 11:27:00
Bell	City	Los Angeles	california	33.9775009	-118.186996	2.36999989	56	Moderate air quality	pm25	2018-12-06 19:18:00	53.0999985	90	1013	5.0999999	4.0999999	2018-12-06 11:27:00
Bell Gardens	City	Los Angeles	california	33.9653015	-118.151001	2.36999989	53	Moderate air quality	pm25	2018-12-06 19:35:00	53.0800018	90	1012	5.69999981	3.23000002	2018-12-06 11:27:00
Bellflower	City	Los Angeles	california	33.8816986	-118.116997	2.36999989	38	Good air quality	pm25	2018-12-06 18:58:00	53.0999985	90	1013	5.69999981	4.63999987	2018-12-06 11:27:00
Belmont	City	San Mateo	california	37.5201988	-122.276001	1.75999999	73	Moderate air quality	pm25	2018-12-06 19:40:00	57.5800018	1	1014	3.5999999	0	2018-12-06 11:27:00
Belvedere	City	Marin	california	37.8726997	-122.463997	1.71000004	26	Good air quality	pm10	2018-12-06 19:15:00	57.25	1	1015	2.97000003	0	2018-12-06 11:27:00
Benicia	City	Solano	california	38.0494003	-122.158997	1.69000006	31	Good air quality	pm25	2018-12-06 19:40:00	57.2200012	1	1014	3.5999999	0	2018-12-06 11:27:00
Berkeley	City	Alameda	california	37.8716011	-122.273003	1.71000004	62	Moderate air quality	pm25	2018-12-06 19:15:00	57.1599998	1	1015	2.97000003	0	2018-12-06 11:27:00
Beverly Hills	City	Los Angeles	california	34.0736008	-118.400002	2.29999995	46	Good air quality	pm25	2018-12-06 19:18:00	53.4000015	90	1013	5.0999999	3.97000003	2018-12-06 11:27:00
Big Bear Lake	City	San Bernardino	california	34.2439003	-116.911003	2.55999994	33	Good air quality	pm25	2018-12-06 19:28:00	49.4799995	90	1013	5.0999999	0	2018-12-06 11:27:00
Biggs	City	Butte	california	39.4123993	-121.712997	1.55999994	36	Good air quality	pm25	2018-12-06 19:15:00	52.7900009	0	1015	3.0999999	0	2018-12-06 11:27:00
Bishop	City	Inyo	california	37.3614006	-118.400002	1.96000004	52	Moderate air quality	pm25	2018-12-06 19:15:00	32.1800003	90	1016	0.970000029	0	2018-12-06 11:27:00
Blue Lake	City	Humboldt	california	40.8829002	-123.984001	1.45000005	17	Good air quality	pm25	2018-12-06 18:55:00	51.8699989	1	1016	1.32000005	0	2018-12-06 11:27:00
Blythe	City	Riverside	california	33.6178017	-114.587997	2.5	35	Good air quality	pm25	2018-12-06 19:45:12	48.3100014	92	1002.17999	2.51999998	0.805000007	2018-12-06 11:27:00
Bradbury	City	Los Angeles	california	34.1469002	-117.971001	2.3499999	31	Good air quality	pm25	2018-12-06 19:35:00	52.2299995	90	1012	5.69999981	3.25999999	2018-12-06 11:27:00
Brawley	City	Imperial	california	32.9786987	-115.529999	2.70000005	62	Moderate air quality	pm25	2018-12-06 18:56:00	56.0999985	90	1017	1.97000003	0	2018-12-06 11:27:00
Brea	City	Orange	california	33.9165001	-117.900002	2.38000011	44	Good air quality	pm25	2018-12-06 19:35:00	53.2200012	90	1012	2.5999999	3.50999999	2018-12-06 11:27:00
Brentwood	City	Contra Costa	california	37.9319	-121.695999	1.71000004	57	Moderate air quality	pm25	2018-12-06 19:20:00	57	1	1015	3.5999999	0	2018-12-06 11:27:00
Brisbane	City	San Mateo	california	37.6808014	-122.400002	1.75999999	30	Good air quality	pm10	2018-12-06 19:40:00	57.3100014	1	1014	3.5999999	0	2018-12-06 11:27:00
Buellton	City	Santa Barbara	california	34.6136017	-120.193001	2.18000007	47	Good air quality	pm25	2018-12-06 19:15:00	58.5900002	75	1012	1.22000003	0	2018-12-06 11:27:00
Buena Park	City	Orange	california	33.8674011	-117.998001	2.38000011	47	Good air quality	pm25	2018-12-06 18:58:00	52.4500008	90	1013	3.5999999	1.30999994	2018-12-06 11:27:00
Burbank	City	Los Angeles	california	34.1808014	-118.308998	2.29999995	60	Moderate air quality	pm25	2018-12-06 19:18:00	52.0299988	90	1013	4.0999999	4.13000011	2018-12-06 11:27:00
Burlingame	City	San Mateo	california	37.5778999	-122.348	1.75999999	59	Moderate air quality	pm25	2018-12-06 19:40:00	57.4000015	1	1014	3.5999999	0	2018-12-06 11:27:00
Calabasas	City	Los Angeles	california	34.1366997	-118.661003	2.30999994	25	Good air quality	o3	2018-12-06 19:28:00	53.1300011	90	1012	2.47000003	0.930000007	2018-12-06 11:27:00
Calexico	City	Imperial	california	32.6789017	-115.499001	2.77999997	66	Moderate air quality	pm25	2018-12-06 18:56:00	56.1199989	90	1017	3.67000008	0	2018-12-06 11:27:00
California City	City	Kern	california	35.1258011	-117.986	2.1400001	30	Good air quality	o3	2018-12-06 19:27:00	40.9799995	90	1015	3.0999999	2.16000009	2018-12-06 11:27:00
Calimesa	City	Riverside	california	34.0038986	-117.061996	2.43000007	59	Moderate air quality	pm25	2018-12-06 19:35:00	53.5800018	90	1013	5.0999999	0	2018-12-06 11:27:00
Calipatria	City	Imperial	california	33.1255989	-115.514	2.61999989	58	Moderate air quality	pm25	2018-12-06 18:56:00	56.0999985	90	1017	1.97000003	0	2018-12-06 11:27:00
Calistoga	City	Napa	california	38.5788002	-122.580002	1.65999997	50	Good air quality	pm25	2018-12-06 19:20:00	56.4099998	1	1015	1.32000005	0	2018-12-06 11:27:00
Camarillo	City	Ventura	california	34.2164001	-119.038002	2.28999996	60	Moderate air quality	pm25	2018-12-06 18:57:00	51.9799995	75	1012	11.3000002	1.19000006	2018-12-06 11:27:00
Campbell	City	Santa Clara	california	37.2872009	-121.949997	1.77999997	61	Moderate air quality	pm25	2018-12-06 19:40:00	57.1100006	1	1014	3.5999999	0	2018-12-06 11:27:00
Canyon Lake	City	Riverside	california	33.6850014	-117.273003	2.5	19	Good air quality	pm25	2018-12-06 19:35:00	56.7700005	90	1013	4.0999999	8.13000011	2018-12-06 11:27:00
Capitola	City	Santa Cruz	california	36.9752007	-121.953003	1.84000003	70	Moderate air quality	pm25	2018-12-06 19:15:00	57.4300003	1	1014	1.41999996	0	2018-12-06 11:27:00
Carlsbad	City	San Diego	california	33.1581001	-117.350998	2.5999999	51	Moderate air quality	pm25	2018-12-06 19:35:00	60.2400017	90	1012	5.69999981	1.26999998	2018-12-06 11:27:00
Carmel-by-the-Sea	City	Monterey	california	36.5551987	-121.922997	1.88999999	54	Moderate air quality	pm25	2018-12-06 19:15:00	58.3699989	20	1013	3.0999999	0	2018-12-06 11:27:00
Carpinteria	City	Santa Barbara	california	34.3988991	-119.517998	2.25	28	Good air quality	o3	2018-12-06 19:15:00	56.8800011	75	1012	5.26999998	0.50999999	2018-12-06 11:27:00
Carson	City	Los Angeles	california	33.8316994	-118.281998	2.36999989	47	Good air quality	pm25	2018-12-06 19:35:00	53.0800018	90	1012	5.69999981	3.23000002	2018-12-06 11:27:00
Cathedral City	City	Riverside	california	33.7804985	-116.467003	2.44000006	30	Good air quality	pm25	2018-12-06 19:35:00	52.6500015	90	1013	4.0999999	0	2018-12-06 11:27:00
Ceres	City	Stanislaus	california	37.5948982	-120.958	1.73000002	62	Moderate air quality	pm25	2018-12-06 19:15:00	55.4500008	20	1014	4.0999999	0	2018-12-06 11:27:00
Cerritos	City	Los Angeles	california	33.8582993	-118.065002	2.36999989	41	Good air quality	pm25	2018-12-06 18:58:00	53.0800018	90	1013	5.69999981	4.63999987	2018-12-06 11:27:00
Chico	City	Butte	california	39.7285004	-121.836998	1.53999996	61	Moderate air quality	pm25	2018-12-06 18:54:00	53.6199989	0	1015	3.0999999	0	2018-12-06 11:27:00
Chino	City	San Bernardino	california	34.0121994	-117.689003	2.38000011	45	Good air quality	pm25	2018-12-06 19:28:00	53.7099991	90	1013	5.0999999	4.46000004	2018-12-06 11:27:00
Chino Hills	City	San Bernardino	california	33.9897995	-117.733002	2.41000009	23	Good air quality	pm25	2018-12-06 19:35:00	53.2200012	90	1012	2.5999999	3.50999999	2018-12-06 11:27:00
Chowchilla	City	Madera	california	37.1230011	-120.260002	1.77999997	54	Moderate air quality	pm25	2018-12-06 19:35:00	52.9199982	90	1015	2.0999999	0	2018-12-06 11:27:00
Chula Vista	City	San Diego	california	32.6400986	-117.084	2.73000002	63	Moderate air quality	pm25	2018-12-06 19:29:00	61.4099998	90	1012	5.69999981	0.75999999	2018-12-06 11:27:00
Citrus Heights	City	Sacramento	california	38.7070999	-121.280998	1.63	43	Good air quality	pm25	2018-12-06 19:20:00	54.0099983	20	1015	3.5999999	0	2018-12-06 11:27:00
Claremont	City	Los Angeles	california	34.0966988	-117.720001	2.38000011	54	Moderate air quality	pm25	2018-12-06 19:35:00	53.2200012	90	1012	2.5999999	3.50999999	2018-12-06 11:27:00
Clayton	City	Contra Costa	california	37.9410019	-121.935997	1.73000002	26	Good air quality	pm25	2018-12-06 19:40:00	57	1	1014	3.5999999	0	2018-12-06 11:27:00
Clearlake	City	Lake	california	38.9581985	-122.625999	1.65999997	28	Good air quality	pm25	2018-12-06 18:56:00	46.9399986	1	1016	1.57000005	0	2018-12-06 11:27:00
Cloverdale	City	Sonoma	california	38.8055	-123.016998	1.64999998	64	Moderate air quality	pm25	2018-12-06 18:56:00	46.9399986	1	1016	0.620000005	0	2018-12-06 11:27:00
Clovis	City	Fresno	california	36.8251991	-119.703003	1.84000003	44	Good air quality	pm25	2018-12-06 19:35:00	51.3100014	90	1015	2.0999999	0	2018-12-06 11:27:00
Coachella	City	Riverside	california	33.6803017	-116.174004	2.47000003	33	Good air quality	pm10	2018-12-06 19:15:00	51.7999992	90	1017	0.769999981	0	2018-12-06 11:27:00
Coalinga	City	Fresno	california	36.1397018	-120.360001	1.92999995	34	Good air quality	pm25	2018-12-06 19:16:00	52.0900002	90	1015	2.0999999	0	2018-12-06 11:27:00
Colfax	City	Placer	california	39.1007004	-120.953003	1.63	29	Good air quality	pm25	2018-12-06 19:35:00	53.7599983	1	1013	1.5	0	2018-12-06 11:27:00
Colma	Town	San Mateo	california	37.676899	-122.459999	1.75999999	53	Moderate air quality	pm25	2018-12-06 19:40:00	57.3100014	1	1014	3.5999999	0	2018-12-06 11:27:00
Colton	City	San Bernardino	california	34.0738983	-117.314003	2.36999989	53	Moderate air quality	pm25	2018-12-06 19:35:00	55	90	1013	5.0999999	24.3799992	2018-12-06 11:27:00
Colusa	City	Colusa	california	39.2142982	-122.009003	1.58000004	51	Moderate air quality	pm25	2018-12-06 19:15:00	53.4000015	1	1014	3.5999999	0	2018-12-06 11:27:00
Commerce	City	Los Angeles	california	34.0005989	-118.160004	2.32999992	55	Moderate air quality	pm25	2018-12-06 19:18:00	53.3800011	90	1013	5.0999999	4.46000004	2018-12-06 11:27:00
Compton	City	Los Angeles	california	33.8958015	-118.220001	2.36999989	56	Moderate air quality	pm25	2018-12-06 19:18:00	53.0999985	90	1013	5.0999999	4.0999999	2018-12-06 11:27:00
Concord	City	Contra Costa	california	37.9780006	-122.030998	1.72000003	59	Moderate air quality	pm25	2018-12-06 19:40:00	56.8199997	1	1014	3.5999999	0	2018-12-06 11:27:00
Corcoran	City	Kings	california	36.0979996	-119.559998	1.90999997	67	Moderate air quality	pm25	2018-12-06 19:16:00	50.7200012	90	1015	2.0999999	0.50999999	2018-12-06 11:27:00
Corning	City	Tehama	california	39.9277	-122.179001	1.51999998	40	Good air quality	pm25	2018-12-06 18:54:00	53.9599991	1	1016	4.5999999	0	2018-12-06 11:27:00
Corona	City	Riverside	california	33.8753014	-117.566002	2.41000009	49	Good air quality	pm25	2018-12-06 19:35:00	55.1300011	90	1013	5.0999999	8.97000027	2018-12-06 11:27:00
Coronado	City	San Diego	california	32.6859016	-117.182999	2.73000002	57	Moderate air quality	pm25	2018-12-06 19:29:00	61.1100006	90	1012	5.69999981	0.75999999	2018-12-06 11:27:00
Corte Madera	Town	Marin	california	37.925499	-122.527	1.72000003	32	Good air quality	pm25	2018-12-06 19:40:00	57.3600006	1	1014	3.5999999	0	2018-12-06 11:27:00
Costa Mesa	City	Orange	california	33.641201	-117.918999	2.44000006	46	Good air quality	pm25	2018-12-06 19:28:00	54.1599998	90	1013	5.0999999	4.3499999	2018-12-06 11:27:00
Cotati	City	Sonoma	california	38.3292999	-122.709999	1.66999996	57	Moderate air quality	pm25	2018-12-06 19:15:00	57.0400009	1	1015	1.32000005	0	2018-12-06 11:27:00
Covina	City	Los Angeles	california	34.0900002	-117.889999	2.3499999	53	Moderate air quality	pm25	2018-12-06 19:28:00	53.2599983	90	1013	5.0999999	5.17000008	2018-12-06 11:27:00
Crescent City	City	Del Norte	california	41.7556992	-124.203003	1.29999995	58	Moderate air quality	pm25	2018-12-06 18:56:00	53.4700012	1	1016	1.16999996	0	2018-12-06 11:27:00
Cudahy	City	Los Angeles	california	33.9606018	-118.184998	2.36999989	54	Moderate air quality	pm25	2018-12-06 19:35:00	53.0800018	90	1012	5.69999981	3.23000002	2018-12-06 11:27:00
Culver City	City	Los Angeles	california	34.0210991	-118.396004	2.29999995	59	Moderate air quality	pm25	2018-12-06 19:35:00	53.0999985	90	1012	1.32000005	2.8900001	2018-12-06 11:27:00
Cupertino	City	Santa Clara	california	37.3230019	-122.031998	1.80999994	60	Moderate air quality	pm25	2018-12-06 19:40:00	57.4300003	1	1014	3.5999999	0	2018-12-06 11:27:00
Cypress	City	Orange	california	33.8168983	-118.037003	2.36999989	33	Good air quality	pm25	2018-12-06 19:35:00	53.0600014	90	1012	5.69999981	3.23000002	2018-12-06 11:27:00
Daly City	City	San Mateo	california	37.6879005	-122.470001	1.75999999	59	Moderate air quality	pm25	2018-12-06 19:40:00	57.3100014	1	1014	3.5999999	0	2018-12-06 11:27:00
Dana Point	City	Orange	california	33.4672012	-117.697998	2.50999999	50	Good air quality	pm25	2018-12-06 19:35:00	55.3100014	90	1012	2.5999999	4.82000017	2018-12-06 11:27:00
Danville	Town	Contra Costa	california	37.8216019	-122	1.73000002	55	Moderate air quality	pm25	2018-12-06 19:40:00	57.2900009	1	1014	3.5999999	0	2018-12-06 11:27:00
Davis	City	Yolo	california	38.544899	-121.740997	1.63	53	Moderate air quality	pm25	2018-12-06 19:20:00	55.7200012	1	1015	5.69999981	0	2018-12-06 11:27:00
Del Mar	City	San Diego	california	32.9594994	-117.264999	2.69000006	36	Good air quality	pm25	2018-12-06 19:29:00	60.6699982	90	1012	5.69999981	0.75999999	2018-12-06 11:27:00
Del Rey Oaks	City	Monterey	california	36.5932999	-121.834999	1.88999999	29	Good air quality	pm25	2018-12-06 19:15:00	58.3699989	20	1013	3.0999999	0	2018-12-06 11:27:00
Delano	City	Kern	california	35.7687988	-119.247002	1.94000006	66	Moderate air quality	pm25	2018-12-06 19:15:00	50.3400002	90	1015	2.5999999	1.17999995	2018-12-06 11:27:00
Desert Hot Springs	City	Riverside	california	33.9611015	-116.501999	2.5	53	Moderate air quality	pm25	2018-12-06 19:44:35	39.7599983	92	907.820007	1.57000005	7.55249977	2018-12-06 11:27:00
Diamond Bar	City	Los Angeles	california	34.0285988	-117.809998	2.3499999	59	Moderate air quality	pm25	2018-12-06 19:28:00	53.2400017	90	1013	5.0999999	4.46000004	2018-12-06 11:27:00
Dinuba	City	Tulare	california	36.5433006	-119.387001	1.87	53	Moderate air quality	pm25	2018-12-06 19:35:00	50.8499985	90	1015	2.0999999	0.75999999	2018-12-06 11:27:00
Dixon	City	Solano	california	38.4454994	-121.822998	1.64999998	48	Good air quality	pm25	2018-12-06 19:20:00	55.7799988	1	1015	5.69999981	0	2018-12-06 11:27:00
Dorris	City	Siskiyou	california	41.9673996	-121.917999	1.36000001	39	Good air quality	pm25	2018-12-06 18:53:00	32.8800011	1	1018	5.69999981	0	2018-12-06 11:27:00
Dos Palos	City	Merced	california	36.9860992	-120.626999	1.80999994	54	Moderate air quality	pm25	2018-12-06 19:03:00	54.7900009	90	1014	1.87	0	2018-12-06 11:27:00
Downey	City	Los Angeles	california	33.9401016	-118.133003	2.36999989	55	Moderate air quality	pm25	2018-12-06 19:35:00	53.0800018	90	1012	5.69999981	3.23000002	2018-12-06 11:27:00
Duarte	City	Los Angeles	california	34.1394997	-117.976997	2.3499999	55	Moderate air quality	pm25	2018-12-06 19:35:00	53.3699989	90	1012	5.69999981	3.50999999	2018-12-06 11:27:00
Dublin	City	Alameda	california	37.7022018	-121.935997	1.75999999	55	Moderate air quality	pm25	2018-12-06 19:40:00	57.3100014	1	1014	3.5999999	0	2018-12-06 11:27:00
Dunsmuir	City	Siskiyou	california	41.2081985	-122.272003	1.46000004	57	Moderate air quality	pm25	2018-12-06 19:10:00	37.1500015	1	1017	1.07000005	0	2018-12-06 11:27:00
East Palo Alto	City	San Mateo	california	37.4687996	-122.140999	1.80999994	73	Moderate air quality	pm25	2018-12-06 19:40:00	57.5400009	1	1014	3.5999999	0	2018-12-06 11:27:00
Eastvale	City	Riverside	california	33.9524994	-117.584999	2.41000009	30	Good air quality	pm25	2018-12-06 19:35:00	54.2999992	90	1012	2.5999999	4.51000023	2018-12-06 11:27:00
El Cajon	City	San Diego	california	32.7947998	-116.962997	2.72000003	55	Moderate air quality	pm25	2018-12-06 19:29:00	60.6699982	90	1012	5.69999981	0.75999999	2018-12-06 11:27:00
El Centro	City	Imperial	california	32.7919998	-115.563004	2.70000005	39	Good air quality	pm25	2018-12-06 18:56:00	56.0999985	90	1017	1.97000003	0	2018-12-06 11:27:00
El Cerrito	City	Contra Costa	california	37.9160995	-122.310997	1.71000004	58	Moderate air quality	pm25	2018-12-06 19:40:00	57.25	1	1014	3.5999999	0	2018-12-06 11:27:00
El Monte	City	Los Angeles	california	34.0685997	-118.028	2.32999992	60	Moderate air quality	pm25	2018-12-06 19:35:00	53.3699989	90	1012	5.69999981	3.50999999	2018-12-06 11:27:00
El Segundo	City	Los Angeles	california	33.9192009	-118.416	2.36999989	52	Moderate air quality	pm25	2018-12-06 19:35:00	53.0999985	90	1012	1.32000005	2.8900001	2018-12-06 11:27:00
Elk Grove	City	Sacramento	california	38.4087982	-121.372002	1.64999998	51	Moderate air quality	pm25	2018-12-06 19:20:00	55.0800018	20	1015	3.5999999	0	2018-12-06 11:27:00
Emeryville	City	Alameda	california	37.8312988	-122.285004	1.71000004	52	Moderate air quality	pm25	2018-12-06 19:40:00	57.2700005	1	1014	3.5999999	0	2018-12-06 11:27:00
Encinitas	City	San Diego	california	33.0369987	-117.292	2.5999999	46	Good air quality	pm25	2018-12-06 19:29:00	60.6899986	90	1012	5.69999981	0.75999999	2018-12-06 11:27:00
Escalon	City	San Joaquin	california	37.7974014	-120.997002	1.71000004	65	Moderate air quality	pm25	2018-12-06 19:15:00	55.7400017	20	1014	4.0999999	0	2018-12-06 11:27:00
Escondido	City	San Diego	california	33.1192017	-117.085999	2.61999989	52	Moderate air quality	pm25	2018-12-06 19:29:00	60.6899986	90	1012	5.69999981	0.75999999	2018-12-06 11:27:00
Etna	City	Siskiyou	california	41.4567986	-122.894997	1.44000006	45	Good air quality	pm25	2018-12-06 19:10:00	37.1500015	20	1017	1.07000005	0	2018-12-06 11:27:00
Eureka	City	Humboldt	california	40.8021011	-124.164001	1.44000006	46	Good air quality	pm25	2018-12-06 19:35:00	54.9300003	1	1015	1.32000005	0	2018-12-06 11:27:00
Exeter	City	Tulare	california	36.2961006	-119.141998	1.89999998	55	Moderate air quality	pm25	2018-12-06 19:15:00	50.6500015	90	1015	1.66999996	0.50999999	2018-12-06 11:27:00
Fairfax	Town	Marin	california	37.9870987	-122.588997	1.72000003	24	Good air quality	pm10	2018-12-06 19:40:00	57.5800018	1	1014	3.5999999	0	2018-12-06 11:27:00
Fairfield	City	Solano	california	38.2494011	-122.040001	1.69000006	44	Good air quality	pm25	2018-12-06 19:20:00	56.75	1	1015	5.69999981	0	2018-12-06 11:27:00
Farmersville	City	Tulare	california	36.297699	-119.207001	1.89999998	55	Moderate air quality	pm25	2018-12-06 19:31:00	50.6100006	90	1015	2.0999999	0.50999999	2018-12-06 11:27:00
Ferndale	City	Humboldt	california	40.5761986	-124.264	1.45000005	24	Good air quality	o3	2018-12-06 19:35:00	55.0600014	1	1015	1.32000005	0	2018-12-06 11:27:00
Fillmore	City	Ventura	california	34.3992004	-118.917999	2.25999999	26	Good air quality	o3	2018-12-06 18:57:00	52.0200005	75	1012	11.3000002	1.19000006	2018-12-06 11:27:00
Firebaugh	City	Fresno	california	36.858799	-120.456001	1.80999994	68	Moderate air quality	pm25	2018-12-06 19:35:00	52.9500008	90	1015	2.0999999	0	2018-12-06 11:27:00
Folsom	City	Sacramento	california	38.6780014	-121.176003	1.63	59	Moderate air quality	pm25	2018-12-06 19:20:00	54.3699989	20	1015	3.5999999	0	2018-12-06 11:27:00
Fontana	City	San Bernardino	california	34.0922012	-117.434998	2.36999989	55	Moderate air quality	pm25	2018-12-06 19:35:00	54.8100014	90	1013	5.0999999	8.13000011	2018-12-06 11:27:00
Fort Bragg	City	Mendocino	california	39.4457016	-123.805	1.59000003	52	Moderate air quality	pm25	2018-12-06 18:56:00	46.9399986	1	1016	1.32000005	0	2018-12-06 11:27:00
Fort Jones	City	Siskiyou	california	41.6076012	-122.839996	1.38999999	46	Good air quality	pm25	2018-12-06 18:56:00	37.0400009	1	1019	1.07000005	0	2018-12-06 11:27:00
Fortuna	City	Humboldt	california	40.5982018	-124.156998	1.46000004	36	Good air quality	pm25	2018-12-06 19:35:00	55.0600014	1	1015	1.32000005	0	2018-12-06 11:27:00
Foster City	City	San Mateo	california	37.5584984	-122.271004	1.75999999	64	Moderate air quality	pm25	2018-12-06 19:40:00	57.4000015	1	1014	3.5999999	0	2018-12-06 11:27:00
Fountain Valley	City	Orange	california	33.7089996	-117.954002	2.44000006	47	Good air quality	pm25	2018-12-06 19:35:00	53.3699989	90	1012	2.5999999	3.23000002	2018-12-06 11:27:00
Fowler	City	Fresno	california	36.6305008	-119.678001	1.86000001	47	Good air quality	pm25	2018-12-06 19:35:00	51.3100014	90	1015	2.0999999	0	2018-12-06 11:27:00
Fremont	City	Alameda	california	37.5483017	-121.988998	1.75999999	57	Moderate air quality	pm25	2018-12-06 19:40:00	57.5400009	1	1014	3.5999999	0	2018-12-06 11:27:00
Fresno	City	Fresno	california	36.7378006	-119.787003	1.85000002	68	Moderate air quality	pm25	2018-12-06 19:35:00	51.3100014	90	1015	2.0999999	0	2018-12-06 11:27:00
Fullerton	City	Orange	california	33.8703995	-117.924004	2.38000011	43	Good air quality	pm25	2018-12-06 19:35:00	52.9700012	90	1012	2.5999999	3.23000002	2018-12-06 11:27:00
Galt	City	Sacramento	california	38.2546005	-121.300003	1.64999998	55	Moderate air quality	pm25	2018-12-06 19:20:00	55.3499985	1	1015	5.69999981	0	2018-12-06 11:27:00
Garden Grove	City	Orange	california	33.7742996	-117.938004	2.38000011	40	Good air quality	pm25	2018-12-06 19:35:00	52.9700012	90	1012	2.5999999	3.23000002	2018-12-06 11:27:00
Gardena	City	Los Angeles	california	33.8883018	-118.308998	2.36999989	53	Moderate air quality	pm25	2018-12-06 19:35:00	53.0800018	90	1012	7.71999979	3.23000002	2018-12-06 11:27:00
Gilroy	City	Santa Clara	california	37.0057983	-121.568001	1.83000004	63	Moderate air quality	pm25	2018-12-06 19:15:00	57.7000008	1	1014	1.41999996	0	2018-12-06 11:27:00
Glendale	City	Los Angeles	california	34.1425018	-118.254997	2.29999995	58	Moderate air quality	pm25	2018-12-06 19:35:00	52.25	90	1012	5.69999981	3.25999999	2018-12-06 11:27:00
Glendora	City	Los Angeles	california	34.1361008	-117.864998	2.3499999	58	Moderate air quality	pm25	2018-12-06 19:35:00	53.2400017	90	1012	2.5999999	3.50999999	2018-12-06 11:27:00
Goleta	City	Santa Barbara	california	34.4357986	-119.828003	2.22000003	46	Good air quality	pm25	2018-12-06 19:15:00	57.5400009	75	1012	6.26999998	0	2018-12-06 11:27:00
Gonzales	City	Monterey	california	36.5065994	-121.444	1.88999999	58	Moderate air quality	pm25	2018-12-06 19:15:00	58.3699989	75	1014	1.57000005	0	2018-12-06 11:27:00
Grand Terrace	City	San Bernardino	california	34.0339012	-117.314003	2.36999989	52	Moderate air quality	pm25	2018-12-06 19:35:00	54.7200012	90	1013	5.0999999	8.13000011	2018-12-06 11:27:00
Grass Valley	City	Nevada	california	39.219101	-121.060997	1.61000001	55	Moderate air quality	pm25	2018-12-06 19:35:00	53.5600014	1	1013	1.5	0	2018-12-06 11:27:00
Greenfield	City	Monterey	california	36.3208008	-121.244003	1.92999995	57	Moderate air quality	pm25	2018-12-06 19:15:00	58.7999992	75	1014	1.57000005	0	2018-12-06 11:27:00
Gridley	City	Butte	california	39.3638	-121.694	1.55999994	37	Good air quality	pm25	2018-12-06 19:35:00	53.5600014	1	1013	1.5	0	2018-12-06 11:27:00
Grover Beach	City	San Luis Obispo	california	35.1216011	-120.621002	2.07999992	35	Good air quality	pm25	2018-12-06 18:56:00	57.7900009	75	1012	2.51999998	0	2018-12-06 11:27:00
Guadalupe	City	Santa Barbara	california	34.9715996	-120.571999	2.11999989	21	Good air quality	o3	2018-12-06 19:15:00	58.1399994	40	1012	2.01999998	0	2018-12-06 11:27:00
Gustine	City	Merced	california	37.2577019	-120.999001	1.75999999	52	Moderate air quality	pm25	2018-12-06 19:15:00	55.9000015	75	1014	1.76999998	0	2018-12-06 11:27:00
Half Moon Bay	City	San Mateo	california	37.4636002	-122.429001	1.79999995	42	Good air quality	pm25	2018-12-06 19:40:00	57.7799988	1	1014	3.5999999	0	2018-12-06 11:27:00
Hanford	City	Kings	california	36.3274002	-119.646004	1.88999999	51	Moderate air quality	pm25	2018-12-06 19:35:00	50.8499985	90	1015	2.0999999	0.75999999	2018-12-06 11:27:00
Hawaiian Gardens	City	Los Angeles	california	33.8314018	-118.072998	2.36999989	51	Moderate air quality	pm25	2018-12-06 19:35:00	53.0600014	90	1012	5.69999981	3.23000002	2018-12-06 11:27:00
Hawthorne	City	Los Angeles	california	33.9164009	-118.352997	2.36999989	56	Moderate air quality	pm25	2018-12-06 19:35:00	53.0999985	90	1012	1.32000005	3.23000002	2018-12-06 11:27:00
Hayward	City	Alameda	california	37.6688004	-122.081001	1.74000001	59	Moderate air quality	pm25	2018-12-06 19:40:00	57.1500015	1	1014	3.5999999	0	2018-12-06 11:27:00
Healdsburg	City	Sonoma	california	38.6105003	-122.869003	1.64999998	57	Moderate air quality	pm25	2018-12-06 19:15:00	53.4399986	1	1015	1.32000005	0	2018-12-06 11:27:00
Hemet	City	Riverside	california	33.7475014	-116.972	2.55999994	55	Moderate air quality	pm25	2018-12-06 19:35:00	55.9000015	90	1013	4.0999999	0	2018-12-06 11:27:00
Hercules	City	Contra Costa	california	38.0171013	-122.289001	1.67999995	28	Good air quality	pm25	2018-12-06 19:40:00	57.3400002	1	1014	3.5999999	0	2018-12-06 11:27:00
Hermosa Beach	City	Los Angeles	california	33.8622017	-118.400002	2.36999989	53	Moderate air quality	pm25	2018-12-06 19:35:00	52.9000015	90	1012	7.71999979	3.23000002	2018-12-06 11:27:00
Hesperia	City	San Bernardino	california	34.4263992	-117.301003	2.36999989	28	Good air quality	pm25	2018-12-06 19:28:00	51.5699997	90	1013	5.0999999	0	2018-12-06 11:27:00
Hidden Hills	City	Los Angeles	california	34.1603012	-118.652	2.30999994	24	Good air quality	o3	2018-12-06 19:28:00	53.1300011	90	1012	2.47000003	0.930000007	2018-12-06 11:27:00
Highland	City	San Bernardino	california	34.1282997	-117.209	2.43000007	50	Good air quality	pm25	2018-12-06 19:35:00	53.5600014	90	1013	5.0999999	0	2018-12-06 11:27:00
Hillsborough	Town	San Mateo	california	37.5741005	-122.378998	1.75999999	35	Good air quality	pm25	2018-12-06 19:40:00	57.5800018	1	1014	3.5999999	0	2018-12-06 11:27:00
Hollister	City	San Benito	california	36.8525009	-121.402	1.84000003	60	Moderate air quality	pm25	2018-12-06 19:15:00	58.5299988	75	1014	1.57000005	0	2018-12-06 11:27:00
Holtville	City	Imperial	california	32.8111992	-115.379997	2.71000004	69	Moderate air quality	pm25	2018-12-06 18:56:00	56.1199989	90	1017	3.17000008	0	2018-12-06 11:27:00
Hughson	City	Stanislaus	california	37.6026993	-120.865997	1.73000002	49	Good air quality	pm25	2018-12-06 19:10:00	55.4500008	20	1014	4.0999999	0	2018-12-06 11:27:00
Huntington Beach	City	Orange	california	33.6595001	-117.999001	2.44000006	45	Good air quality	pm25	2018-12-06 19:35:00	53.5099983	90	1012	2.5999999	3.23000002	2018-12-06 11:27:00
Huntington Park	City	Los Angeles	california	33.9817009	-118.224998	2.36999989	58	Moderate air quality	pm25	2018-12-06 19:50:00	53.4000015	90	1013	3.5999999	3.23000002	2018-12-06 11:27:00
Huron	City	Fresno	california	36.2027016	-120.102997	1.90999997	32	Good air quality	pm25	2018-12-06 19:35:00	51.0600014	90	1015	2.0999999	0	2018-12-06 11:27:00
Imperial	City	Imperial	california	32.847599	-115.569	2.70000005	60	Moderate air quality	pm25	2018-12-06 18:56:00	56.0999985	90	1017	1.97000003	0	2018-12-06 11:27:00
Imperial Beach	City	San Diego	california	32.5839005	-117.112999	2.73000002	69	Moderate air quality	pm25	2018-12-06 19:29:00	61.4500008	75	1013	5.0999999	0.75999999	2018-12-06 11:27:00
Indian Wells	City	Riverside	california	33.7176018	-116.341003	2.55999994	27	Good air quality	pm25	2018-12-06 19:15:00	51.7999992	90	1017	0.769999981	0	2018-12-06 11:27:00
Indio	City	Riverside	california	33.7206001	-116.216003	2.47000003	51	Moderate air quality	pm25	2018-12-06 19:15:00	51.7999992	90	1017	0.769999981	0	2018-12-06 11:27:00
Industry	City	Los Angeles	california	34.0196991	-117.959	2.3499999	54	Moderate air quality	pm25	2018-12-06 19:50:00	53.5499992	90	1013	3.5999999	3.50999999	2018-12-06 11:27:00
Inglewood	City	Los Angeles	california	33.9617004	-118.352997	2.36999989	59	Moderate air quality	pm25	2018-12-06 19:50:00	53.4000015	90	1013	3.5999999	3.23000002	2018-12-06 11:27:00
Ione	City	Amador	california	38.3526993	-120.932999	1.65999997	61	Moderate air quality	pm25	2018-12-06 19:15:00	54.7299995	1	1014	3.0999999	0	2018-12-06 11:27:00
Irvine	City	Orange	california	33.6846008	-117.827003	2.44000006	39	Good air quality	pm25	2018-12-06 19:35:00	54.0999985	90	1012	2.5999999	3.38000011	2018-12-06 11:27:00
Irwindale	City	Los Angeles	california	34.1069984	-117.934998	2.3499999	56	Moderate air quality	pm25	2018-12-06 19:50:00	53.5499992	90	1013	3.5999999	3.50999999	2018-12-06 11:27:00
Isleton	City	Sacramento	california	38.1618996	-121.612	1.66999996	30	Good air quality	pm25	2018-12-06 19:20:00	55.7200012	1	1015	5.69999981	0	2018-12-06 11:27:00
Jackson	City	Amador	california	38.3488007	-120.774002	1.65999997	50	Good air quality	pm25	2018-12-06 19:15:00	54.0499992	1	1014	3.0999999	0	2018-12-06 11:27:00
Jurupa Valley	City	Riverside	california	33.9972	-117.485001	2.41000009	57	Moderate air quality	pm25	2018-12-06 19:35:00	55.1500015	90	1013	5.0999999	5.92000008	2018-12-06 11:27:00
Kerman	City	Fresno	california	36.7235985	-120.059998	1.83000004	56	Moderate air quality	pm25	2018-12-06 19:35:00	51.1899986	90	1015	2.0999999	0	2018-12-06 11:27:00
King City	City	Monterey	california	36.2126999	-121.125999	1.96000004	62	Moderate air quality	pm25	2018-12-06 18:53:00	60.0800018	1	1013	2.0999999	0	2018-12-06 11:27:00
Kingsburg	City	Fresno	california	36.5138016	-119.554001	1.86000001	53	Moderate air quality	pm25	2018-12-06 19:35:00	50.8499985	90	1015	2.0999999	0.75999999	2018-12-06 11:27:00
La CaÃ±ada Flintridge	City	Los Angeles	california	34.2067986	-118.199997	2.32999992	54	Moderate air quality	pm25	2018-12-06 19:50:00	52.5600014	90	1013	3.5999999	3.25999999	2018-12-06 11:27:00
La Habra	City	Orange	california	33.9319	-117.945999	2.38000011	46	Good air quality	pm25	2018-12-06 19:35:00	53.2200012	90	1012	2.5999999	3.50999999	2018-12-06 11:27:00
La Habra Heights	City	Los Angeles	california	33.9608002	-117.950996	2.38000011	30	Good air quality	pm25	2018-12-06 19:50:00	53.5499992	90	1013	3.5999999	3.50999999	2018-12-06 11:27:00
La Mesa	City	San Diego	california	32.7677994	-117.023003	2.68000007	68	Moderate air quality	no2	2018-12-06 19:29:00	60.6699982	90	1012	5.69999981	0.75999999	2018-12-06 11:27:00
La Mirada	City	Los Angeles	california	33.9171982	-118.012001	2.36999989	48	Good air quality	pm25	2018-12-06 19:50:00	53.2599983	90	1012	5.69999981	3.23000002	2018-12-06 11:27:00
La Palma	City	Orange	california	33.8462982	-118.045998	2.36999989	34	Good air quality	pm25	2018-12-06 19:35:00	53.0600014	90	1012	5.69999981	3.23000002	2018-12-06 11:27:00
La Puente	City	Los Angeles	california	34.0200005	-117.949997	2.3499999	50	Good air quality	pm25	2018-12-06 19:35:00	53.2400017	90	1012	5.69999981	3.50999999	2018-12-06 11:27:00
La Quinta	City	Riverside	california	33.6633987	-116.309998	2.55999994	26	Good air quality	pm10	2018-12-06 19:15:00	51.7999992	90	1017	0.769999981	0	2018-12-06 11:27:00
La Verne	City	Los Angeles	california	34.1007996	-117.767998	2.3499999	54	Moderate air quality	pm25	2018-12-06 19:35:00	53.2200012	90	1012	2.5999999	3.50999999	2018-12-06 11:27:00
Lafayette	City	Contra Costa	california	37.8857994	-122.117996	1.72000003	43	Good air quality	pm25	2018-12-06 19:40:00	57.2700005	1	1014	3.5999999	0	2018-12-06 11:27:00
Laguna Beach	City	Orange	california	33.5427017	-117.785004	2.44000006	49	Good air quality	pm25	2018-12-06 19:35:00	55.0600014	90	1012	2.5999999	3.91000009	2018-12-06 11:27:00
Laguna Hills	City	Orange	california	33.5915985	-117.698997	2.48000002	33	Good air quality	o3	2018-12-06 19:35:00	55.0400009	90	1012	2.5999999	3.91000009	2018-12-06 11:27:00
Laguna Niguel	City	Orange	california	33.5237007	-117.714996	2.48000002	49	Good air quality	pm25	2018-12-06 19:35:00	55.3100014	90	1012	2.5999999	4.82000017	2018-12-06 11:27:00
Laguna Woods	City	Orange	california	33.610199	-117.724998	2.48000002	34	Good air quality	pm25	2018-12-06 19:35:00	54.75	90	1012	2.5999999	3.91000009	2018-12-06 11:27:00
Lake Elsinore	City	Riverside	california	33.6680984	-117.327003	2.5	51	Moderate air quality	pm25	2018-12-06 19:35:00	56.6199989	90	1013	4.0999999	8.13000011	2018-12-06 11:27:00
Lake Forest	City	Orange	california	33.6469002	-117.685997	2.48000002	33	Good air quality	o3	2018-12-06 19:35:00	55.1300011	90	1012	2.5999999	4.51000023	2018-12-06 11:27:00
Lakeport	City	Lake	california	39.0429001	-122.916	1.63999999	56	Moderate air quality	pm25	2018-12-06 18:56:00	46.9399986	1	1016	0.620000005	0	2018-12-06 11:27:00
Lakewood	City	Los Angeles	california	33.8535995	-118.134003	2.36999989	43	Good air quality	pm25	2018-12-06 19:35:00	53.0800018	90	1012	5.69999981	3.23000002	2018-12-06 11:27:00
Lancaster	City	Los Angeles	california	34.6867981	-118.153999	2.25999999	31	Good air quality	pm25	2018-12-06 19:27:00	43.1100006	90	1016	4.0999999	2.18000007	2018-12-06 11:27:00
Larkspur	City	Marin	california	37.9341011	-122.535004	1.72000003	25	Good air quality	pm10	2018-12-06 19:40:00	57.3600006	1	1014	3.5999999	0	2018-12-06 11:27:00
Lathrop	City	San Joaquin	california	37.8227005	-121.277	1.71000004	48	Good air quality	pm25	2018-12-06 19:15:00	55.7099991	1	1015	3.5999999	0	2018-12-06 11:27:00
Lawndale	City	Los Angeles	california	33.8871994	-118.352997	2.36999989	54	Moderate air quality	pm25	2018-12-06 19:50:00	53.4000015	90	1013	3.5999999	3.23000002	2018-12-06 11:27:00
Lemon Grove	City	San Diego	california	32.7425003	-117.030998	2.73000002	68	Moderate air quality	no2	2018-12-06 19:29:00	61.1100006	90	1012	5.69999981	0.75999999	2018-12-06 11:27:00
Lemoore	City	Kings	california	36.3008003	-119.782997	1.88	42	Good air quality	pm25	2018-12-06 19:35:00	51.0099983	90	1015	2.0999999	0	2018-12-06 11:27:00
Lincoln	City	Placer	california	38.8916016	-121.292999	1.60000002	56	Moderate air quality	pm25	2018-12-06 19:20:00	54.2299995	1	1014	3.5999999	0	2018-12-06 11:27:00
Lindsay	City	Tulare	california	36.2029991	-119.087997	1.91999996	55	Moderate air quality	pm25	2018-12-06 19:15:00	50.6699982	90	1015	1.5	0.50999999	2018-12-06 11:27:00
Live Oak	City	Sutter	california	39.2756996	-121.660004	1.55999994	53	Moderate air quality	pm25	2018-12-06 19:35:00	53.4900017	1	1013	1.5	0	2018-12-06 11:27:00
Livermore	City	Alameda	california	37.6819	-121.767998	1.75999999	60	Moderate air quality	pm25	2018-12-06 19:40:00	57.25	1	1015	3.5999999	0	2018-12-06 11:27:00
Livingston	City	Merced	california	37.3869019	-120.723999	1.75999999	55	Moderate air quality	pm25	2018-12-06 19:03:00	54.5200005	90	1014	1.87	0	2018-12-06 11:27:00
Lodi	City	San Joaquin	california	38.1341019	-121.272003	1.66999996	61	Moderate air quality	pm25	2018-12-06 19:20:00	55.3600006	1	1015	3.5999999	0	2018-12-06 11:27:00
Loma Linda	City	San Bernardino	california	34.0483017	-117.261002	2.36999989	53	Moderate air quality	pm25	2018-12-06 19:35:00	54.7200012	90	1013	5.0999999	8.13000011	2018-12-06 11:27:00
Lomita	City	Los Angeles	california	33.7921982	-118.315002	2.36999989	19	Good air quality	pm25	2018-12-06 19:50:00	53.3800011	90	1013	3.5999999	3.23000002	2018-12-06 11:27:00
Lompoc	City	Santa Barbara	california	34.6390991	-120.458	2.18000007	44	Good air quality	pm25	2018-12-06 19:15:00	58.8600006	90	1012	1.5	0	2018-12-06 11:27:00
Long Beach	City	Los Angeles	california	33.7700996	-118.194	2.36999989	57	Moderate air quality	pm25	2018-12-06 19:50:00	53.3800011	90	1012	5.69999981	3.23000002	2018-12-06 11:27:00
Loomis	Town	Placer	california	38.8213005	-121.193001	1.62	55	Moderate air quality	pm25	2018-12-06 19:20:00	54.3699989	1	1014	3.5999999	0	2018-12-06 11:27:00
Los Alamitos	City	Orange	california	33.8031998	-118.071999	2.36999989	43	Good air quality	pm25	2018-12-06 19:50:00	53.3800011	90	1012	5.69999981	3.23000002	2018-12-06 11:27:00
Los Altos	City	Santa Clara	california	37.3852005	-122.113998	1.80999994	61	Moderate air quality	pm25	2018-12-06 19:40:00	57.5400009	1	1014	3.5999999	0	2018-12-06 11:27:00
Los Altos Hills	Town	Santa Clara	california	37.3796997	-122.137001	1.80999994	49	Good air quality	pm25	2018-12-06 19:40:00	57.5400009	1	1014	3.5999999	0	2018-12-06 11:27:00
Los Angeles	City	Los Angeles	california	34.0522003	-118.244003	2.32999992	65	Moderate air quality	pm25	2018-12-06 19:50:00	53.7299995	90	1013	3.5999999	3.50999999	2018-12-06 11:27:00
Los Banos	City	Merced	california	37.0583	-120.849998	1.78999996	54	Moderate air quality	pm25	2018-12-06 19:15:00	55.4199982	75	1014	1.87	0	2018-12-06 11:27:00
Los Gatos	Town	Santa Clara	california	37.2358017	-121.961998	1.84000003	52	Moderate air quality	pm25	2018-12-06 19:40:00	57.5800018	1	1014	3.5999999	0	2018-12-06 11:27:00
Loyalton	City	Sierra	california	39.6763	-120.240997	1.64999998	42	Good air quality	pm25	2018-12-06 19:35:00	30.7199993	90	1018	4.5999999	0	2018-12-06 11:27:00
Lynwood	City	Los Angeles	california	33.9303017	-118.210999	2.36999989	57	Moderate air quality	pm25	2018-12-06 19:35:00	53.0800018	90	1012	5.69999981	3.23000002	2018-12-06 11:27:00
Madera	City	Madera	california	36.9612999	-120.060997	1.79999995	69	Moderate air quality	pm25	2018-12-06 19:35:00	52.7700005	90	1015	2.0999999	0	2018-12-06 11:27:00
Malibu	City	Los Angeles	california	34.0259018	-118.779999	2.31999993	26	Good air quality	o3	2018-12-06 19:50:00	53.0800018	90	1013	3.5999999	1.07000005	2018-12-06 11:27:00
Mammoth Lakes	Town	Mono	california	37.6484985	-118.972	2	57	Moderate air quality	pm25	2018-12-06 19:15:00	32.1800003	90	1016	1.32000005	0	2018-12-06 11:27:00
Manhattan Beach	City	Los Angeles	california	33.8847008	-118.411003	2.36999989	52	Moderate air quality	pm25	2018-12-06 19:50:00	53.2400017	90	1013	3.5999999	3.23000002	2018-12-06 11:27:00
Manteca	City	San Joaquin	california	37.7974014	-121.216003	1.71000004	64	Moderate air quality	pm25	2018-12-06 19:15:00	55.7200012	1	1015	3.5999999	0	2018-12-06 11:27:00
Maricopa	City	Kern	california	35.0588989	-119.401001	2.05999994	49	Good air quality	pm25	2018-12-06 18:54:00	50	90	1015	4.0999999	2.53999996	2018-12-06 11:27:00
Marina	City	Monterey	california	36.6843987	-121.802002	1.88999999	53	Moderate air quality	pm25	2018-12-06 19:15:00	58.3699989	75	1014	2.06999993	0	2018-12-06 11:27:00
Martinez	City	Contra Costa	california	38.0194016	-122.134003	1.69000006	57	Moderate air quality	pm25	2018-12-06 19:40:00	57.1300011	1	1014	3.5999999	0	2018-12-06 11:27:00
Marysville	City	Yuba	california	39.1456985	-121.591003	1.58000004	61	Moderate air quality	pm25	2018-12-06 19:35:00	53.4900017	1	1013	1.5	0	2018-12-06 11:27:00
Maywood	City	Los Angeles	california	33.9866982	-118.184998	2.36999989	57	Moderate air quality	pm25	2018-12-06 19:50:00	53.4000015	90	1013	3.5999999	3.23000002	2018-12-06 11:27:00
McFarland	City	Kern	california	35.6780014	-119.228996	1.98000002	117	Unhealthy for sensitive groups air quality	pm25	2018-12-06 19:15:00	49.5099983	90	1015	2.5999999	1.17999995	2018-12-06 11:27:00
Mendota	City	Fresno	california	36.7536011	-120.382004	1.80999994	59	Moderate air quality	pm25	2018-12-06 19:35:00	51.6699982	90	1015	2.0999999	0	2018-12-06 11:27:00
Menifee	City	Riverside	california	33.6971016	-117.184998	2.49000001	22	Good air quality	pm25	2018-12-06 19:35:00	57	90	1013	4.0999999	16	2018-12-06 11:27:00
Menlo Park	City	San Mateo	california	37.4529991	-122.181999	1.80999994	77	Moderate air quality	pm25	2018-12-06 19:40:00	57.5400009	1	1014	3.5999999	0	2018-12-06 11:27:00
Merced	City	Merced	california	37.3022003	-120.483002	1.75999999	58	Moderate air quality	pm25	2018-12-06 19:03:00	54.5400009	90	1014	1.87	0	2018-12-06 11:27:00
Mill Valley	City	Marin	california	37.9059982	-122.544998	1.72000003	44	Good air quality	pm25	2018-12-06 19:40:00	57.3600006	1	1014	3.5999999	0	2018-12-06 11:27:00
Millbrae	City	San Mateo	california	37.5984993	-122.387001	1.75999999	59	Moderate air quality	pm25	2018-12-06 19:40:00	57.5999985	1	1014	3.5999999	0	2018-12-06 11:27:00
Milpitas	City	Santa Clara	california	37.4323006	-121.900002	1.77999997	61	Moderate air quality	pm25	2018-12-06 19:40:00	57.5400009	1	1014	3.5999999	0	2018-12-06 11:27:00
Mission Viejo	City	Orange	california	33.5969009	-117.657997	2.48000002	37	Good air quality	pm25	2018-12-06 19:35:00	55.7999992	90	1012	2.5999999	5.92000008	2018-12-06 11:27:00
Modesto	City	Stanislaus	california	37.6390991	-120.997002	1.73000002	70	Moderate air quality	pm25	2018-12-06 19:15:00	55.4500008	20	1014	4.0999999	0	2018-12-06 11:27:00
Monrovia	City	Los Angeles	california	34.1442986	-118.001999	2.32999992	56	Moderate air quality	pm25	2018-12-06 19:50:00	52.5400009	90	1013	3.5999999	3.25999999	2018-12-06 11:27:00
Montague	City	Siskiyou	california	41.728199	-122.528	1.38	45	Good air quality	pm25	2018-12-06 18:56:00	37.0400009	1	1019	1.37	0	2018-12-06 11:27:00
Montclair	City	San Bernardino	california	34.0774994	-117.690002	2.38000011	49	Good air quality	pm25	2018-12-06 19:50:00	53.5499992	90	1013	3.5999999	3.50999999	2018-12-06 11:27:00
Monte Sereno	City	Santa Clara	california	37.2363014	-121.991997	1.84000003	43	Good air quality	pm25	2018-12-06 19:40:00	57.5800018	1	1014	3.5999999	0	2018-12-06 11:27:00
Montebello	City	Los Angeles	california	34.0164986	-118.113998	2.32999992	44	Good air quality	pm25	2018-12-06 19:50:00	53.7099991	90	1013	3.5999999	3.50999999	2018-12-06 11:27:00
Monterey	City	Monterey	california	36.6002007	-121.894997	1.88999999	61	Moderate air quality	pm25	2018-12-06 19:15:00	58.3699989	20	1013	3.0999999	0	2018-12-06 11:27:00
Monterey Park	City	Los Angeles	california	34.0625	-118.123001	2.32999992	54	Moderate air quality	pm25	2018-12-06 19:50:00	53.7099991	90	1013	3.5999999	3.50999999	2018-12-06 11:27:00
Moorpark	City	Ventura	california	34.2855988	-118.882004	2.25999999	48	Good air quality	pm25	2018-12-06 19:50:00	52.4099998	90	1013	3.5999999	0.949999988	2018-12-06 11:27:00
Moraga	Town	Contra Costa	california	37.8348999	-122.129997	1.72000003	26	Good air quality	pm10	2018-12-06 19:40:00	57.2700005	1	1014	3.5999999	0	2018-12-06 11:27:00
Moreno Valley	City	Riverside	california	33.9425011	-117.230003	2.43000007	52	Moderate air quality	pm25	2018-12-06 19:35:00	55.1300011	90	1013	5.0999999	8.13000011	2018-12-06 11:27:00
Morgan Hill	City	Santa Clara	california	37.1305008	-121.653999	1.83000004	61	Moderate air quality	pm25	2018-12-06 19:15:00	57.4000015	1	1014	1.41999996	0	2018-12-06 11:27:00
Morro Bay	City	San Luis Obispo	california	35.3658981	-120.849998	2.04999995	26	Good air quality	o3	2018-12-06 18:56:00	58.0600014	75	1012	2.51999998	0	2018-12-06 11:27:00
Mount Shasta	City	Siskiyou	california	41.3098984	-122.310997	1.42999995	53	Moderate air quality	pm25	2018-12-06 19:10:00	37.1699982	1	1017	1.07000005	0	2018-12-06 11:27:00
Mountain View	City	Santa Clara	california	37.3861008	-122.084	1.80999994	68	Moderate air quality	pm25	2018-12-06 19:40:00	57.5400009	1	1014	3.5999999	0	2018-12-06 11:27:00
Murrieta	City	Riverside	california	33.5539017	-117.213997	2.49000001	22	Good air quality	pm25	2018-12-06 19:35:00	57.0600014	90	1013	4.0999999	8.64000034	2018-12-06 11:27:00
Napa	City	Napa	california	38.2975006	-122.287003	1.66999996	53	Moderate air quality	pm25	2018-12-06 19:20:00	57.1800003	1	1015	1.32000005	0	2018-12-06 11:27:00
National City	City	San Diego	california	32.6781006	-117.098999	2.73000002	61	Moderate air quality	pm25	2018-12-06 19:29:00	61.4099998	90	1012	5.69999981	0.75999999	2018-12-06 11:27:00
Needles	City	San Bernardino	california	34.8480988	-114.613998	2.19000006	58	Moderate air quality	pm25	2018-12-06 19:35:00	59	90	1017	3.5999999	0	2018-12-06 11:27:00
Nevada City	City	Nevada	california	39.2616005	-121.015999	1.60000002	34	Good air quality	pm25	2018-12-06 19:35:00	53.5600014	1	1013	1.5	0	2018-12-06 11:27:00
Newark	City	Alameda	california	37.5297012	-122.040001	1.74000001	48	Good air quality	pm25	2018-12-06 19:40:00	57.5400009	1	1014	3.5999999	0	2018-12-06 11:27:00
Newman	City	Stanislaus	california	37.3138008	-121.021004	1.76999998	51	Moderate air quality	pm25	2018-12-06 19:15:00	55.5800018	75	1014	1.76999998	0	2018-12-06 11:27:00
Newport Beach	City	Orange	california	33.6189003	-117.93	2.44000006	25	Good air quality	o3	2018-12-06 19:35:00	54.1599998	90	1012	2.5999999	3.38000011	2018-12-06 11:27:00
Norco	City	Riverside	california	33.9310989	-117.549004	2.41000009	31	Good air quality	pm25	2018-12-06 19:35:00	54.6100006	90	1013	5.0999999	5.92000008	2018-12-06 11:27:00
Norwalk	City	Los Angeles	california	33.9021988	-118.082001	2.36999989	55	Moderate air quality	pm25	2018-12-06 19:50:00	53.3800011	90	1012	5.69999981	3.23000002	2018-12-06 11:27:00
Novato	City	Marin	california	38.107399	-122.57	1.67999995	52	Moderate air quality	pm25	2018-12-06 19:40:00	57.8100014	1	1015	1.32000005	0	2018-12-06 11:27:00
Oakdale	City	Stanislaus	california	37.7666016	-120.847	1.71000004	63	Moderate air quality	pm25	2018-12-06 19:15:00	55.4700012	1	1014	3.0999999	0	2018-12-06 11:27:00
Oakland	City	Alameda	california	37.8044014	-122.271004	1.71000004	58	Moderate air quality	pm25	2018-12-06 19:40:00	57.2700005	1	1014	3.5999999	0	2018-12-06 11:27:00
Oceanside	City	San Diego	california	33.1959	-117.378998	2.5999999	57	Moderate air quality	pm25	2018-12-06 19:35:00	59.9000015	90	1012	5.69999981	8.64000034	2018-12-06 11:27:00
Ojai	City	Ventura	california	34.4480019	-119.242996	2.25999999	50	Good air quality	pm25	2018-12-06 18:57:00	57.5099983	90	1012	10.8000002	0.50999999	2018-12-06 11:27:00
Ontario	City	San Bernardino	california	34.0633011	-117.651001	2.38000011	51	Moderate air quality	pm25	2018-12-06 19:35:00	53.8699989	90	1012	2.5999999	4.05999994	2018-12-06 11:27:00
Orange	City	Orange	california	33.787899	-117.852997	2.38000011	46	Good air quality	pm25	2018-12-06 19:35:00	53.3699989	90	1012	2.5999999	3.23000002	2018-12-06 11:27:00
Orange Cove	City	Fresno	california	36.6244011	-119.314003	1.87	53	Moderate air quality	pm25	2018-12-06 19:35:00	50.8499985	90	1015	1.66999996	0.75999999	2018-12-06 11:27:00
Orinda	City	Contra Costa	california	37.8771019	-122.18	1.72000003	48	Good air quality	pm25	2018-12-06 19:40:00	57.2700005	1	1014	3.5999999	0	2018-12-06 11:27:00
Orland	City	Glenn	california	39.7473984	-122.195999	1.53999996	28	Good air quality	pm25	2018-12-06 18:54:00	53.4399986	1	1016	4.5999999	0	2018-12-06 11:27:00
Oroville	City	Butte	california	39.5138016	-121.556	1.54999995	36	Good air quality	pm25	2018-12-06 19:35:00	52.8600006	1	1013	1.5	0	2018-12-06 11:27:00
Oxnard	City	Ventura	california	34.1974983	-119.177002	2.28999996	68	Moderate air quality	pm25	2018-12-06 18:57:00	57.6699982	75	1012	11.3000002	0.50999999	2018-12-06 11:27:00
Pacific Grove	City	Monterey	california	36.6176987	-121.917	1.88999999	49	Good air quality	pm25	2018-12-06 19:15:00	58.3699989	20	1013	3.0999999	0	2018-12-06 11:27:00
Pacifica	City	San Mateo	california	37.6138	-122.487	1.75999999	35	Good air quality	pm10	2018-12-06 19:40:00	57.5999985	1	1014	3.5999999	0	2018-12-06 11:27:00
Palm Desert	City	Riverside	california	33.7221985	-116.374001	2.55999994	54	Moderate air quality	pm25	2018-12-06 19:35:00	51.7999992	90	1016	2.0999999	0	2018-12-06 11:27:00
Palm Springs	City	Riverside	california	33.8302994	-116.544998	2.5	37	Good air quality	pm25	2018-12-06 19:35:00	52.3800011	90	1013	4.0999999	0	2018-12-06 11:27:00
Palmdale	City	Los Angeles	california	34.5793991	-118.115997	2.25999999	40	Good air quality	pm25	2018-12-06 19:50:00	44.4900017	90	1016	4.0999999	2.53999996	2018-12-06 11:27:00
Palo Alto	City	Santa Clara	california	37.4418983	-122.142998	1.80999994	68	Moderate air quality	pm25	2018-12-06 19:40:00	57.5400009	1	1014	3.5999999	0	2018-12-06 11:27:00
Palos Verdes Estates	City	Los Angeles	california	33.8005981	-118.389999	2.36999989	22	Good air quality	pm25	2018-12-06 19:50:00	53.1300011	90	1012	3.5999999	3.76999998	2018-12-06 11:27:00
Paradise	Town	Butte	california	39.7596016	-121.622002	1.57000005	36	Good air quality	pm25	2018-12-06 18:54:00	53.7099991	0	1015	3.0999999	0	2018-12-06 11:27:00
Paramount	City	Los Angeles	california	33.8894997	-118.160004	2.36999989	48	Good air quality	pm25	2018-12-06 19:50:00	53.2900009	90	1012	3.5999999	3.76999998	2018-12-06 11:27:00
Parlier	City	Fresno	california	36.611599	-119.527	1.86000001	49	Good air quality	pm25	2018-12-06 19:35:00	51.3100014	90	1015	2.0999999	0	2018-12-06 11:27:00
Pasadena	City	Los Angeles	california	34.1478004	-118.144997	2.32999992	56	Moderate air quality	pm25	2018-12-06 19:50:00	52.5600014	90	1013	3.5999999	3.25999999	2018-12-06 11:27:00
Paso Robles	City	San Luis Obispo	california	35.6369019	-120.654999	2.01999998	23	Good air quality	pm25	2018-12-06 18:56:00	57.3400002	75	1013	7.19999981	0	2018-12-06 11:27:00
Patterson	City	Stanislaus	california	37.4715996	-121.129997	1.76999998	53	Moderate air quality	pm25	2018-12-06 19:15:00	56.1199989	20	1014	4.0999999	0	2018-12-06 11:27:00
Perris	City	Riverside	california	33.7825012	-117.228996	2.43000007	58	Moderate air quality	pm25	2018-12-06 19:35:00	56.4300003	90	1013	5.0999999	16	2018-12-06 11:27:00
Petaluma	City	Sonoma	california	38.232399	-122.637001	1.67999995	57	Moderate air quality	pm25	2018-12-06 19:15:00	57.4900017	1	1015	1.32000005	0	2018-12-06 11:27:00
Piedmont	City	Alameda	california	37.8244019	-122.232002	1.72000003	25	Good air quality	pm10	2018-12-06 19:40:00	57.2700005	1	1014	3.5999999	0	2018-12-06 11:27:00
Pinole	City	Contra Costa	california	38.0043983	-122.299004	1.67999995	50	Good air quality	pm25	2018-12-06 19:40:00	57.25	1	1014	3.5999999	0	2018-12-06 11:27:00
Pismo Beach	City	San Luis Obispo	california	35.1427994	-120.640999	2.07999992	37	Good air quality	pm25	2018-12-06 18:56:00	57.7900009	75	1012	2.51999998	0	2018-12-06 11:27:00
Pittsburg	City	Contra Costa	california	38.0279999	-121.885002	1.66999996	55	Moderate air quality	pm25	2018-12-06 19:20:00	56.3699989	1	1015	3.5999999	0	2018-12-06 11:27:00
Placentia	City	Orange	california	33.8711014	-117.862999	2.38000011	43	Good air quality	pm25	2018-12-06 19:50:00	53.4399986	90	1012	2.5999999	4.1500001	2018-12-06 11:27:00
Placerville	City	El Dorado	california	38.729599	-120.799004	1.64999998	55	Moderate air quality	pm25	2018-12-06 19:35:00	54.9000015	1	1014	2.5999999	0	2018-12-06 11:27:00
Pleasant Hill	City	Contra Costa	california	37.9480019	-122.060997	1.72000003	55	Moderate air quality	pm25	2018-12-06 19:40:00	56.8199997	1	1014	3.5999999	0	2018-12-06 11:27:00
Pleasanton	City	Alameda	california	37.6623993	-121.875	1.75999999	56	Moderate air quality	pm25	2018-12-06 19:40:00	57.25	1	1014	3.5999999	0	2018-12-06 11:27:00
Plymouth	City	Amador	california	38.4818993	-120.845001	1.65999997	39	Good air quality	pm25	2018-12-06 19:35:00	54.9000015	1	1014	3.0999999	0	2018-12-06 11:27:00
Point Arena	City	Mendocino	california	38.9087982	-123.693001	1.63999999	56	Moderate air quality	pm25	2018-12-06 18:56:00	46.9399986	1	1016	1.62	0	2018-12-06 11:27:00
Pomona	City	Los Angeles	california	34.0550995	-117.75	2.38000011	54	Moderate air quality	pm25	2018-12-06 19:50:00	53.5499992	90	1013	3.5999999	3.50999999	2018-12-06 11:27:00
Port Hueneme	City	Ventura	california	34.1478004	-119.195	2.28999996	58	Moderate air quality	pm25	2018-12-06 18:57:00	57.6899986	75	1012	11.3000002	0.50999999	2018-12-06 11:27:00
Porterville	City	Tulare	california	36.0652008	-119.016998	1.91999996	74	Moderate air quality	pm25	2018-12-06 19:15:00	50.4000015	90	1015	1.5	0.50999999	2018-12-06 11:27:00
Portola	City	Plumas	california	39.8105011	-120.469002	1.62	50	Good air quality	pm25	2018-12-06 19:35:00	31.3199997	90	1018	4.5999999	0	2018-12-06 11:27:00
Portola Valley	Town	San Mateo	california	37.3841019	-122.235001	1.80999994	52	Moderate air quality	pm25	2018-12-06 19:40:00	57.7200012	1	1014	3.5999999	0	2018-12-06 11:27:00
Poway	City	San Diego	california	32.9627991	-117.036003	2.68000007	23	Good air quality	o3	2018-12-06 19:35:00	60.1899986	90	1012	5.69999981	0.75999999	2018-12-06 11:27:00
Rancho Cordova	City	Sacramento	california	38.5890999	-121.303001	1.63	55	Moderate air quality	pm25	2018-12-06 19:35:00	54.5900002	1	1014	3.5999999	0	2018-12-06 11:27:00
Rancho Cucamonga	City	San Bernardino	california	34.1063995	-117.593002	2.38000011	35	Good air quality	pm25	2018-12-06 19:35:00	54.5699997	90	1013	5.0999999	7.19000006	2018-12-06 11:27:00
Rancho Mirage	City	Riverside	california	33.7397003	-116.413002	2.55999994	28	Good air quality	pm25	2018-12-06 19:35:00	52.7400017	90	1016	2.0999999	0	2018-12-06 11:27:00
Rancho Palos Verdes	City	Los Angeles	california	33.7444992	-118.387001	2.44000006	20	Good air quality	pm25	2018-12-06 19:51:00	53.2400017	90	1011	3.5999999	3.80999994	2018-12-06 11:27:00
Rancho Santa Margarita	City	Orange	california	33.6402016	-117.602997	2.48000002	31	Good air quality	o3	2018-12-06 19:35:00	56.2099991	90	1012	2.5999999	5.92000008	2018-12-06 11:27:00
Red Bluff	City	Tehama	california	40.1785011	-122.236	1.5	39	Good air quality	pm25	2018-12-06 18:54:00	55.0400009	1	1016	4.5999999	0	2018-12-06 11:27:00
Redding	City	Shasta	california	40.5864983	-122.391998	1.45000005	94	Moderate air quality	pm25	2018-12-06 19:10:00	49.2400017	1	1016	4.0999999	0	2018-12-06 11:27:00
Redlands	City	San Bernardino	california	34.0555992	-117.182999	2.43000007	59	Moderate air quality	pm25	2018-12-06 19:35:00	53.5800018	90	1013	5.0999999	0	2018-12-06 11:27:00
Redondo Beach	City	Los Angeles	california	33.8492012	-118.388	2.36999989	54	Moderate air quality	pm25	2018-12-06 19:50:00	53.1300011	90	1013	3.5999999	3.76999998	2018-12-06 11:27:00
Redwood City	City	San Mateo	california	37.485199	-122.236	1.80999994	69	Moderate air quality	pm25	2018-12-06 19:40:00	57.5800018	1	1014	3.5999999	0	2018-12-06 11:27:00
Reedley	City	Fresno	california	36.5962982	-119.449997	1.87	52	Moderate air quality	pm25	2018-12-06 19:35:00	51.0099983	90	1015	2.0999999	0	2018-12-06 11:27:00
Rialto	City	San Bernardino	california	34.1063995	-117.370003	2.36999989	54	Moderate air quality	pm25	2018-12-06 19:35:00	54.7200012	90	1013	5.0999999	8.13000011	2018-12-06 11:27:00
Richmond	City	Contra Costa	california	37.9357986	-122.348	1.71000004	60	Moderate air quality	pm25	2018-12-06 19:40:00	57.25	1	1014	3.5999999	0	2018-12-06 11:27:00
Ridgecrest	City	Kern	california	35.6225014	-117.670998	2.05999994	42	Good air quality	pm25	2018-12-06 19:17:00	42.9799995	90	1017	4.0999999	0	2018-12-06 11:27:00
Rio Dell	City	Humboldt	california	40.4992981	-124.106003	1.50999999	20	Good air quality	o3	2018-12-06 19:35:00	55.1100006	1	1015	1.32000005	0	2018-12-06 11:27:00
Rio Vista	City	Solano	california	38.1557999	-121.691002	1.66999996	29	Good air quality	pm25	2018-12-06 19:20:00	56.4300003	1	1015	5.69999981	0	2018-12-06 11:27:00
Ripon	City	San Joaquin	california	37.7394981	-121.135002	1.73000002	44	Good air quality	pm25	2018-12-06 19:15:00	55.9799995	1	1015	3.5999999	0	2018-12-06 11:27:00
Riverbank	City	Stanislaus	california	37.7360001	-120.934998	1.73000002	45	Good air quality	pm25	2018-12-06 19:15:00	55.4399986	20	1014	4.0999999	0	2018-12-06 11:27:00
Riverside	City	Riverside	california	33.9805984	-117.375	2.41000009	60	Moderate air quality	pm25	2018-12-06 19:35:00	54.8199997	90	1013	5.0999999	8.13000011	2018-12-06 11:27:00
Rocklin	City	Placer	california	38.790699	-121.236	1.62	58	Moderate air quality	pm25	2018-12-06 19:35:00	54.3699989	1	1014	3.5999999	0	2018-12-06 11:27:00
Rohnert Park	City	Sonoma	california	38.3395996	-122.700996	1.66999996	37	Good air quality	pm25	2018-12-06 19:15:00	57.0400009	1	1015	1.32000005	0	2018-12-06 11:27:00
Rolling Hills	City	Los Angeles	california	33.757	-118.353996	2.36999989	20	Good air quality	pm25	2018-12-06 19:51:00	53.2400017	90	1011	3.5999999	3.80999994	2018-12-06 11:27:00
Rolling Hills Estates	City	Los Angeles	california	33.7877998	-118.358002	2.36999989	39	Good air quality	pm25	2018-12-06 19:51:00	53.2400017	90	1011	3.5999999	3.80999994	2018-12-06 11:27:00
Rosemead	City	Los Angeles	california	34.0806007	-118.072998	2.32999992	53	Moderate air quality	pm25	2018-12-06 19:50:00	53.7099991	90	1013	3.5999999	3.50999999	2018-12-06 11:27:00
Roseville	City	Placer	california	38.7521019	-121.288002	1.60000002	58	Moderate air quality	pm25	2018-12-06 19:20:00	54.3699989	20	1015	3.5999999	0	2018-12-06 11:27:00
Ross	Town	Marin	california	37.9623985	-122.555	1.72000003	32	Good air quality	pm25	2018-12-06 19:40:00	57.5400009	1	1014	3.5999999	0	2018-12-06 11:27:00
Sacramento	City	Sacramento	california	38.5816002	-121.494003	1.63	51	Moderate air quality	pm25	2018-12-06 19:35:00	54.5900002	20	1015	3.5999999	0	2018-12-06 11:27:00
St. Helena	City	Napa	california	38.5051994	-122.470001	1.65999997	41	Good air quality	pm25	2018-12-06 19:20:00	56.7900009	1	1015	1.32000005	0	2018-12-06 11:27:00
Salinas	City	Monterey	california	36.6777	-121.655998	1.88	57	Moderate air quality	pm25	2018-12-06 19:15:00	58.3699989	75	1014	2.06999993	0	2018-12-06 11:27:00
San Anselmo	Town	Marin	california	37.9746017	-122.561996	1.72000003	32	Good air quality	pm25	2018-12-06 19:40:00	57.5400009	1	1014	3.5999999	0	2018-12-06 11:27:00
San Bernardino	City	San Bernardino	california	34.1082993	-117.290001	2.36999989	52	Moderate air quality	pm25	2018-12-06 19:35:00	53.9199982	90	1013	5.0999999	0.25	2018-12-06 11:27:00
San Bruno	City	San Mateo	california	37.6305008	-122.411003	1.75999999	61	Moderate air quality	pm25	2018-12-06 19:40:00	57.5999985	1	1014	3.5999999	0	2018-12-06 11:27:00
San Carlos	City	San Mateo	california	37.5071983	-122.261002	1.75999999	70	Moderate air quality	pm25	2018-12-06 19:40:00	57.5800018	1	1014	3.5999999	0	2018-12-06 11:27:00
San Clemente	City	Orange	california	33.4273987	-117.612999	2.50999999	53	Moderate air quality	pm25	2018-12-06 19:35:00	56.0800018	90	1013	1.5	7.19000006	2018-12-06 11:27:00
San Diego	City	San Diego	california	32.7156982	-117.161003	2.73000002	65	Moderate air quality	pm25	2018-12-06 19:29:00	61.1100006	90	1012	5.69999981	0.75999999	2018-12-06 11:27:00
San Dimas	City	Los Angeles	california	34.1067009	-117.806999	2.3499999	56	Moderate air quality	pm25	2018-12-06 19:50:00	53.4399986	90	1013	3.5999999	4.1500001	2018-12-06 11:27:00
San Fernando	City	Los Angeles	california	34.2818985	-118.439003	2.29999995	57	Moderate air quality	pm25	2018-12-06 19:50:00	52.0900002	90	1013	3.5999999	1.04999995	2018-12-06 11:27:00
San Francisco	City and county	San Francisco	california	37.7748985	-122.418999	1.71000004	61	Moderate air quality	pm25	2018-12-06 19:40:00	57.1599998	1	1014	3.5999999	0	2018-12-06 11:27:00
San Gabriel	City	Los Angeles	california	34.0960999	-118.106003	2.32999992	55	Moderate air quality	pm25	2018-12-06 19:50:00	53.5999985	90	1013	3.5999999	4.1500001	2018-12-06 11:27:00
San Jacinto	City	Riverside	california	33.7839012	-116.959	2.49000001	58	Moderate air quality	pm25	2018-12-06 19:35:00	55.1800003	90	1013	4.0999999	0	2018-12-06 11:27:00
San Joaquin	City	Fresno	california	36.6066017	-120.189003	1.83000004	49	Good air quality	pm25	2018-12-06 19:35:00	51.2099991	90	1015	2.0999999	0	2018-12-06 11:27:00
San Jose	City	Santa Clara	california	37.3381996	-121.886002	1.77999997	67	Moderate air quality	pm25	2018-12-06 19:40:00	57.1100006	1	1014	3.5999999	0	2018-12-06 11:27:00
San Juan Bautista	City	San Benito	california	36.8455009	-121.538002	1.84000003	31	Good air quality	pm25	2018-12-06 19:15:00	58.0800018	75	1014	2.06999993	0	2018-12-06 11:27:00
San Juan Capistrano	City	Orange	california	33.5018997	-117.663002	2.48000002	52	Moderate air quality	pm25	2018-12-06 19:35:00	56.0999985	90	1012	2.5999999	7.19000006	2018-12-06 11:27:00
San Leandro	City	Alameda	california	37.7248993	-122.155998	1.74000001	51	Moderate air quality	pm25	2018-12-06 19:40:00	57.1500015	1	1014	3.5999999	0	2018-12-06 11:27:00
San Luis Obispo	City	San Luis Obispo	california	35.2827988	-120.660004	2.05999994	22	Good air quality	o3	2018-12-06 18:56:00	57.7799988	75	1012	2.51999998	0	2018-12-06 11:27:00
San Marcos	City	San Diego	california	33.1433983	-117.166	2.61999989	37	Good air quality	pm25	2018-12-06 19:35:00	60.8400002	90	1012	5.69999981	0.75999999	2018-12-06 11:27:00
San Marino	City	Los Angeles	california	34.1213989	-118.106003	2.32999992	56	Moderate air quality	pm25	2018-12-06 19:50:00	52.4500008	90	1013	3.5999999	3.80999994	2018-12-06 11:27:00
San Mateo	City	San Mateo	california	37.5629997	-122.325996	1.75999999	68	Moderate air quality	pm25	2018-12-06 19:40:00	57.4000015	1	1014	3.5999999	0	2018-12-06 11:27:00
San Pablo	City	Contra Costa	california	37.962101	-122.346001	1.71000004	55	Moderate air quality	pm25	2018-12-06 19:40:00	57.25	1	1014	3.5999999	0	2018-12-06 11:27:00
San Rafael	City	Marin	california	37.9734993	-122.530998	1.72000003	56	Moderate air quality	pm25	2018-12-06 19:53:00	57.6500015	0	1014	5.0999999	0	2018-12-06 11:27:00
San Ramon	City	Contra Costa	california	37.7798996	-121.977997	1.73000002	52	Moderate air quality	pm25	2018-12-06 19:40:00	57.2900009	1	1014	3.5999999	0	2018-12-06 11:27:00
Sand City	City	Monterey	california	36.6171989	-121.848	1.88999999	28	Good air quality	pm25	2018-12-06 19:15:00	58.3699989	20	1013	3.0999999	0	2018-12-06 11:27:00
Sanger	City	Fresno	california	36.7080002	-119.556	1.86000001	51	Moderate air quality	pm25	2018-12-06 19:35:00	51.3100014	90	1015	2.0999999	0	2018-12-06 11:27:00
Santa Ana	City	Orange	california	33.7454987	-117.867996	2.44000006	47	Good air quality	pm25	2018-12-06 19:35:00	53.7299995	90	1012	2.5999999	3.23000002	2018-12-06 11:27:00
Santa Barbara	City	Santa Barbara	california	34.4207993	-119.697998	2.25	43	Good air quality	pm25	2018-12-06 19:35:00	57.2400017	90	1011	1.5	0.50999999	2018-12-06 11:27:00
Santa Clara	City	Santa Clara	california	37.3540993	-121.955002	1.77999997	61	Moderate air quality	pm25	2018-12-06 19:40:00	57.1100006	1	1014	3.5999999	0	2018-12-06 11:27:00
Santa Clarita	City	Los Angeles	california	34.3917007	-118.542999	2.26999998	21	Good air quality	o3	2018-12-06 19:50:00	51.1899986	90	1013	3.5999999	1.12	2018-12-06 11:27:00
Santa Cruz	City	Santa Cruz	california	36.9740982	-122.030998	1.86000001	59	Moderate air quality	pm25	2018-12-06 19:15:00	57.4300003	1	1014	1.41999996	0	2018-12-06 11:27:00
Santa Fe Springs	City	Los Angeles	california	33.9472008	-118.084999	2.36999989	43	Good air quality	pm25	2018-12-06 19:51:00	53.3800011	90	1012	3.5999999	3.80999994	2018-12-06 11:27:00
Santa Maria	City	Santa Barbara	california	34.9529991	-120.435997	2.1099999	41	Good air quality	pm25	2018-12-06 19:35:00	58.5099983	90	1011	1.5	0	2018-12-06 11:27:00
Santa Monica	City	Los Angeles	california	34.0195007	-118.490997	2.29999995	62	Moderate air quality	pm25	2018-12-06 19:51:00	53.5499992	90	1013	3.5999999	3.4000001	2018-12-06 11:27:00
Santa Paula	City	Ventura	california	34.3541985	-119.058998	2.25999999	58	Moderate air quality	pm25	2018-12-06 19:50:00	52.9300003	90	1013	3.5999999	1.39999998	2018-12-06 11:27:00
Santa Rosa	City	Sonoma	california	38.4403992	-122.713997	1.66999996	61	Moderate air quality	pm25	2018-12-06 19:15:00	56.6199989	1	1015	1.32000005	0	2018-12-06 11:27:00
Santee	City	San Diego	california	32.8384018	-116.973999	2.72000003	38	Good air quality	pm25	2018-12-06 19:35:00	60.8199997	90	1012	5.69999981	0.75999999	2018-12-06 11:27:00
Saratoga	City	Santa Clara	california	37.2638016	-122.023003	1.80999994	42	Good air quality	pm25	2018-12-06 19:53:00	57.7400017	0	1014	5.0999999	0	2018-12-06 11:27:00
Sausalito	City	Marin	california	37.8591003	-122.485001	1.71000004	35	Good air quality	pm25	2018-12-06 19:53:00	57.4000015	1	1014	3.5999999	0	2018-12-06 11:27:00
Scotts Valley	City	Santa Cruz	california	37.0511017	-122.014999	1.85000002	37	Good air quality	pm25	2018-12-06 19:40:00	57.9000015	1	1014	3.5999999	0	2018-12-06 11:27:00
Seal Beach	City	Orange	california	33.7414017	-118.105003	2.44000006	25	Good air quality	pm25	2018-12-06 19:51:00	53.3800011	90	1012	3.5999999	3.80999994	2018-12-06 11:27:00
Seaside	City	Monterey	california	36.6148987	-121.821999	1.88999999	44	Good air quality	pm25	2018-12-06 19:15:00	58.3699989	20	1013	3.0999999	0	2018-12-06 11:27:00
Sebastopol	City	Sonoma	california	38.4020996	-122.823997	1.65999997	58	Moderate air quality	pm25	2018-12-06 19:15:00	55.7599983	1	1015	1.32000005	0	2018-12-06 11:27:00
Selma	City	Fresno	california	36.5708008	-119.612	1.86000001	58	Moderate air quality	pm25	2018-12-06 19:35:00	51.3100014	90	1015	2.0999999	0	2018-12-06 11:27:00
Shafter	City	Kern	california	35.5004997	-119.272003	1.97000003	52	Moderate air quality	pm25	2018-12-06 19:15:00	49.5099983	90	1015	2.5999999	1.17999995	2018-12-06 11:27:00
Shasta Lake	City	Shasta	california	40.6804008	-122.371002	1.45000005	72	Moderate air quality	pm25	2018-12-06 19:10:00	49.4399986	20	1017	1.22000003	0	2018-12-06 11:27:00
Sierra Madre	City	Los Angeles	california	34.1617012	-118.053001	2.32999992	54	Moderate air quality	pm25	2018-12-06 19:50:00	52.4500008	90	1013	3.5999999	3.80999994	2018-12-06 11:27:00
Signal Hill	City	Los Angeles	california	33.8045006	-118.167999	2.36999989	51	Moderate air quality	pm25	2018-12-06 19:51:00	53.3800011	90	1012	3.5999999	3.80999994	2018-12-06 11:27:00
Simi Valley	City	Ventura	california	34.2694016	-118.780998	2.25999999	27	Good air quality	o3	2018-12-06 19:50:00	52.5699997	90	1013	3.5999999	0.949999988	2018-12-06 11:27:00
Solana Beach	City	San Diego	california	32.9911995	-117.271004	2.69000006	47	Good air quality	pm25	2018-12-06 19:35:00	60.8199997	90	1012	5.69999981	0.75999999	2018-12-06 11:27:00
Soledad	City	Monterey	california	36.4247017	-121.325996	1.92999995	60	Moderate air quality	pm25	2018-12-06 19:15:00	58.7999992	75	1014	1.57000005	0	2018-12-06 11:27:00
Solvang	City	Santa Barbara	california	34.5957985	-120.138	2.18000007	23	Good air quality	o3	2018-12-06 19:35:00	58.9500008	90	1011	1.5	0	2018-12-06 11:27:00
Sonoma	City	Sonoma	california	38.2919006	-122.458	1.66999996	51	Moderate air quality	pm25	2018-12-06 19:20:00	57.2000008	1	1015	1.32000005	0	2018-12-06 11:27:00
Sonora	City	Tuolumne	california	37.9828987	-120.382004	1.74000001	64	Moderate air quality	pm25	2018-12-06 19:45:00	56.6100006	75	1014	3.0999999	0	2018-12-06 11:27:00
South El Monte	City	Los Angeles	california	34.0519981	-118.046997	2.32999992	51	Moderate air quality	pm25	2018-12-06 19:50:00	53.5999985	90	1013	3.5999999	4.1500001	2018-12-06 11:27:00
South Gate	City	Los Angeles	california	33.9547005	-118.211998	2.36999989	56	Moderate air quality	pm25	2018-12-06 19:51:00	53.4000015	90	1013	3.5999999	3.80999994	2018-12-06 11:27:00
South Lake Tahoe	City	El Dorado	california	38.9398994	-119.976997	1.74000001	27	Good air quality	pm25	2018-12-06 19:15:00	31.5	90	1018	4.5999999	0	2018-12-06 11:27:00
South Pasadena	City	Los Angeles	california	34.1161003	-118.150002	2.32999992	53	Moderate air quality	pm25	2018-12-06 19:50:00	52.4500008	90	1013	3.5999999	3.80999994	2018-12-06 11:27:00
South San Francisco	City	San Mateo	california	37.6547012	-122.407997	1.75999999	62	Moderate air quality	pm25	2018-12-06 19:40:00	57.3100014	1	1014	3.5999999	0	2018-12-06 11:27:00
Stanton	City	Orange	california	33.8028984	-117.992996	2.38000011	33	Good air quality	pm25	2018-12-06 19:53:00	52.9700012	90	1012	3.5999999	1.66999996	2018-12-06 11:27:00
Stockton	City	San Joaquin	california	37.9576988	-121.291	1.71000004	71	Moderate air quality	pm25	2018-12-06 19:53:00	56.3199997	0	1014	5.0999999	0	2018-12-06 11:27:00
Suisun City	City	Solano	california	38.2382011	-122.040001	1.69000006	21	Good air quality	pm25	2018-12-06 19:53:00	56.8899994	0	1014	5.0999999	0	2018-12-06 11:27:00
Sunnyvale	City	Santa Clara	california	37.3688011	-122.036003	1.80999994	62	Moderate air quality	pm25	2018-12-06 19:53:00	57.7000008	0	1014	5.0999999	0	2018-12-06 11:27:00
Susanville	City	Lassen	california	40.4163017	-120.653	1.54999995	42	Good air quality	pm25	2018-12-06 19:35:00	32	90	1019	3.0999999	0	2018-12-06 11:27:00
Sutter Creek	City	Amador	california	38.3930016	-120.802002	1.65999997	60	Moderate air quality	pm25	2018-12-06 19:35:00	54.9500008	1	1014	3.0999999	0	2018-12-06 11:27:00
Taft	City	Kern	california	35.1425018	-119.457001	2.05999994	45	Good air quality	pm25	2018-12-06 18:54:00	50	90	1015	4.0999999	2.53999996	2018-12-06 11:27:00
Tehachapi	City	Kern	california	35.1321983	-118.448997	2.20000005	36	Good air quality	pm25	2018-12-06 19:43:00	42.1899986	90	1016	4.0999999	2.5999999	2018-12-06 11:27:00
Tehama	City	Tehama	california	40.0270996	-122.123001	1.5	22	Good air quality	pm25	2018-12-06 18:54:00	55.0400009	1	1016	4.5999999	0	2018-12-06 11:27:00
Temecula	City	Riverside	california	33.4935989	-117.148003	2.54999995	52	Moderate air quality	pm25	2018-12-06 19:35:00	57.7799988	90	1013	4.0999999	8.64000034	2018-12-06 11:27:00
Temple City	City	Los Angeles	california	34.1072006	-118.057999	2.32999992	41	Good air quality	pm25	2018-12-06 19:50:00	53.7099991	90	1013	3.5999999	3.50999999	2018-12-06 11:27:00
Thousand Oaks	City	Ventura	california	34.1706009	-118.837997	2.31999993	52	Moderate air quality	pm25	2018-12-06 19:50:00	52.5699997	90	1013	3.5999999	0.949999988	2018-12-06 11:27:00
Tiburon	Town	Marin	california	37.8735008	-122.457001	1.71000004	52	Moderate air quality	pm25	2018-12-06 19:40:00	57.25	1	1014	3.5999999	0	2018-12-06 11:27:00
Torrance	City	Los Angeles	california	33.8358002	-118.341003	2.36999989	31	Good air quality	pm25	2018-12-06 19:53:00	53.4900017	75	1012	2.0999999	4.05999994	2018-12-06 11:27:00
Tracy	City	San Joaquin	california	37.7397003	-121.425003	1.75	58	Moderate air quality	pm25	2018-12-06 19:53:00	57.0400009	0	1014	5.0999999	0	2018-12-06 11:27:00
Trinidad	City	Humboldt	california	41.0592995	-124.142998	1.40999997	20	Good air quality	pm25	2018-12-06 19:35:00	54.8400002	1	1015	1.32000005	0	2018-12-06 11:27:00
Truckee	Town	Nevada	california	39.3279991	-120.182999	1.66999996	61	Moderate air quality	pm25	2018-12-06 19:35:00	30.7199993	90	1018	4.5999999	0	2018-12-06 11:27:00
Tulare	City	Tulare	california	36.2076988	-119.347	1.91999996	71	Moderate air quality	pm25	2018-12-06 19:16:00	50.7200012	90	1015	2.0999999	0.50999999	2018-12-06 11:27:00
Tulelake	City	Siskiyou	california	41.9560013	-121.476997	1.35000002	41	Good air quality	pm25	2018-12-06 18:53:00	28.0400009	1	1018	5.69999981	0	2018-12-06 11:27:00
Tustin	City	Orange	california	33.7420006	-117.823997	2.44000006	23	Good air quality	o3	2018-12-06 19:51:00	54.25	90	1012	2.5999999	4.05999994	2018-12-06 11:27:00
Twentynine Palms	City	San Bernardino	california	34.135601	-116.054001	2.43000007	40	Good air quality	pm25	2018-12-06 19:58:53	43.5	92	956.219971	1.66999996	3.36750007	2018-12-06 11:27:00
Ukiah	City	Mendocino	california	39.1501999	-123.208	1.63999999	75	Moderate air quality	pm25	2018-12-06 18:56:00	46.9399986	1	1016	0.620000005	0	2018-12-06 11:27:00
Union City	City	Alameda	california	37.593399	-122.043999	1.74000001	48	Good air quality	pm25	2018-12-06 19:53:00	57.6899986	8	1014	5.0999999	0	2018-12-06 11:27:00
Upland	City	San Bernardino	california	34.0974998	-117.648003	2.38000011	46	Good air quality	pm25	2018-12-06 19:35:00	53.7599983	90	1012	2.5999999	4.82000017	2018-12-06 11:27:00
Vacaville	City	Solano	california	38.3566017	-121.987999	1.64999998	47	Good air quality	pm25	2018-12-06 19:45:00	56.0099983	5	1014	5.0999999	0	2018-12-06 11:27:00
Vallejo	City	Solano	california	38.1040993	-122.257004	1.67999995	65	Moderate air quality	pm25	2018-12-06 19:53:00	57.3600006	0	1014	5.0999999	0	2018-12-06 11:27:00
Ventura	City	Ventura	california	34.2804985	-119.294998	2.25999999	61	Moderate air quality	pm25	2018-12-06 18:57:00	57.5600014	90	1012	10.8000002	0.50999999	2018-12-06 11:27:00
Vernon	City	Los Angeles	california	34.0038986	-118.230003	2.32999992	60	Moderate air quality	pm25	2018-12-06 19:53:00	53.4900017	75	1012	2.0999999	4.05999994	2018-12-06 11:27:00
Victorville	City	San Bernardino	california	34.5362015	-117.292999	2.27999997	55	Moderate air quality	pm25	2018-12-06 19:13:00	45.6599998	90	1015	3.0999999	0	2018-12-06 11:27:00
Villa Park	City	Orange	california	33.8139992	-117.821999	2.38000011	39	Good air quality	pm25	2018-12-06 19:53:00	53.3100014	90	1012	3.5999999	1.64999998	2018-12-06 11:27:00
Visalia	City	Tulare	california	36.3302002	-119.292	1.88999999	70	Moderate air quality	pm25	2018-12-06 19:35:00	50.5400009	90	1015	2.0999999	0.50999999	2018-12-06 11:27:00
Vista	City	San Diego	california	33.2000008	-117.242996	2.61999989	52	Moderate air quality	pm25	2018-12-06 19:35:00	60.2400017	90	1013	1.5	1.26999998	2018-12-06 11:27:00
Walnut	City	Los Angeles	california	34.0203018	-117.864998	2.3499999	41	Good air quality	pm25	2018-12-06 19:53:00	53.1500015	75	1012	2.0999999	1.64999998	2018-12-06 11:27:00
Walnut Creek	City	Contra Costa	california	37.910099	-122.065002	1.72000003	58	Moderate air quality	pm25	2018-12-06 19:53:00	57.3800011	8	1014	5.0999999	0	2018-12-06 11:27:00
Wasco	City	Kern	california	35.594101	-119.341003	1.97000003	80	Moderate air quality	pm25	2018-12-06 19:15:00	49.5099983	90	1015	2.5999999	1.17999995	2018-12-06 11:27:00
Waterford	City	Stanislaus	california	37.6413002	-120.760002	1.73000002	63	Moderate air quality	pm25	2018-12-06 19:53:00	56.1399994	90	1014	1.5	0	2018-12-06 11:27:00
Watsonville	City	Santa Cruz	california	36.9101982	-121.757004	1.84000003	61	Moderate air quality	pm25	2018-12-06 19:15:00	57.6899986	75	1014	1.41999996	0	2018-12-06 11:27:00
Weed	City	Siskiyou	california	41.4225998	-122.386002	1.42999995	64	Moderate air quality	pm25	2018-12-06 19:10:00	37.1699982	1	1017	1.07000005	0	2018-12-06 11:27:00
West Covina	City	Los Angeles	california	34.0685997	-117.939003	2.3499999	59	Moderate air quality	pm25	2018-12-06 19:53:00	53.5499992	75	1012	2.0999999	4.51999998	2018-12-06 11:27:00
West Hollywood	City	Los Angeles	california	34.0900002	-118.362	2.29999995	56	Moderate air quality	pm25	2018-12-06 19:53:00	53.5999985	75	1012	2.0999999	4.51999998	2018-12-06 11:27:00
West Sacramento	City	Yolo	california	38.5805016	-121.529999	1.63	32	Good air quality	pm25	2018-12-06 19:45:00	55.3300018	5	1014	5.0999999	0	2018-12-06 11:27:00
Westlake Village	City	Los Angeles	california	34.1465988	-118.806999	2.31999993	27	Good air quality	o3	2018-12-06 19:53:00	52.7200012	75	1012	2.0999999	0.50999999	2018-12-06 11:27:00
Westminster	City	Orange	california	33.759201	-117.989998	2.38000011	40	Good air quality	pm25	2018-12-06 19:53:00	52.9700012	90	1012	3.5999999	1.66999996	2018-12-06 11:27:00
Westmorland	City	Imperial	california	33.0373001	-115.621002	2.61999989	56	Moderate air quality	pm25	2018-12-06 19:35:00	55.0800018	90	1016	2.0999999	0	2018-12-06 11:27:00
Wheatland	City	Yuba	california	39.0098991	-121.422997	1.58000004	32	Good air quality	pm25	2018-12-06 19:45:00	54.1399994	1	1014	3.5999999	0	2018-12-06 11:27:00
Whittier	City	Los Angeles	california	33.9791985	-118.032997	2.36999989	51	Moderate air quality	pm25	2018-12-06 19:53:00	53.7099991	75	1012	2.0999999	4.51999998	2018-12-06 11:27:00
Wildomar	City	Riverside	california	33.5988998	-117.279999	2.5	22	Good air quality	pm25	2018-12-06 19:35:00	57.2200012	90	1013	4.0999999	16	2018-12-06 11:27:00
Williams	City	Colusa	california	39.1545982	-122.149002	1.58000004	58	Moderate air quality	pm25	2018-12-06 18:58:00	52.9199982	1	1015	2.0999999	0	2018-12-06 11:27:00
Willits	City	Mendocino	california	39.4095993	-123.356003	1.61000001	61	Moderate air quality	pm25	2018-12-06 18:56:00	46.9399986	1	1016	1.32000005	0	2018-12-06 11:27:00
Willows	City	Glenn	california	39.5242996	-122.194	1.53999996	40	Good air quality	pm25	2018-12-06 18:53:00	51.9799995	0	1015	3.0999999	0	2018-12-06 11:27:00
Windsor	Town	Sonoma	california	38.5471001	-122.816002	1.64999998	54	Moderate air quality	pm25	2018-12-06 19:15:00	55.7799988	1	1015	1.32000005	0	2018-12-06 11:27:00
Winters	City	Yolo	california	38.5248985	-121.971001	1.63	27	Good air quality	pm25	2018-12-06 19:35:00	55.5600014	1	1015	5.69999981	0	2018-12-06 11:27:00
Woodlake	City	Tulare	california	36.4136009	-119.098999	1.89999998	55	Moderate air quality	pm25	2018-12-06 19:31:00	50.9700012	90	1015	1.66999996	0.75999999	2018-12-06 11:27:00
Woodland	City	Yolo	california	38.6785011	-121.773003	1.63	58	Moderate air quality	pm25	2018-12-06 19:35:00	55.3600006	1	1015	4.0999999	0	2018-12-06 11:27:00
Woodside	Town	San Mateo	california	37.4299011	-122.253998	1.79999995	63	Moderate air quality	pm25	2018-12-06 19:53:00	58.0499992	1	1014	3.5999999	0	2018-12-06 11:27:00
Yorba Linda	City	Orange	california	33.8885002	-117.813004	2.38000011	35	Good air quality	pm25	2018-12-06 19:53:00	53.1500015	75	1012	2.0999999	1.64999998	2018-12-06 11:27:00
Yountville	Town	Napa	california	38.4015999	-122.361	1.66999996	26	Good air quality	pm25	2018-12-06 19:53:00	57	1	1014	4.0999999	0	2018-12-06 11:27:00
Yreka	City	Siskiyou	california	41.7354012	-122.634003	1.38	55	Moderate air quality	pm25	2018-12-06 18:56:00	37.0400009	1	1019	1.37	0	2018-12-06 11:27:00
Yuba City	City	Sutter	california	39.1403999	-121.616997	1.58000004	51	Moderate air quality	pm25	2018-12-06 19:35:00	53.8899994	1	1014	3.5999999	0	2018-12-06 11:27:00
Yucaipa	City	San Bernardino	california	34.0335999	-117.042999	2.43000007	53	Moderate air quality	pm25	2018-12-06 19:35:00	53.5999985	90	1013	5.0999999	0	2018-12-06 11:27:00
Yucca Valley	Town	San Bernardino	california	34.1142006	-116.431999	2.45000005	36	Good air quality	o3	2018-12-06 20:00:26	39.7599983	92	907.820007	1.57000005	7.55249977	2018-12-06 11:27:00
Adelanto	City	San Bernardino	california	34.5828018	-117.408997	2.27999997	24	Good air quality	pm25	2018-12-06 20:27:00	44.1899986	90	1015	5.69999981	0.75999999	2018-12-06 12:27:00
Agoura Hills	City	Los Angeles	california	34.1533012	-118.762001	2.31999993	34	Good air quality	pm25	2018-12-06 20:04:00	54.4599991	90	1012	2.5999999	2.53999996	2018-12-06 12:27:00
Alameda	City	Alameda	california	37.7652016	-122.241997	1.72000003	52	Moderate air quality	pm25	2018-12-06 20:53:00	58.9300003	1	1013	4.0999999	0	2018-12-06 12:27:00
Albany	City	Alameda	california	37.8869019	-122.297997	1.71000004	59	Moderate air quality	pm25	2018-12-06 20:40:00	58.7999992	1	1014	2.97000003	0	2018-12-06 12:27:00
Alhambra	City	Los Angeles	california	34.0952988	-118.126999	2.32999992	54	Moderate air quality	pm25	2018-12-06 20:50:00	54.2099991	75	1013	4.0999999	3.41000009	2018-12-06 12:27:00
Aliso Viejo	City	Orange	california	33.5685005	-117.725998	2.48000002	33	Good air quality	pm25	2018-12-06 20:38:00	56.0099983	90	1012	3.0999999	4.51999998	2018-12-06 12:27:00
Alturas	City	Modoc	california	41.4870987	-120.542	1.40999997	79	Moderate air quality	pm25	2018-12-06 19:55:00	35.9599991	1	1016	2.5999999	0	2018-12-06 12:27:00
Amador City	City	Amador	california	38.4193993	-120.823997	1.65999997	44	Good air quality	pm25	2018-12-06 20:35:00	57.0600014	1	1013	3.5999999	0	2018-12-06 12:27:00
American Canyon	City	Napa	california	38.1749001	-122.261002	1.67999995	31	Good air quality	pm25	2018-12-06 20:53:00	58.7700005	1	1013	4.0999999	0	2018-12-06 12:27:00
Anaheim	City	Orange	california	33.8366013	-117.914001	2.38000011	43	Good air quality	pm25	2018-12-06 20:38:00	54.2799988	90	1012	5.0999999	3.41000009	2018-12-06 12:27:00
Anderson	City	Shasta	california	40.4482002	-122.297997	1.47000003	81	Moderate air quality	pm25	2018-12-06 20:10:00	52.0200005	1	1015	3.0999999	0	2018-12-06 12:27:00
Angels Camp	City	Calaveras	california	38.0677986	-120.539001	1.71000004	60	Moderate air quality	pm25	2018-12-06 20:35:00	56.9099998	1	1013	3.5999999	0	2018-12-06 12:27:00
Antioch	City	Contra Costa	california	38.0049019	-121.806	1.66999996	55	Moderate air quality	pm25	2018-12-06 20:20:00	58.4199982	1	1014	4.0999999	0	2018-12-06 12:27:00
Apple Valley	Town	San Bernardino	california	34.5008011	-117.185997	2.29999995	24	Good air quality	pm25	2018-12-06 20:38:00	50.0699997	90	1012	5.0999999	0	2018-12-06 12:27:00
Arcadia	City	Los Angeles	california	34.1397018	-118.035004	2.32999992	48	Good air quality	pm25	2018-12-06 20:50:00	54.2099991	75	1013	4.0999999	3.41000009	2018-12-06 12:27:00
Arcata	City	Humboldt	california	40.8665009	-124.083	1.44000006	20	Good air quality	pm10	2018-12-06 20:35:00	56.2999992	1	1015	1.5	0	2018-12-06 12:27:00
Arroyo Grande	City	San Luis Obispo	california	35.1185989	-120.591003	2.07999992	35	Good air quality	pm25	2018-12-06 20:16:00	58.2400017	90	1011	2.5999999	0	2018-12-06 12:27:00
Artesia	City	Los Angeles	california	33.865799	-118.083	2.36999989	47	Good air quality	pm25	2018-12-06 20:51:00	54.4500008	90	1012	5.0999999	3.41000009	2018-12-06 12:27:00
Arvin	City	Kern	california	35.2018013	-118.833	2.06999993	25	Good air quality	pm25	2018-12-06 20:54:00	43.9900017	90	1013	2.5999999	2.02999997	2018-12-06 12:27:00
Atascadero	City	San Luis Obispo	california	35.489399	-120.670998	2.05999994	52	Moderate air quality	pm25	2018-12-06 19:56:00	58.5099983	20	1013	5.69999981	0	2018-12-06 12:27:00
Atherton	Town	San Mateo	california	37.4612999	-122.197998	1.80999994	70	Moderate air quality	pm25	2018-12-06 20:53:00	59.3800011	1	1013	4.0999999	0	2018-12-06 12:27:00
Atwater	City	Merced	california	37.3476982	-120.609001	1.75999999	68	Moderate air quality	pm25	2018-12-06 20:24:00	56.5	90	1014	2.0999999	0	2018-12-06 12:27:00
Auburn	City	Placer	california	38.8965988	-121.077003	1.62	39	Good air quality	pm25	2018-12-06 20:45:00	56.0999985	1	1014	3.5999999	0	2018-12-06 12:27:00
Avalon	City	Los Angeles	california	33.3428001	-118.328003	2.5	26	Good air quality	o3	2018-12-06 20:51:00	55.1300011	90	1011	3.5999999	4.11000013	2018-12-06 12:27:00
Avenal	City	Kings	california	36.0041008	-120.128998	1.90999997	34	Good air quality	pm25	2018-12-06 20:18:00	53.0800018	90	1015	2.0999999	0	2018-12-06 12:27:00
Azusa	City	Los Angeles	california	34.1335983	-117.907997	2.3499999	58	Moderate air quality	pm25	2018-12-06 20:50:00	54	75	1013	4.0999999	3.41000009	2018-12-06 12:27:00
Bakersfield	City	Kern	california	35.3732986	-119.018997	2.00999999	61	Moderate air quality	pm25	2018-12-06 20:15:00	50.0699997	90	1013	2.5999999	1.14999998	2018-12-06 12:27:00
Baldwin Park	City	Los Angeles	california	34.0853004	-117.960999	2.3499999	60	Moderate air quality	pm25	2018-12-06 20:50:00	54	75	1013	4.0999999	3.41000009	2018-12-06 12:27:00
Banning	City	Riverside	california	33.9255981	-116.875999	2.49000001	42	Good air quality	pm25	2018-12-06 20:38:00	54.1899986	90	1012	5.0999999	1.01999998	2018-12-06 12:27:00
Barstow	City	San Bernardino	california	34.8958015	-117.016998	2.20000005	24	Good air quality	pm25	2018-12-06 19:55:00	46.8699989	90	1015	8.69999981	0.50999999	2018-12-06 12:27:00
Beaumont	City	Riverside	california	33.9295006	-116.976997	2.49000001	61	Moderate air quality	pm25	2018-12-06 20:38:00	55.3800011	90	1012	5.0999999	1.01999998	2018-12-06 12:27:00
Bell	City	Los Angeles	california	33.9775009	-118.186996	2.36999989	55	Moderate air quality	pm25	2018-12-06 20:53:00	54.3699989	90	1012	2.5999999	3.21000004	2018-12-06 12:27:00
Bell Gardens	City	Los Angeles	california	33.9653015	-118.151001	2.36999989	53	Moderate air quality	pm25	2018-12-06 20:51:00	54.4500008	90	1012	5.0999999	3.41000009	2018-12-06 12:27:00
Bellflower	City	Los Angeles	california	33.8816986	-118.116997	2.36999989	37	Good air quality	pm25	2018-12-06 20:51:00	54.4500008	90	1012	5.0999999	3.41000009	2018-12-06 12:27:00
Belmont	City	San Mateo	california	37.5201988	-122.276001	1.75999999	72	Moderate air quality	pm25	2018-12-06 20:53:00	59.4099998	1	1014	2.97000003	0	2018-12-06 12:27:00
Belvedere	City	Marin	california	37.8726997	-122.463997	1.71000004	26	Good air quality	pm10	2018-12-06 20:53:00	58.9799995	1	1013	4.0999999	0	2018-12-06 12:27:00
Benicia	City	Solano	california	38.0494003	-122.158997	1.69000006	31	Good air quality	pm25	2018-12-06 20:53:00	58.8199997	1	1013	4.0999999	0	2018-12-06 12:27:00
Berkeley	City	Alameda	california	37.8716011	-122.273003	1.71000004	62	Moderate air quality	pm25	2018-12-06 20:53:00	58.8699989	1	1013	4.0999999	0	2018-12-06 12:27:00
Beverly Hills	City	Los Angeles	california	34.0736008	-118.400002	2.29999995	46	Good air quality	pm25	2018-12-06 20:50:00	54.2099991	75	1013	4.0999999	3.80999994	2018-12-06 12:27:00
Big Bear Lake	City	San Bernardino	california	34.2439003	-116.911003	2.55999994	33	Good air quality	pm25	2018-12-06 20:38:00	49.9099998	90	1012	5.0999999	0	2018-12-06 12:27:00
Biggs	City	Butte	california	39.4123993	-121.712997	1.55999994	36	Good air quality	pm25	2018-12-06 20:35:00	56.0999985	1	1014	4.0999999	0	2018-12-06 12:27:00
Bishop	City	Inyo	california	37.3614006	-118.400002	1.96000004	52	Moderate air quality	pm25	2018-12-06 20:15:00	30.2000008	90	1016	1.5	0	2018-12-06 12:27:00
Blue Lake	City	Humboldt	california	40.8829002	-123.984001	1.45000005	17	Good air quality	pm25	2018-12-06 20:35:00	56.2999992	1	1015	1.5	0	2018-12-06 12:27:00
Blythe	City	Riverside	california	33.6178017	-114.587997	2.5	34	Good air quality	pm25	2018-12-06 21:00:12	48.3100014	92	1002.17999	2.51999998	0.805000007	2018-12-06 12:27:00
Bradbury	City	Los Angeles	california	34.1469002	-117.971001	2.3499999	31	Good air quality	pm25	2018-12-06 20:53:00	54.1199989	90	1012	2.5999999	3.21000004	2018-12-06 12:27:00
Brawley	City	Imperial	california	32.9786987	-115.529999	2.70000005	62	Moderate air quality	pm25	2018-12-06 20:29:00	56.3899994	90	1015	2.0999999	0	2018-12-06 12:27:00
Brea	City	Orange	california	33.9165001	-117.900002	2.38000011	44	Good air quality	pm25	2018-12-06 20:53:00	54.4300003	90	1012	5.0999999	3.21000004	2018-12-06 12:27:00
Brentwood	City	Contra Costa	california	37.9319	-121.695999	1.71000004	57	Moderate air quality	pm25	2018-12-06 20:55:00	58.9300003	1	1014	4.5999999	0	2018-12-06 12:27:00
Brisbane	City	San Mateo	california	37.6808014	-122.400002	1.75999999	30	Good air quality	pm10	2018-12-06 20:53:00	59.2700005	1	1014	2.97000003	0	2018-12-06 12:27:00
Buellton	City	Santa Barbara	california	34.6136017	-120.193001	2.18000007	46	Good air quality	pm25	2018-12-06 20:35:00	58.7700005	90	1011	1.5	0	2018-12-06 12:27:00
Buena Park	City	Orange	california	33.8674011	-117.998001	2.38000011	48	Good air quality	pm25	2018-12-06 20:51:00	54.2299995	90	1012	5.0999999	3.41000009	2018-12-06 12:27:00
Burbank	City	Los Angeles	california	34.1808014	-118.308998	2.29999995	60	Moderate air quality	pm25	2018-12-06 20:53:00	54.0499992	90	1012	2.5999999	3.51999998	2018-12-06 12:27:00
Burlingame	City	San Mateo	california	37.5778999	-122.348	1.75999999	58	Moderate air quality	pm25	2018-12-06 20:55:00	59.5900002	1	1014	2.97000003	0	2018-12-06 12:27:00
Calabasas	City	Los Angeles	california	34.1366997	-118.661003	2.30999994	26	Good air quality	o3	2018-12-06 20:53:00	54.6300011	90	1012	2.5999999	2.07999992	2018-12-06 12:27:00
Calexico	City	Imperial	california	32.6789017	-115.499001	2.77999997	67	Moderate air quality	pm25	2018-12-06 20:29:00	56.4300003	90	1015	2.0999999	0	2018-12-06 12:27:00
California City	City	Kern	california	35.1258011	-117.986	2.1400001	31	Good air quality	o3	2018-12-06 20:27:00	41.7599983	90	1015	5.69999981	1.44000006	2018-12-06 12:27:00
Calimesa	City	Riverside	california	34.0038986	-117.061996	2.43000007	58	Moderate air quality	pm25	2018-12-06 20:38:00	54.1899986	90	1012	5.0999999	1.01999998	2018-12-06 12:27:00
Calipatria	City	Imperial	california	33.1255989	-115.514	2.61999989	58	Moderate air quality	pm25	2018-12-06 20:29:00	56.3899994	90	1015	2.0999999	0	2018-12-06 12:27:00
Calistoga	City	Napa	california	38.5788002	-122.580002	1.65999997	49	Good air quality	pm25	2018-12-06 20:20:00	58.3899994	1	1014	1.32000005	0	2018-12-06 12:27:00
Camarillo	City	Ventura	california	34.2164001	-119.038002	2.28999996	60	Moderate air quality	pm25	2018-12-06 20:50:00	52.7200012	75	1013	4.0999999	0.75999999	2018-12-06 12:27:00
Campbell	City	Santa Clara	california	37.2872009	-121.949997	1.77999997	61	Moderate air quality	pm25	2018-12-06 20:53:00	59.3800011	1	1013	4.0999999	0	2018-12-06 12:27:00
Canyon Lake	City	Riverside	california	33.6850014	-117.273003	2.5	19	Good air quality	pm25	2018-12-06 20:38:00	57.8699989	90	1012	5.0999999	4.57000017	2018-12-06 12:27:00
Capitola	City	Santa Cruz	california	36.9752007	-121.953003	1.84000003	69	Moderate air quality	pm25	2018-12-06 20:54:00	59.7400017	1	1012	1.41999996	0	2018-12-06 12:27:00
Carlsbad	City	San Diego	california	33.1581001	-117.350998	2.5999999	51	Moderate air quality	pm25	2018-12-06 20:37:00	63.7900009	90	1012	1.5	0	2018-12-06 12:27:00
Carmel-by-the-Sea	City	Monterey	california	36.5551987	-121.922997	1.88999999	54	Moderate air quality	pm25	2018-12-06 20:54:00	60.9099998	1	1012	2.06999993	0	2018-12-06 12:27:00
Carpinteria	City	Santa Barbara	california	34.3988991	-119.517998	2.25	29	Good air quality	o3	2018-12-06 20:35:00	56.7999992	90	1011	1.5	0	2018-12-06 12:27:00
Carson	City	Los Angeles	california	33.8316994	-118.281998	2.36999989	47	Good air quality	pm25	2018-12-06 20:53:00	54.3699989	90	1012	2.5999999	3.21000004	2018-12-06 12:27:00
Cathedral City	City	Riverside	california	33.7804985	-116.467003	2.44000006	30	Good air quality	pm25	2018-12-06 20:35:00	53.6199989	90	1016	2.5999999	0	2018-12-06 12:27:00
Ceres	City	Stanislaus	california	37.5948982	-120.958	1.73000002	62	Moderate air quality	pm25	2018-12-06 20:53:00	57.4199982	90	1014	1.5	0	2018-12-06 12:27:00
Cerritos	City	Los Angeles	california	33.8582993	-118.065002	2.36999989	40	Good air quality	pm25	2018-12-06 20:53:00	54.3600006	90	1012	5.0999999	3.21000004	2018-12-06 12:27:00
Chico	City	Butte	california	39.7285004	-121.836998	1.53999996	61	Moderate air quality	pm25	2018-12-06 19:54:00	57.0200005	1	1015	4.0999999	0	2018-12-06 12:27:00
Chino	City	San Bernardino	california	34.0121994	-117.689003	2.38000011	45	Good air quality	pm25	2018-12-06 20:38:00	54.8600006	90	1012	5.0999999	3.41000009	2018-12-06 12:27:00
Chino Hills	City	San Bernardino	california	33.9897995	-117.733002	2.41000009	23	Good air quality	pm25	2018-12-06 20:53:00	54.4300003	90	1012	2.5999999	3.21000004	2018-12-06 12:27:00
Chowchilla	City	Madera	california	37.1230011	-120.260002	1.77999997	55	Moderate air quality	pm25	2018-12-06 20:53:00	54.4799995	90	1014	2.5999999	0	2018-12-06 12:27:00
Chula Vista	City	San Diego	california	32.6400986	-117.084	2.73000002	62	Moderate air quality	pm25	2018-12-06 20:37:00	64.7799988	90	1011	9.30000019	0	2018-12-06 12:27:00
Citrus Heights	City	Sacramento	california	38.7070999	-121.280998	1.63	44	Good air quality	pm25	2018-12-06 20:45:00	56.5	0	1014	4.0999999	0	2018-12-06 12:27:00
Claremont	City	Los Angeles	california	34.0966988	-117.720001	2.38000011	54	Moderate air quality	pm25	2018-12-06 20:53:00	53.9199982	90	1012	2.5999999	3.21000004	2018-12-06 12:27:00
Clayton	City	Contra Costa	california	37.9410019	-121.935997	1.73000002	26	Good air quality	pm25	2018-12-06 20:55:00	59.1100006	1	1014	1.76999998	0	2018-12-06 12:27:00
Clearlake	City	Lake	california	38.9581985	-122.625999	1.65999997	30	Good air quality	pm25	2018-12-06 19:56:00	51.9799995	1	1015	1.57000005	0	2018-12-06 12:27:00
Cloverdale	City	Sonoma	california	38.8055	-123.016998	1.64999998	64	Moderate air quality	pm25	2018-12-06 19:56:00	51.9799995	1	1015	0.620000005	0	2018-12-06 12:27:00
Clovis	City	Fresno	california	36.8251991	-119.703003	1.84000003	44	Good air quality	pm25	2018-12-06 20:35:00	51.6399994	90	1014	1.5	0	2018-12-06 12:27:00
Coachella	City	Riverside	california	33.6803017	-116.174004	2.47000003	32	Good air quality	pm10	2018-12-06 20:35:00	51.7999992	90	1016	2.5999999	0	2018-12-06 12:27:00
Coalinga	City	Fresno	california	36.1397018	-120.360001	1.92999995	34	Good air quality	pm25	2018-12-06 20:18:00	53.0600014	90	1015	2.0999999	0	2018-12-06 12:27:00
Colfax	City	Placer	california	39.1007004	-120.953003	1.63	29	Good air quality	pm25	2018-12-06 20:45:00	56.2299995	1	1013	3.0999999	0	2018-12-06 12:27:00
Colma	Town	San Mateo	california	37.676899	-122.459999	1.75999999	53	Moderate air quality	pm25	2018-12-06 20:53:00	59.2700005	1	1014	2.97000003	0	2018-12-06 12:27:00
Colton	City	San Bernardino	california	34.0738983	-117.314003	2.36999989	52	Moderate air quality	pm25	2018-12-06 20:38:00	54.8800011	90	1012	5.0999999	4.57000017	2018-12-06 12:27:00
Colusa	City	Colusa	california	39.2142982	-122.009003	1.58000004	51	Moderate air quality	pm25	2018-12-06 20:35:00	56.8800011	1	1014	4.0999999	0	2018-12-06 12:27:00
Commerce	City	Los Angeles	california	34.0005989	-118.160004	2.32999992	54	Moderate air quality	pm25	2018-12-06 20:53:00	54.7000008	90	1012	2.5999999	3.21000004	2018-12-06 12:27:00
Compton	City	Los Angeles	california	33.8958015	-118.220001	2.36999989	56	Moderate air quality	pm25	2018-12-06 20:53:00	54.3699989	90	1012	2.5999999	3.21000004	2018-12-06 12:27:00
Concord	City	Contra Costa	california	37.9780006	-122.030998	1.72000003	59	Moderate air quality	pm25	2018-12-06 20:53:00	58.7700005	1	1013	4.0999999	0	2018-12-06 12:27:00
Corcoran	City	Kings	california	36.0979996	-119.559998	1.90999997	69	Moderate air quality	pm25	2018-12-06 20:18:00	50.9900017	90	1015	2.0999999	0.50999999	2018-12-06 12:27:00
Corning	City	Tehama	california	39.9277	-122.179001	1.51999998	40	Good air quality	pm25	2018-12-06 19:54:00	57.2200012	1	1015	4.5999999	0	2018-12-06 12:27:00
Corona	City	Riverside	california	33.8753014	-117.566002	2.41000009	48	Good air quality	pm25	2018-12-06 20:35:00	56.5299988	90	1012	3.0999999	4.42000008	2018-12-06 12:27:00
Coronado	City	San Diego	california	32.6859016	-117.182999	2.73000002	57	Moderate air quality	pm25	2018-12-06 20:37:00	64.3600006	90	1011	9.30000019	0	2018-12-06 12:27:00
Corte Madera	Town	Marin	california	37.925499	-122.527	1.72000003	32	Good air quality	pm25	2018-12-06 20:53:00	59.25	1	1014	2.97000003	0	2018-12-06 12:27:00
Costa Mesa	City	Orange	california	33.641201	-117.918999	2.44000006	44	Good air quality	pm25	2018-12-06 20:51:00	54.9000015	90	1012	3.0999999	3.41000009	2018-12-06 12:27:00
Cotati	City	Sonoma	california	38.3292999	-122.709999	1.66999996	58	Moderate air quality	pm25	2018-12-06 20:53:00	59.1599998	1	1014	1.32000005	0	2018-12-06 12:27:00
Covina	City	Los Angeles	california	34.0900002	-117.889999	2.3499999	53	Moderate air quality	pm25	2018-12-06 20:53:00	53.9199982	90	1012	2.5999999	3.21000004	2018-12-06 12:27:00
Crescent City	City	Del Norte	california	41.7556992	-124.203003	1.29999995	58	Moderate air quality	pm25	2018-12-06 20:56:00	53.9599991	1	1016	2.5999999	0	2018-12-06 12:27:00
Cudahy	City	Los Angeles	california	33.9606018	-118.184998	2.36999989	53	Moderate air quality	pm25	2018-12-06 20:53:00	54.3699989	90	1012	2.5999999	3.21000004	2018-12-06 12:27:00
Culver City	City	Los Angeles	california	34.0210991	-118.396004	2.29999995	58	Moderate air quality	pm25	2018-12-06 20:53:00	54.3699989	90	1012	2.5999999	3.51999998	2018-12-06 12:27:00
Cupertino	City	Santa Clara	california	37.3230019	-122.031998	1.80999994	60	Moderate air quality	pm25	2018-12-06 20:55:00	59.1599998	1	1013	4.0999999	0	2018-12-06 12:27:00
Cypress	City	Orange	california	33.8168983	-118.037003	2.36999989	33	Good air quality	pm25	2018-12-06 20:51:00	54.4500008	90	1012	5.0999999	3.41000009	2018-12-06 12:27:00
Daly City	City	San Mateo	california	37.6879005	-122.470001	1.75999999	59	Moderate air quality	pm25	2018-12-06 20:56:00	59.4099998	1	1014	2.97000003	0	2018-12-06 12:27:00
Dana Point	City	Orange	california	33.4672012	-117.697998	2.50999999	48	Good air quality	pm25	2018-12-06 20:51:00	56.6399994	90	1012	3.0999999	5.4000001	2018-12-06 12:27:00
Danville	Town	Contra Costa	california	37.8216019	-122	1.73000002	54	Moderate air quality	pm25	2018-12-06 20:55:00	59.3199997	1	1014	1.76999998	0	2018-12-06 12:27:00
Davis	City	Yolo	california	38.544899	-121.740997	1.63	54	Moderate air quality	pm25	2018-12-06 20:53:00	58.0099983	0	1014	4.0999999	0	2018-12-06 12:27:00
Del Mar	City	San Diego	california	32.9594994	-117.264999	2.69000006	34	Good air quality	pm25	2018-12-06 20:56:00	63.9000015	75	1011	3.5999999	0	2018-12-06 12:27:00
Del Rey Oaks	City	Monterey	california	36.5932999	-121.834999	1.88999999	29	Good air quality	pm25	2018-12-06 20:54:00	60.9099998	1	1012	2.06999993	0	2018-12-06 12:27:00
Delano	City	Kern	california	35.7687988	-119.247002	1.94000006	68	Moderate air quality	pm25	2018-12-06 20:54:00	51.0400009	90	1013	2.5999999	0.50999999	2018-12-06 12:27:00
Desert Hot Springs	City	Riverside	california	33.9611015	-116.501999	2.5	54	Moderate air quality	pm25	2018-12-06 20:59:09	39.7599983	92	907.820007	1.57000005	7.55249977	2018-12-06 12:27:00
Diamond Bar	City	Los Angeles	california	34.0285988	-117.809998	2.3499999	59	Moderate air quality	pm25	2018-12-06 20:53:00	54.4300003	90	1012	2.5999999	3.21000004	2018-12-06 12:27:00
Dinuba	City	Tulare	california	36.5433006	-119.387001	1.87	55	Moderate air quality	pm25	2018-12-06 20:35:00	51.3899994	90	1014	1.5	0.50999999	2018-12-06 12:27:00
Dixon	City	Solano	california	38.4454994	-121.822998	1.64999998	47	Good air quality	pm25	2018-12-06 20:45:00	57.9000015	0	1014	4.0999999	0	2018-12-06 12:27:00
Dorris	City	Siskiyou	california	41.9673996	-121.917999	1.36000001	40	Good air quality	pm25	2018-12-06 19:53:00	34.4099998	1	1017	4.5999999	0	2018-12-06 12:27:00
Dos Palos	City	Merced	california	36.9860992	-120.626999	1.80999994	54	Moderate air quality	pm25	2018-12-06 20:53:00	56.9700012	90	1014	1.5	0	2018-12-06 12:27:00
Downey	City	Los Angeles	california	33.9401016	-118.133003	2.36999989	55	Moderate air quality	pm25	2018-12-06 20:53:00	54.3600006	90	1012	3.0999999	3.49000001	2018-12-06 12:27:00
Duarte	City	Los Angeles	california	34.1394997	-117.976997	2.3499999	55	Moderate air quality	pm25	2018-12-06 20:53:00	54.1199989	90	1012	2.5999999	3.21000004	2018-12-06 12:27:00
Dublin	City	Alameda	california	37.7022018	-121.935997	1.75999999	54	Moderate air quality	pm25	2018-12-06 20:53:00	59.1100006	1	1013	4.0999999	0	2018-12-06 12:27:00
Dunsmuir	City	Siskiyou	california	41.2081985	-122.272003	1.46000004	57	Moderate air quality	pm25	2018-12-06 20:56:00	40.5	1	1015	2.0999999	0	2018-12-06 12:27:00
East Palo Alto	City	San Mateo	california	37.4687996	-122.140999	1.80999994	71	Moderate air quality	pm25	2018-12-06 20:53:00	59.3800011	1	1013	4.0999999	0	2018-12-06 12:27:00
Eastvale	City	Riverside	california	33.9524994	-117.584999	2.41000009	29	Good air quality	pm25	2018-12-06 20:47:00	55.5800018	90	1012	3.0999999	4.23000002	2018-12-06 12:27:00
El Cajon	City	San Diego	california	32.7947998	-116.962997	2.72000003	54	Moderate air quality	pm25	2018-12-06 20:37:00	63.9700012	90	1011	9.30000019	0	2018-12-06 12:27:00
El Centro	City	Imperial	california	32.7919998	-115.563004	2.70000005	40	Good air quality	pm25	2018-12-06 20:29:00	56.4099998	90	1015	2.0999999	0	2018-12-06 12:27:00
El Cerrito	City	Contra Costa	california	37.9160995	-122.310997	1.71000004	57	Moderate air quality	pm25	2018-12-06 20:53:00	58.9500008	1	1013	4.0999999	0	2018-12-06 12:27:00
El Monte	City	Los Angeles	california	34.0685997	-118.028	2.32999992	60	Moderate air quality	pm25	2018-12-06 20:53:00	54.0999985	90	1012	2.5999999	3.49000001	2018-12-06 12:27:00
El Segundo	City	Los Angeles	california	33.9192009	-118.416	2.36999989	52	Moderate air quality	pm25	2018-12-06 20:53:00	54.3699989	90	1012	2.5999999	3.51999998	2018-12-06 12:27:00
Elk Grove	City	Sacramento	california	38.4087982	-121.372002	1.64999998	52	Moderate air quality	pm25	2018-12-06 20:55:00	57.7599983	0	1014	4.0999999	0	2018-12-06 12:27:00
Emeryville	City	Alameda	california	37.8312988	-122.285004	1.71000004	51	Moderate air quality	pm25	2018-12-06 20:56:00	59.4000015	1	1014	2.97000003	0	2018-12-06 12:27:00
Encinitas	City	San Diego	california	33.0369987	-117.292	2.5999999	46	Good air quality	pm25	2018-12-06 20:37:00	63.9900017	90	1011	9.30000019	0	2018-12-06 12:27:00
Escalon	City	San Joaquin	california	37.7974014	-120.997002	1.71000004	64	Moderate air quality	pm25	2018-12-06 20:55:00	57.9000015	1	1014	3.0999999	0	2018-12-06 12:27:00
Escondido	City	San Diego	california	33.1192017	-117.085999	2.61999989	52	Moderate air quality	pm25	2018-12-06 20:56:00	64.0599976	90	1011	4.0999999	0	2018-12-06 12:27:00
Etna	City	Siskiyou	california	41.4567986	-122.894997	1.44000006	45	Good air quality	pm25	2018-12-06 20:56:00	40.5499992	1	1015	2.0999999	0	2018-12-06 12:27:00
Eureka	City	Humboldt	california	40.8021011	-124.164001	1.44000006	46	Good air quality	pm25	2018-12-06 20:35:00	56.3400002	1	1015	1.5	0	2018-12-06 12:27:00
Exeter	City	Tulare	california	36.2961006	-119.141998	1.89999998	56	Moderate air quality	pm25	2018-12-06 20:18:00	50.7700005	90	1015	2.0999999	0.50999999	2018-12-06 12:27:00
Fairfax	Town	Marin	california	37.9870987	-122.588997	1.72000003	24	Good air quality	pm10	2018-12-06 20:40:00	59.2700005	1	1014	2.97000003	0	2018-12-06 12:27:00
Fairfield	City	Solano	california	38.2494011	-122.040001	1.69000006	43	Good air quality	pm25	2018-12-06 20:55:00	58.7799988	1	1014	3.42000008	0	2018-12-06 12:27:00
Farmersville	City	Tulare	california	36.297699	-119.207001	1.89999998	57	Moderate air quality	pm25	2018-12-06 20:56:00	51.3899994	90	1014	2.5999999	0.50999999	2018-12-06 12:27:00
Ferndale	City	Humboldt	california	40.5761986	-124.264	1.45000005	23	Good air quality	o3	2018-12-06 20:35:00	56.4399986	1	1015	1.5	0	2018-12-06 12:27:00
Fillmore	City	Ventura	california	34.3992004	-118.917999	2.25999999	28	Good air quality	o3	2018-12-06 20:53:00	52.6100006	75	1013	4.0999999	1.26999998	2018-12-06 12:27:00
Firebaugh	City	Fresno	california	36.858799	-120.456001	1.80999994	69	Moderate air quality	pm25	2018-12-06 20:53:00	54.5	90	1014	2.5999999	0	2018-12-06 12:27:00
Folsom	City	Sacramento	california	38.6780014	-121.176003	1.63	61	Moderate air quality	pm25	2018-12-06 20:53:00	56.2599983	0	1014	4.0999999	0	2018-12-06 12:27:00
Fontana	City	San Bernardino	california	34.0922012	-117.434998	2.36999989	54	Moderate air quality	pm25	2018-12-06 20:35:00	55.5400009	90	1012	3.0999999	4.57000017	2018-12-06 12:27:00
Fort Bragg	City	Mendocino	california	39.4457016	-123.805	1.59000003	53	Moderate air quality	pm25	2018-12-06 19:56:00	51.9799995	1	1015	1.32000005	0	2018-12-06 12:27:00
Fort Jones	City	Siskiyou	california	41.6076012	-122.839996	1.38999999	46	Good air quality	pm25	2018-12-06 20:56:00	40.1899986	1	1015	2.0999999	0	2018-12-06 12:27:00
Fortuna	City	Humboldt	california	40.5982018	-124.156998	1.46000004	37	Good air quality	pm25	2018-12-06 20:35:00	56.4399986	1	1015	1.5	0	2018-12-06 12:27:00
Foster City	City	San Mateo	california	37.5584984	-122.271004	1.75999999	63	Moderate air quality	pm25	2018-12-06 20:55:00	59.5200005	1	1014	2.97000003	0	2018-12-06 12:27:00
Fountain Valley	City	Orange	california	33.7089996	-117.954002	2.44000006	47	Good air quality	pm25	2018-12-06 20:51:00	54.5200005	90	1012	3.0999999	3.74000001	2018-12-06 12:27:00
Fowler	City	Fresno	california	36.6305008	-119.678001	1.86000001	49	Good air quality	pm25	2018-12-06 20:35:00	51.6399994	90	1014	1.5	0	2018-12-06 12:27:00
Fremont	City	Alameda	california	37.5483017	-121.988998	1.75999999	55	Moderate air quality	pm25	2018-12-06 20:56:00	59.6800003	1	1014	1.5	0	2018-12-06 12:27:00
Fresno	City	Fresno	california	36.7378006	-119.787003	1.85000002	68	Moderate air quality	pm25	2018-12-06 20:56:00	52.75	90	1015	2.22000003	0	2018-12-06 12:27:00
Fullerton	City	Orange	california	33.8703995	-117.924004	2.38000011	42	Good air quality	pm25	2018-12-06 20:53:00	54.1399994	90	1012	5.0999999	3.49000001	2018-12-06 12:27:00
Galt	City	Sacramento	california	38.2546005	-121.300003	1.64999998	55	Moderate air quality	pm25	2018-12-06 20:55:00	57.7200012	0	1014	4.0999999	0	2018-12-06 12:27:00
Garden Grove	City	Orange	california	33.7742996	-117.938004	2.38000011	40	Good air quality	pm25	2018-12-06 20:53:00	54.1399994	90	1012	5.0999999	3.21000004	2018-12-06 12:27:00
Gardena	City	Los Angeles	california	33.8883018	-118.308998	2.36999989	53	Moderate air quality	pm25	2018-12-06 20:53:00	54.3699989	90	1012	2.5999999	3.21000004	2018-12-06 12:27:00
Gilroy	City	Santa Clara	california	37.0057983	-121.568001	1.83000004	63	Moderate air quality	pm25	2018-12-06 20:56:00	60.1899986	1	1013	1.41999996	0	2018-12-06 12:27:00
Glendale	City	Los Angeles	california	34.1425018	-118.254997	2.29999995	58	Moderate air quality	pm25	2018-12-06 20:53:00	54.1199989	90	1012	2.5999999	3.49000001	2018-12-06 12:27:00
Glendora	City	Los Angeles	california	34.1361008	-117.864998	2.3499999	58	Moderate air quality	pm25	2018-12-06 20:53:00	53.9199982	90	1012	2.5999999	3.49000001	2018-12-06 12:27:00
Goleta	City	Santa Barbara	california	34.4357986	-119.828003	2.22000003	47	Good air quality	pm25	2018-12-06 20:35:00	57.7799988	90	1011	1.5	0	2018-12-06 12:27:00
Gonzales	City	Monterey	california	36.5065994	-121.444	1.88999999	60	Moderate air quality	pm25	2018-12-06 20:55:00	60.9300003	1	1012	1.57000005	0	2018-12-06 12:27:00
Grand Terrace	City	San Bernardino	california	34.0339012	-117.314003	2.36999989	51	Moderate air quality	pm25	2018-12-06 20:38:00	54.8800011	90	1012	5.0999999	4.57000017	2018-12-06 12:27:00
Grass Valley	City	Nevada	california	39.219101	-121.060997	1.61000001	55	Moderate air quality	pm25	2018-12-06 20:53:00	55.9599991	1	1013	3.0999999	0	2018-12-06 12:27:00
Greenfield	City	Monterey	california	36.3208008	-121.244003	1.92999995	57	Moderate air quality	pm25	2018-12-06 20:15:00	61.2900009	1	1013	1.57000005	0	2018-12-06 12:27:00
Gridley	City	Butte	california	39.3638	-121.694	1.55999994	38	Good air quality	pm25	2018-12-06 20:53:00	56.4099998	1	1014	5.0999999	0	2018-12-06 12:27:00
Grover Beach	City	San Luis Obispo	california	35.1216011	-120.621002	2.07999992	36	Good air quality	pm25	2018-12-06 20:16:00	58.2400017	90	1011	2.5999999	0	2018-12-06 12:27:00
Guadalupe	City	Santa Barbara	california	34.9715996	-120.571999	2.11999989	21	Good air quality	o3	2018-12-06 20:35:00	58.75	90	1011	2.5999999	0	2018-12-06 12:27:00
Gustine	City	Merced	california	37.2577019	-120.999001	1.75999999	53	Moderate air quality	pm25	2018-12-06 20:55:00	58.5499992	1	1014	3.0999999	0	2018-12-06 12:27:00
Half Moon Bay	City	San Mateo	california	37.4636002	-122.429001	1.79999995	40	Good air quality	pm25	2018-12-06 20:56:00	59.5800018	1	1014	1.5	0	2018-12-06 12:27:00
Hanford	City	Kings	california	36.3274002	-119.646004	1.88999999	52	Moderate air quality	pm25	2018-12-06 20:56:00	51.8899994	90	1014	2.5999999	0.50999999	2018-12-06 12:27:00
Hawaiian Gardens	City	Los Angeles	california	33.8314018	-118.072998	2.36999989	51	Moderate air quality	pm25	2018-12-06 20:53:00	54.3600006	90	1012	5.0999999	3.49000001	2018-12-06 12:27:00
Hawthorne	City	Los Angeles	california	33.9164009	-118.352997	2.36999989	55	Moderate air quality	pm25	2018-12-06 20:53:00	54.3699989	90	1012	2.5999999	3.21000004	2018-12-06 12:27:00
Hayward	City	Alameda	california	37.6688004	-122.081001	1.74000001	58	Moderate air quality	pm25	2018-12-06 20:56:00	59.5	1	1013	4.0999999	0	2018-12-06 12:27:00
Healdsburg	City	Sonoma	california	38.6105003	-122.869003	1.64999998	58	Moderate air quality	pm25	2018-12-06 20:55:00	57.1800003	1	1014	1.32000005	0	2018-12-06 12:27:00
Hemet	City	Riverside	california	33.7475014	-116.972	2.55999994	56	Moderate air quality	pm25	2018-12-06 20:38:00	57.6500015	90	1012	3.5999999	1.01999998	2018-12-06 12:27:00
Hercules	City	Contra Costa	california	38.0171013	-122.289001	1.67999995	28	Good air quality	pm25	2018-12-06 20:55:00	59.4099998	1	1014	2.97000003	0	2018-12-06 12:27:00
Hermosa Beach	City	Los Angeles	california	33.8622017	-118.400002	2.36999989	53	Moderate air quality	pm25	2018-12-06 20:53:00	54.2999992	90	1012	2.5999999	3.51999998	2018-12-06 12:27:00
Hesperia	City	San Bernardino	california	34.4263992	-117.301003	2.36999989	27	Good air quality	pm25	2018-12-06 20:50:00	52.5200005	90	1015	6.69999981	1.01999998	2018-12-06 12:27:00
Hidden Hills	City	Los Angeles	california	34.1603012	-118.652	2.30999994	27	Good air quality	o3	2018-12-06 20:53:00	54.6300011	90	1012	2.5999999	2.07999992	2018-12-06 12:27:00
Highland	City	San Bernardino	california	34.1282997	-117.209	2.43000007	49	Good air quality	pm25	2018-12-06 20:38:00	54.2099991	90	1012	5.0999999	1.01999998	2018-12-06 12:27:00
Hillsborough	Town	San Mateo	california	37.5741005	-122.378998	1.75999999	33	Good air quality	pm25	2018-12-06 20:56:00	59.5200005	1	1014	1.5	0	2018-12-06 12:27:00
Hollister	City	San Benito	california	36.8525009	-121.402	1.84000003	61	Moderate air quality	pm25	2018-12-06 20:55:00	60.9399986	1	1013	1.57000005	0	2018-12-06 12:27:00
Holtville	City	Imperial	california	32.8111992	-115.379997	2.71000004	70	Moderate air quality	pm25	2018-12-06 20:56:00	56.3899994	90	1016	2.5999999	0	2018-12-06 12:27:00
Hughson	City	Stanislaus	california	37.6026993	-120.865997	1.73000002	48	Good air quality	pm25	2018-12-06 20:53:00	57.7599983	1	1014	3.0999999	0	2018-12-06 12:27:00
Huntington Beach	City	Orange	california	33.6595001	-117.999001	2.44000006	45	Good air quality	pm25	2018-12-06 20:51:00	54.7900009	90	1012	5.0999999	3.74000001	2018-12-06 12:27:00
Huntington Park	City	Los Angeles	california	33.9817009	-118.224998	2.36999989	57	Moderate air quality	pm25	2018-12-06 20:53:00	54.3600006	90	1012	3.0999999	3.49000001	2018-12-06 12:27:00
Huron	City	Fresno	california	36.2027016	-120.102997	1.90999997	34	Good air quality	pm25	2018-12-06 20:56:00	51.9099998	90	1014	2.5999999	0	2018-12-06 12:27:00
Imperial	City	Imperial	california	32.847599	-115.569	2.70000005	61	Moderate air quality	pm25	2018-12-06 20:56:00	56.3499985	90	1016	2.5999999	0	2018-12-06 12:27:00
Imperial Beach	City	San Diego	california	32.5839005	-117.112999	2.73000002	68	Moderate air quality	pm25	2018-12-06 20:56:00	64.9400024	75	1011	7.19999981	0	2018-12-06 12:27:00
Indian Wells	City	Riverside	california	33.7176018	-116.341003	2.55999994	28	Good air quality	pm25	2018-12-06 20:56:00	51.8899994	90	1017	4.0999999	0	2018-12-06 12:27:00
Indio	City	Riverside	california	33.7206001	-116.216003	2.47000003	52	Moderate air quality	pm25	2018-12-06 20:35:00	51.7999992	90	1016	2.5999999	0	2018-12-06 12:27:00
Industry	City	Los Angeles	california	34.0196991	-117.959	2.3499999	54	Moderate air quality	pm25	2018-12-06 20:53:00	53.9099998	90	1012	3.0999999	3.49000001	2018-12-06 12:27:00
Inglewood	City	Los Angeles	california	33.9617004	-118.352997	2.36999989	59	Moderate air quality	pm25	2018-12-06 20:53:00	54.3699989	90	1012	3.0999999	3.49000001	2018-12-06 12:27:00
Ione	City	Amador	california	38.3526993	-120.932999	1.65999997	62	Moderate air quality	pm25	2018-12-06 20:50:00	57.0900002	1	1013	3.5999999	0	2018-12-06 12:27:00
Irvine	City	Orange	california	33.6846008	-117.827003	2.44000006	39	Good air quality	pm25	2018-12-06 20:51:00	55.3100014	90	1012	3.0999999	3.74000001	2018-12-06 12:27:00
Irwindale	City	Los Angeles	california	34.1069984	-117.934998	2.3499999	56	Moderate air quality	pm25	2018-12-06 20:53:00	53.9199982	90	1012	2.5999999	3.49000001	2018-12-06 12:27:00
Isleton	City	Sacramento	california	38.1618996	-121.612	1.66999996	29	Good air quality	pm25	2018-12-06 20:55:00	57.9900017	1	1014	4.5999999	0	2018-12-06 12:27:00
Jackson	City	Amador	california	38.3488007	-120.774002	1.65999997	51	Moderate air quality	pm25	2018-12-06 20:45:00	57.3100014	1	1013	3.5999999	0	2018-12-06 12:27:00
Jurupa Valley	City	Riverside	california	33.9972	-117.485001	2.41000009	57	Moderate air quality	pm25	2018-12-06 20:35:00	55.6199989	90	1012	3.0999999	5.4000001	2018-12-06 12:27:00
Kerman	City	Fresno	california	36.7235985	-120.059998	1.83000004	56	Moderate air quality	pm25	2018-12-06 20:56:00	52.8800011	90	1014	2.5999999	0	2018-12-06 12:27:00
King City	City	Monterey	california	36.2126999	-121.125999	1.96000004	61	Moderate air quality	pm25	2018-12-06 19:53:00	62.0600014	1	1013	6.19999981	0	2018-12-06 12:27:00
Kingsburg	City	Fresno	california	36.5138016	-119.554001	1.86000001	54	Moderate air quality	pm25	2018-12-06 20:56:00	51.8899994	90	1015	1.66999996	0.50999999	2018-12-06 12:27:00
La CaÃ±ada Flintridge	City	Los Angeles	california	34.2067986	-118.199997	2.32999992	54	Moderate air quality	pm25	2018-12-06 20:53:00	54.1199989	90	1012	2.5999999	3.49000001	2018-12-06 12:27:00
La Habra	City	Orange	california	33.9319	-117.945999	2.38000011	45	Good air quality	pm25	2018-12-06 20:53:00	54.4099998	90	1012	3.0999999	3.49000001	2018-12-06 12:27:00
La Habra Heights	City	Los Angeles	california	33.9608002	-117.950996	2.38000011	29	Good air quality	pm25	2018-12-06 20:53:00	54.4300003	90	1012	3.0999999	3.49000001	2018-12-06 12:27:00
La Mesa	City	San Diego	california	32.7677994	-117.023003	2.68000007	55	Moderate air quality	pm25	2018-12-06 20:56:00	63.9700012	90	1011	4.0999999	0	2018-12-06 12:27:00
La Mirada	City	Los Angeles	california	33.9171982	-118.012001	2.36999989	47	Good air quality	pm25	2018-12-06 20:53:00	54.1399994	90	1012	3.0999999	3.49000001	2018-12-06 12:27:00
La Palma	City	Orange	california	33.8462982	-118.045998	2.36999989	34	Good air quality	pm25	2018-12-06 20:53:00	54.3600006	90	1012	5.0999999	3.49000001	2018-12-06 12:27:00
La Puente	City	Los Angeles	california	34.0200005	-117.949997	2.3499999	51	Moderate air quality	pm25	2018-12-06 20:53:00	53.9099998	90	1012	3.0999999	3.49000001	2018-12-06 12:27:00
La Quinta	City	Riverside	california	33.6633987	-116.309998	2.55999994	26	Good air quality	pm25	2018-12-06 20:35:00	51.7999992	90	1016	2.5999999	0	2018-12-06 12:27:00
La Verne	City	Los Angeles	california	34.1007996	-117.767998	2.3499999	54	Moderate air quality	pm25	2018-12-06 20:53:00	53.9199982	90	1012	2.5999999	3.49000001	2018-12-06 12:27:00
Lafayette	City	Contra Costa	california	37.8857994	-122.117996	1.72000003	42	Good air quality	pm25	2018-12-06 20:56:00	59.4700012	1	1014	2.97000003	0	2018-12-06 12:27:00
Laguna Beach	City	Orange	california	33.5427017	-117.785004	2.44000006	49	Good air quality	pm25	2018-12-06 20:52:00	56.0099983	90	1012	3.0999999	4.51999998	2018-12-06 12:27:00
Laguna Hills	City	Orange	california	33.5915985	-117.698997	2.48000002	33	Good air quality	o3	2018-12-06 20:52:00	56.0099983	90	1012	3.0999999	4.51999998	2018-12-06 12:27:00
Laguna Niguel	City	Orange	california	33.5237007	-117.714996	2.48000002	48	Good air quality	pm25	2018-12-06 20:52:00	56.0800018	90	1011	3.0999999	5.4000001	2018-12-06 12:27:00
Laguna Woods	City	Orange	california	33.610199	-117.724998	2.48000002	33	Good air quality	o3	2018-12-06 20:52:00	56.0099983	90	1012	3.0999999	4.23000002	2018-12-06 12:27:00
Lake Elsinore	City	Riverside	california	33.6680984	-117.327003	2.5	50	Good air quality	pm25	2018-12-06 20:53:00	57.7400017	90	1012	5.0999999	4.57000017	2018-12-06 12:27:00
Lake Forest	City	Orange	california	33.6469002	-117.685997	2.48000002	34	Good air quality	o3	2018-12-06 20:52:00	56.3899994	90	1012	3.0999999	4.23000002	2018-12-06 12:27:00
Lakeport	City	Lake	california	39.0429001	-122.916	1.63999999	58	Moderate air quality	pm25	2018-12-06 19:56:00	51.9799995	1	1015	0.620000005	0	2018-12-06 12:27:00
Lakewood	City	Los Angeles	california	33.8535995	-118.134003	2.36999989	43	Good air quality	pm25	2018-12-06 20:53:00	54.3600006	90	1012	3.0999999	3.49000001	2018-12-06 12:27:00
Lancaster	City	Los Angeles	california	34.6867981	-118.153999	2.25999999	30	Good air quality	pm25	2018-12-06 20:53:00	43.4799995	90	1015	3.5999999	1.86000001	2018-12-06 12:27:00
Larkspur	City	Marin	california	37.9341011	-122.535004	1.72000003	25	Good air quality	pm10	2018-12-06 20:53:00	59.25	1	1014	2.97000003	0	2018-12-06 12:27:00
Lathrop	City	San Joaquin	california	37.8227005	-121.277	1.71000004	47	Good air quality	pm25	2018-12-06 20:55:00	58.5900002	1	1014	4.5999999	0	2018-12-06 12:27:00
Lawndale	City	Los Angeles	california	33.8871994	-118.352997	2.36999989	54	Moderate air quality	pm25	2018-12-06 20:53:00	54.3699989	90	1012	3.0999999	3.49000001	2018-12-06 12:27:00
Lemon Grove	City	San Diego	california	32.7425003	-117.030998	2.73000002	57	Moderate air quality	pm25	2018-12-06 20:56:00	64.5299988	90	1011	4.0999999	0	2018-12-06 12:27:00
Lemoore	City	Kings	california	36.3008003	-119.782997	1.88	44	Good air quality	pm25	2018-12-06 20:56:00	52.2099991	90	1014	2.5999999	0	2018-12-06 12:27:00
Lincoln	City	Placer	california	38.8916016	-121.292999	1.60000002	56	Moderate air quality	pm25	2018-12-06 20:53:00	56.3199997	1	1014	5.0999999	0	2018-12-06 12:27:00
Lindsay	City	Tulare	california	36.2029991	-119.087997	1.91999996	56	Moderate air quality	pm25	2018-12-06 20:55:00	51.2799988	90	1013	2.0999999	0.769999981	2018-12-06 12:27:00
Live Oak	City	Sutter	california	39.2756996	-121.660004	1.55999994	53	Moderate air quality	pm25	2018-12-06 20:53:00	57.4199982	1	1014	5.0999999	0	2018-12-06 12:27:00
Livermore	City	Alameda	california	37.6819	-121.767998	1.75999999	60	Moderate air quality	pm25	2018-12-06 20:56:00	59.4500008	1	1013	4.0999999	0	2018-12-06 12:27:00
Livingston	City	Merced	california	37.3869019	-120.723999	1.75999999	55	Moderate air quality	pm25	2018-12-06 20:53:00	57.1800003	75	1014	1.87	0	2018-12-06 12:27:00
Lodi	City	San Joaquin	california	38.1341019	-121.272003	1.66999996	60	Moderate air quality	pm25	2018-12-06 20:55:00	57.9000015	1	1014	4.5999999	0	2018-12-06 12:27:00
Loma Linda	City	San Bernardino	california	34.0483017	-117.261002	2.36999989	52	Moderate air quality	pm25	2018-12-06 20:38:00	54.8800011	90	1012	5.0999999	4.57000017	2018-12-06 12:27:00
Lomita	City	Los Angeles	california	33.7921982	-118.315002	2.36999989	20	Good air quality	o3	2018-12-06 20:53:00	54.3699989	90	1012	3.0999999	3.49000001	2018-12-06 12:27:00
Lompoc	City	Santa Barbara	california	34.6390991	-120.458	2.18000007	44	Good air quality	pm25	2018-12-06 20:35:00	59	90	1011	1.5	0	2018-12-06 12:27:00
Long Beach	City	Los Angeles	california	33.7700996	-118.194	2.36999989	57	Moderate air quality	pm25	2018-12-06 20:53:00	54.3600006	90	1012	3.0999999	3.49000001	2018-12-06 12:27:00
Loomis	Town	Placer	california	38.8213005	-121.193001	1.62	55	Moderate air quality	pm25	2018-12-06 20:53:00	56.2599983	0	1014	4.0999999	0	2018-12-06 12:27:00
Los Alamitos	City	Orange	california	33.8031998	-118.071999	2.36999989	43	Good air quality	pm25	2018-12-06 20:53:00	54.3600006	90	1012	5.0999999	3.49000001	2018-12-06 12:27:00
Los Altos	City	Santa Clara	california	37.3852005	-122.113998	1.80999994	60	Moderate air quality	pm25	2018-12-06 20:56:00	59.6300011	1	1014	1.5	0	2018-12-06 12:27:00
Los Altos Hills	Town	Santa Clara	california	37.3796997	-122.137001	1.80999994	47	Good air quality	pm25	2018-12-06 20:56:00	59.6300011	1	1014	1.5	0	2018-12-06 12:27:00
Los Angeles	City	Los Angeles	california	34.0522003	-118.244003	2.32999992	65	Moderate air quality	pm25	2018-12-06 20:53:00	54.1199989	90	1012	3.0999999	3.49000001	2018-12-06 12:27:00
Los Banos	City	Merced	california	37.0583	-120.849998	1.78999996	54	Moderate air quality	pm25	2018-12-06 20:55:00	58.1199989	90	1014	1.5	0	2018-12-06 12:27:00
Los Gatos	Town	Santa Clara	california	37.2358017	-121.961998	1.84000003	52	Moderate air quality	pm25	2018-12-06 20:56:00	59.4099998	1	1014	1.5	0	2018-12-06 12:27:00
Loyalton	City	Sierra	california	39.6763	-120.240997	1.64999998	41	Good air quality	pm25	2018-12-06 20:55:00	30.3299999	90	1017	4.5999999	0	2018-12-06 12:27:00
Lynwood	City	Los Angeles	california	33.9303017	-118.210999	2.36999989	57	Moderate air quality	pm25	2018-12-06 20:53:00	54.3600006	90	1012	3.0999999	3.49000001	2018-12-06 12:27:00
Madera	City	Madera	california	36.9612999	-120.060997	1.79999995	71	Moderate air quality	pm25	2018-12-06 20:55:00	54.3899994	90	1014	2.5999999	0	2018-12-06 12:27:00
Malibu	City	Los Angeles	california	34.0259018	-118.779999	2.31999993	28	Good air quality	o3	2018-12-06 20:57:00	54.1899986	75	1011	7.69999981	2.83999991	2018-12-06 12:27:00
Mammoth Lakes	Town	Mono	california	37.6484985	-118.972	2	58	Moderate air quality	pm25	2018-12-06 20:55:00	30.9200001	90	1016	1.32000005	0	2018-12-06 12:27:00
Manhattan Beach	City	Los Angeles	california	33.8847008	-118.411003	2.36999989	52	Moderate air quality	pm25	2018-12-06 20:53:00	54.2999992	90	1012	3.0999999	3.8499999	2018-12-06 12:27:00
Manteca	City	San Joaquin	california	37.7974014	-121.216003	1.71000004	63	Moderate air quality	pm25	2018-12-06 20:55:00	58.5900002	1	1014	3.0999999	0	2018-12-06 12:27:00
Maricopa	City	Kern	california	35.0588989	-119.401001	2.05999994	51	Moderate air quality	pm25	2018-12-06 20:54:00	53.0600014	90	1013	2.5999999	0	2018-12-06 12:27:00
Marina	City	Monterey	california	36.6843987	-121.802002	1.88999999	54	Moderate air quality	pm25	2018-12-06 20:55:00	60.9399986	1	1012	2.06999993	0	2018-12-06 12:27:00
Martinez	City	Contra Costa	california	38.0194016	-122.134003	1.69000006	57	Moderate air quality	pm25	2018-12-06 21:00:00	59.5600014	1	1014	2.97000003	0	2018-12-06 12:27:00
Marysville	City	Yuba	california	39.1456985	-121.591003	1.58000004	61	Moderate air quality	pm25	2018-12-06 20:53:00	57.4000015	1	1014	5.0999999	0	2018-12-06 12:27:00
Maywood	City	Los Angeles	california	33.9866982	-118.184998	2.36999989	56	Moderate air quality	pm25	2018-12-06 20:53:00	54.3600006	90	1012	3.0999999	3.49000001	2018-12-06 12:27:00
McFarland	City	Kern	california	35.6780014	-119.228996	1.98000002	118	Unhealthy for sensitive groups air quality	pm25	2018-12-06 20:55:00	50.5900002	90	1013	2.0999999	0.769999981	2018-12-06 12:27:00
Mendota	City	Fresno	california	36.7536011	-120.382004	1.80999994	59	Moderate air quality	pm25	2018-12-06 20:56:00	53.5099983	90	1014	2.5999999	0	2018-12-06 12:27:00
Menifee	City	Riverside	california	33.6971016	-117.184998	2.49000001	22	Good air quality	o3	2018-12-06 20:53:00	58.2799988	90	1012	3.5999999	6.61000013	2018-12-06 12:27:00
Menlo Park	City	San Mateo	california	37.4529991	-122.181999	1.80999994	74	Moderate air quality	pm25	2018-12-06 20:56:00	59.7700005	1	1014	1.5	0	2018-12-06 12:27:00
Merced	City	Merced	california	37.3022003	-120.483002	1.75999999	60	Moderate air quality	pm25	2018-12-06 20:53:00	57.2000008	90	1014	1.5	0	2018-12-06 12:27:00
Mill Valley	City	Marin	california	37.9059982	-122.544998	1.72000003	42	Good air quality	pm25	2018-12-06 20:55:00	59.4000015	1	1014	1.5	0	2018-12-06 12:27:00
Millbrae	City	San Mateo	california	37.5984993	-122.387001	1.75999999	58	Moderate air quality	pm25	2018-12-06 20:56:00	59.5400009	1	1014	1.5	0	2018-12-06 12:27:00
Milpitas	City	Santa Clara	california	37.4323006	-121.900002	1.77999997	61	Moderate air quality	pm25	2018-12-06 20:56:00	59.7700005	1	1014	1.5	0	2018-12-06 12:27:00
Mission Viejo	City	Orange	california	33.5969009	-117.657997	2.48000002	36	Good air quality	pm25	2018-12-06 20:52:00	56.5499992	90	1011	3.0999999	5.4000001	2018-12-06 12:27:00
Modesto	City	Stanislaus	california	37.6390991	-120.997002	1.73000002	70	Moderate air quality	pm25	2018-12-06 20:55:00	57.9700012	1	1014	3.0999999	0	2018-12-06 12:27:00
Monrovia	City	Los Angeles	california	34.1442986	-118.001999	2.32999992	56	Moderate air quality	pm25	2018-12-06 20:53:00	54.1199989	90	1012	2.5999999	3.49000001	2018-12-06 12:27:00
Montague	City	Siskiyou	california	41.728199	-122.528	1.38	45	Good air quality	pm25	2018-12-06 20:56:00	40.3199997	1	1015	2.0999999	0	2018-12-06 12:27:00
Montclair	City	San Bernardino	california	34.0774994	-117.690002	2.38000011	49	Good air quality	pm25	2018-12-06 20:53:00	54.4300003	90	1012	2.5999999	3.49000001	2018-12-06 12:27:00
Monte Sereno	City	Santa Clara	california	37.2363014	-121.991997	1.84000003	44	Good air quality	pm25	2018-12-06 20:56:00	59.7400017	1	1014	1.5	0	2018-12-06 12:27:00
Montebello	City	Los Angeles	california	34.0164986	-118.113998	2.32999992	43	Good air quality	pm25	2018-12-06 20:53:00	54.0999985	90	1012	3.0999999	3.49000001	2018-12-06 12:27:00
Monterey	City	Monterey	california	36.6002007	-121.894997	1.88999999	61	Moderate air quality	pm25	2018-12-06 20:54:00	60.9099998	1	1012	2.06999993	0	2018-12-06 12:27:00
Monterey Park	City	Los Angeles	california	34.0625	-118.123001	2.32999992	54	Moderate air quality	pm25	2018-12-06 20:53:00	54.1199989	90	1012	3.0999999	3.49000001	2018-12-06 12:27:00
Moorpark	City	Ventura	california	34.2855988	-118.882004	2.25999999	47	Good air quality	pm25	2018-12-06 20:57:00	53.6399994	75	1011	7.69999981	1.59000003	2018-12-06 12:27:00
Moraga	Town	Contra Costa	california	37.8348999	-122.129997	1.72000003	25	Good air quality	pm10	2018-12-06 20:56:00	59.5800018	1	1014	2.97000003	0	2018-12-06 12:27:00
Moreno Valley	City	Riverside	california	33.9425011	-117.230003	2.43000007	52	Moderate air quality	pm25	2018-12-06 20:38:00	55.5600014	90	1012	5.0999999	4.57000017	2018-12-06 12:27:00
Morgan Hill	City	Santa Clara	california	37.1305008	-121.653999	1.83000004	61	Moderate air quality	pm25	2018-12-06 20:56:00	60.5999985	20	1013	2.5999999	0	2018-12-06 12:27:00
Morro Bay	City	San Luis Obispo	california	35.3658981	-120.849998	2.04999995	28	Good air quality	o3	2018-12-06 21:01:00	58.7799988	75	1013	7.69999981	0	2018-12-06 12:27:00
Mount Shasta	City	Siskiyou	california	41.3098984	-122.310997	1.42999995	53	Moderate air quality	pm25	2018-12-06 20:56:00	41.6500015	1	1015	2.0999999	0	2018-12-06 12:27:00
Mountain View	City	Santa Clara	california	37.3861008	-122.084	1.80999994	67	Moderate air quality	pm25	2018-12-06 20:56:00	59.6300011	1	1014	1.5	0	2018-12-06 12:27:00
Murrieta	City	Riverside	california	33.5539017	-117.213997	2.49000001	26	Good air quality	o3	2018-12-06 20:53:00	58.5699997	90	1012	3.5999999	6.61000013	2018-12-06 12:27:00
Napa	City	Napa	california	38.2975006	-122.287003	1.66999996	53	Moderate air quality	pm25	2018-12-06 21:00:00	59.6500015	1	1014	1.32000005	0	2018-12-06 12:27:00
National City	City	San Diego	california	32.6781006	-117.098999	2.73000002	60	Moderate air quality	pm25	2018-12-06 20:56:00	64.9599991	75	1011	7.19999981	0	2018-12-06 12:27:00
Needles	City	San Bernardino	california	34.8480988	-114.613998	2.19000006	58	Moderate air quality	pm25	2018-12-06 20:35:00	59.3600006	90	1016	3.0999999	0	2018-12-06 12:27:00
Nevada City	City	Nevada	california	39.2616005	-121.015999	1.60000002	34	Good air quality	pm25	2018-12-06 20:55:00	56.0800018	1	1013	3.0999999	0	2018-12-06 12:27:00
Newark	City	Alameda	california	37.5297012	-122.040001	1.74000001	47	Good air quality	pm25	2018-12-06 20:56:00	59.7700005	1	1014	1.5	0	2018-12-06 12:27:00
Newman	City	Stanislaus	california	37.3138008	-121.021004	1.76999998	51	Moderate air quality	pm25	2018-12-06 20:55:00	58.5699997	1	1014	3.0999999	0	2018-12-06 12:27:00
Newport Beach	City	Orange	california	33.6189003	-117.93	2.44000006	26	Good air quality	o3	2018-12-06 20:51:00	55.2900009	90	1012	3.0999999	3.74000001	2018-12-06 12:27:00
Norco	City	Riverside	california	33.9310989	-117.549004	2.41000009	30	Good air quality	pm25	2018-12-06 20:47:00	55.6500015	90	1012	3.0999999	4.88000011	2018-12-06 12:27:00
Norwalk	City	Los Angeles	california	33.9021988	-118.082001	2.36999989	54	Moderate air quality	pm25	2018-12-06 20:53:00	54.3600006	90	1012	3.0999999	3.49000001	2018-12-06 12:27:00
Novato	City	Marin	california	38.107399	-122.57	1.67999995	51	Moderate air quality	pm25	2018-12-06 20:55:00	59.7000008	1	1014	1.5	0	2018-12-06 12:27:00
Oakdale	City	Stanislaus	california	37.7666016	-120.847	1.71000004	63	Moderate air quality	pm25	2018-12-06 20:55:00	57.6100006	1	1014	3.0999999	0	2018-12-06 12:27:00
Oakland	City	Alameda	california	37.8044014	-122.271004	1.71000004	57	Moderate air quality	pm25	2018-12-06 20:56:00	59.4700012	1	1014	2.97000003	0	2018-12-06 12:27:00
Oakley	City	Contra Costa	california	37.9973984	-121.711998	1.71000004	55	Moderate air quality	pm25	2018-12-06 21:00:00	59.0400009	1	1014	4.5999999	0	2018-12-06 12:27:00
Oceanside	City	San Diego	california	33.1959	-117.378998	2.5999999	57	Moderate air quality	pm25	2018-12-06 20:55:00	62.2200012	90	1011	3.0999999	12.1899996	2018-12-06 12:27:00
Ojai	City	Ventura	california	34.4480019	-119.242996	2.25999999	49	Good air quality	pm25	2018-12-06 20:57:00	57.4900017	75	1011	7.69999981	0	2018-12-06 12:27:00
Ontario	City	San Bernardino	california	34.0633011	-117.651001	2.38000011	50	Good air quality	pm25	2018-12-06 20:47:00	54.9500008	90	1012	5.0999999	4.23000002	2018-12-06 12:27:00
Orange	City	Orange	california	33.787899	-117.852997	2.38000011	46	Good air quality	pm25	2018-12-06 20:51:00	54.5200005	90	1012	3.0999999	3.74000001	2018-12-06 12:27:00
Orange Cove	City	Fresno	california	36.6244011	-119.314003	1.87	54	Moderate air quality	pm25	2018-12-06 20:56:00	51.9099998	90	1015	1.66999996	2.53999996	2018-12-06 12:27:00
Orinda	City	Contra Costa	california	37.8771019	-122.18	1.72000003	46	Good air quality	pm25	2018-12-06 20:56:00	59.4500008	1	1014	2.97000003	0	2018-12-06 12:27:00
Orland	City	Glenn	california	39.7473984	-122.195999	1.53999996	27	Good air quality	pm25	2018-12-06 20:53:00	57.9199982	1	1014	4.5999999	0	2018-12-06 12:27:00
Oroville	City	Butte	california	39.5138016	-121.556	1.54999995	37	Good air quality	pm25	2018-12-06 20:53:00	56.6399994	1	1014	4.5999999	0	2018-12-06 12:27:00
Oxnard	City	Ventura	california	34.1974983	-119.177002	2.28999996	68	Moderate air quality	pm25	2018-12-06 20:57:00	57.5600014	75	1011	7.69999981	0	2018-12-06 12:27:00
Pacific Grove	City	Monterey	california	36.6176987	-121.917	1.88999999	49	Good air quality	pm25	2018-12-06 20:55:00	61.4300003	1	1012	2.06999993	0	2018-12-06 12:27:00
Pacifica	City	San Mateo	california	37.6138	-122.487	1.75999999	35	Good air quality	pm10	2018-12-06 20:56:00	59.5400009	1	1014	2.97000003	0	2018-12-06 12:27:00
Palm Desert	City	Riverside	california	33.7221985	-116.374001	2.55999994	54	Moderate air quality	pm25	2018-12-06 20:56:00	51.8899994	90	1017	4.0999999	0	2018-12-06 12:27:00
Palm Springs	City	Riverside	california	33.8302994	-116.544998	2.5	40	Good air quality	pm25	2018-12-06 20:56:00	52.75	90	1017	4.0999999	0	2018-12-06 12:27:00
Palmdale	City	Los Angeles	california	34.5793991	-118.115997	2.25999999	40	Good air quality	pm25	2018-12-06 20:58:00	45.0099983	90	1015	3.5999999	1.92999995	2018-12-06 12:27:00
Palo Alto	City	Santa Clara	california	37.4418983	-122.142998	1.80999994	66	Moderate air quality	pm25	2018-12-06 20:56:00	59.7700005	1	1014	1.5	0	2018-12-06 12:27:00
Palos Verdes Estates	City	Los Angeles	california	33.8005981	-118.389999	2.36999989	22	Good air quality	pm25	2018-12-06 20:53:00	54.2999992	90	1012	3.0999999	3.8499999	2018-12-06 12:27:00
Paradise	Town	Butte	california	39.7596016	-121.622002	1.57000005	37	Good air quality	pm25	2018-12-06 20:53:00	57.9199982	1	1014	4.5999999	0	2018-12-06 12:27:00
Paramount	City	Los Angeles	california	33.8894997	-118.160004	2.36999989	48	Good air quality	pm25	2018-12-06 20:53:00	54.3600006	90	1012	3.0999999	3.49000001	2018-12-06 12:27:00
Pasadena	City	Los Angeles	california	34.1478004	-118.144997	2.32999992	56	Moderate air quality	pm25	2018-12-06 20:53:00	54.1199989	90	1012	2.5999999	3.49000001	2018-12-06 12:27:00
Paso Robles	City	San Luis Obispo	california	35.6369019	-120.654999	2.01999998	26	Good air quality	pm25	2018-12-06 21:01:00	58.4799995	75	1013	7.69999981	0	2018-12-06 12:27:00
Patterson	City	Stanislaus	california	37.4715996	-121.129997	1.76999998	53	Moderate air quality	pm25	2018-12-06 20:55:00	59.0499992	1	1014	3.0999999	0	2018-12-06 12:27:00
Perris	City	Riverside	california	33.7825012	-117.228996	2.43000007	57	Moderate air quality	pm25	2018-12-06 20:52:00	57.3600006	90	1012	5.0999999	6.61000013	2018-12-06 12:27:00
Petaluma	City	Sonoma	california	38.232399	-122.637001	1.67999995	57	Moderate air quality	pm25	2018-12-06 20:55:00	60.3499985	1	1014	1.32000005	0	2018-12-06 12:27:00
Pico Rivera	City	Los Angeles	california	33.9831009	-118.097	2.36999989	55	Moderate air quality	pm25	2018-12-06 20:53:00	54.6800003	90	1012	3.0999999	3.49000001	2018-12-06 12:27:00
Piedmont	City	Alameda	california	37.8244019	-122.232002	1.72000003	25	Good air quality	pm10	2018-12-06 20:56:00	59.5800018	1	1014	2.97000003	0	2018-12-06 12:27:00
Pinole	City	Contra Costa	california	38.0043983	-122.299004	1.67999995	51	Moderate air quality	pm25	2018-12-06 20:56:00	59.5900002	1	1014	2.97000003	0	2018-12-06 12:27:00
Pismo Beach	City	San Luis Obispo	california	35.1427994	-120.640999	2.07999992	37	Good air quality	pm25	2018-12-06 21:01:00	58.3699989	75	1013	7.69999981	0	2018-12-06 12:27:00
Pittsburg	City	Contra Costa	california	38.0279999	-121.885002	1.66999996	55	Moderate air quality	pm25	2018-12-06 21:00:00	59.0900002	1	1014	1.76999998	0	2018-12-06 12:27:00
Placentia	City	Orange	california	33.8711014	-117.862999	2.38000011	43	Good air quality	pm25	2018-12-06 20:53:00	54.4099998	90	1012	5.0999999	3.49000001	2018-12-06 12:27:00
Placerville	City	El Dorado	california	38.729599	-120.799004	1.64999998	56	Moderate air quality	pm25	2018-12-06 20:55:00	56.2599983	1	1014	2.0999999	0	2018-12-06 12:27:00
Pleasant Hill	City	Contra Costa	california	37.9480019	-122.060997	1.72000003	55	Moderate air quality	pm25	2018-12-06 21:00:00	59.4500008	1	1014	1.76999998	0	2018-12-06 12:27:00
Pleasanton	City	Alameda	california	37.6623993	-121.875	1.75999999	56	Moderate air quality	pm25	2018-12-06 20:56:00	59.5	1	1013	4.0999999	0	2018-12-06 12:27:00
Plymouth	City	Amador	california	38.4818993	-120.845001	1.65999997	41	Good air quality	pm25	2018-12-06 20:50:00	57.3300018	1	1013	3.5999999	0	2018-12-06 12:27:00
Point Arena	City	Mendocino	california	38.9087982	-123.693001	1.63999999	57	Moderate air quality	pm25	2018-12-06 19:56:00	51.9799995	1	1015	1.62	0	2018-12-06 12:27:00
Pomona	City	Los Angeles	california	34.0550995	-117.75	2.38000011	55	Moderate air quality	pm25	2018-12-06 20:53:00	54.4300003	90	1012	2.5999999	3.49000001	2018-12-06 12:27:00
Port Hueneme	City	Ventura	california	34.1478004	-119.195	2.28999996	58	Moderate air quality	pm25	2018-12-06 20:57:00	58.5699997	75	1011	7.69999981	0	2018-12-06 12:27:00
Porterville	City	Tulare	california	36.0652008	-119.016998	1.91999996	75	Moderate air quality	pm25	2018-12-06 20:56:00	50.7900009	90	1014	2.5999999	1.77999997	2018-12-06 12:27:00
Portola	City	Plumas	california	39.8105011	-120.469002	1.62	51	Moderate air quality	pm25	2018-12-06 20:35:00	30.9200001	90	1017	4.5999999	0	2018-12-06 12:27:00
Portola Valley	Town	San Mateo	california	37.3841019	-122.235001	1.80999994	51	Moderate air quality	pm25	2018-12-06 20:56:00	59.8499985	1	1014	1.5	0	2018-12-06 12:27:00
Poway	City	San Diego	california	32.9627991	-117.036003	2.68000007	27	Good air quality	o3	2018-12-06 20:56:00	63.5400009	75	1011	3.5999999	0	2018-12-06 12:27:00
Rancho Cordova	City	Sacramento	california	38.5890999	-121.303001	1.63	55	Moderate air quality	pm25	2018-12-06 21:00:00	57.7000008	0	1014	4.0999999	0	2018-12-06 12:27:00
Rancho Cucamonga	City	San Bernardino	california	34.1063995	-117.593002	2.38000011	35	Good air quality	pm25	2018-12-06 20:47:00	55.7099991	90	1012	3.0999999	4.88000011	2018-12-06 12:27:00
Rancho Mirage	City	Riverside	california	33.7397003	-116.413002	2.55999994	28	Good air quality	pm25	2018-12-06 20:56:00	53.1100006	90	1017	4.0999999	0	2018-12-06 12:27:00
Rancho Palos Verdes	City	Los Angeles	california	33.7444992	-118.387001	2.44000006	21	Good air quality	o3	2018-12-06 20:53:00	54.2999992	90	1011	3.5999999	3.8499999	2018-12-06 12:27:00
Rancho Santa Margarita	City	Orange	california	33.6402016	-117.602997	2.48000002	32	Good air quality	o3	2018-12-06 20:53:00	57.5800018	90	1011	3.0999999	5.4000001	2018-12-06 12:27:00
Red Bluff	City	Tehama	california	40.1785011	-122.236	1.5	39	Good air quality	pm25	2018-12-06 19:54:00	57.9199982	1	1015	4.5999999	0	2018-12-06 12:27:00
Redding	City	Shasta	california	40.5864983	-122.391998	1.45000005	96	Moderate air quality	pm25	2018-12-06 20:50:00	54.1399994	1	1015	1.5	0	2018-12-06 12:27:00
Redlands	City	San Bernardino	california	34.0555992	-117.182999	2.43000007	59	Moderate air quality	pm25	2018-12-06 20:38:00	54.2099991	90	1012	5.0999999	1.01999998	2018-12-06 12:27:00
Redondo Beach	City	Los Angeles	california	33.8492012	-118.388	2.36999989	53	Moderate air quality	pm25	2018-12-06 20:53:00	54.2999992	90	1012	3.0999999	3.8499999	2018-12-06 12:27:00
Redwood City	City	San Mateo	california	37.485199	-122.236	1.80999994	66	Moderate air quality	pm25	2018-12-06 20:56:00	59.6800003	1	1014	1.5	0	2018-12-06 12:27:00
Reedley	City	Fresno	california	36.5962982	-119.449997	1.87	53	Moderate air quality	pm25	2018-12-06 20:56:00	52.2299995	90	1015	1.66999996	0	2018-12-06 12:27:00
Rialto	City	San Bernardino	california	34.1063995	-117.370003	2.36999989	53	Moderate air quality	pm25	2018-12-06 20:38:00	54.8800011	90	1012	5.0999999	4.57000017	2018-12-06 12:27:00
Richmond	City	Contra Costa	california	37.9357986	-122.348	1.71000004	60	Moderate air quality	pm25	2018-12-06 20:56:00	59.5900002	1	1014	1.5	0	2018-12-06 12:27:00
Ridgecrest	City	Kern	california	35.6225014	-117.670998	2.05999994	42	Good air quality	pm25	2018-12-06 20:56:00	44.0600014	90	1016	3.5999999	1.26999998	2018-12-06 12:27:00
Rio Dell	City	Humboldt	california	40.4992981	-124.106003	1.50999999	20	Good air quality	o3	2018-12-06 20:35:00	56.4799995	1	1015	1.5	0	2018-12-06 12:27:00
Rio Vista	City	Solano	california	38.1557999	-121.691002	1.66999996	27	Good air quality	pm25	2018-12-06 21:00:00	58.5099983	1	1014	4.5999999	0	2018-12-06 12:27:00
Ripon	City	San Joaquin	california	37.7394981	-121.135002	1.73000002	43	Good air quality	pm25	2018-12-06 20:55:00	58.6599998	1	1014	3.0999999	0	2018-12-06 12:27:00
Riverbank	City	Stanislaus	california	37.7360001	-120.934998	1.73000002	45	Good air quality	pm25	2018-12-06 20:55:00	57.9700012	1	1014	3.0999999	0	2018-12-06 12:27:00
Riverside	City	Riverside	california	33.9805984	-117.375	2.41000009	59	Moderate air quality	pm25	2018-12-06 20:35:00	55.5400009	90	1012	3.5999999	4.57000017	2018-12-06 12:27:00
Rocklin	City	Placer	california	38.790699	-121.236	1.62	59	Moderate air quality	pm25	2018-12-06 21:00:00	56.4300003	0	1014	4.0999999	0	2018-12-06 12:27:00
Rohnert Park	City	Sonoma	california	38.3395996	-122.700996	1.66999996	40	Good air quality	pm25	2018-12-06 20:55:00	59.7400017	1	1014	1.32000005	0	2018-12-06 12:27:00
Rolling Hills	City	Los Angeles	california	33.757	-118.353996	2.36999989	20	Good air quality	o3	2018-12-06 20:53:00	54.2999992	90	1012	3.0999999	3.8499999	2018-12-06 12:27:00
Rolling Hills Estates	City	Los Angeles	california	33.7877998	-118.358002	2.36999989	39	Good air quality	pm25	2018-12-06 20:53:00	54.2999992	90	1012	3.0999999	3.8499999	2018-12-06 12:27:00
Rosemead	City	Los Angeles	california	34.0806007	-118.072998	2.32999992	53	Moderate air quality	pm25	2018-12-06 20:53:00	54.1199989	90	1012	2.5999999	3.49000001	2018-12-06 12:27:00
Roseville	City	Placer	california	38.7521019	-121.288002	1.60000002	59	Moderate air quality	pm25	2018-12-06 20:53:00	56.2599983	0	1014	4.0999999	0	2018-12-06 12:27:00
Ross	Town	Marin	california	37.9623985	-122.555	1.72000003	32	Good air quality	pm25	2018-12-06 20:55:00	59.5600014	1	1014	1.5	0	2018-12-06 12:27:00
Sacramento	City	Sacramento	california	38.5816002	-121.494003	1.63	51	Moderate air quality	pm25	2018-12-06 21:00:00	57.7000008	1	1014	4.5999999	0	2018-12-06 12:27:00
St. Helena	City	Napa	california	38.5051994	-122.470001	1.65999997	41	Good air quality	pm25	2018-12-06 21:00:00	59.6500015	1	1014	1.32000005	0	2018-12-06 12:27:00
Salinas	City	Monterey	california	36.6777	-121.655998	1.88	58	Moderate air quality	pm25	2018-12-06 20:55:00	61.4500008	1	1012	2.06999993	0	2018-12-06 12:27:00
San Anselmo	Town	Marin	california	37.9746017	-122.561996	1.72000003	32	Good air quality	pm25	2018-12-06 20:55:00	59.5600014	1	1014	1.5	0	2018-12-06 12:27:00
San Bernardino	City	San Bernardino	california	34.1082993	-117.290001	2.36999989	52	Moderate air quality	pm25	2018-12-06 20:38:00	54.6300011	90	1012	5.0999999	0.769999981	2018-12-06 12:27:00
San Bruno	City	San Mateo	california	37.6305008	-122.411003	1.75999999	60	Moderate air quality	pm25	2018-12-06 20:56:00	59.5400009	1	1014	1.5	0	2018-12-06 12:27:00
San Carlos	City	San Mateo	california	37.5071983	-122.261002	1.75999999	68	Moderate air quality	pm25	2018-12-06 20:56:00	59.6800003	1	1014	1.5	0	2018-12-06 12:27:00
San Clemente	City	Orange	california	33.4273987	-117.612999	2.50999999	53	Moderate air quality	pm25	2018-12-06 20:53:00	57.5400009	90	1011	3.0999999	5.4000001	2018-12-06 12:27:00
San Diego	City	San Diego	california	32.7156982	-117.161003	2.73000002	65	Moderate air quality	pm25	2018-12-06 20:56:00	64.5299988	75	1010	11.8000002	0	2018-12-06 12:27:00
San Dimas	City	Los Angeles	california	34.1067009	-117.806999	2.3499999	56	Moderate air quality	pm25	2018-12-06 20:58:00	53.8699989	90	1012	6.69999981	3.19000006	2018-12-06 12:27:00
San Fernando	City	Los Angeles	california	34.2818985	-118.439003	2.29999995	57	Moderate air quality	pm25	2018-12-06 20:57:00	54.1599998	75	1013	4.0999999	2.46000004	2018-12-06 12:27:00
San Francisco	City and county	San Francisco	california	37.7748985	-122.418999	1.71000004	61	Moderate air quality	pm25	2018-12-06 20:56:00	59.4700012	1	1014	1.5	0	2018-12-06 12:27:00
San Gabriel	City	Los Angeles	california	34.0960999	-118.106003	2.32999992	55	Moderate air quality	pm25	2018-12-06 20:53:00	54.1199989	90	1012	2.5999999	3.49000001	2018-12-06 12:27:00
San Jacinto	City	Riverside	california	33.7839012	-116.959	2.49000001	59	Moderate air quality	pm25	2018-12-06 20:58:00	56.2799988	90	1012	6.69999981	0.889999986	2018-12-06 12:27:00
San Joaquin	City	Fresno	california	36.6066017	-120.189003	1.83000004	48	Good air quality	pm25	2018-12-06 20:56:00	52.9000015	90	1014	2.22000003	0	2018-12-06 12:27:00
San Jose	City	Santa Clara	california	37.3381996	-121.886002	1.77999997	66	Moderate air quality	pm25	2018-12-06 20:56:00	59.6699982	1	1014	1.5	0	2018-12-06 12:27:00
San Juan Bautista	City	San Benito	california	36.8455009	-121.538002	1.84000003	32	Good air quality	pm25	2018-12-06 20:55:00	61.3199997	1	1013	2.06999993	0	2018-12-06 12:27:00
San Juan Capistrano	City	Orange	california	33.5018997	-117.663002	2.48000002	52	Moderate air quality	pm25	2018-12-06 20:58:00	57.3400002	90	1011	3.0999999	4.46999979	2018-12-06 12:27:00
San Leandro	City	Alameda	california	37.7248993	-122.155998	1.74000001	51	Moderate air quality	pm25	2018-12-06 20:56:00	59.4500008	1	1013	4.0999999	0	2018-12-06 12:27:00
San Luis Obispo	City	San Luis Obispo	california	35.2827988	-120.660004	2.05999994	25	Good air quality	o3	2018-12-06 21:01:00	58.2400017	75	1013	7.69999981	0	2018-12-06 12:27:00
San Marcos	City	San Diego	california	33.1433983	-117.166	2.61999989	36	Good air quality	pm25	2018-12-06 20:56:00	64.1299973	90	1011	4.0999999	0	2018-12-06 12:27:00
San Marino	City	Los Angeles	california	34.1213989	-118.106003	2.32999992	56	Moderate air quality	pm25	2018-12-06 20:53:00	54.1199989	90	1012	2.5999999	3.49000001	2018-12-06 12:27:00
San Mateo	City	San Mateo	california	37.5629997	-122.325996	1.75999999	66	Moderate air quality	pm25	2018-12-06 20:56:00	59.6300011	1	1014	1.5	0	2018-12-06 12:27:00
San Pablo	City	Contra Costa	california	37.962101	-122.346001	1.71000004	56	Moderate air quality	pm25	2018-12-06 20:56:00	59.5900002	1	1014	1.5	0	2018-12-06 12:27:00
San Rafael	City	Marin	california	37.9734993	-122.530998	1.72000003	56	Moderate air quality	pm25	2018-12-06 20:55:00	59.6100006	1	1014	1.5	0	2018-12-06 12:27:00
San Ramon	City	Contra Costa	california	37.7798996	-121.977997	1.73000002	52	Moderate air quality	pm25	2018-12-06 20:56:00	59.3199997	1	1013	4.0999999	0	2018-12-06 12:27:00
Sand City	City	Monterey	california	36.6171989	-121.848	1.88999999	29	Good air quality	pm25	2018-12-06 20:55:00	61.4300003	1	1012	2.06999993	0	2018-12-06 12:27:00
Sanger	City	Fresno	california	36.7080002	-119.556	1.86000001	51	Moderate air quality	pm25	2018-12-06 20:56:00	52.75	90	1015	1.66999996	0	2018-12-06 12:27:00
Santa Ana	City	Orange	california	33.7454987	-117.867996	2.44000006	48	Good air quality	pm25	2018-12-06 20:58:00	54.0900002	90	1012	3.0999999	3.19000006	2018-12-06 12:27:00
Santa Barbara	City	Santa Barbara	california	34.4207993	-119.697998	2.25	44	Good air quality	pm25	2018-12-06 20:57:00	58.0099983	90	1011	3.0999999	0	2018-12-06 12:27:00
Santa Clara	City	Santa Clara	california	37.3540993	-121.955002	1.77999997	60	Moderate air quality	pm25	2018-12-06 20:56:00	59.6800003	1	1014	1.5	0	2018-12-06 12:27:00
Santa Clarita	City	Los Angeles	california	34.3917007	-118.542999	2.26999998	23	Good air quality	o3	2018-12-06 20:57:00	51.1300011	75	1013	4.0999999	1.69000006	2018-12-06 12:27:00
Santa Cruz	City	Santa Cruz	california	36.9740982	-122.030998	1.86000001	58	Moderate air quality	pm25	2018-12-06 20:56:00	60.2400017	1	1012	1.41999996	0	2018-12-06 12:27:00
Santa Fe Springs	City	Los Angeles	california	33.9472008	-118.084999	2.36999989	44	Good air quality	pm25	2018-12-06 20:53:00	54.3600006	90	1012	3.0999999	3.49000001	2018-12-06 12:27:00
Santa Maria	City	Santa Barbara	california	34.9529991	-120.435997	2.1099999	40	Good air quality	pm25	2018-12-06 20:35:00	58.75	90	1011	1.5	0	2018-12-06 12:27:00
Santa Monica	City	Los Angeles	california	34.0195007	-118.490997	2.29999995	61	Moderate air quality	pm25	2018-12-06 20:57:00	54.8199997	90	1012	2.5999999	3.8499999	2018-12-06 12:27:00
Santa Paula	City	Ventura	california	34.3541985	-119.058998	2.25999999	58	Moderate air quality	pm25	2018-12-06 20:57:00	53.1500015	75	1011	7.69999981	1.77999997	2018-12-06 12:27:00
Santa Rosa	City	Sonoma	california	38.4403992	-122.713997	1.66999996	62	Moderate air quality	pm25	2018-12-06 20:55:00	59.4000015	1	1014	1.32000005	0	2018-12-06 12:27:00
Santee	City	San Diego	california	32.8384018	-116.973999	2.72000003	37	Good air quality	pm25	2018-12-06 20:56:00	64.1100006	75	1011	3.5999999	0	2018-12-06 12:27:00
Saratoga	City	Santa Clara	california	37.2638016	-122.023003	1.80999994	43	Good air quality	pm25	2018-12-06 20:56:00	59.7400017	1	1014	1.5	0	2018-12-06 12:27:00
Sausalito	City	Marin	california	37.8591003	-122.485001	1.71000004	35	Good air quality	pm25	2018-12-06 20:56:00	59.6100006	1	1014	1.5	0	2018-12-06 12:27:00
Scotts Valley	City	Santa Cruz	california	37.0511017	-122.014999	1.85000002	38	Good air quality	pm25	2018-12-06 20:56:00	60.4900017	1	1014	1.5	0	2018-12-06 12:27:00
Seal Beach	City	Orange	california	33.7414017	-118.105003	2.44000006	24	Good air quality	pm25	2018-12-06 20:53:00	54.3600006	90	1012	5.0999999	3.49000001	2018-12-06 12:27:00
Seaside	City	Monterey	california	36.6148987	-121.821999	1.88999999	45	Good air quality	pm25	2018-12-06 20:55:00	61.4300003	1	1012	2.06999993	0	2018-12-06 12:27:00
Sebastopol	City	Sonoma	california	38.4020996	-122.823997	1.65999997	58	Moderate air quality	pm25	2018-12-06 20:55:00	59.0900002	1	1014	1.32000005	0	2018-12-06 12:27:00
Selma	City	Fresno	california	36.5708008	-119.612	1.86000001	59	Moderate air quality	pm25	2018-12-06 20:56:00	52.7700005	90	1015	1.66999996	0	2018-12-06 12:27:00
Shafter	City	Kern	california	35.5004997	-119.272003	1.97000003	54	Moderate air quality	pm25	2018-12-06 20:56:00	50.5800018	90	1013	2.5999999	1.77999997	2018-12-06 12:27:00
Shasta Lake	City	Shasta	california	40.6804008	-122.371002	1.45000005	73	Moderate air quality	pm25	2018-12-06 20:54:00	54.4799995	1	1014	3.0999999	0	2018-12-06 12:27:00
Sierra Madre	City	Los Angeles	california	34.1617012	-118.053001	2.32999992	54	Moderate air quality	pm25	2018-12-06 21:09:00	54.0299988	90	1012	5.69999981	3.51999998	2018-12-06 12:27:00
Signal Hill	City	Los Angeles	california	33.8045006	-118.167999	2.36999989	51	Moderate air quality	pm25	2018-12-06 20:53:00	54.3600006	90	1012	3.0999999	3.49000001	2018-12-06 12:27:00
Simi Valley	City	Ventura	california	34.2694016	-118.780998	2.25999999	29	Good air quality	o3	2018-12-06 20:57:00	53.9799995	75	1011	7.69999981	1.59000003	2018-12-06 12:27:00
Solana Beach	City	San Diego	california	32.9911995	-117.271004	2.69000006	47	Good air quality	pm25	2018-12-06 21:00:00	64.2600021	75	1011	3.5999999	0	2018-12-06 12:27:00
Soledad	City	Monterey	california	36.4247017	-121.325996	1.92999995	60	Moderate air quality	pm25	2018-12-06 20:55:00	61.6599998	1	1012	1.57000005	0	2018-12-06 12:27:00
Solvang	City	Santa Barbara	california	34.5957985	-120.138	2.18000007	24	Good air quality	o3	2018-12-06 20:53:00	58.7299995	90	1011	3.0999999	0	2018-12-06 12:27:00
Sonoma	City	Sonoma	california	38.2919006	-122.458	1.66999996	51	Moderate air quality	pm25	2018-12-06 21:00:00	59.6500015	1	1014	1.32000005	0	2018-12-06 12:27:00
Sonora	City	Tuolumne	california	37.9828987	-120.382004	1.74000001	64	Moderate air quality	pm25	2018-12-06 20:53:00	57.8499985	1	1013	3.5999999	0	2018-12-06 12:27:00
South El Monte	City	Los Angeles	california	34.0519981	-118.046997	2.32999992	52	Moderate air quality	pm25	2018-12-06 20:53:00	54.0999985	90	1012	3.0999999	3.49000001	2018-12-06 12:27:00
South Gate	City	Los Angeles	california	33.9547005	-118.211998	2.36999989	56	Moderate air quality	pm25	2018-12-06 20:53:00	54.3600006	90	1012	3.0999999	3.49000001	2018-12-06 12:27:00
South Lake Tahoe	City	El Dorado	california	38.9398994	-119.976997	1.74000001	28	Good air quality	o3	2018-12-06 20:55:00	31.7999992	90	1017	4.0999999	0	2018-12-06 12:27:00
South Pasadena	City	Los Angeles	california	34.1161003	-118.150002	2.32999992	53	Moderate air quality	pm25	2018-12-06 21:09:00	54.0299988	90	1012	5.69999981	3.51999998	2018-12-06 12:27:00
South San Francisco	City	San Mateo	california	37.6547012	-122.407997	1.75999999	62	Moderate air quality	pm25	2018-12-06 20:56:00	59.6300011	1	1014	1.5	0	2018-12-06 12:27:00
Stanton	City	Orange	california	33.8028984	-117.992996	2.38000011	34	Good air quality	pm25	2018-12-06 20:53:00	54.1399994	90	1012	5.0999999	3.49000001	2018-12-06 12:27:00
Stockton	City	San Joaquin	california	37.9576988	-121.291	1.71000004	71	Moderate air quality	pm25	2018-12-06 20:55:00	58.8600006	1	1014	3.0999999	0	2018-12-06 12:27:00
Suisun City	City	Solano	california	38.2382011	-122.040001	1.69000006	20	Good air quality	pm25	2018-12-06 21:00:00	59.2000008	1	1014	3.42000008	0	2018-12-06 12:27:00
Sunnyvale	City	Santa Clara	california	37.3688011	-122.036003	1.80999994	61	Moderate air quality	pm25	2018-12-06 20:56:00	59.7700005	1	1014	1.5	0	2018-12-06 12:27:00
Susanville	City	Lassen	california	40.4163017	-120.653	1.54999995	42	Good air quality	pm25	2018-12-06 20:35:00	32	90	1018	2.5999999	0	2018-12-06 12:27:00
Sutter Creek	City	Amador	california	38.3930016	-120.802002	1.65999997	61	Moderate air quality	pm25	2018-12-06 20:55:00	57.8499985	1	1013	3.5999999	0	2018-12-06 12:27:00
Taft	City	Kern	california	35.1425018	-119.457001	2.05999994	46	Good air quality	pm25	2018-12-06 20:54:00	53.0600014	90	1013	2.5999999	0	2018-12-06 12:27:00
Tehachapi	City	Kern	california	35.1321983	-118.448997	2.20000005	37	Good air quality	pm25	2018-12-06 20:58:00	41.2200012	90	1014	5.69999981	1.69000006	2018-12-06 12:27:00
Tehama	City	Tehama	california	40.0270996	-122.123001	1.5	22	Good air quality	pm25	2018-12-06 20:54:00	59.5900002	1	1015	3.0999999	0	2018-12-06 12:27:00
Temecula	City	Riverside	california	33.4935989	-117.148003	2.54999995	52	Moderate air quality	pm25	2018-12-06 20:55:00	59.4900017	90	1011	3.0999999	6.61000013	2018-12-06 12:27:00
Temple City	City	Los Angeles	california	34.1072006	-118.057999	2.32999992	41	Good air quality	pm25	2018-12-06 21:09:00	54.0299988	90	1012	5.69999981	3.51999998	2018-12-06 12:27:00
Thousand Oaks	City	Ventura	california	34.1706009	-118.837997	2.31999993	51	Moderate air quality	pm25	2018-12-06 20:57:00	53.9599991	75	1011	7.69999981	1.59000003	2018-12-06 12:27:00
Tiburon	Town	Marin	california	37.8735008	-122.457001	1.71000004	52	Moderate air quality	pm25	2018-12-06 20:56:00	59.6100006	1	1014	1.5	0	2018-12-06 12:27:00
Torrance	City	Los Angeles	california	33.8358002	-118.341003	2.36999989	31	Good air quality	pm25	2018-12-06 20:53:00	54.3699989	90	1012	3.0999999	3.49000001	2018-12-06 12:27:00
Tracy	City	San Joaquin	california	37.7397003	-121.425003	1.75	57	Moderate air quality	pm25	2018-12-06 20:56:00	59.4500008	1	1014	4.5999999	0	2018-12-06 12:27:00
Trinidad	City	Humboldt	california	41.0592995	-124.142998	1.40999997	20	Good air quality	pm25	2018-12-06 20:55:00	57.0900002	1	1015	3.5999999	0	2018-12-06 12:27:00
Truckee	Town	Nevada	california	39.3279991	-120.182999	1.66999996	61	Moderate air quality	pm25	2018-12-06 20:55:00	30.7399998	90	1017	4.0999999	0	2018-12-06 12:27:00
Tulare	City	Tulare	california	36.2076988	-119.347	1.91999996	74	Moderate air quality	pm25	2018-12-06 20:56:00	51.7299995	90	1014	2.5999999	1.77999997	2018-12-06 12:27:00
Tulelake	City	Siskiyou	california	41.9560013	-121.476997	1.35000002	42	Good air quality	pm25	2018-12-06 19:53:00	28.9400005	1	1017	4.5999999	0	2018-12-06 12:27:00
Turlock	City	Stanislaus	california	37.4947014	-120.847	1.75999999	71	Moderate air quality	pm25	2018-12-06 20:53:00	57.4300003	1	1014	3.0999999	0	2018-12-06 12:27:00
Tustin	City	Orange	california	33.7420006	-117.823997	2.44000006	25	Good air quality	o3	2018-12-06 21:09:00	54.6599998	90	1012	5.69999981	3.4000001	2018-12-06 12:27:00
Twentynine Palms	City	San Bernardino	california	34.135601	-116.054001	2.43000007	40	Good air quality	pm25	2018-12-06 20:56:00	51.9799995	90	1017	4.0999999	0	2018-12-06 12:27:00
Ukiah	City	Mendocino	california	39.1501999	-123.208	1.63999999	77	Moderate air quality	pm25	2018-12-06 19:56:00	51.9799995	1	1015	0.620000005	0	2018-12-06 12:27:00
Union City	City	Alameda	california	37.593399	-122.043999	1.74000001	46	Good air quality	pm25	2018-12-06 21:00:00	59.9199982	1	1014	1.5	0	2018-12-06 12:27:00
Upland	City	San Bernardino	california	34.0974998	-117.648003	2.38000011	46	Good air quality	pm25	2018-12-06 20:58:00	55.0800018	90	1012	6.69999981	3.74000001	2018-12-06 12:27:00
Vacaville	City	Solano	california	38.3566017	-121.987999	1.64999998	46	Good air quality	pm25	2018-12-06 21:00:00	58.9799995	1	1014	4.5999999	0	2018-12-06 12:27:00
Vallejo	City	Solano	california	38.1040993	-122.257004	1.67999995	66	Moderate air quality	pm25	2018-12-06 21:00:00	59.4300003	1	1014	1.32000005	0	2018-12-06 12:27:00
Ventura	City	Ventura	california	34.2804985	-119.294998	2.25999999	60	Moderate air quality	pm25	2018-12-06 20:57:00	58.3899994	75	1011	9.30000019	0	2018-12-06 12:27:00
Vernon	City	Los Angeles	california	34.0038986	-118.230003	2.32999992	60	Moderate air quality	pm25	2018-12-06 21:09:00	54.2799988	90	1012	5.69999981	3.75	2018-12-06 12:27:00
Victorville	City	San Bernardino	california	34.5362015	-117.292999	2.27999997	54	Moderate air quality	pm25	2018-12-06 20:58:00	47.2299995	90	1014	5.69999981	0.75999999	2018-12-06 12:27:00
Villa Park	City	Orange	california	33.8139992	-117.821999	2.38000011	38	Good air quality	pm25	2018-12-06 21:09:00	54.5900002	90	1012	5.69999981	3.61999989	2018-12-06 12:27:00
Visalia	City	Tulare	california	36.3302002	-119.292	1.88999999	72	Moderate air quality	pm25	2018-12-06 20:56:00	51.5299988	90	1014	2.5999999	1.77999997	2018-12-06 12:27:00
Vista	City	San Diego	california	33.2000008	-117.242996	2.61999989	52	Moderate air quality	pm25	2018-12-06 21:00:00	63.7200012	90	1011	4.0999999	0	2018-12-06 12:27:00
Walnut	City	Los Angeles	california	34.0203018	-117.864998	2.3499999	41	Good air quality	pm25	2018-12-06 21:09:00	54.2799988	90	1012	5.69999981	3.41000009	2018-12-06 12:27:00
Walnut Creek	City	Contra Costa	california	37.910099	-122.065002	1.72000003	58	Moderate air quality	pm25	2018-12-06 20:56:00	59.5800018	1	1014	1.76999998	0	2018-12-06 12:27:00
Wasco	City	Kern	california	35.594101	-119.341003	1.97000003	81	Moderate air quality	pm25	2018-12-06 20:56:00	50.6100006	90	1013	2.0999999	1.77999997	2018-12-06 12:27:00
Waterford	City	Stanislaus	california	37.6413002	-120.760002	1.73000002	63	Moderate air quality	pm25	2018-12-06 20:53:00	57.7599983	1	1014	3.0999999	0	2018-12-06 12:27:00
Watsonville	City	Santa Cruz	california	36.9101982	-121.757004	1.84000003	61	Moderate air quality	pm25	2018-12-06 20:56:00	60.9399986	1	1013	1.41999996	0	2018-12-06 12:27:00
Weed	City	Siskiyou	california	41.4225998	-122.386002	1.42999995	64	Moderate air quality	pm25	2018-12-06 20:56:00	42.5999985	1	1015	2.0999999	0	2018-12-06 12:27:00
West Covina	City	Los Angeles	california	34.0685997	-117.939003	2.3499999	58	Moderate air quality	pm25	2018-12-06 21:09:00	53.7799988	90	1012	5.69999981	3.22000003	2018-12-06 12:27:00
West Hollywood	City	Los Angeles	california	34.0900002	-118.362	2.29999995	56	Moderate air quality	pm25	2018-12-06 20:53:00	54.0299988	90	1012	2.5999999	3.8499999	2018-12-06 12:27:00
West Sacramento	City	Yolo	california	38.5805016	-121.529999	1.63	32	Good air quality	pm25	2018-12-06 21:00:00	57.9599991	1	1014	4.5999999	0	2018-12-06 12:27:00
Westlake Village	City	Los Angeles	california	34.1465988	-118.806999	2.31999993	30	Good air quality	o3	2018-12-06 20:57:00	53.9599991	75	1011	7.69999981	1.59000003	2018-12-06 12:27:00
Westminster	City	Orange	california	33.759201	-117.989998	2.38000011	41	Good air quality	pm25	2018-12-06 21:09:00	53.9399986	90	1012	5.69999981	3.77999997	2018-12-06 12:27:00
Westmorland	City	Imperial	california	33.0373001	-115.621002	2.61999989	57	Moderate air quality	pm25	2018-12-06 20:56:00	54.7700005	90	1016	2.5999999	0	2018-12-06 12:27:00
Wheatland	City	Yuba	california	39.0098991	-121.422997	1.58000004	33	Good air quality	pm25	2018-12-06 21:00:00	57.8800011	1	1014	5.0999999	0	2018-12-06 12:27:00
Whittier	City	Los Angeles	california	33.9791985	-118.032997	2.36999989	51	Moderate air quality	pm25	2018-12-06 21:09:00	54.4300003	90	1012	5.69999981	4.73999977	2018-12-06 12:27:00
Wildomar	City	Riverside	california	33.5988998	-117.279999	2.5	21	Good air quality	pm25	2018-12-06 20:58:00	58.1899986	90	1012	6.69999981	4.65999985	2018-12-06 12:27:00
Williams	City	Colusa	california	39.1545982	-122.149002	1.58000004	58	Moderate air quality	pm25	2018-12-06 20:53:00	57.3400002	1	1014	5.0999999	0	2018-12-06 12:27:00
Willits	City	Mendocino	california	39.4095993	-123.356003	1.61000001	61	Moderate air quality	pm25	2018-12-06 19:56:00	51.9799995	1	1015	1.32000005	0	2018-12-06 12:27:00
Willows	City	Glenn	california	39.5242996	-122.194	1.53999996	37	Good air quality	pm25	2018-12-06 20:53:00	57.9199982	1	1014	4.5999999	0	2018-12-06 12:27:00
Windsor	Town	Sonoma	california	38.5471001	-122.816002	1.64999998	54	Moderate air quality	pm25	2018-12-06 20:55:00	59.0900002	1	1014	1.32000005	0	2018-12-06 12:27:00
Winters	City	Yolo	california	38.5248985	-121.971001	1.63	25	Good air quality	pm25	2018-12-06 21:00:00	58.9799995	1	1014	4.5999999	0	2018-12-06 12:27:00
Woodlake	City	Tulare	california	36.4136009	-119.098999	1.89999998	57	Moderate air quality	pm25	2018-12-06 20:56:00	51.9099998	90	1014	2.5999999	2.53999996	2018-12-06 12:27:00
Woodland	City	Yolo	california	38.6785011	-121.773003	1.63	57	Moderate air quality	pm25	2018-12-06 21:00:00	57.8800011	1	1014	4.5999999	0	2018-12-06 12:27:00
Woodside	Town	San Mateo	california	37.4299011	-122.253998	1.79999995	61	Moderate air quality	pm25	2018-12-06 21:00:00	60.3699989	1	1013	4.5999999	0	2018-12-06 12:27:00
Yorba Linda	City	Orange	california	33.8885002	-117.813004	2.38000011	35	Good air quality	pm25	2018-12-06 21:09:00	54.1199989	90	1012	5.69999981	4.34000015	2018-12-06 12:27:00
Yountville	Town	Napa	california	38.4015999	-122.361	1.66999996	25	Good air quality	pm25	2018-12-06 21:00:00	59.6500015	1	1014	1.32000005	0	2018-12-06 12:27:00
Yreka	City	Siskiyou	california	41.7354012	-122.634003	1.38	55	Moderate air quality	pm25	2018-12-06 20:56:00	41.5800018	1	1017	1.5	0	2018-12-06 12:27:00
Yuba City	City	Sutter	california	39.1403999	-121.616997	1.58000004	51	Moderate air quality	pm25	2018-12-06 21:00:00	57.5999985	1	1014	5.0999999	0	2018-12-06 12:27:00
Yucaipa	City	San Bernardino	california	34.0335999	-117.042999	2.43000007	53	Moderate air quality	pm25	2018-12-06 20:58:00	53.4599991	90	1012	6.69999981	0.889999986	2018-12-06 12:27:00
Yucca Valley	Town	San Bernardino	california	34.1142006	-116.431999	2.45000005	36	Good air quality	o3	2018-12-06 20:56:00	51.9799995	90	1017	4.0999999	0	2018-12-06 12:27:00
Adelanto	City	San Bernardino	california	34.5828018	-117.408997	2.27999997	23	Good air quality	pm25	2018-12-06 21:28:00	44.8199997	90	1015	5.0999999	1.26999998	2018-12-06 13:28:00
Agoura Hills	City	Los Angeles	california	34.1533012	-118.762001	2.31999993	33	Good air quality	pm25	2018-12-06 20:57:00	55.2900009	75	1011	7.69999981	3.45000005	2018-12-06 13:28:00
Alameda	City	Alameda	california	37.7652016	-122.241997	1.72000003	51	Moderate air quality	pm25	2018-12-06 21:40:00	60.0299988	1	1013	4.0999999	0	2018-12-06 13:28:00
Albany	City	Alameda	california	37.8869019	-122.297997	1.71000004	59	Moderate air quality	pm25	2018-12-06 21:40:00	60.1199989	1	1013	4.0999999	0	2018-12-06 13:28:00
Alhambra	City	Los Angeles	california	34.0952988	-118.126999	2.32999992	54	Moderate air quality	pm25	2018-12-06 21:45:00	54.0699997	90	1013	1.32000005	3.8900001	2018-12-06 13:28:00
Aliso Viejo	City	Orange	california	33.5685005	-117.725998	2.48000002	33	Good air quality	pm25	2018-12-06 21:45:00	56.7299995	90	1013	3.01999998	4.73999977	2018-12-06 13:28:00
Alturas	City	Modoc	california	41.4870987	-120.542	1.40999997	79	Moderate air quality	pm25	2018-12-06 20:55:00	39.0200005	1	1016	4.5999999	0	2018-12-06 13:28:00
Amador City	City	Amador	california	38.4193993	-120.823997	1.65999997	45	Good air quality	pm25	2018-12-06 21:35:00	57.9000015	1	1013	3.0999999	0	2018-12-06 13:28:00
American Canyon	City	Napa	california	38.1749001	-122.261002	1.67999995	32	Good air quality	pm25	2018-12-06 21:20:00	59.9900017	1	1014	1.32000005	0	2018-12-06 13:28:00
Anaheim	City	Orange	california	33.8366013	-117.914001	2.38000011	43	Good air quality	pm25	2018-12-06 21:51:00	54.0499992	90	1013	7.71999979	3.57999992	2018-12-06 13:28:00
Anderson	City	Shasta	california	40.4482002	-122.297997	1.47000003	83	Moderate air quality	pm25	2018-12-06 21:10:00	54.9500008	1	1014	3.0999999	0	2018-12-06 13:28:00
Angels Camp	City	Calaveras	california	38.0677986	-120.539001	1.71000004	60	Moderate air quality	pm25	2018-12-06 21:35:00	57.6899986	1	1013	3.0999999	0	2018-12-06 13:28:00
Antioch	City	Contra Costa	california	38.0049019	-121.806	1.66999996	55	Moderate air quality	pm25	2018-12-06 21:20:00	59.6100006	1	1014	4.0999999	0	2018-12-06 13:28:00
Apple Valley	Town	San Bernardino	california	34.5008011	-117.185997	2.29999995	24	Good air quality	pm25	2018-12-06 21:19:00	50	90	1012	4.5999999	0	2018-12-06 13:28:00
Arcadia	City	Los Angeles	california	34.1397018	-118.035004	2.32999992	48	Good air quality	pm25	2018-12-06 21:45:00	53.0600014	90	1013	1.32000005	3.8900001	2018-12-06 13:28:00
Arcata	City	Humboldt	california	40.8665009	-124.083	1.44000006	20	Good air quality	pm10	2018-12-06 21:35:00	56.5	1	1015	3.0999999	0	2018-12-06 13:28:00
Arroyo Grande	City	San Luis Obispo	california	35.1185989	-120.591003	2.07999992	35	Good air quality	pm25	2018-12-06 21:20:00	57.8100014	75	1011	3.0999999	0.50999999	2018-12-06 13:28:00
Artesia	City	Los Angeles	california	33.865799	-118.083	2.36999989	46	Good air quality	pm25	2018-12-06 21:45:00	54.3199997	90	1013	7.71999979	3.8900001	2018-12-06 13:28:00
Arvin	City	Kern	california	35.2018013	-118.833	2.06999993	26	Good air quality	pm25	2018-12-06 21:00:00	46.5999985	90	1013	2.5999999	0	2018-12-06 13:28:00
Atascadero	City	San Luis Obispo	california	35.489399	-120.670998	2.05999994	52	Moderate air quality	pm25	2018-12-06 21:20:00	58.6399994	90	1013	5.69999981	0	2018-12-06 13:28:00
Atherton	Town	San Mateo	california	37.4612999	-122.197998	1.80999994	68	Moderate air quality	pm25	2018-12-06 21:53:00	60.4900017	1	1013	4.5999999	0	2018-12-06 13:28:00
Atwater	City	Merced	california	37.3476982	-120.609001	1.75999999	69	Moderate air quality	pm25	2018-12-06 21:53:00	57.4900017	90	1014	1.87	0	2018-12-06 13:28:00
Auburn	City	Placer	california	38.8965988	-121.077003	1.62	39	Good air quality	pm25	2018-12-06 21:35:00	57.4700012	1	1014	3.0999999	0	2018-12-06 13:28:00
Avalon	City	Los Angeles	california	33.3428001	-118.328003	2.5	26	Good air quality	o3	2018-12-06 21:14:00	55.7599983	90	1012	3.5999999	3.48000002	2018-12-06 13:28:00
Avenal	City	Kings	california	36.0041008	-120.128998	1.90999997	35	Good air quality	pm25	2018-12-06 21:20:00	54.2999992	90	1013	5.69999981	0	2018-12-06 13:28:00
Azusa	City	Los Angeles	california	34.1335983	-117.907997	2.3499999	58	Moderate air quality	pm25	2018-12-06 21:45:00	53.7299995	90	1013	1.32000005	3.8900001	2018-12-06 13:28:00
Bakersfield	City	Kern	california	35.3732986	-119.018997	2.00999999	62	Moderate air quality	pm25	2018-12-06 21:15:00	51.0600014	90	1013	2.5999999	0	2018-12-06 13:28:00
Baldwin Park	City	Los Angeles	california	34.0853004	-117.960999	2.3499999	59	Moderate air quality	pm25	2018-12-06 21:45:00	53.7299995	90	1013	1.32000005	3.8900001	2018-12-06 13:28:00
Banning	City	Riverside	california	33.9255981	-116.875999	2.49000001	43	Good air quality	pm25	2018-12-06 21:45:00	52.3800011	90	1011	5.0999999	7.11000013	2018-12-06 13:28:00
Barstow	City	San Bernardino	california	34.8958015	-117.016998	2.20000005	24	Good air quality	pm25	2018-12-06 21:16:00	48.25	75	1016	5.0999999	0	2018-12-06 13:28:00
Beaumont	City	Riverside	california	33.9295006	-116.976997	2.49000001	61	Moderate air quality	pm25	2018-12-06 21:45:00	54.5499992	90	1013	1.16999996	7.11000013	2018-12-06 13:28:00
Bell	City	Los Angeles	california	33.9775009	-118.186996	2.36999989	56	Moderate air quality	pm25	2018-12-06 21:51:00	54.4300003	90	1013	1.32000005	3.57999992	2018-12-06 13:28:00
Bell Gardens	City	Los Angeles	california	33.9653015	-118.151001	2.36999989	53	Moderate air quality	pm25	2018-12-06 21:51:00	54.4300003	90	1013	1.32000005	3.57999992	2018-12-06 13:28:00
Bellflower	City	Los Angeles	california	33.8816986	-118.116997	2.36999989	37	Good air quality	pm25	2018-12-06 21:51:00	54.4300003	90	1013	7.71999979	3.57999992	2018-12-06 13:28:00
Belmont	City	San Mateo	california	37.5201988	-122.276001	1.75999999	71	Moderate air quality	pm25	2018-12-06 21:53:00	60.3100014	1	1013	4.0999999	0	2018-12-06 13:28:00
Belvedere	City	Marin	california	37.8726997	-122.463997	1.71000004	26	Good air quality	pm10	2018-12-06 21:40:00	60.3499985	1	1013	4.0999999	0	2018-12-06 13:28:00
Benicia	City	Solano	california	38.0494003	-122.158997	1.69000006	31	Good air quality	pm25	2018-12-06 21:53:00	60.0299988	1	1013	4.5999999	0	2018-12-06 13:28:00
Berkeley	City	Alameda	california	37.8716011	-122.273003	1.71000004	61	Moderate air quality	pm25	2018-12-06 21:53:00	60.1199989	1	1013	4.5999999	0	2018-12-06 13:28:00
Beverly Hills	City	Los Angeles	california	34.0736008	-118.400002	2.29999995	46	Good air quality	pm25	2018-12-06 21:14:00	54.3899994	90	1012	3.0999999	3.49000001	2018-12-06 13:28:00
Big Bear Lake	City	San Bernardino	california	34.2439003	-116.911003	2.55999994	33	Good air quality	pm25	2018-12-06 21:19:00	50.7000008	90	1012	4.5999999	0	2018-12-06 13:28:00
Biggs	City	Butte	california	39.4123993	-121.712997	1.55999994	37	Good air quality	pm25	2018-12-06 21:35:00	57.4700012	1	1014	3.5999999	0	2018-12-06 13:28:00
Bishop	City	Inyo	california	37.3614006	-118.400002	1.96000004	52	Moderate air quality	pm25	2018-12-06 21:15:00	32.1800003	90	1016	1.5	0	2018-12-06 13:28:00
Blue Lake	City	Humboldt	california	40.8829002	-123.984001	1.45000005	18	Good air quality	pm25	2018-12-06 21:35:00	56.5	1	1015	3.0999999	0	2018-12-06 13:28:00
Blythe	City	Riverside	california	33.6178017	-114.587997	2.5	33	Good air quality	pm25	2018-12-06 21:57:51	48.3100014	92	1002.17999	2.51999998	0.805000007	2018-12-06 13:28:00
Bradbury	City	Los Angeles	california	34.1469002	-117.971001	2.3499999	30	Good air quality	pm25	2018-12-06 21:45:00	53.0600014	90	1013	1.32000005	3.8900001	2018-12-06 13:28:00
Brawley	City	Imperial	california	32.9786987	-115.529999	2.70000005	63	Moderate air quality	pm25	2018-12-06 20:56:00	55.4199982	90	1016	2.5999999	0	2018-12-06 13:28:00
Brea	City	Orange	california	33.9165001	-117.900002	2.38000011	44	Good air quality	pm25	2018-12-06 21:45:00	54.2299995	90	1013	1.32000005	3.8900001	2018-12-06 13:28:00
Brentwood	City	Contra Costa	california	37.9319	-121.695999	1.71000004	57	Moderate air quality	pm25	2018-12-06 21:53:00	59.6500015	1	1013	4.5999999	0	2018-12-06 13:28:00
Brisbane	City	San Mateo	california	37.6808014	-122.400002	1.75999999	29	Good air quality	pm10	2018-12-06 21:53:00	60.0999985	1	1013	4.0999999	0	2018-12-06 13:28:00
Buellton	City	Santa Barbara	california	34.6136017	-120.193001	2.18000007	46	Good air quality	pm25	2018-12-06 21:35:00	57.9700012	90	1011	1.5	0.50999999	2018-12-06 13:28:00
Buena Park	City	Orange	california	33.8674011	-117.998001	2.38000011	47	Good air quality	pm25	2018-12-06 21:51:00	54.0499992	90	1013	7.71999979	3.57999992	2018-12-06 13:28:00
Burbank	City	Los Angeles	california	34.1808014	-118.308998	2.29999995	60	Moderate air quality	pm25	2018-12-06 21:14:00	53.0200005	90	1012	2.5999999	3.49000001	2018-12-06 13:28:00
Burlingame	City	San Mateo	california	37.5778999	-122.348	1.75999999	57	Moderate air quality	pm25	2018-12-06 21:53:00	60.3499985	1	1013	4.0999999	0	2018-12-06 13:28:00
Calabasas	City	Los Angeles	california	34.1366997	-118.661003	2.30999994	27	Good air quality	o3	2018-12-06 21:09:00	55.2000008	90	1012	2.5999999	3.58999991	2018-12-06 13:28:00
Calexico	City	Imperial	california	32.6789017	-115.499001	2.77999997	67	Moderate air quality	pm25	2018-12-06 20:56:00	55.4700012	90	1016	2.5999999	0	2018-12-06 13:28:00
California City	City	Kern	california	35.1258011	-117.986	2.1400001	32	Good air quality	o3	2018-12-06 21:28:00	42.6699982	90	1015	5.0999999	1.01999998	2018-12-06 13:28:00
Calimesa	City	Riverside	california	34.0038986	-117.061996	2.43000007	58	Moderate air quality	pm25	2018-12-06 21:45:00	52.3899994	90	1013	1.16999996	7.11000013	2018-12-06 13:28:00
Calipatria	City	Imperial	california	33.1255989	-115.514	2.61999989	59	Moderate air quality	pm25	2018-12-06 20:56:00	55.4199982	90	1016	2.5999999	0	2018-12-06 13:28:00
Calistoga	City	Napa	california	38.5788002	-122.580002	1.65999997	49	Good air quality	pm25	2018-12-06 21:20:00	60.2999992	1	1014	1.32000005	0	2018-12-06 13:28:00
Camarillo	City	Ventura	california	34.2164001	-119.038002	2.28999996	60	Moderate air quality	pm25	2018-12-06 20:57:00	53.5099983	75	1011	7.69999981	1.90999997	2018-12-06 13:28:00
Campbell	City	Santa Clara	california	37.2872009	-121.949997	1.77999997	60	Moderate air quality	pm25	2018-12-06 21:40:00	60.5299988	1	1013	4.0999999	0	2018-12-06 13:28:00
Canyon Lake	City	Riverside	california	33.6850014	-117.273003	2.5	18	Good air quality	pm25	2018-12-06 21:45:00	58.0600014	90	1011	5.0999999	3.54999995	2018-12-06 13:28:00
Capitola	City	Santa Cruz	california	36.9752007	-121.953003	1.84000003	68	Moderate air quality	pm25	2018-12-06 21:15:00	61.4799995	1	1013	2.0999999	0	2018-12-06 13:28:00
Carlsbad	City	San Diego	california	33.1581001	-117.350998	2.5999999	52	Moderate air quality	pm25	2018-12-06 21:39:00	64.4700012	90	1010	3.0999999	0	2018-12-06 13:28:00
Carmel-by-the-Sea	City	Monterey	california	36.5551987	-121.922997	1.88999999	55	Moderate air quality	pm25	2018-12-06 21:15:00	62.5600014	1	1012	2.06999993	0	2018-12-06 13:28:00
Carpinteria	City	Santa Barbara	california	34.3988991	-119.517998	2.25	31	Good air quality	o3	2018-12-06 21:35:00	57.6500015	90	1011	1.5	0	2018-12-06 13:28:00
Carson	City	Los Angeles	california	33.8316994	-118.281998	2.36999989	47	Good air quality	pm25	2018-12-06 21:51:00	54.4300003	90	1011	5.0999999	3.57999992	2018-12-06 13:28:00
Cathedral City	City	Riverside	california	33.7804985	-116.467003	2.44000006	31	Good air quality	pm25	2018-12-06 21:35:00	52.9900017	90	1015	0.769999981	0	2018-12-06 13:28:00
Ceres	City	Stanislaus	california	37.5948982	-120.958	1.73000002	62	Moderate air quality	pm25	2018-12-06 21:15:00	58.5699997	1	1014	3.0999999	0	2018-12-06 13:28:00
Cerritos	City	Los Angeles	california	33.8582993	-118.065002	2.36999989	41	Good air quality	pm25	2018-12-06 21:53:00	54.3400002	90	1012	2.0999999	3.57999992	2018-12-06 13:28:00
Chico	City	Butte	california	39.7285004	-121.836998	1.53999996	61	Moderate air quality	pm25	2018-12-06 20:54:00	58.5099983	1	1014	4.5999999	0	2018-12-06 13:28:00
Chino	City	San Bernardino	california	34.0121994	-117.689003	2.38000011	45	Good air quality	pm25	2018-12-06 21:45:00	54.6800003	90	1013	1.51999998	4.15999985	2018-12-06 13:28:00
Chino Hills	City	San Bernardino	california	33.9897995	-117.733002	2.41000009	23	Good air quality	pm25	2018-12-06 21:53:00	53.6500015	90	1013	1.51999998	3.8900001	2018-12-06 13:28:00
Chowchilla	City	Madera	california	37.1230011	-120.260002	1.77999997	56	Moderate air quality	pm25	2018-12-06 21:53:00	55.8100014	90	1014	1.82000005	0	2018-12-06 13:28:00
Chula Vista	City	San Diego	california	32.6400986	-117.084	2.73000002	62	Moderate air quality	pm25	2018-12-06 21:39:00	65.3000031	90	1011	6.19999981	0	2018-12-06 13:28:00
Citrus Heights	City	Sacramento	california	38.7070999	-121.280998	1.63	45	Good air quality	pm25	2018-12-06 21:50:00	58.1199989	5	1013	5.0999999	0	2018-12-06 13:28:00
Claremont	City	Los Angeles	california	34.0966988	-117.720001	2.38000011	54	Moderate air quality	pm25	2018-12-06 21:45:00	53.7299995	90	1013	1.51999998	3.8900001	2018-12-06 13:28:00
Clayton	City	Contra Costa	california	37.9410019	-121.935997	1.73000002	26	Good air quality	pm25	2018-12-06 21:53:00	59.9700012	1	1013	4.5999999	0	2018-12-06 13:28:00
Clearlake	City	Lake	california	38.9581985	-122.625999	1.65999997	32	Good air quality	pm25	2018-12-06 20:56:00	57.0200005	1	1014	1.57000005	0	2018-12-06 13:28:00
Cloverdale	City	Sonoma	california	38.8055	-123.016998	1.64999998	65	Moderate air quality	pm25	2018-12-06 20:56:00	57.0200005	1	1014	0.620000005	0	2018-12-06 13:28:00
Clovis	City	Fresno	california	36.8251991	-119.703003	1.84000003	45	Good air quality	pm25	2018-12-06 21:35:00	53.4599991	90	1014	2.0999999	0	2018-12-06 13:28:00
Coachella	City	Riverside	california	33.6803017	-116.174004	2.47000003	31	Good air quality	pm10	2018-12-06 21:35:00	52.5699997	90	1015	0.769999981	0	2018-12-06 13:28:00
Coalinga	City	Fresno	california	36.1397018	-120.360001	1.92999995	35	Good air quality	pm25	2018-12-06 21:20:00	54.2999992	90	1013	5.69999981	0	2018-12-06 13:28:00
Colfax	City	Placer	california	39.1007004	-120.953003	1.63	29	Good air quality	pm25	2018-12-06 21:50:00	57.0600014	1	1013	2.0999999	0	2018-12-06 13:28:00
Colma	Town	San Mateo	california	37.676899	-122.459999	1.75999999	52	Moderate air quality	pm25	2018-12-06 21:40:00	60.0999985	1	1013	4.0999999	0	2018-12-06 13:28:00
Colton	City	San Bernardino	california	34.0738983	-117.314003	2.36999989	52	Moderate air quality	pm25	2018-12-06 21:45:00	53.6899986	90	1013	1.51999998	3.54999995	2018-12-06 13:28:00
Colusa	City	Colusa	california	39.2142982	-122.009003	1.58000004	51	Moderate air quality	pm25	2018-12-06 21:35:00	58.1199989	1	1014	3.5999999	0	2018-12-06 13:28:00
Commerce	City	Los Angeles	california	34.0005989	-118.160004	2.32999992	55	Moderate air quality	pm25	2018-12-06 21:53:00	54.5900002	90	1012	2.0999999	3.8900001	2018-12-06 13:28:00
Compton	City	Los Angeles	california	33.8958015	-118.220001	2.36999989	56	Moderate air quality	pm25	2018-12-06 21:51:00	54.4300003	90	1011	5.0999999	3.57999992	2018-12-06 13:28:00
Concord	City	Contra Costa	california	37.9780006	-122.030998	1.72000003	59	Moderate air quality	pm25	2018-12-06 21:40:00	60.0400009	1	1013	4.0999999	0	2018-12-06 13:28:00
Corcoran	City	Kings	california	36.0979996	-119.559998	1.90999997	69	Moderate air quality	pm25	2018-12-06 21:33:00	52.3400002	90	1014	3.0999999	2.53999996	2018-12-06 13:28:00
Corning	City	Tehama	california	39.9277	-122.179001	1.51999998	40	Good air quality	pm25	2018-12-06 20:54:00	59	1	1015	3.0999999	0	2018-12-06 13:28:00
Corona	City	Riverside	california	33.8753014	-117.566002	2.41000009	48	Good air quality	pm25	2018-12-06 21:45:00	55.7999992	90	1013	3.01999998	4.73999977	2018-12-06 13:28:00
Coronado	City	San Diego	california	32.6859016	-117.182999	2.73000002	57	Moderate air quality	pm25	2018-12-06 21:39:00	65.0299988	90	1011	6.19999981	0	2018-12-06 13:28:00
Corte Madera	Town	Marin	california	37.925499	-122.527	1.72000003	32	Good air quality	pm25	2018-12-06 21:53:00	60.3699989	1	1013	4.0999999	0	2018-12-06 13:28:00
Costa Mesa	City	Orange	california	33.641201	-117.918999	2.44000006	44	Good air quality	pm25	2018-12-06 21:51:00	54.9500008	90	1013	7.71999979	3.77999997	2018-12-06 13:28:00
Cotati	City	Sonoma	california	38.3292999	-122.709999	1.66999996	58	Moderate air quality	pm25	2018-12-06 21:15:00	60.8199997	1	1014	1.32000005	0	2018-12-06 13:28:00
Covina	City	Los Angeles	california	34.0900002	-117.889999	2.3499999	53	Moderate air quality	pm25	2018-12-06 21:45:00	53.7299995	90	1013	1.51999998	3.8900001	2018-12-06 13:28:00
Crescent City	City	Del Norte	california	41.7556992	-124.203003	1.29999995	58	Moderate air quality	pm25	2018-12-06 21:56:00	54.8100014	1	1015	1.5	0	2018-12-06 13:28:00
Cudahy	City	Los Angeles	california	33.9606018	-118.184998	2.36999989	54	Moderate air quality	pm25	2018-12-06 21:53:00	54.3600006	90	1012	2.0999999	3.57999992	2018-12-06 13:28:00
Culver City	City	Los Angeles	california	34.0210991	-118.396004	2.29999995	58	Moderate air quality	pm25	2018-12-06 21:53:00	54.6800003	90	1012	2.0999999	3.19000006	2018-12-06 13:28:00
Cupertino	City	Santa Clara	california	37.3230019	-122.031998	1.80999994	60	Moderate air quality	pm25	2018-12-06 21:40:00	60.3499985	1	1013	4.0999999	0	2018-12-06 13:28:00
Cypress	City	Orange	california	33.8168983	-118.037003	2.36999989	33	Good air quality	pm25	2018-12-06 21:51:00	54.4099998	90	1013	7.71999979	3.57999992	2018-12-06 13:28:00
Daly City	City	San Mateo	california	37.6879005	-122.470001	1.75999999	59	Moderate air quality	pm25	2018-12-06 21:53:00	60.4399986	1	1013	4.0999999	0	2018-12-06 13:28:00
Dana Point	City	Orange	california	33.4672012	-117.697998	2.50999999	48	Good air quality	pm25	2018-12-06 21:51:00	56.9300003	90	1013	3.01999998	4.4000001	2018-12-06 13:28:00
Danville	Town	Contra Costa	california	37.8216019	-122	1.73000002	54	Moderate air quality	pm25	2018-12-06 21:53:00	59.9700012	1	1013	4.5999999	0	2018-12-06 13:28:00
Davis	City	Yolo	california	38.544899	-121.740997	1.63	54	Moderate air quality	pm25	2018-12-06 21:50:00	59.4900017	5	1013	5.0999999	0	2018-12-06 13:28:00
Del Mar	City	San Diego	california	32.9594994	-117.264999	2.69000006	34	Good air quality	pm25	2018-12-06 21:39:00	64.7200012	90	1011	6.19999981	0	2018-12-06 13:28:00
Del Rey Oaks	City	Monterey	california	36.5932999	-121.834999	1.88999999	29	Good air quality	pm25	2018-12-06 21:15:00	62.5600014	1	1012	2.06999993	0	2018-12-06 13:28:00
Delano	City	Kern	california	35.7687988	-119.247002	1.94000006	68	Moderate air quality	pm25	2018-12-06 21:33:00	52	90	1014	1.82000005	2.53999996	2018-12-06 13:28:00
Desert Hot Springs	City	Riverside	california	33.9611015	-116.501999	2.5	54	Moderate air quality	pm25	2018-12-06 20:56:00	51.9799995	90	1017	4.0999999	0	2018-12-06 13:28:00
Diamond Bar	City	Los Angeles	california	34.0285988	-117.809998	2.3499999	59	Moderate air quality	pm25	2018-12-06 21:53:00	53.6500015	90	1013	1.51999998	3.8900001	2018-12-06 13:28:00
Dinuba	City	Tulare	california	36.5433006	-119.387001	1.87	55	Moderate air quality	pm25	2018-12-06 21:35:00	52.6800003	90	1014	3.0999999	2.53999996	2018-12-06 13:28:00
Dixon	City	Solano	california	38.4454994	-121.822998	1.64999998	47	Good air quality	pm25	2018-12-06 21:50:00	59.5200005	5	1013	5.0999999	0	2018-12-06 13:28:00
Dorris	City	Siskiyou	california	41.9673996	-121.917999	1.36000001	40	Good air quality	pm25	2018-12-06 20:53:00	36.8800011	1	1017	2.5999999	0	2018-12-06 13:28:00
Dos Palos	City	Merced	california	36.9860992	-120.626999	1.80999994	54	Moderate air quality	pm25	2018-12-06 21:53:00	58.5999985	90	1013	1.5	0	2018-12-06 13:28:00
Downey	City	Los Angeles	california	33.9401016	-118.133003	2.36999989	55	Moderate air quality	pm25	2018-12-06 21:51:00	54.4300003	90	1013	1.32000005	3.57999992	2018-12-06 13:28:00
Duarte	City	Los Angeles	california	34.1394997	-117.976997	2.3499999	55	Moderate air quality	pm25	2018-12-06 21:45:00	54.0699997	90	1013	1.32000005	3.8900001	2018-12-06 13:28:00
Dublin	City	Alameda	california	37.7022018	-121.935997	1.75999999	54	Moderate air quality	pm25	2018-12-06 21:55:00	59.8300018	1	1013	4.5999999	0	2018-12-06 13:28:00
Dunsmuir	City	Siskiyou	california	41.2081985	-122.272003	1.46000004	57	Moderate air quality	pm25	2018-12-06 21:10:00	43.0499992	1	1015	2.0999999	0	2018-12-06 13:28:00
East Palo Alto	City	San Mateo	california	37.4687996	-122.140999	1.80999994	71	Moderate air quality	pm25	2018-12-06 21:40:00	60.4900017	1	1013	4.0999999	0	2018-12-06 13:28:00
Eastvale	City	Riverside	california	33.9524994	-117.584999	2.41000009	29	Good air quality	pm25	2018-12-06 21:45:00	55	90	1013	1.51999998	4.46000004	2018-12-06 13:28:00
El Cajon	City	San Diego	california	32.7947998	-116.962997	2.72000003	54	Moderate air quality	pm25	2018-12-06 21:39:00	64.7099991	90	1011	6.19999981	0	2018-12-06 13:28:00
El Centro	City	Imperial	california	32.7919998	-115.563004	2.70000005	40	Good air quality	pm25	2018-12-06 20:56:00	55.4399986	90	1015	1.5	0	2018-12-06 13:28:00
El Cerrito	City	Contra Costa	california	37.9160995	-122.310997	1.71000004	57	Moderate air quality	pm25	2018-12-06 21:55:00	60.1199989	1	1013	4.5999999	0	2018-12-06 13:28:00
El Monte	City	Los Angeles	california	34.0685997	-118.028	2.32999992	60	Moderate air quality	pm25	2018-12-06 21:53:00	54	90	1012	2.0999999	3.8900001	2018-12-06 13:28:00
El Segundo	City	Los Angeles	california	33.9192009	-118.416	2.36999989	52	Moderate air quality	pm25	2018-12-06 21:51:00	54.7299995	90	1011	5.0999999	3.19000006	2018-12-06 13:28:00
Elk Grove	City	Sacramento	california	38.4087982	-121.372002	1.64999998	52	Moderate air quality	pm25	2018-12-06 21:50:00	58.6899986	5	1013	5.0999999	0	2018-12-06 13:28:00
Emeryville	City	Alameda	california	37.8312988	-122.285004	1.71000004	51	Moderate air quality	pm25	2018-12-06 21:55:00	60.2099991	1	1014	3.0999999	0	2018-12-06 13:28:00
Encinitas	City	San Diego	california	33.0369987	-117.292	2.5999999	46	Good air quality	pm25	2018-12-06 21:39:00	64.7200012	90	1010	3.0999999	0	2018-12-06 13:28:00
Escalon	City	San Joaquin	california	37.7974014	-120.997002	1.71000004	64	Moderate air quality	pm25	2018-12-06 21:55:00	58.5699997	1	1013	4.0999999	0	2018-12-06 13:28:00
Escondido	City	San Diego	california	33.1192017	-117.085999	2.61999989	52	Moderate air quality	pm25	2018-12-06 21:39:00	64.7200012	90	1011	2.42000008	0	2018-12-06 13:28:00
Etna	City	Siskiyou	california	41.4567986	-122.894997	1.44000006	45	Good air quality	pm25	2018-12-06 21:10:00	43.0900002	1	1015	1.07000005	0	2018-12-06 13:28:00
Eureka	City	Humboldt	california	40.8021011	-124.164001	1.44000006	46	Good air quality	pm25	2018-12-06 21:35:00	56.4799995	1	1015	3.0999999	0	2018-12-06 13:28:00
Exeter	City	Tulare	california	36.2961006	-119.141998	1.89999998	56	Moderate air quality	pm25	2018-12-06 21:33:00	52.0200005	90	1014	3.0999999	2.53999996	2018-12-06 13:28:00
Fairfax	Town	Marin	california	37.9870987	-122.588997	1.72000003	24	Good air quality	pm10	2018-12-06 21:53:00	60.5800018	1	1014	3.0999999	0	2018-12-06 13:28:00
Fairfield	City	Solano	california	38.2494011	-122.040001	1.69000006	43	Good air quality	pm25	2018-12-06 21:53:00	59.9000015	1	1013	4.5999999	0	2018-12-06 13:28:00
Farmersville	City	Tulare	california	36.297699	-119.207001	1.89999998	57	Moderate air quality	pm25	2018-12-06 21:35:00	52.2999992	90	1014	3.0999999	2.53999996	2018-12-06 13:28:00
Ferndale	City	Humboldt	california	40.5761986	-124.264	1.45000005	23	Good air quality	o3	2018-12-06 21:35:00	56.3899994	1	1015	3.0999999	0	2018-12-06 13:28:00
Fillmore	City	Ventura	california	34.3992004	-118.917999	2.25999999	28	Good air quality	o3	2018-12-06 21:53:00	53.5099983	90	1012	2.0999999	1.90999997	2018-12-06 13:28:00
Firebaugh	City	Fresno	california	36.858799	-120.456001	1.80999994	69	Moderate air quality	pm25	2018-12-06 21:53:00	55.8499985	90	1014	1.66999996	0	2018-12-06 13:28:00
Folsom	City	Sacramento	california	38.6780014	-121.176003	1.63	61	Moderate air quality	pm25	2018-12-06 21:53:00	57.8499985	5	1013	5.0999999	0	2018-12-06 13:28:00
Fontana	City	San Bernardino	california	34.0922012	-117.434998	2.36999989	54	Moderate air quality	pm25	2018-12-06 21:45:00	54.6100006	90	1013	1.51999998	4.44000006	2018-12-06 13:28:00
Fort Bragg	City	Mendocino	california	39.4457016	-123.805	1.59000003	53	Moderate air quality	pm25	2018-12-06 20:56:00	57.0200005	1	1014	1.32000005	0	2018-12-06 13:28:00
Fort Jones	City	Siskiyou	california	41.6076012	-122.839996	1.38999999	45	Good air quality	pm25	2018-12-06 20:56:00	41.5600014	1	1017	1.5	0	2018-12-06 13:28:00
Fortuna	City	Humboldt	california	40.5982018	-124.156998	1.46000004	37	Good air quality	pm25	2018-12-06 21:35:00	56.3899994	1	1015	3.0999999	0	2018-12-06 13:28:00
Foster City	City	San Mateo	california	37.5584984	-122.271004	1.75999999	62	Moderate air quality	pm25	2018-12-06 21:53:00	60.3499985	1	1013	4.0999999	0	2018-12-06 13:28:00
Fountain Valley	City	Orange	california	33.7089996	-117.954002	2.44000006	47	Good air quality	pm25	2018-12-06 21:51:00	54.4300003	90	1013	7.71999979	3.77999997	2018-12-06 13:28:00
Fowler	City	Fresno	california	36.6305008	-119.678001	1.86000001	49	Good air quality	pm25	2018-12-06 21:56:00	53.8499985	90	1014	3.0999999	0	2018-12-06 13:28:00
Fremont	City	Alameda	california	37.5483017	-121.988998	1.75999999	55	Moderate air quality	pm25	2018-12-06 21:55:00	60.5699997	1	1013	4.5999999	0	2018-12-06 13:28:00
Fresno	City	Fresno	california	36.7378006	-119.787003	1.85000002	69	Moderate air quality	pm25	2018-12-06 21:35:00	53.1899986	90	1014	1.5	0	2018-12-06 13:28:00
Fullerton	City	Orange	california	33.8703995	-117.924004	2.38000011	43	Good air quality	pm25	2018-12-06 21:53:00	53.5299988	90	1013	7.71999979	3.57999992	2018-12-06 13:28:00
Galt	City	Sacramento	california	38.2546005	-121.300003	1.64999998	55	Moderate air quality	pm25	2018-12-06 21:55:00	58.7999992	5	1013	5.0999999	0	2018-12-06 13:28:00
Garden Grove	City	Orange	california	33.7742996	-117.938004	2.38000011	41	Good air quality	pm25	2018-12-06 21:53:00	53.5099983	90	1013	7.71999979	3.57999992	2018-12-06 13:28:00
Gardena	City	Los Angeles	california	33.8883018	-118.308998	2.36999989	53	Moderate air quality	pm25	2018-12-06 21:53:00	54.3600006	90	1012	2.0999999	3.57999992	2018-12-06 13:28:00
Gilroy	City	Santa Clara	california	37.0057983	-121.568001	1.83000004	64	Moderate air quality	pm25	2018-12-06 21:56:00	61.9300003	1	1012	1.41999996	0	2018-12-06 13:28:00
Glendale	City	Los Angeles	california	34.1425018	-118.254997	2.29999995	58	Moderate air quality	pm25	2018-12-06 21:45:00	53.0600014	90	1013	1.32000005	3.8900001	2018-12-06 13:28:00
Glendora	City	Los Angeles	california	34.1361008	-117.864998	2.3499999	58	Moderate air quality	pm25	2018-12-06 21:53:00	53.6500015	90	1012	2.0999999	3.8599999	2018-12-06 13:28:00
Goleta	City	Santa Barbara	california	34.4357986	-119.828003	2.22000003	46	Good air quality	pm25	2018-12-06 21:35:00	57.7000008	90	1011	1.5	0	2018-12-06 13:28:00
Gonzales	City	Monterey	california	36.5065994	-121.444	1.88999999	60	Moderate air quality	pm25	2018-12-06 21:15:00	62.5499992	1	1013	2.0999999	0	2018-12-06 13:28:00
Grand Terrace	City	San Bernardino	california	34.0339012	-117.314003	2.36999989	51	Moderate air quality	pm25	2018-12-06 21:45:00	53.6899986	90	1013	1.51999998	3.54999995	2018-12-06 13:28:00
Grass Valley	City	Nevada	california	39.219101	-121.060997	1.61000001	55	Moderate air quality	pm25	2018-12-06 21:53:00	56.7999992	1	1013	2.0999999	0	2018-12-06 13:28:00
Greenfield	City	Monterey	california	36.3208008	-121.244003	1.92999995	58	Moderate air quality	pm25	2018-12-06 21:15:00	62.5299988	1	1013	2.0999999	0	2018-12-06 13:28:00
Gridley	City	Butte	california	39.3638	-121.694	1.55999994	39	Good air quality	pm25	2018-12-06 21:53:00	57.5600014	1	1014	4.5999999	0	2018-12-06 13:28:00
Grover Beach	City	San Luis Obispo	california	35.1216011	-120.621002	2.07999992	37	Good air quality	pm25	2018-12-06 21:20:00	57.8100014	75	1011	3.0999999	0.50999999	2018-12-06 13:28:00
Guadalupe	City	Santa Barbara	california	34.9715996	-120.571999	2.11999989	22	Good air quality	o3	2018-12-06 21:35:00	57.9000015	90	1011	1.5	0.50999999	2018-12-06 13:28:00
Gustine	City	Merced	california	37.2577019	-120.999001	1.75999999	53	Moderate air quality	pm25	2018-12-06 21:53:00	60.6599998	1	1013	4.0999999	0	2018-12-06 13:28:00
Half Moon Bay	City	San Mateo	california	37.4636002	-122.429001	1.79999995	38	Good air quality	pm25	2018-12-06 21:53:00	60.4399986	1	1013	4.0999999	0	2018-12-06 13:28:00
Hanford	City	Kings	california	36.3274002	-119.646004	1.88999999	52	Moderate air quality	pm25	2018-12-06 21:56:00	52.8100014	90	1014	3.0999999	2.53999996	2018-12-06 13:28:00
Hawaiian Gardens	City	Los Angeles	california	33.8314018	-118.072998	2.36999989	50	Good air quality	pm25	2018-12-06 21:53:00	54.3400002	90	1011	4.5999999	3.54999995	2018-12-06 13:28:00
Hawthorne	City	Los Angeles	california	33.9164009	-118.352997	2.36999989	55	Moderate air quality	pm25	2018-12-06 21:53:00	54.3600006	90	1012	2.0999999	3.57999992	2018-12-06 13:28:00
Hayward	City	Alameda	california	37.6688004	-122.081001	1.74000001	58	Moderate air quality	pm25	2018-12-06 21:55:00	60.0299988	1	1013	4.5999999	0	2018-12-06 13:28:00
Healdsburg	City	Sonoma	california	38.6105003	-122.869003	1.64999998	58	Moderate air quality	pm25	2018-12-06 21:15:00	59.3199997	1	1014	1.32000005	0	2018-12-06 13:28:00
Hemet	City	Riverside	california	33.7475014	-116.972	2.55999994	56	Moderate air quality	pm25	2018-12-06 21:45:00	57.7900009	90	1011	5.0999999	7.11000013	2018-12-06 13:28:00
Hercules	City	Contra Costa	california	38.0171013	-122.289001	1.67999995	28	Good air quality	pm25	2018-12-06 21:55:00	60.4599991	1	1014	3.0999999	0	2018-12-06 13:28:00
Hermosa Beach	City	Los Angeles	california	33.8622017	-118.400002	2.36999989	53	Moderate air quality	pm25	2018-12-06 21:53:00	54.4300003	90	1012	2.0999999	3.19000006	2018-12-06 13:28:00
Hesperia	City	San Bernardino	california	34.4263992	-117.301003	2.36999989	27	Good air quality	pm25	2018-12-06 21:45:00	51.0400009	90	1013	1.51999998	7.11000013	2018-12-06 13:28:00
Hidden Hills	City	Los Angeles	california	34.1603012	-118.652	2.30999994	27	Good air quality	o3	2018-12-06 21:57:00	55.1300011	90	1012	2.0999999	3.54999995	2018-12-06 13:28:00
Highland	City	San Bernardino	california	34.1282997	-117.209	2.43000007	49	Good air quality	pm25	2018-12-06 21:45:00	52.3800011	90	1013	1.16999996	7.11000013	2018-12-06 13:28:00
Hillsborough	Town	San Mateo	california	37.5741005	-122.378998	1.75999999	32	Good air quality	pm25	2018-12-06 21:53:00	60.5299988	1	1013	4.0999999	0	2018-12-06 13:28:00
Hollister	City	San Benito	california	36.8525009	-121.402	1.84000003	61	Moderate air quality	pm25	2018-12-06 21:54:00	62.7099991	1	1012	1.57000005	0	2018-12-06 13:28:00
Holtville	City	Imperial	california	32.8111992	-115.379997	2.71000004	70	Moderate air quality	pm25	2018-12-06 21:56:00	54.8199997	90	1016	2.0999999	0.50999999	2018-12-06 13:28:00
Hughson	City	Stanislaus	california	37.6026993	-120.865997	1.73000002	49	Good air quality	pm25	2018-12-06 21:53:00	58.9099998	1	1013	4.0999999	0	2018-12-06 13:28:00
Huntington Beach	City	Orange	california	33.6595001	-117.999001	2.44000006	46	Good air quality	pm25	2018-12-06 21:51:00	54.8800011	90	1011	5.0999999	3.75	2018-12-06 13:28:00
Huntington Park	City	Los Angeles	california	33.9817009	-118.224998	2.36999989	57	Moderate air quality	pm25	2018-12-06 21:53:00	54.3600006	90	1012	2.0999999	3.57999992	2018-12-06 13:28:00
Huron	City	Fresno	california	36.2027016	-120.102997	1.90999997	36	Good air quality	pm25	2018-12-06 21:56:00	53.5499992	90	1014	3.0999999	0	2018-12-06 13:28:00
Imperial	City	Imperial	california	32.847599	-115.569	2.70000005	61	Moderate air quality	pm25	2018-12-06 21:56:00	54.7900009	90	1016	2.0999999	0.50999999	2018-12-06 13:28:00
Imperial Beach	City	San Diego	california	32.5839005	-117.112999	2.73000002	66	Moderate air quality	pm25	2018-12-06 21:39:00	65.2300034	90	1011	6.19999981	0	2018-12-06 13:28:00
Indian Wells	City	Riverside	california	33.7176018	-116.341003	2.55999994	28	Good air quality	pm25	2018-12-06 21:56:00	52.3899994	90	1017	6.19999981	0	2018-12-06 13:28:00
Indio	City	Riverside	california	33.7206001	-116.216003	2.47000003	52	Moderate air quality	pm25	2018-12-06 21:35:00	52.5900002	90	1015	0.769999981	0	2018-12-06 13:28:00
Industry	City	Los Angeles	california	34.0196991	-117.959	2.3499999	54	Moderate air quality	pm25	2018-12-06 21:53:00	53.6500015	90	1011	4.5999999	3.8599999	2018-12-06 13:28:00
Inglewood	City	Los Angeles	california	33.9617004	-118.352997	2.36999989	59	Moderate air quality	pm25	2018-12-06 21:53:00	54.3600006	90	1012	2.0999999	3.57999992	2018-12-06 13:28:00
Ione	City	Amador	california	38.3526993	-120.932999	1.65999997	62	Moderate air quality	pm25	2018-12-06 21:50:00	57.9700012	1	1013	3.0999999	0	2018-12-06 13:28:00
Irvine	City	Orange	california	33.6846008	-117.827003	2.44000006	39	Good air quality	pm25	2018-12-06 21:55:00	55.2200012	90	1013	3.01999998	3.75	2018-12-06 13:28:00
Irwindale	City	Los Angeles	california	34.1069984	-117.934998	2.3499999	56	Moderate air quality	pm25	2018-12-06 21:53:00	53.6500015	90	1012	2.0999999	3.8599999	2018-12-06 13:28:00
Isleton	City	Sacramento	california	38.1618996	-121.612	1.66999996	28	Good air quality	pm25	2018-12-06 21:55:00	59.4900017	1	1014	4.0999999	0	2018-12-06 13:28:00
Jackson	City	Amador	california	38.3488007	-120.774002	1.65999997	51	Moderate air quality	pm25	2018-12-06 21:50:00	58.2999992	1	1013	3.0999999	0	2018-12-06 13:28:00
Jurupa Valley	City	Riverside	california	33.9972	-117.485001	2.41000009	56	Moderate air quality	pm25	2018-12-06 21:45:00	54.8400002	90	1013	1.51999998	5.13000011	2018-12-06 13:28:00
Kerman	City	Fresno	california	36.7235985	-120.059998	1.83000004	56	Moderate air quality	pm25	2018-12-06 21:56:00	53.8899994	90	1014	2.22000003	0	2018-12-06 13:28:00
King City	City	Monterey	california	36.2126999	-121.125999	1.96000004	61	Moderate air quality	pm25	2018-12-06 20:53:00	62.9599991	1	1012	6.69999981	0	2018-12-06 13:28:00
Kingsburg	City	Fresno	california	36.5138016	-119.554001	1.86000001	54	Moderate air quality	pm25	2018-12-06 21:56:00	52.8100014	90	1014	2.5999999	2.53999996	2018-12-06 13:28:00
La CaÃ±ada Flintridge	City	Los Angeles	california	34.2067986	-118.199997	2.32999992	55	Moderate air quality	pm25	2018-12-06 21:53:00	52.9900017	90	1012	2.0999999	3.8599999	2018-12-06 13:28:00
La Habra	City	Orange	california	33.9319	-117.945999	2.38000011	45	Good air quality	pm25	2018-12-06 21:53:00	53.6399994	90	1011	4.5999999	3.8599999	2018-12-06 13:28:00
La Habra Heights	City	Los Angeles	california	33.9608002	-117.950996	2.38000011	30	Good air quality	pm25	2018-12-06 21:53:00	53.6399994	90	1011	4.5999999	3.8599999	2018-12-06 13:28:00
La Mesa	City	San Diego	california	32.7677994	-117.023003	2.68000007	55	Moderate air quality	pm25	2018-12-06 21:39:00	64.7099991	90	1011	6.19999981	0	2018-12-06 13:28:00
La Mirada	City	Los Angeles	california	33.9171982	-118.012001	2.36999989	47	Good air quality	pm25	2018-12-06 21:53:00	53.5099983	90	1011	4.5999999	3.54999995	2018-12-06 13:28:00
La Palma	City	Orange	california	33.8462982	-118.045998	2.36999989	35	Good air quality	pm25	2018-12-06 21:53:00	54.3400002	90	1011	4.5999999	3.54999995	2018-12-06 13:28:00
La Puente	City	Los Angeles	california	34.0200005	-117.949997	2.3499999	50	Good air quality	pm25	2018-12-06 21:53:00	53.6500015	90	1012	2.0999999	3.8900001	2018-12-06 13:28:00
La Quinta	City	Riverside	california	33.6633987	-116.309998	2.55999994	26	Good air quality	pm25	2018-12-06 21:35:00	53.5999985	90	1015	0.769999981	0	2018-12-06 13:28:00
La Verne	City	Los Angeles	california	34.1007996	-117.767998	2.3499999	54	Moderate air quality	pm25	2018-12-06 21:53:00	53.6699982	90	1013	1.51999998	3.8900001	2018-12-06 13:28:00
Lafayette	City	Contra Costa	california	37.8857994	-122.117996	1.72000003	41	Good air quality	pm25	2018-12-06 21:56:00	60.4799995	1	1014	3.0999999	0	2018-12-06 13:28:00
Laguna Beach	City	Orange	california	33.5427017	-117.785004	2.44000006	49	Good air quality	pm25	2018-12-06 21:55:00	55.8300018	90	1011	1.5	4.17000008	2018-12-06 13:28:00
Laguna Hills	City	Orange	california	33.5915985	-117.698997	2.48000002	34	Good air quality	o3	2018-12-06 21:55:00	55.8300018	90	1011	1.5	4.17000008	2018-12-06 13:28:00
Laguna Niguel	City	Orange	california	33.5237007	-117.714996	2.48000002	47	Good air quality	pm25	2018-12-06 21:51:00	56.9500008	90	1013	3.01999998	4.4000001	2018-12-06 13:28:00
Laguna Woods	City	Orange	california	33.610199	-117.724998	2.48000002	34	Good air quality	pm25	2018-12-06 21:55:00	55.8499985	90	1011	1.5	3.97000003	2018-12-06 13:28:00
Lake Elsinore	City	Riverside	california	33.6680984	-117.327003	2.5	50	Good air quality	pm25	2018-12-06 21:45:00	57.7000008	90	1013	3.01999998	4.44000006	2018-12-06 13:28:00
Lake Forest	City	Orange	california	33.6469002	-117.685997	2.48000002	34	Good air quality	o3	2018-12-06 21:45:00	56.4099998	90	1013	3.01999998	4.46000004	2018-12-06 13:28:00
Lakeport	City	Lake	california	39.0429001	-122.916	1.63999999	57	Moderate air quality	pm25	2018-12-06 20:56:00	57.0200005	1	1014	0.620000005	0	2018-12-06 13:28:00
Lakewood	City	Los Angeles	california	33.8535995	-118.134003	2.36999989	42	Good air quality	pm25	2018-12-06 21:53:00	54.3400002	90	1012	2.0999999	3.57999992	2018-12-06 13:28:00
Lancaster	City	Los Angeles	california	34.6867981	-118.153999	2.25999999	30	Good air quality	pm25	2018-12-06 21:53:00	44.1899986	90	1012	2.0999999	1.52999997	2018-12-06 13:28:00
Larkspur	City	Marin	california	37.9341011	-122.535004	1.72000003	25	Good air quality	pm10	2018-12-06 21:53:00	60.3699989	1	1013	4.0999999	0	2018-12-06 13:28:00
Lathrop	City	San Joaquin	california	37.8227005	-121.277	1.71000004	46	Good air quality	pm25	2018-12-06 21:55:00	58.9799995	1	1014	4.0999999	0	2018-12-06 13:28:00
Lawndale	City	Los Angeles	california	33.8871994	-118.352997	2.36999989	54	Moderate air quality	pm25	2018-12-06 21:53:00	54.3600006	90	1012	2.0999999	3.57999992	2018-12-06 13:28:00
Lemon Grove	City	San Diego	california	32.7425003	-117.030998	2.73000002	57	Moderate air quality	pm25	2018-12-06 21:39:00	65.0299988	90	1011	6.19999981	0	2018-12-06 13:28:00
Lemoore	City	Kings	california	36.3008003	-119.782997	1.88	45	Good air quality	pm25	2018-12-06 21:56:00	53.3100014	90	1014	3.0999999	0	2018-12-06 13:28:00
Lincoln	City	Placer	california	38.8916016	-121.292999	1.60000002	56	Moderate air quality	pm25	2018-12-06 21:53:00	58.0600014	1	1014	4.5999999	0	2018-12-06 13:28:00
Lindsay	City	Tulare	california	36.2029991	-119.087997	1.91999996	57	Moderate air quality	pm25	2018-12-06 21:33:00	52.0299988	90	1014	3.0999999	2.53999996	2018-12-06 13:28:00
Live Oak	City	Sutter	california	39.2756996	-121.660004	1.55999994	53	Moderate air quality	pm25	2018-12-06 21:53:00	58.1199989	1	1014	4.5999999	0	2018-12-06 13:28:00
Livermore	City	Alameda	california	37.6819	-121.767998	1.75999999	60	Moderate air quality	pm25	2018-12-06 21:56:00	60.4000015	1	1013	4.5999999	0	2018-12-06 13:28:00
Livingston	City	Merced	california	37.3869019	-120.723999	1.75999999	55	Moderate air quality	pm25	2018-12-06 21:53:00	58.6599998	90	1013	1.5	0	2018-12-06 13:28:00
Lodi	City	San Joaquin	california	38.1341019	-121.272003	1.66999996	60	Moderate air quality	pm25	2018-12-06 21:55:00	58.9300003	1	1014	4.0999999	0	2018-12-06 13:28:00
Loma Linda	City	San Bernardino	california	34.0483017	-117.261002	2.36999989	52	Moderate air quality	pm25	2018-12-06 21:45:00	53.7099991	90	1013	1.16999996	3.54999995	2018-12-06 13:28:00
Lomita	City	Los Angeles	california	33.7921982	-118.315002	2.36999989	20	Good air quality	o3	2018-12-06 21:53:00	54.3400002	90	1011	4.5999999	3.54999995	2018-12-06 13:28:00
Lompoc	City	Santa Barbara	california	34.6390991	-120.458	2.18000007	46	Good air quality	pm25	2018-12-06 21:35:00	58.3300018	90	1011	3.5999999	0.50999999	2018-12-06 13:28:00
Long Beach	City	Los Angeles	california	33.7700996	-118.194	2.36999989	57	Moderate air quality	pm25	2018-12-06 21:53:00	54.3400002	90	1011	5.0999999	3.57999992	2018-12-06 13:28:00
Loomis	Town	Placer	california	38.8213005	-121.193001	1.62	55	Moderate air quality	pm25	2018-12-06 21:53:00	57.8499985	5	1013	5.0999999	0	2018-12-06 13:28:00
Los Alamitos	City	Orange	california	33.8031998	-118.071999	2.36999989	43	Good air quality	pm25	2018-12-06 21:53:00	54.3400002	90	1011	4.5999999	3.54999995	2018-12-06 13:28:00
Los Altos	City	Santa Clara	california	37.3852005	-122.113998	1.80999994	60	Moderate air quality	pm25	2018-12-06 21:55:00	60.5699997	1	1013	4.5999999	0	2018-12-06 13:28:00
Los Altos Hills	Town	Santa Clara	california	37.3796997	-122.137001	1.80999994	46	Good air quality	pm25	2018-12-06 21:56:00	60.6199989	1	1014	2.5999999	0	2018-12-06 13:28:00
Los Angeles	City	Los Angeles	california	34.0522003	-118.244003	2.32999992	65	Moderate air quality	pm25	2018-12-06 21:53:00	54	90	1011	4.5999999	3.8599999	2018-12-06 13:28:00
Los Banos	City	Merced	california	37.0583	-120.849998	1.78999996	54	Moderate air quality	pm25	2018-12-06 21:53:00	60.0400009	90	1013	1.5	0	2018-12-06 13:28:00
Los Gatos	Town	Santa Clara	california	37.2358017	-121.961998	1.84000003	52	Moderate air quality	pm25	2018-12-06 21:56:00	60.8499985	1	1014	2.5999999	0	2018-12-06 13:28:00
Loyalton	City	Sierra	california	39.6763	-120.240997	1.64999998	40	Good air quality	pm25	2018-12-06 21:55:00	30.7399998	90	1017	4.0999999	0	2018-12-06 13:28:00
Lynwood	City	Los Angeles	california	33.9303017	-118.210999	2.36999989	57	Moderate air quality	pm25	2018-12-06 21:53:00	54.3400002	90	1011	4.5999999	3.54999995	2018-12-06 13:28:00
Madera	City	Madera	california	36.9612999	-120.060997	1.79999995	71	Moderate air quality	pm25	2018-12-06 21:55:00	55.5099983	90	1014	1.82000005	0	2018-12-06 13:28:00
Malibu	City	Los Angeles	california	34.0259018	-118.779999	2.31999993	29	Good air quality	o3	2018-12-06 21:57:00	54.3899994	75	1011	9.30000019	3.4000001	2018-12-06 13:28:00
Mammoth Lakes	Town	Mono	california	37.6484985	-118.972	2	58	Moderate air quality	pm25	2018-12-06 21:55:00	32	90	1016	1.32000005	0	2018-12-06 13:28:00
Manhattan Beach	City	Los Angeles	california	33.8847008	-118.411003	2.36999989	52	Moderate air quality	pm25	2018-12-06 21:53:00	54.4300003	90	1012	2.0999999	3.19000006	2018-12-06 13:28:00
Manteca	City	San Joaquin	california	37.7974014	-121.216003	1.71000004	63	Moderate air quality	pm25	2018-12-06 21:55:00	58.9799995	1	1013	4.0999999	0	2018-12-06 13:28:00
Maricopa	City	Kern	california	35.0588989	-119.401001	2.05999994	52	Moderate air quality	pm25	2018-12-06 20:54:00	53.0600014	90	1013	2.5999999	0	2018-12-06 13:28:00
Marina	City	Monterey	california	36.6843987	-121.802002	1.88999999	54	Moderate air quality	pm25	2018-12-06 21:54:00	63.1899986	1	1012	2.06999993	0	2018-12-06 13:28:00
Martinez	City	Contra Costa	california	38.0194016	-122.134003	1.69000006	57	Moderate air quality	pm25	2018-12-06 21:56:00	60.3899994	1	1014	3.0999999	0	2018-12-06 13:28:00
Marysville	City	Yuba	california	39.1456985	-121.591003	1.58000004	61	Moderate air quality	pm25	2018-12-06 21:53:00	57.9900017	1	1014	4.5999999	0	2018-12-06 13:28:00
Maywood	City	Los Angeles	california	33.9866982	-118.184998	2.36999989	57	Moderate air quality	pm25	2018-12-06 21:53:00	54.3600006	90	1012	2.0999999	3.57999992	2018-12-06 13:28:00
McFarland	City	Kern	california	35.6780014	-119.228996	1.98000002	119	Unhealthy for sensitive groups air quality	pm25	2018-12-06 21:15:00	50.8100014	90	1014	1.82000005	2.53999996	2018-12-06 13:28:00
Mendota	City	Fresno	california	36.7536011	-120.382004	1.80999994	58	Moderate air quality	pm25	2018-12-06 21:56:00	54.7000008	90	1014	1.66999996	0	2018-12-06 13:28:00
Menifee	City	Riverside	california	33.6971016	-117.184998	2.49000001	24	Good air quality	o3	2018-12-06 21:55:00	57.8699989	90	1011	1.5	4.94999981	2018-12-06 13:28:00
Menlo Park	City	San Mateo	california	37.4529991	-122.181999	1.80999994	73	Moderate air quality	pm25	2018-12-06 21:56:00	60.6199989	1	1014	2.5999999	0	2018-12-06 13:28:00
Merced	City	Merced	california	37.3022003	-120.483002	1.75999999	60	Moderate air quality	pm25	2018-12-06 21:53:00	58.6800003	90	1013	1.5	0	2018-12-06 13:28:00
Mill Valley	City	Marin	california	37.9059982	-122.544998	1.72000003	42	Good air quality	pm25	2018-12-06 21:53:00	60.4399986	1	1014	3.0999999	0	2018-12-06 13:28:00
Millbrae	City	San Mateo	california	37.5984993	-122.387001	1.75999999	57	Moderate air quality	pm25	2018-12-06 21:56:00	60.4799995	20	1014	3.0999999	0	2018-12-06 13:28:00
Milpitas	City	Santa Clara	california	37.4323006	-121.900002	1.77999997	60	Moderate air quality	pm25	2018-12-06 21:56:00	60.6199989	1	1014	2.5999999	0	2018-12-06 13:28:00
Mission Viejo	City	Orange	california	33.5969009	-117.657997	2.48000002	36	Good air quality	pm25	2018-12-06 21:55:00	57.1500015	90	1011	1.5	5.13000011	2018-12-06 13:28:00
Modesto	City	Stanislaus	california	37.6390991	-120.997002	1.73000002	70	Moderate air quality	pm25	2018-12-06 21:55:00	58.9300003	1	1013	4.0999999	0	2018-12-06 13:28:00
Monrovia	City	Los Angeles	california	34.1442986	-118.001999	2.32999992	56	Moderate air quality	pm25	2018-12-06 21:53:00	52.9700012	90	1012	2.0999999	3.8599999	2018-12-06 13:28:00
Montague	City	Siskiyou	california	41.728199	-122.528	1.38	44	Good air quality	pm25	2018-12-06 20:56:00	41.6100006	1	1017	1.5	0	2018-12-06 13:28:00
Montclair	City	San Bernardino	california	34.0774994	-117.690002	2.38000011	50	Good air quality	pm25	2018-12-06 21:53:00	53.6500015	90	1013	1.51999998	3.8599999	2018-12-06 13:28:00
Monte Sereno	City	Santa Clara	california	37.2363014	-121.991997	1.84000003	44	Good air quality	pm25	2018-12-06 21:56:00	60.8499985	1	1014	2.5999999	0	2018-12-06 13:28:00
Montebello	City	Los Angeles	california	34.0164986	-118.113998	2.32999992	42	Good air quality	pm25	2018-12-06 21:53:00	53.9799995	90	1011	4.5999999	3.8599999	2018-12-06 13:28:00
Monterey	City	Monterey	california	36.6002007	-121.894997	1.88999999	61	Moderate air quality	pm25	2018-12-06 21:54:00	63.1800003	1	1012	2.06999993	0	2018-12-06 13:28:00
Monterey Park	City	Los Angeles	california	34.0625	-118.123001	2.32999992	54	Moderate air quality	pm25	2018-12-06 21:53:00	54	90	1012	2.0999999	3.8900001	2018-12-06 13:28:00
Moorpark	City	Ventura	california	34.2855988	-118.882004	2.25999999	46	Good air quality	pm25	2018-12-06 21:57:00	54.0299988	75	1011	9.30000019	2.3499999	2018-12-06 13:28:00
Moraga	Town	Contra Costa	california	37.8348999	-122.129997	1.72000003	25	Good air quality	pm10	2018-12-06 21:56:00	60.4799995	20	1014	3.0999999	0	2018-12-06 13:28:00
Moreno Valley	City	Riverside	california	33.9425011	-117.230003	2.43000007	52	Moderate air quality	pm25	2018-12-06 21:45:00	54.8800011	90	1013	1.16999996	3.54999995	2018-12-06 13:28:00
Morgan Hill	City	Santa Clara	california	37.1305008	-121.653999	1.83000004	62	Moderate air quality	pm25	2018-12-06 21:56:00	61.4500008	1	1013	3.0999999	0	2018-12-06 13:28:00
Morro Bay	City	San Luis Obispo	california	35.3658981	-120.849998	2.04999995	29	Good air quality	o3	2018-12-06 21:20:00	58.5900002	90	1013	5.69999981	0	2018-12-06 13:28:00
Mount Shasta	City	Siskiyou	california	41.3098984	-122.310997	1.42999995	53	Moderate air quality	pm25	2018-12-06 21:10:00	43.1100006	1	1015	2.0999999	0	2018-12-06 13:28:00
Mountain View	City	Santa Clara	california	37.3861008	-122.084	1.80999994	66	Moderate air quality	pm25	2018-12-06 21:56:00	60.6199989	1	1014	2.5999999	0	2018-12-06 13:28:00
Murrieta	City	Riverside	california	33.5539017	-117.213997	2.49000001	28	Good air quality	o3	2018-12-06 21:55:00	58.1899986	90	1011	1.5	4.94999981	2018-12-06 13:28:00
Napa	City	Napa	california	38.2975006	-122.287003	1.66999996	52	Moderate air quality	pm25	2018-12-06 21:55:00	61.0699997	1	1014	1.32000005	0	2018-12-06 13:28:00
National City	City	San Diego	california	32.6781006	-117.098999	2.73000002	59	Moderate air quality	pm25	2018-12-06 21:56:00	65.0299988	75	1011	5.0999999	0	2018-12-06 13:28:00
Needles	City	San Bernardino	california	34.8480988	-114.613998	2.19000006	57	Moderate air quality	pm25	2018-12-06 21:35:00	59.3600006	90	1016	2.5999999	0	2018-12-06 13:28:00
Nevada City	City	Nevada	california	39.2616005	-121.015999	1.60000002	34	Good air quality	pm25	2018-12-06 21:53:00	57.0400009	1	1013	2.0999999	0	2018-12-06 13:28:00
Newark	City	Alameda	california	37.5297012	-122.040001	1.74000001	46	Good air quality	pm25	2018-12-06 21:56:00	60.6399994	1	1014	2.5999999	0	2018-12-06 13:28:00
Newman	City	Stanislaus	california	37.3138008	-121.021004	1.76999998	51	Moderate air quality	pm25	2018-12-06 21:53:00	60.1699982	1	1013	4.0999999	0	2018-12-06 13:28:00
Newport Beach	City	Orange	california	33.6189003	-117.93	2.44000006	27	Good air quality	o3	2018-12-06 21:55:00	55.3499985	90	1011	5.0999999	3.75	2018-12-06 13:28:00
Norco	City	Riverside	california	33.9310989	-117.549004	2.41000009	29	Good air quality	pm25	2018-12-06 21:45:00	55	90	1013	1.51999998	4.73999977	2018-12-06 13:28:00
Norwalk	City	Los Angeles	california	33.9021988	-118.082001	2.36999989	55	Moderate air quality	pm25	2018-12-06 21:53:00	54.3400002	90	1011	4.5999999	3.54999995	2018-12-06 13:28:00
Novato	City	Marin	california	38.107399	-122.57	1.67999995	51	Moderate air quality	pm25	2018-12-06 21:55:00	61.3600006	1	1014	1.32000005	0	2018-12-06 13:28:00
Oakdale	City	Stanislaus	california	37.7666016	-120.847	1.71000004	63	Moderate air quality	pm25	2018-12-06 21:55:00	58.4799995	1	1013	4.0999999	0	2018-12-06 13:28:00
Oakland	City	Alameda	california	37.8044014	-122.271004	1.71000004	57	Moderate air quality	pm25	2018-12-06 21:56:00	60.4799995	20	1014	3.0999999	0	2018-12-06 13:28:00
Oakley	City	Contra Costa	california	37.9973984	-121.711998	1.71000004	54	Moderate air quality	pm25	2018-12-06 22:00:00	59.9900017	1	1014	4.0999999	0	2018-12-06 13:28:00
Oceanside	City	San Diego	california	33.1959	-117.378998	2.5999999	57	Moderate air quality	pm25	2018-12-06 21:55:00	63.3600006	90	1010	5.0999999	2.78999996	2018-12-06 13:28:00
Ojai	City	Ventura	california	34.4480019	-119.242996	2.25999999	49	Good air quality	pm25	2018-12-06 21:57:00	58.5099983	75	1011	9.30000019	0	2018-12-06 13:28:00
Ontario	City	San Bernardino	california	34.0633011	-117.651001	2.38000011	50	Good air quality	pm25	2018-12-06 21:47:00	54.6399994	90	1013	1.51999998	4.42000008	2018-12-06 13:28:00
Orange	City	Orange	california	33.787899	-117.852997	2.38000011	46	Good air quality	pm25	2018-12-06 21:51:00	54.4300003	90	1013	3.01999998	3.75	2018-12-06 13:28:00
Orange Cove	City	Fresno	california	36.6244011	-119.314003	1.87	55	Moderate air quality	pm25	2018-12-06 21:56:00	52.8300018	90	1014	2.5999999	2.53999996	2018-12-06 13:28:00
Orinda	City	Contra Costa	california	37.8771019	-122.18	1.72000003	47	Good air quality	pm25	2018-12-06 21:56:00	60.4799995	1	1014	3.0999999	0	2018-12-06 13:28:00
Orland	City	Glenn	california	39.7473984	-122.195999	1.53999996	26	Good air quality	pm25	2018-12-06 21:53:00	59.4099998	1	1014	4.5999999	0	2018-12-06 13:28:00
Oroville	City	Butte	california	39.5138016	-121.556	1.54999995	37	Good air quality	pm25	2018-12-06 21:53:00	57.6500015	1	1014	4.5999999	0	2018-12-06 13:28:00
Oxnard	City	Ventura	california	34.1974983	-119.177002	2.28999996	68	Moderate air quality	pm25	2018-12-06 21:57:00	58.8699989	75	1011	9.30000019	0	2018-12-06 13:28:00
Pacific Grove	City	Monterey	california	36.6176987	-121.917	1.88999999	49	Good air quality	pm25	2018-12-06 21:55:00	63.6399994	1	1012	2.06999993	0	2018-12-06 13:28:00
Pacifica	City	San Mateo	california	37.6138	-122.487	1.75999999	35	Good air quality	pm10	2018-12-06 21:56:00	60.4799995	1	1013	4.0999999	0	2018-12-06 13:28:00
Palm Desert	City	Riverside	california	33.7221985	-116.374001	2.55999994	54	Moderate air quality	pm25	2018-12-06 21:56:00	52.3899994	90	1017	6.19999981	0	2018-12-06 13:28:00
Palm Springs	City	Riverside	california	33.8302994	-116.544998	2.5	41	Good air quality	pm25	2018-12-06 21:56:00	52.0499992	90	1017	6.19999981	0	2018-12-06 13:28:00
Palmdale	City	Los Angeles	california	34.5793991	-118.115997	2.25999999	40	Good air quality	pm25	2018-12-06 21:58:00	44.1699982	90	1014	4.0999999	1.10000002	2018-12-06 13:28:00
Palo Alto	City	Santa Clara	california	37.4418983	-122.142998	1.80999994	65	Moderate air quality	pm25	2018-12-06 21:56:00	60.6199989	1	1014	2.5999999	0	2018-12-06 13:28:00
Palos Verdes Estates	City	Los Angeles	california	33.8005981	-118.389999	2.36999989	22	Good air quality	pm25	2018-12-06 21:53:00	54.4099998	90	1011	4.5999999	3.16000009	2018-12-06 13:28:00
Paradise	Town	Butte	california	39.7596016	-121.622002	1.57000005	37	Good air quality	pm25	2018-12-06 21:53:00	59.3199997	1	1014	4.5999999	0	2018-12-06 13:28:00
Paramount	City	Los Angeles	california	33.8894997	-118.160004	2.36999989	48	Good air quality	pm25	2018-12-06 21:53:00	54.3400002	90	1011	4.5999999	3.54999995	2018-12-06 13:28:00
Parlier	City	Fresno	california	36.611599	-119.527	1.86000001	51	Moderate air quality	pm25	2018-12-06 21:56:00	53.8699989	90	1014	2.5999999	0	2018-12-06 13:28:00
Pasadena	City	Los Angeles	california	34.1478004	-118.144997	2.32999992	56	Moderate air quality	pm25	2018-12-06 21:53:00	52.9700012	90	1012	2.0999999	3.8599999	2018-12-06 13:28:00
Paso Robles	City	San Luis Obispo	california	35.6369019	-120.654999	2.01999998	26	Good air quality	pm25	2018-12-06 21:53:00	58.0600014	90	1012	7.19999981	0	2018-12-06 13:28:00
Patterson	City	Stanislaus	california	37.4715996	-121.129997	1.76999998	52	Moderate air quality	pm25	2018-12-06 21:55:00	59.7700005	1	1013	4.0999999	0	2018-12-06 13:28:00
Perris	City	Riverside	california	33.7825012	-117.228996	2.43000007	57	Moderate air quality	pm25	2018-12-06 21:55:00	56.8800011	90	1013	1.97000003	4.94999981	2018-12-06 13:28:00
Petaluma	City	Sonoma	california	38.232399	-122.637001	1.67999995	57	Moderate air quality	pm25	2018-12-06 21:55:00	61.3800011	1	1014	1.32000005	0	2018-12-06 13:28:00
Pico Rivera	City	Los Angeles	california	33.9831009	-118.097	2.36999989	56	Moderate air quality	pm25	2018-12-06 21:53:00	54.5699997	90	1011	4.5999999	3.8599999	2018-12-06 13:28:00
Piedmont	City	Alameda	california	37.8244019	-122.232002	1.72000003	25	Good air quality	o3	2018-12-06 21:56:00	60.4799995	20	1014	3.0999999	0	2018-12-06 13:28:00
Pinole	City	Contra Costa	california	38.0043983	-122.299004	1.67999995	51	Moderate air quality	pm25	2018-12-06 21:56:00	60.4799995	1	1014	3.0999999	0	2018-12-06 13:28:00
Pismo Beach	City	San Luis Obispo	california	35.1427994	-120.640999	2.07999992	36	Good air quality	pm25	2018-12-06 21:20:00	57.8100014	75	1011	3.0999999	0.50999999	2018-12-06 13:28:00
Pittsburg	City	Contra Costa	california	38.0279999	-121.885002	1.66999996	54	Moderate air quality	pm25	2018-12-06 22:00:00	59.7700005	1	1014	3.0999999	0	2018-12-06 13:28:00
Placentia	City	Orange	california	33.8711014	-117.862999	2.38000011	44	Good air quality	pm25	2018-12-06 21:53:00	53.6399994	90	1013	3.01999998	3.8599999	2018-12-06 13:28:00
Placerville	City	El Dorado	california	38.729599	-120.799004	1.64999998	56	Moderate air quality	pm25	2018-12-06 21:50:00	57.6100006	5	1013	5.0999999	0	2018-12-06 13:28:00
Pleasant Hill	City	Contra Costa	california	37.9480019	-122.060997	1.72000003	55	Moderate air quality	pm25	2018-12-06 22:00:00	60.1500015	1	1014	3.0999999	0	2018-12-06 13:28:00
Pleasanton	City	Alameda	california	37.6623993	-121.875	1.75999999	55	Moderate air quality	pm25	2018-12-06 21:56:00	60.3899994	1	1013	4.5999999	0	2018-12-06 13:28:00
Plymouth	City	Amador	california	38.4818993	-120.845001	1.65999997	41	Good air quality	pm25	2018-12-06 21:50:00	58.1199989	1	1013	3.0999999	0	2018-12-06 13:28:00
Point Arena	City	Mendocino	california	38.9087982	-123.693001	1.63999999	57	Moderate air quality	pm25	2018-12-06 20:56:00	57.0200005	1	1014	1.62	0	2018-12-06 13:28:00
Pomona	City	Los Angeles	california	34.0550995	-117.75	2.38000011	55	Moderate air quality	pm25	2018-12-06 21:53:00	53.6500015	90	1013	1.51999998	3.8599999	2018-12-06 13:28:00
Port Hueneme	City	Ventura	california	34.1478004	-119.195	2.28999996	58	Moderate air quality	pm25	2018-12-06 21:57:00	58.8899994	75	1011	9.30000019	0	2018-12-06 13:28:00
Porterville	City	Tulare	california	36.0652008	-119.016998	1.91999996	76	Moderate air quality	pm25	2018-12-06 21:55:00	51.7999992	90	1014	2.0999999	2.53999996	2018-12-06 13:28:00
Portola	City	Plumas	california	39.8105011	-120.469002	1.62	51	Moderate air quality	pm25	2018-12-06 21:35:00	31.3299999	90	1017	4.0999999	0	2018-12-06 13:28:00
Portola Valley	Town	San Mateo	california	37.3841019	-122.235001	1.80999994	49	Good air quality	pm25	2018-12-06 21:56:00	60.75	1	1014	2.5999999	0	2018-12-06 13:28:00
Poway	City	San Diego	california	32.9627991	-117.036003	2.68000007	29	Good air quality	o3	2018-12-06 21:56:00	64.0199966	75	1010	6.19999981	0.50999999	2018-12-06 13:28:00
Rancho Cordova	City	Sacramento	california	38.5890999	-121.303001	1.63	55	Moderate air quality	pm25	2018-12-06 22:00:00	58.75	5	1013	5.0999999	0	2018-12-06 13:28:00
Rancho Cucamonga	City	San Bernardino	california	34.1063995	-117.593002	2.38000011	36	Good air quality	pm25	2018-12-06 21:47:00	55.2200012	90	1013	1.51999998	4.69999981	2018-12-06 13:28:00
Rancho Mirage	City	Riverside	california	33.7397003	-116.413002	2.55999994	28	Good air quality	pm25	2018-12-06 21:56:00	52.8100014	90	1017	6.19999981	0	2018-12-06 13:28:00
Rancho Palos Verdes	City	Los Angeles	california	33.7444992	-118.387001	2.44000006	21	Good air quality	o3	2018-12-06 21:53:00	54.4099998	90	1011	5.0999999	3.16000009	2018-12-06 13:28:00
Rancho Santa Margarita	City	Orange	california	33.6402016	-117.602997	2.48000002	32	Good air quality	o3	2018-12-06 21:55:00	57.1100006	90	1011	1.5	5.13000011	2018-12-06 13:28:00
Red Bluff	City	Tehama	california	40.1785011	-122.236	1.5	39	Good air quality	pm25	2018-12-06 20:54:00	59.6100006	1	1015	3.0999999	0	2018-12-06 13:28:00
Redding	City	Shasta	california	40.5864983	-122.391998	1.45000005	96	Moderate air quality	pm25	2018-12-06 21:50:00	56.2999992	1	1015	1.22000003	0	2018-12-06 13:28:00
Redlands	City	San Bernardino	california	34.0555992	-117.182999	2.43000007	59	Moderate air quality	pm25	2018-12-06 21:45:00	52.3899994	90	1013	1.16999996	7.11000013	2018-12-06 13:28:00
Redondo Beach	City	Los Angeles	california	33.8492012	-118.388	2.36999989	53	Moderate air quality	pm25	2018-12-06 21:53:00	54.4099998	90	1011	4.5999999	3.16000009	2018-12-06 13:28:00
Redwood City	City	San Mateo	california	37.485199	-122.236	1.80999994	65	Moderate air quality	pm25	2018-12-06 21:56:00	60.4399986	1	1014	2.5999999	0	2018-12-06 13:28:00
Reedley	City	Fresno	california	36.5962982	-119.449997	1.87	53	Moderate air quality	pm25	2018-12-06 21:56:00	53.3300018	90	1014	2.5999999	0	2018-12-06 13:28:00
Rialto	City	San Bernardino	california	34.1063995	-117.370003	2.36999989	53	Moderate air quality	pm25	2018-12-06 21:45:00	53.6899986	90	1013	1.51999998	3.54999995	2018-12-06 13:28:00
Richmond	City	Contra Costa	california	37.9357986	-122.348	1.71000004	60	Moderate air quality	pm25	2018-12-06 21:56:00	60.4799995	1	1014	3.0999999	0	2018-12-06 13:28:00
Ridgecrest	City	Kern	california	35.6225014	-117.670998	2.05999994	43	Good air quality	pm25	2018-12-06 21:56:00	44.0600014	90	1016	2.5999999	1.51999998	2018-12-06 13:28:00
Rio Dell	City	Humboldt	california	40.4992981	-124.106003	1.50999999	20	Good air quality	o3	2018-12-06 21:35:00	56.3499985	1	1015	3.0999999	0	2018-12-06 13:28:00
Rio Vista	City	Solano	california	38.1557999	-121.691002	1.66999996	27	Good air quality	pm25	2018-12-06 22:00:00	59.5400009	1	1014	5.69999981	0	2018-12-06 13:28:00
Ripon	City	San Joaquin	california	37.7394981	-121.135002	1.73000002	43	Good air quality	pm25	2018-12-06 21:55:00	59.2900009	1	1013	4.0999999	0	2018-12-06 13:28:00
Riverbank	City	Stanislaus	california	37.7360001	-120.934998	1.73000002	45	Good air quality	pm25	2018-12-06 21:55:00	58.9300003	1	1013	4.0999999	0	2018-12-06 13:28:00
Riverside	City	Riverside	california	33.9805984	-117.375	2.41000009	59	Moderate air quality	pm25	2018-12-06 21:45:00	54.6100006	90	1013	1.51999998	4.44000006	2018-12-06 13:28:00
Rocklin	City	Placer	california	38.790699	-121.236	1.62	59	Moderate air quality	pm25	2018-12-06 21:53:00	57.8499985	5	1013	5.0999999	0	2018-12-06 13:28:00
Rohnert Park	City	Sonoma	california	38.3395996	-122.700996	1.66999996	40	Good air quality	pm25	2018-12-06 21:55:00	60.9300003	1	1014	1.32000005	0	2018-12-06 13:28:00
Rolling Hills	City	Los Angeles	california	33.757	-118.353996	2.36999989	21	Good air quality	o3	2018-12-06 21:53:00	54.4099998	90	1011	4.5999999	3.16000009	2018-12-06 13:28:00
Rolling Hills Estates	City	Los Angeles	california	33.7877998	-118.358002	2.36999989	39	Good air quality	pm25	2018-12-06 21:53:00	54.4099998	90	1011	4.5999999	3.16000009	2018-12-06 13:28:00
Rosemead	City	Los Angeles	california	34.0806007	-118.072998	2.32999992	53	Moderate air quality	pm25	2018-12-06 21:53:00	54	90	1012	2.0999999	3.8599999	2018-12-06 13:28:00
Roseville	City	Placer	california	38.7521019	-121.288002	1.60000002	59	Moderate air quality	pm25	2018-12-06 22:00:00	57.4900017	5	1013	5.0999999	0	2018-12-06 13:28:00
Ross	Town	Marin	california	37.9623985	-122.555	1.72000003	32	Good air quality	pm25	2018-12-06 21:55:00	60.5800018	1	1014	1.5	0	2018-12-06 13:28:00
Sacramento	City	Sacramento	california	38.5816002	-121.494003	1.63	52	Moderate air quality	pm25	2018-12-06 21:53:00	58.75	5	1013	5.0999999	0	2018-12-06 13:28:00
St. Helena	City	Napa	california	38.5051994	-122.470001	1.65999997	42	Good air quality	pm25	2018-12-06 22:00:00	60.6699982	1	1014	1.32000005	0	2018-12-06 13:28:00
Salinas	City	Monterey	california	36.6777	-121.655998	1.88	58	Moderate air quality	pm25	2018-12-06 21:55:00	63.6800003	1	1012	2.06999993	0	2018-12-06 13:28:00
San Anselmo	Town	Marin	california	37.9746017	-122.561996	1.72000003	32	Good air quality	pm25	2018-12-06 21:55:00	60.5800018	1	1014	1.5	0	2018-12-06 13:28:00
San Bernardino	City	San Bernardino	california	34.1082993	-117.290001	2.36999989	52	Moderate air quality	pm25	2018-12-06 21:45:00	53.1100006	90	1013	1.16999996	3.94000006	2018-12-06 13:28:00
San Bruno	City	San Mateo	california	37.6305008	-122.411003	1.75999999	60	Moderate air quality	pm25	2018-12-06 21:56:00	60.4799995	20	1014	3.0999999	0	2018-12-06 13:28:00
San Carlos	City	San Mateo	california	37.5071983	-122.261002	1.75999999	67	Moderate air quality	pm25	2018-12-06 21:56:00	60.4399986	1	1014	2.5999999	0	2018-12-06 13:28:00
San Clemente	City	Orange	california	33.4273987	-117.612999	2.50999999	53	Moderate air quality	pm25	2018-12-06 21:55:00	57.0699997	90	1011	1.5	5.13000011	2018-12-06 13:28:00
San Diego	City	San Diego	california	32.7156982	-117.161003	2.73000002	64	Moderate air quality	pm25	2018-12-06 21:56:00	64.6299973	75	1010	4.0999999	0	2018-12-06 13:28:00
San Dimas	City	Los Angeles	california	34.1067009	-117.806999	2.3499999	56	Moderate air quality	pm25	2018-12-06 21:53:00	53.6500015	90	1013	1.51999998	3.8599999	2018-12-06 13:28:00
San Fernando	City	Los Angeles	california	34.2818985	-118.439003	2.29999995	56	Moderate air quality	pm25	2018-12-06 21:57:00	53.0200005	90	1012	2.0999999	3.54999995	2018-12-06 13:28:00
San Francisco	City and county	San Francisco	california	37.7748985	-122.418999	1.71000004	61	Moderate air quality	pm25	2018-12-06 21:56:00	60.4399986	20	1014	3.0999999	0	2018-12-06 13:28:00
San Gabriel	City	Los Angeles	california	34.0960999	-118.106003	2.32999992	55	Moderate air quality	pm25	2018-12-06 21:53:00	54	90	1012	2.0999999	3.8599999	2018-12-06 13:28:00
San Jacinto	City	Riverside	california	33.7839012	-116.959	2.49000001	59	Moderate air quality	pm25	2018-12-06 21:55:00	55.6199989	90	1011	5.0999999	7.11000013	2018-12-06 13:28:00
San Joaquin	City	Fresno	california	36.6066017	-120.189003	1.83000004	48	Good air quality	pm25	2018-12-06 21:56:00	53.8899994	90	1014	3.0999999	0	2018-12-06 13:28:00
San Jose	City	Santa Clara	california	37.3381996	-121.886002	1.77999997	66	Moderate air quality	pm25	2018-12-06 21:56:00	60.7299995	1	1014	2.5999999	0	2018-12-06 13:28:00
San Juan Bautista	City	San Benito	california	36.8455009	-121.538002	1.84000003	33	Good air quality	pm25	2018-12-06 21:55:00	62.5099983	1	1013	3.0999999	0	2018-12-06 13:28:00
San Juan Capistrano	City	Orange	california	33.5018997	-117.663002	2.48000002	52	Moderate air quality	pm25	2018-12-06 21:55:00	57.0900002	90	1011	1.5	5.13000011	2018-12-06 13:28:00
San Leandro	City	Alameda	california	37.7248993	-122.155998	1.74000001	49	Good air quality	pm25	2018-12-06 21:56:00	60.3499985	20	1014	3.0999999	0	2018-12-06 13:28:00
San Luis Obispo	City	San Luis Obispo	california	35.2827988	-120.660004	2.05999994	27	Good air quality	o3	2018-12-06 21:53:00	57.8300018	90	1012	7.19999981	0.50999999	2018-12-06 13:28:00
San Marcos	City	San Diego	california	33.1433983	-117.166	2.61999989	36	Good air quality	pm25	2018-12-06 21:56:00	64.3499985	75	1010	3.0999999	0	2018-12-06 13:28:00
San Marino	City	Los Angeles	california	34.1213989	-118.106003	2.32999992	56	Moderate air quality	pm25	2018-12-06 21:53:00	52.9700012	90	1012	2.0999999	3.8599999	2018-12-06 13:28:00
San Mateo	City	San Mateo	california	37.5629997	-122.325996	1.75999999	65	Moderate air quality	pm25	2018-12-06 21:56:00	60.4799995	20	1014	3.0999999	0	2018-12-06 13:28:00
San Pablo	City	Contra Costa	california	37.962101	-122.346001	1.71000004	56	Moderate air quality	pm25	2018-12-06 21:56:00	60.4799995	1	1014	1.5	0	2018-12-06 13:28:00
San Rafael	City	Marin	california	37.9734993	-122.530998	1.72000003	56	Moderate air quality	pm25	2018-12-06 21:55:00	60.5499992	1	1014	1.5	0	2018-12-06 13:28:00
San Ramon	City	Contra Costa	california	37.7798996	-121.977997	1.73000002	51	Moderate air quality	pm25	2018-12-06 21:56:00	60.3100014	1	1013	4.5999999	0	2018-12-06 13:28:00
Sand City	City	Monterey	california	36.6171989	-121.848	1.88999999	29	Good air quality	pm25	2018-12-06 21:55:00	63.6800003	1	1012	2.06999993	0	2018-12-06 13:28:00
Sanger	City	Fresno	california	36.7080002	-119.556	1.86000001	51	Moderate air quality	pm25	2018-12-06 21:56:00	53.8699989	90	1014	2.5999999	0	2018-12-06 13:28:00
Santa Ana	City	Orange	california	33.7454987	-117.867996	2.44000006	49	Good air quality	pm25	2018-12-06 21:51:00	54.4300003	90	1013	3.01999998	3.75	2018-12-06 13:28:00
Santa Barbara	City	Santa Barbara	california	34.4207993	-119.697998	2.25	44	Good air quality	pm25	2018-12-06 21:57:00	57.9000015	90	1011	6.69999981	0	2018-12-06 13:28:00
Santa Clara	City	Santa Clara	california	37.3540993	-121.955002	1.77999997	60	Moderate air quality	pm25	2018-12-06 21:56:00	60.8499985	1	1014	2.5999999	0	2018-12-06 13:28:00
Santa Clarita	City	Los Angeles	california	34.3917007	-118.542999	2.26999998	23	Good air quality	o3	2018-12-06 21:57:00	51.5999985	90	1012	2.0999999	2.07999992	2018-12-06 13:28:00
Santa Cruz	City	Santa Cruz	california	36.9740982	-122.030998	1.86000001	58	Moderate air quality	pm25	2018-12-06 21:56:00	61.5900002	1	1012	1.41999996	0	2018-12-06 13:28:00
Santa Fe Springs	City	Los Angeles	california	33.9472008	-118.084999	2.36999989	44	Good air quality	pm25	2018-12-06 21:53:00	54.3400002	90	1011	4.5999999	3.54999995	2018-12-06 13:28:00
Santa Maria	City	Santa Barbara	california	34.9529991	-120.435997	2.1099999	41	Good air quality	pm25	2018-12-06 21:35:00	57.9199982	90	1011	1.5	0.50999999	2018-12-06 13:28:00
Santa Monica	City	Los Angeles	california	34.0195007	-118.490997	2.29999995	61	Moderate air quality	pm25	2018-12-06 21:57:00	55	90	1012	2.0999999	3.16000009	2018-12-06 13:28:00
Santa Paula	City	Ventura	california	34.3541985	-119.058998	2.25999999	58	Moderate air quality	pm25	2018-12-06 21:57:00	52.9000015	75	1011	9.30000019	1.77999997	2018-12-06 13:28:00
Santa Rosa	City	Sonoma	california	38.4403992	-122.713997	1.66999996	62	Moderate air quality	pm25	2018-12-06 21:55:00	60.6699982	1	1014	1.32000005	0	2018-12-06 13:28:00
Santee	City	San Diego	california	32.8384018	-116.973999	2.72000003	37	Good air quality	pm25	2018-12-06 21:56:00	64.3300018	75	1010	6.19999981	0	2018-12-06 13:28:00
Saratoga	City	Santa Clara	california	37.2638016	-122.023003	1.80999994	42	Good air quality	pm25	2018-12-06 21:56:00	61.0200005	1	1014	2.5999999	0	2018-12-06 13:28:00
Sausalito	City	Marin	california	37.8591003	-122.485001	1.71000004	36	Good air quality	pm25	2018-12-06 21:56:00	60.4599991	20	1014	3.0999999	0	2018-12-06 13:28:00
Scotts Valley	City	Santa Cruz	california	37.0511017	-122.014999	1.85000002	38	Good air quality	pm25	2018-12-06 21:56:00	62.1899986	1	1014	2.5999999	0	2018-12-06 13:28:00
Seal Beach	City	Orange	california	33.7414017	-118.105003	2.44000006	25	Good air quality	pm25	2018-12-06 21:53:00	54.3400002	90	1011	4.5999999	3.54999995	2018-12-06 13:28:00
Seaside	City	Monterey	california	36.6148987	-121.821999	1.88999999	45	Good air quality	pm25	2018-12-06 21:55:00	63.6800003	1	1012	2.06999993	0	2018-12-06 13:28:00
Sebastopol	City	Sonoma	california	38.4020996	-122.823997	1.65999997	58	Moderate air quality	pm25	2018-12-06 21:55:00	60.0800018	1	1014	1.32000005	0	2018-12-06 13:28:00
Selma	City	Fresno	california	36.5708008	-119.612	1.86000001	59	Moderate air quality	pm25	2018-12-06 21:56:00	53.8699989	90	1014	2.5999999	0	2018-12-06 13:28:00
Shafter	City	Kern	california	35.5004997	-119.272003	1.97000003	55	Moderate air quality	pm25	2018-12-06 21:56:00	51.2999992	90	1014	2.0999999	0.75999999	2018-12-06 13:28:00
Shasta Lake	City	Shasta	california	40.6804008	-122.371002	1.45000005	72	Moderate air quality	pm25	2018-12-06 21:54:00	56.6599998	1	1014	3.5999999	0	2018-12-06 13:28:00
Sierra Madre	City	Los Angeles	california	34.1617012	-118.053001	2.32999992	54	Moderate air quality	pm25	2018-12-06 21:53:00	52.9700012	90	1012	2.0999999	3.8599999	2018-12-06 13:28:00
Signal Hill	City	Los Angeles	california	33.8045006	-118.167999	2.36999989	49	Good air quality	pm25	2018-12-06 21:53:00	54.3400002	90	1011	4.5999999	3.54999995	2018-12-06 13:28:00
Simi Valley	City	Ventura	california	34.2694016	-118.780998	2.25999999	30	Good air quality	o3	2018-12-06 21:57:00	54.2799988	75	1011	9.30000019	2.28999996	2018-12-06 13:28:00
Solana Beach	City	San Diego	california	32.9911995	-117.271004	2.69000006	48	Good air quality	pm25	2018-12-06 21:56:00	64.5100021	75	1010	6.19999981	0	2018-12-06 13:28:00
Soledad	City	Monterey	california	36.4247017	-121.325996	1.92999995	60	Moderate air quality	pm25	2018-12-06 21:55:00	64	1	1012	1.57000005	0	2018-12-06 13:28:00
Solvang	City	Santa Barbara	california	34.5957985	-120.138	2.18000007	26	Good air quality	o3	2018-12-06 21:35:00	57.9700012	90	1011	1.5	0.50999999	2018-12-06 13:28:00
Sonoma	City	Sonoma	california	38.2919006	-122.458	1.66999996	49	Good air quality	pm25	2018-12-06 22:00:00	61.0900002	1	1014	1.32000005	0	2018-12-06 13:28:00
Sonora	City	Tuolumne	california	37.9828987	-120.382004	1.74000001	65	Moderate air quality	pm25	2018-12-06 21:53:00	58.6199989	1	1013	4.0999999	0	2018-12-06 13:28:00
South El Monte	City	Los Angeles	california	34.0519981	-118.046997	2.32999992	52	Moderate air quality	pm25	2018-12-06 21:53:00	53.9799995	90	1011	4.5999999	3.8599999	2018-12-06 13:28:00
South Gate	City	Los Angeles	california	33.9547005	-118.211998	2.36999989	56	Moderate air quality	pm25	2018-12-06 21:53:00	54.3400002	90	1011	4.5999999	3.54999995	2018-12-06 13:28:00
South Lake Tahoe	City	El Dorado	california	38.9398994	-119.976997	1.74000001	28	Good air quality	o3	2018-12-06 21:55:00	31.8400002	90	1017	4.5999999	0	2018-12-06 13:28:00
South Pasadena	City	Los Angeles	california	34.1161003	-118.150002	2.32999992	54	Moderate air quality	pm25	2018-12-06 21:53:00	52.9700012	90	1012	2.0999999	3.8599999	2018-12-06 13:28:00
South San Francisco	City	San Mateo	california	37.6547012	-122.407997	1.75999999	61	Moderate air quality	pm25	2018-12-06 21:56:00	60.6199989	20	1014	3.0999999	0	2018-12-06 13:28:00
Stanton	City	Orange	california	33.8028984	-117.992996	2.38000011	34	Good air quality	pm25	2018-12-06 21:59:00	53.5099983	90	1011	4.5999999	3.54999995	2018-12-06 13:28:00
Stockton	City	San Joaquin	california	37.9576988	-121.291	1.71000004	70	Moderate air quality	pm25	2018-12-06 21:55:00	59.3600006	1	1014	4.0999999	0	2018-12-06 13:28:00
Suisun City	City	Solano	california	38.2382011	-122.040001	1.69000006	20	Good air quality	pm25	2018-12-06 22:00:00	59.9700012	1	1014	3.0999999	0	2018-12-06 13:28:00
Sunnyvale	City	Santa Clara	california	37.3688011	-122.036003	1.80999994	61	Moderate air quality	pm25	2018-12-06 21:56:00	60.75	1	1014	2.5999999	0	2018-12-06 13:28:00
Susanville	City	Lassen	california	40.4163017	-120.653	1.54999995	42	Good air quality	pm25	2018-12-06 21:35:00	32	90	1018	2.0999999	0	2018-12-06 13:28:00
Sutter Creek	City	Amador	california	38.3930016	-120.802002	1.65999997	61	Moderate air quality	pm25	2018-12-06 21:50:00	58.1399994	1	1013	3.0999999	0	2018-12-06 13:28:00
Taft	City	Kern	california	35.1425018	-119.457001	2.05999994	47	Good air quality	pm25	2018-12-06 20:54:00	53.0600014	90	1013	2.5999999	0	2018-12-06 13:28:00
Tehachapi	City	Kern	california	35.1321983	-118.448997	2.20000005	37	Good air quality	pm25	2018-12-06 21:58:00	42.6399994	90	1014	4.0999999	0.889999986	2018-12-06 13:28:00
Tehama	City	Tehama	california	40.0270996	-122.123001	1.5	22	Good air quality	pm25	2018-12-06 21:54:00	60.9799995	1	1014	4.0999999	0	2018-12-06 13:28:00
Temecula	City	Riverside	california	33.4935989	-117.148003	2.54999995	52	Moderate air quality	pm25	2018-12-06 21:59:00	59.5	90	1012	4.0999999	4.94999981	2018-12-06 13:28:00
Temple City	City	Los Angeles	california	34.1072006	-118.057999	2.32999992	42	Good air quality	pm25	2018-12-06 21:53:00	54	90	1012	2.0999999	3.8599999	2018-12-06 13:28:00
Thousand Oaks	City	Ventura	california	34.1706009	-118.837997	2.31999993	51	Moderate air quality	pm25	2018-12-06 21:57:00	54.2799988	75	1011	9.30000019	2.28999996	2018-12-06 13:28:00
Tiburon	Town	Marin	california	37.8735008	-122.457001	1.71000004	52	Moderate air quality	pm25	2018-12-06 21:56:00	60.4599991	20	1014	3.0999999	0	2018-12-06 13:28:00
Torrance	City	Los Angeles	california	33.8358002	-118.341003	2.36999989	31	Good air quality	pm25	2018-12-06 21:53:00	54.3400002	90	1011	4.5999999	3.54999995	2018-12-06 13:28:00
Tracy	City	San Joaquin	california	37.7397003	-121.425003	1.75	56	Moderate air quality	pm25	2018-12-06 21:56:00	60.6599998	1	1014	4.0999999	0	2018-12-06 13:28:00
Trinidad	City	Humboldt	california	41.0592995	-124.142998	1.40999997	21	Good air quality	pm25	2018-12-06 21:55:00	56.4799995	1	1015	2.5999999	0	2018-12-06 13:28:00
Truckee	Town	Nevada	california	39.3279991	-120.182999	1.66999996	61	Moderate air quality	pm25	2018-12-06 21:55:00	31.3299999	90	1017	4.5999999	0	2018-12-06 13:28:00
Tulare	City	Tulare	california	36.2076988	-119.347	1.91999996	74	Moderate air quality	pm25	2018-12-06 21:56:00	52.7700005	90	1014	1.82000005	0.75999999	2018-12-06 13:28:00
Tulelake	City	Siskiyou	california	41.9560013	-121.476997	1.35000002	43	Good air quality	pm25	2018-12-06 20:53:00	32	1	1017	2.5999999	0	2018-12-06 13:28:00
Turlock	City	Stanislaus	california	37.4947014	-120.847	1.75999999	71	Moderate air quality	pm25	2018-12-06 21:55:00	59.6800003	1	1013	4.0999999	0	2018-12-06 13:28:00
Tustin	City	Orange	california	33.7420006	-117.823997	2.44000006	26	Good air quality	o3	2018-12-06 21:59:00	54.8100014	90	1013	3.01999998	3.75	2018-12-06 13:28:00
Twentynine Palms	City	San Bernardino	california	34.135601	-116.054001	2.43000007	39	Good air quality	pm25	2018-12-06 21:56:00	51.0800018	90	1017	6.19999981	0	2018-12-06 13:28:00
Ukiah	City	Mendocino	california	39.1501999	-123.208	1.63999999	76	Moderate air quality	pm25	2018-12-06 20:56:00	57.0200005	1	1014	0.620000005	0	2018-12-06 13:28:00
Union City	City	Alameda	california	37.593399	-122.043999	1.74000001	45	Good air quality	pm25	2018-12-06 21:56:00	60.75	1	1014	2.5999999	0	2018-12-06 13:28:00
Upland	City	San Bernardino	california	34.0974998	-117.648003	2.38000011	46	Good air quality	pm25	2018-12-06 21:59:00	54.5699997	90	1012	4.0999999	4.42000008	2018-12-06 13:28:00
Vacaville	City	Solano	california	38.3566017	-121.987999	1.64999998	45	Good air quality	pm25	2018-12-06 22:00:00	59.7900009	1	1014	5.69999981	0	2018-12-06 13:28:00
Vallejo	City	Solano	california	38.1040993	-122.257004	1.67999995	66	Moderate air quality	pm25	2018-12-06 22:00:00	60.3100014	1	1014	3.0999999	0	2018-12-06 13:28:00
Ventura	City	Ventura	california	34.2804985	-119.294998	2.25999999	60	Moderate air quality	pm25	2018-12-06 21:57:00	58.7299995	90	1011	6.69999981	0	2018-12-06 13:28:00
Vernon	City	Los Angeles	california	34.0038986	-118.230003	2.32999992	61	Moderate air quality	pm25	2018-12-06 21:53:00	54.3400002	90	1011	4.5999999	3.75999999	2018-12-06 13:28:00
Victorville	City	San Bernardino	california	34.5362015	-117.292999	2.27999997	54	Moderate air quality	pm25	2018-12-06 21:58:00	46.7799988	90	1014	4.0999999	0.25	2018-12-06 13:28:00
Villa Park	City	Orange	california	33.8139992	-117.821999	2.38000011	38	Good air quality	pm25	2018-12-06 21:59:00	54.5900002	90	1012	5.0999999	4.38000011	2018-12-06 13:28:00
Visalia	City	Tulare	california	36.3302002	-119.292	1.88999999	73	Moderate air quality	pm25	2018-12-06 21:56:00	52.5400009	90	1014	1.66999996	0.75999999	2018-12-06 13:28:00
Vista	City	San Diego	california	33.2000008	-117.242996	2.61999989	52	Moderate air quality	pm25	2018-12-06 21:55:00	64.1100006	75	1010	3.0999999	0	2018-12-06 13:28:00
Walnut	City	Los Angeles	california	34.0203018	-117.864998	2.3499999	41	Good air quality	pm25	2018-12-06 21:59:00	53.6500015	90	1013	1.51999998	3.8599999	2018-12-06 13:28:00
Walnut Creek	City	Contra Costa	california	37.910099	-122.065002	1.72000003	58	Moderate air quality	pm25	2018-12-06 21:56:00	60.4799995	1	1014	3.0999999	0	2018-12-06 13:28:00
Wasco	City	Kern	california	35.594101	-119.341003	1.97000003	82	Moderate air quality	pm25	2018-12-06 21:56:00	51.3100014	90	1014	2.0999999	0.75999999	2018-12-06 13:28:00
Waterford	City	Stanislaus	california	37.6413002	-120.760002	1.73000002	62	Moderate air quality	pm25	2018-12-06 21:55:00	59.5400009	1	1013	4.0999999	0	2018-12-06 13:28:00
Watsonville	City	Santa Cruz	california	36.9101982	-121.757004	1.84000003	61	Moderate air quality	pm25	2018-12-06 21:56:00	62.3800011	1	1013	3.0999999	0	2018-12-06 13:28:00
Weed	City	Siskiyou	california	41.4225998	-122.386002	1.42999995	64	Moderate air quality	pm25	2018-12-06 21:50:00	43.4700012	1	1015	1.07000005	0	2018-12-06 13:28:00
West Covina	City	Los Angeles	california	34.0685997	-117.939003	2.3499999	59	Moderate air quality	pm25	2018-12-06 21:59:00	53.6500015	90	1012	2.0999999	3.8599999	2018-12-06 13:28:00
West Hollywood	City	Los Angeles	california	34.0900002	-118.362	2.29999995	56	Moderate air quality	pm25	2018-12-06 21:53:00	54.0499992	90	1012	2.0999999	3.46000004	2018-12-06 13:28:00
West Sacramento	City	Yolo	california	38.5805016	-121.529999	1.63	33	Good air quality	pm25	2018-12-06 22:00:00	58.8400002	1	1014	4.5999999	0	2018-12-06 13:28:00
Westlake Village	City	Los Angeles	california	34.1465988	-118.806999	2.31999993	31	Good air quality	o3	2018-12-06 21:57:00	54.2799988	75	1011	9.30000019	2.28999996	2018-12-06 13:28:00
Westminster	City	Orange	california	33.759201	-117.989998	2.38000011	40	Good air quality	pm25	2018-12-06 21:53:00	53.5099983	90	1011	4.5999999	3.54999995	2018-12-06 13:28:00
Westmorland	City	Imperial	california	33.0373001	-115.621002	2.61999989	57	Moderate air quality	pm25	2018-12-06 21:56:00	54.5499992	90	1016	2.0999999	0.50999999	2018-12-06 13:28:00
Wheatland	City	Yuba	california	39.0098991	-121.422997	1.58000004	33	Good air quality	pm25	2018-12-06 22:00:00	57.9399986	1	1014	4.5999999	0	2018-12-06 13:28:00
Whittier	City	Los Angeles	california	33.9791985	-118.032997	2.36999989	51	Moderate air quality	pm25	2018-12-06 21:53:00	54.5699997	90	1012	5.0999999	4.09000015	2018-12-06 13:28:00
Wildomar	City	Riverside	california	33.5988998	-117.279999	2.5	22	Good air quality	pm25	2018-12-06 21:59:00	57.8800011	90	1012	4.0999999	4.94999981	2018-12-06 13:28:00
Williams	City	Colusa	california	39.1545982	-122.149002	1.58000004	58	Moderate air quality	pm25	2018-12-06 21:53:00	58.5699997	1	1014	4.5999999	0	2018-12-06 13:28:00
Willits	City	Mendocino	california	39.4095993	-123.356003	1.61000001	62	Moderate air quality	pm25	2018-12-06 20:56:00	57.0200005	1	1014	1.32000005	0	2018-12-06 13:28:00
Willows	City	Glenn	california	39.5242996	-122.194	1.53999996	35	Good air quality	pm25	2018-12-06 21:53:00	60.0800018	1	1014	4.5999999	0	2018-12-06 13:28:00
Windsor	Town	Sonoma	california	38.5471001	-122.816002	1.64999998	54	Moderate air quality	pm25	2018-12-06 21:55:00	60.0800018	1	1014	1.32000005	0	2018-12-06 13:28:00
Winters	City	Yolo	california	38.5248985	-121.971001	1.63	26	Good air quality	pm25	2018-12-06 22:00:00	59.9000015	1	1014	5.69999981	0	2018-12-06 13:28:00
Woodlake	City	Tulare	california	36.4136009	-119.098999	1.89999998	58	Moderate air quality	pm25	2018-12-06 21:56:00	52.8600006	90	1014	1.66999996	0.75999999	2018-12-06 13:28:00
Woodland	City	Yolo	california	38.6785011	-121.773003	1.63	57	Moderate air quality	pm25	2018-12-06 22:00:00	59.1100006	1	1014	5.69999981	0	2018-12-06 13:28:00
Woodside	Town	San Mateo	california	37.4299011	-122.253998	1.79999995	60	Moderate air quality	pm25	2018-12-06 21:56:00	60.75	1	1014	2.5999999	0	2018-12-06 13:28:00
Yorba Linda	City	Orange	california	33.8885002	-117.813004	2.38000011	36	Good air quality	pm25	2018-12-06 21:59:00	53.6500015	90	1013	3.01999998	3.8599999	2018-12-06 13:28:00
Yountville	Town	Napa	california	38.4015999	-122.361	1.66999996	25	Good air quality	pm25	2018-12-06 22:00:00	60.6699982	1	1014	1.32000005	0	2018-12-06 13:28:00
Yreka	City	Siskiyou	california	41.7354012	-122.634003	1.38	54	Moderate air quality	pm25	2018-12-06 20:56:00	41.6100006	1	1017	1.5	0	2018-12-06 13:28:00
Yuba City	City	Sutter	california	39.1403999	-121.616997	1.58000004	51	Moderate air quality	pm25	2018-12-06 22:00:00	58.3899994	1	1014	4.5999999	0	2018-12-06 13:28:00
Yucaipa	City	San Bernardino	california	34.0335999	-117.042999	2.43000007	53	Moderate air quality	pm25	2018-12-06 21:45:00	52.3800011	90	1013	1.16999996	7.11000013	2018-12-06 13:28:00
Yucca Valley	Town	San Bernardino	california	34.1142006	-116.431999	2.45000005	37	Good air quality	o3	2018-12-06 21:56:00	51.0800018	90	1017	6.19999981	0	2018-12-06 13:28:00
Adelanto	City	San Bernardino	california	34.5828018	-117.408997	2.27999997	23	Good air quality	pm25	2018-12-06 23:13:00	43.9500008	90	1015	4.0999999	1.61000001	2018-12-06 15:13:00
Agoura Hills	City	Los Angeles	california	34.1533012	-118.762001	2.31999993	31	Good air quality	pm25	2018-12-06 22:57:00	55.2900009	75	1012	9.80000019	0.340000004	2018-12-06 15:13:00
Alameda	City	Alameda	california	37.7652016	-122.241997	1.72000003	51	Moderate air quality	pm25	2018-12-06 23:15:00	61.5400009	20	1014	4.0999999	0	2018-12-06 15:13:00
Albany	City	Alameda	california	37.8869019	-122.297997	1.71000004	58	Moderate air quality	pm25	2018-12-06 23:15:00	61.5600014	1	1014	2.55999994	0	2018-12-06 15:13:00
Alhambra	City	Los Angeles	california	34.0952988	-118.126999	2.32999992	54	Moderate air quality	pm25	2018-12-06 23:17:00	54.5699997	90	1013	5.0999999	1.26999998	2018-12-06 15:13:00
Aliso Viejo	City	Orange	california	33.5685005	-117.725998	2.48000002	33	Good air quality	o3	2018-12-06 23:17:00	53.7299995	90	1013	5.0999999	3.25	2018-12-06 15:13:00
Alturas	City	Modoc	california	41.4870987	-120.542	1.40999997	79	Moderate air quality	pm25	2018-12-06 22:55:00	37.0400009	1	1017	4.5999999	0	2018-12-06 15:13:00
Amador City	City	Amador	california	38.4193993	-120.823997	1.65999997	47	Good air quality	pm25	2018-12-06 23:15:00	57.9700012	1	1014	3.0999999	0	2018-12-06 15:13:00
American Canyon	City	Napa	california	38.1749001	-122.261002	1.67999995	31	Good air quality	pm25	2018-12-06 23:15:00	61.2299995	1	1014	4.0999999	0	2018-12-06 15:13:00
Anaheim	City	Orange	california	33.8366013	-117.914001	2.38000011	44	Good air quality	pm25	2018-12-06 23:17:00	53.8899994	90	1013	5.0999999	2.13000011	2018-12-06 15:13:00
Anderson	City	Shasta	california	40.4482002	-122.297997	1.47000003	83	Moderate air quality	pm25	2018-12-06 22:54:00	57.6699982	1	1014	2.5999999	0	2018-12-06 15:13:00
Angels Camp	City	Calaveras	california	38.0677986	-120.539001	1.71000004	61	Moderate air quality	pm25	2018-12-06 23:15:00	58.6199989	1	1014	3.0999999	0	2018-12-06 15:13:00
Antioch	City	Contra Costa	california	38.0049019	-121.806	1.66999996	54	Moderate air quality	pm25	2018-12-06 23:15:00	60.9399986	1	1014	3.0999999	0	2018-12-06 15:13:00
Apple Valley	Town	San Bernardino	california	34.5008011	-117.185997	2.29999995	24	Good air quality	pm25	2018-12-06 22:58:00	47.3199997	90	1015	5.0999999	4.19000006	2018-12-06 15:13:00
Arcadia	City	Los Angeles	california	34.1397018	-118.035004	2.32999992	48	Good air quality	pm25	2018-12-06 23:17:00	53.5099983	90	1013	5.0999999	1.29999995	2018-12-06 15:13:00
Arcata	City	Humboldt	california	40.8665009	-124.083	1.44000006	24	Good air quality	pm10	2018-12-06 22:55:00	54.7200012	1	1015	2.0999999	0	2018-12-06 15:13:00
Arroyo Grande	City	San Luis Obispo	california	35.1185989	-120.591003	2.07999992	36	Good air quality	pm25	2018-12-06 22:56:00	57.1100006	75	1012	2.0999999	1.14999998	2018-12-06 15:13:00
Artesia	City	Los Angeles	california	33.865799	-118.083	2.36999989	46	Good air quality	pm25	2018-12-06 23:17:00	54.9000015	90	1010	5.0999999	1.26999998	2018-12-06 15:13:00
Arvin	City	Kern	california	35.2018013	-118.833	2.06999993	31	Good air quality	pm25	2018-12-06 23:00:00	47.0999985	90	1013	5.0999999	0.25	2018-12-06 15:13:00
Atascadero	City	San Luis Obispo	california	35.489399	-120.670998	2.05999994	53	Moderate air quality	pm25	2018-12-06 22:56:00	58.0299988	90	1013	6.19999981	0.50999999	2018-12-06 15:13:00
Atherton	Town	San Mateo	california	37.4612999	-122.197998	1.80999994	68	Moderate air quality	pm25	2018-12-06 23:15:00	61.5699997	1	1014	2.5999999	0	2018-12-06 15:13:00
Atwater	City	Merced	california	37.3476982	-120.609001	1.75999999	70	Moderate air quality	pm25	2018-12-06 23:17:00	58.9599991	90	1014	1.5	0	2018-12-06 15:13:00
Auburn	City	Placer	california	38.8965988	-121.077003	1.62	41	Good air quality	pm25	2018-12-06 23:15:00	57.8499985	1	1014	2.0999999	0	2018-12-06 15:13:00
Avalon	City	Los Angeles	california	33.3428001	-118.328003	2.5	28	Good air quality	o3	2018-12-06 22:58:00	55.9199982	90	1010	5.0999999	1.64999998	2018-12-06 15:13:00
Avenal	City	Kings	california	36.0041008	-120.128998	1.90999997	39	Good air quality	pm25	2018-12-06 22:56:00	54.2999992	75	1015	2.0999999	0	2018-12-06 15:13:00
Azusa	City	Los Angeles	california	34.1335983	-117.907997	2.3499999	58	Moderate air quality	pm25	2018-12-06 23:17:00	54.0699997	90	1013	5.0999999	2.13000011	2018-12-06 15:13:00
Bakersfield	City	Kern	california	35.3732986	-119.018997	2.00999999	65	Moderate air quality	pm25	2018-12-06 22:55:00	51.5099983	90	1013	5.0999999	0	2018-12-06 15:13:00
Baldwin Park	City	Los Angeles	california	34.0853004	-117.960999	2.3499999	59	Moderate air quality	pm25	2018-12-06 23:17:00	54.0699997	90	1013	5.0999999	2.13000011	2018-12-06 15:13:00
Banning	City	Riverside	california	33.9255981	-116.875999	2.49000001	44	Good air quality	pm25	2018-12-06 23:17:00	50.7200012	90	1014	7.69999981	3.29999995	2018-12-06 15:13:00
Barstow	City	San Bernardino	california	34.8958015	-117.016998	2.20000005	23	Good air quality	pm25	2018-12-06 22:55:00	46.1300011	90	1015	5.0999999	0.25	2018-12-06 15:13:00
Bell	City	Los Angeles	california	33.9775009	-118.186996	2.36999989	56	Moderate air quality	pm25	2018-12-06 23:17:00	54.9000015	20	1011	2.5999999	1.26999998	2018-12-06 15:13:00
Bell Gardens	City	Los Angeles	california	33.9653015	-118.151001	2.36999989	53	Moderate air quality	pm25	2018-12-06 23:17:00	54.9000015	90	1013	5.0999999	1.26999998	2018-12-06 15:13:00
Bellflower	City	Los Angeles	california	33.8816986	-118.116997	2.36999989	36	Good air quality	pm25	2018-12-06 23:17:00	54.9000015	90	1010	5.0999999	1.26999998	2018-12-06 15:13:00
Belmont	City	San Mateo	california	37.5201988	-122.276001	1.75999999	70	Moderate air quality	pm25	2018-12-06 23:15:00	61.4799995	1	1014	4.5999999	0	2018-12-06 15:13:00
Belvedere	City	Marin	california	37.8726997	-122.463997	1.71000004	26	Good air quality	pm10	2018-12-06 23:00:00	61.3899994	40	1013	2.5999999	0	2018-12-06 15:13:00
Benicia	City	Solano	california	38.0494003	-122.158997	1.69000006	30	Good air quality	pm25	2018-12-06 23:15:00	61.2999992	1	1014	2.55999994	0	2018-12-06 15:13:00
Berkeley	City	Alameda	california	37.8716011	-122.273003	1.71000004	60	Moderate air quality	pm25	2018-12-06 23:15:00	61.5600014	20	1014	4.0999999	0	2018-12-06 15:13:00
Beverly Hills	City	Los Angeles	california	34.0736008	-118.400002	2.29999995	46	Good air quality	pm25	2018-12-06 22:58:00	55.1699982	75	1011	6.69999981	1.23000002	2018-12-06 15:13:00
Big Bear Lake	City	San Bernardino	california	34.2439003	-116.911003	2.55999994	34	Good air quality	pm25	2018-12-06 22:58:00	47.5	90	1014	7.69999981	3.04999995	2018-12-06 15:13:00
Biggs	City	Butte	california	39.4123993	-121.712997	1.55999994	40	Good air quality	pm25	2018-12-06 23:15:00	58.6599998	1	1014	3.5999999	0	2018-12-06 15:13:00
Bishop	City	Inyo	california	37.3614006	-118.400002	1.96000004	53	Moderate air quality	pm25	2018-12-06 23:15:00	30.5599995	90	1016	0.959999979	0	2018-12-06 15:13:00
Blue Lake	City	Humboldt	california	40.8829002	-123.984001	1.45000005	20	Good air quality	pm10	2018-12-06 22:55:00	54.7200012	1	1015	2.0999999	0	2018-12-06 15:13:00
Blythe	City	Riverside	california	33.6178017	-114.587997	2.5	32	Good air quality	pm25	2018-12-06 23:36:00	47.1399994	92	1001.53003	1.86000001	0.879999995	2018-12-06 15:13:00
Bradbury	City	Los Angeles	california	34.1469002	-117.971001	2.3499999	30	Good air quality	pm25	2018-12-06 23:17:00	53.5099983	90	1013	5.0999999	1.29999995	2018-12-06 15:13:00
Brawley	City	Imperial	california	32.9786987	-115.529999	2.70000005	64	Moderate air quality	pm25	2018-12-06 22:56:00	52.9199982	90	1016	2.0999999	0.75999999	2018-12-06 15:13:00
Brea	City	Orange	california	33.9165001	-117.900002	2.38000011	45	Good air quality	pm25	2018-12-06 23:17:00	54.0499992	90	1013	5.0999999	2.13000011	2018-12-06 15:13:00
Brentwood	City	Contra Costa	california	37.9319	-121.695999	1.71000004	56	Moderate air quality	pm25	2018-12-06 23:15:00	61.0200005	1	1014	3.0999999	0	2018-12-06 15:13:00
Brisbane	City	San Mateo	california	37.6808014	-122.400002	1.75999999	29	Good air quality	pm10	2018-12-06 23:15:00	61.7400017	40	1013	2.5999999	0	2018-12-06 15:13:00
Buellton	City	Santa Barbara	california	34.6136017	-120.193001	2.18000007	47	Good air quality	pm25	2018-12-06 23:15:00	57.4900017	90	1012	2.0999999	1.14999998	2018-12-06 15:13:00
Buena Park	City	Orange	california	33.8674011	-117.998001	2.38000011	48	Good air quality	pm25	2018-12-06 23:17:00	53.8899994	90	1013	5.0999999	2.13000011	2018-12-06 15:13:00
Burbank	City	Los Angeles	california	34.1808014	-118.308998	2.29999995	60	Moderate air quality	pm25	2018-12-06 22:58:00	53.5299988	40	1011	5.0999999	1.26999998	2018-12-06 15:13:00
Burlingame	City	San Mateo	california	37.5778999	-122.348	1.75999999	57	Moderate air quality	pm25	2018-12-06 23:15:00	61.5699997	40	1013	2.5999999	0	2018-12-06 15:13:00
Calabasas	City	Los Angeles	california	34.1366997	-118.661003	2.30999994	28	Good air quality	o3	2018-12-06 22:58:00	56.0499992	40	1011	5.0999999	1.12	2018-12-06 15:13:00
Calexico	City	Imperial	california	32.6789017	-115.499001	2.77999997	69	Moderate air quality	pm25	2018-12-06 22:56:00	52.9000015	90	1016	2.0999999	0.75999999	2018-12-06 15:13:00
California City	City	Kern	california	35.1258011	-117.986	2.1400001	32	Good air quality	o3	2018-12-06 23:13:00	42.8199997	90	1015	4.0999999	1.32000005	2018-12-06 15:13:00
Calimesa	City	Riverside	california	34.0038986	-117.061996	2.43000007	59	Moderate air quality	pm25	2018-12-06 23:17:00	50.7000008	90	1013	5.0999999	3.29999995	2018-12-06 15:13:00
Calipatria	City	Imperial	california	33.1255989	-115.514	2.61999989	61	Moderate air quality	pm25	2018-12-06 22:56:00	52.9199982	90	1016	2.0999999	0.75999999	2018-12-06 15:13:00
Calistoga	City	Napa	california	38.5788002	-122.580002	1.65999997	50	Good air quality	pm25	2018-12-06 23:15:00	61.4099998	1	1014	0.959999979	0	2018-12-06 15:13:00
Camarillo	City	Ventura	california	34.2164001	-119.038002	2.28999996	60	Moderate air quality	pm25	2018-12-06 22:57:00	54.5200005	75	1012	9.80000019	0.25	2018-12-06 15:13:00
Campbell	City	Santa Clara	california	37.2872009	-121.949997	1.77999997	60	Moderate air quality	pm25	2018-12-06 23:15:00	61.6300011	40	1013	2.5999999	0	2018-12-06 15:13:00
Canyon Lake	City	Riverside	california	33.6850014	-117.273003	2.5	18	Good air quality	o3	2018-12-06 23:30:00	53.1100006	90	1013	5.0999999	4.5999999	2018-12-06 15:13:00
Capitola	City	Santa Cruz	california	36.9752007	-121.953003	1.84000003	64	Moderate air quality	pm25	2018-12-06 23:15:00	62.3800011	1	1013	4.5999999	0	2018-12-06 15:13:00
Carlsbad	City	San Diego	california	33.1581001	-117.350998	2.5999999	51	Moderate air quality	pm25	2018-12-06 23:30:00	59.3199997	90	1011	2.5999999	5.42999983	2018-12-06 15:13:00
Carmel-by-the-Sea	City	Monterey	california	36.5551987	-121.922997	1.88999999	55	Moderate air quality	pm25	2018-12-06 23:15:00	63.7700005	20	1012	3.0999999	0	2018-12-06 15:13:00
Carpinteria	City	Santa Barbara	california	34.3988991	-119.517998	2.25	35	Good air quality	o3	2018-12-06 23:15:00	58.8899994	90	1012	2.0999999	0	2018-12-06 15:13:00
Carson	City	Los Angeles	california	33.8316994	-118.281998	2.36999989	47	Good air quality	pm25	2018-12-06 23:17:00	54.9000015	20	1011	2.5999999	1.26999998	2018-12-06 15:13:00
Cathedral City	City	Riverside	california	33.7804985	-116.467003	2.44000006	33	Good air quality	pm25	2018-12-06 23:15:00	50.9900017	90	1015	2.0999999	0.50999999	2018-12-06 15:13:00
Ceres	City	Stanislaus	california	37.5948982	-120.958	1.73000002	62	Moderate air quality	pm25	2018-12-06 23:15:00	59.5400009	1	1014	3.5999999	0	2018-12-06 15:13:00
Cerritos	City	Los Angeles	california	33.8582993	-118.065002	2.36999989	40	Good air quality	pm25	2018-12-06 23:17:00	54.9000015	90	1010	5.0999999	1.26999998	2018-12-06 15:13:00
Chico	City	Butte	california	39.7285004	-121.836998	1.53999996	61	Moderate air quality	pm25	2018-12-06 22:54:00	61.1399994	1	1014	3.5999999	0	2018-12-06 15:13:00
Chino	City	San Bernardino	california	34.0121994	-117.689003	2.38000011	47	Good air quality	pm25	2018-12-06 23:17:00	55.2000008	90	1013	5.0999999	1.26999998	2018-12-06 15:13:00
Chino Hills	City	San Bernardino	california	33.9897995	-117.733002	2.41000009	23	Good air quality	pm25	2018-12-06 23:17:00	54.0699997	90	1013	5.0999999	2.13000011	2018-12-06 15:13:00
Chowchilla	City	Madera	california	37.1230011	-120.260002	1.77999997	57	Moderate air quality	pm25	2018-12-06 23:17:00	56.0800018	90	1014	2.0999999	0	2018-12-06 15:13:00
Chula Vista	City	San Diego	california	32.6400986	-117.084	2.73000002	60	Moderate air quality	pm25	2018-12-06 23:30:00	61.5400009	90	1011	2.5999999	7.61999989	2018-12-06 15:13:00
Citrus Heights	City	Sacramento	california	38.7070999	-121.280998	1.63	47	Good air quality	pm25	2018-12-06 23:15:00	58.3300018	1	1015	4.0999999	0	2018-12-06 15:13:00
Claremont	City	Los Angeles	california	34.0966988	-117.720001	2.38000011	54	Moderate air quality	pm25	2018-12-06 23:17:00	54.0699997	90	1013	5.0999999	2.13000011	2018-12-06 15:13:00
Clayton	City	Contra Costa	california	37.9410019	-121.935997	1.73000002	25	Good air quality	pm25	2018-12-06 23:20:00	61.5	1	1014	3.0999999	0	2018-12-06 15:13:00
Clearlake	City	Lake	california	38.9581985	-122.625999	1.65999997	37	Good air quality	pm25	2018-12-06 22:56:00	60.0800018	1	1014	1.5	0	2018-12-06 15:13:00
Cloverdale	City	Sonoma	california	38.8055	-123.016998	1.64999998	65	Moderate air quality	pm25	2018-12-06 22:56:00	60.0800018	1	1014	1.5	0	2018-12-06 15:13:00
Clovis	City	Fresno	california	36.8251991	-119.703003	1.84000003	46	Good air quality	pm25	2018-12-06 23:17:00	53.9199982	90	1014	2.0999999	1.01999998	2018-12-06 15:13:00
Coachella	City	Riverside	california	33.6803017	-116.174004	2.47000003	28	Good air quality	pm10	2018-12-06 23:15:00	51.1899986	90	1015	2.0999999	0.75999999	2018-12-06 15:13:00
Coalinga	City	Fresno	california	36.1397018	-120.360001	1.92999995	38	Good air quality	pm25	2018-12-06 22:56:00	54.2999992	75	1015	2.0999999	0	2018-12-06 15:13:00
Colfax	City	Placer	california	39.1007004	-120.953003	1.63	29	Good air quality	pm25	2018-12-06 23:15:00	57.8100014	1	1014	2.0999999	0	2018-12-06 15:13:00
Colma	Town	San Mateo	california	37.676899	-122.459999	1.75999999	52	Moderate air quality	pm25	2018-12-06 23:15:00	61.7400017	40	1013	2.5999999	0	2018-12-06 15:13:00
Colton	City	San Bernardino	california	34.0738983	-117.314003	2.36999989	52	Moderate air quality	pm25	2018-12-06 23:17:00	53.0999985	90	1013	5.0999999	2.8900001	2018-12-06 15:13:00
Colusa	City	Colusa	california	39.2142982	-122.009003	1.58000004	51	Moderate air quality	pm25	2018-12-06 23:15:00	59.5600014	1	1014	4.0999999	0	2018-12-06 15:13:00
Commerce	City	Los Angeles	california	34.0005989	-118.160004	2.32999992	55	Moderate air quality	pm25	2018-12-06 23:17:00	55.2000008	90	1013	5.0999999	1.26999998	2018-12-06 15:13:00
Compton	City	Los Angeles	california	33.8958015	-118.220001	2.36999989	56	Moderate air quality	pm25	2018-12-06 23:17:00	54.9000015	20	1011	2.5999999	1.26999998	2018-12-06 15:13:00
Concord	City	Contra Costa	california	37.9780006	-122.030998	1.72000003	59	Moderate air quality	pm25	2018-12-06 23:20:00	61.3899994	1	1014	3.5999999	0	2018-12-06 15:13:00
Corcoran	City	Kings	california	36.0979996	-119.559998	1.90999997	70	Moderate air quality	pm25	2018-12-06 23:15:00	52.9000015	90	1014	2.0999999	1.01999998	2018-12-06 15:13:00
Corning	City	Tehama	california	39.9277	-122.179001	1.51999998	41	Good air quality	pm25	2018-12-06 22:54:00	61.3800011	1	1014	3.5999999	0	2018-12-06 15:13:00
Corona	City	Riverside	california	33.8753014	-117.566002	2.41000009	46	Good air quality	pm25	2018-12-06 23:17:00	53.7299995	90	1013	5.0999999	2.86999989	2018-12-06 15:13:00
Coronado	City	San Diego	california	32.6859016	-117.182999	2.73000002	55	Moderate air quality	pm25	2018-12-06 23:30:00	60.7999992	90	1011	2.5999999	8.13000011	2018-12-06 15:13:00
Corte Madera	Town	Marin	california	37.925499	-122.527	1.72000003	32	Good air quality	pm25	2018-12-06 23:15:00	61.5600014	1	1014	2.55999994	0	2018-12-06 15:13:00
Costa Mesa	City	Orange	california	33.641201	-117.918999	2.44000006	44	Good air quality	pm25	2018-12-06 23:17:00	54.8100014	90	1013	5.0999999	2.53999996	2018-12-06 15:13:00
Cotati	City	Sonoma	california	38.3292999	-122.709999	1.66999996	58	Moderate air quality	pm25	2018-12-06 23:15:00	61.9300003	1	1014	1.46000004	0	2018-12-06 15:13:00
Covina	City	Los Angeles	california	34.0900002	-117.889999	2.3499999	53	Moderate air quality	pm25	2018-12-06 23:17:00	54.0699997	90	1013	5.0999999	2.13000011	2018-12-06 15:13:00
Crescent City	City	Del Norte	california	41.7556992	-124.203003	1.29999995	58	Moderate air quality	pm25	2018-12-06 23:17:00	52.7400017	20	1015	1.5	0	2018-12-06 15:13:00
Cudahy	City	Los Angeles	california	33.9606018	-118.184998	2.36999989	54	Moderate air quality	pm25	2018-12-06 23:17:00	54.9000015	20	1011	2.5999999	1.26999998	2018-12-06 15:13:00
Culver City	City	Los Angeles	california	34.0210991	-118.396004	2.29999995	58	Moderate air quality	pm25	2018-12-06 22:58:00	55.5099983	75	1011	6.69999981	1.23000002	2018-12-06 15:13:00
Cupertino	City	Santa Clara	california	37.3230019	-122.031998	1.80999994	60	Moderate air quality	pm25	2018-12-06 23:15:00	61.5400009	1	1014	2.5999999	0	2018-12-06 15:13:00
Cypress	City	Orange	california	33.8168983	-118.037003	2.36999989	35	Good air quality	pm25	2018-12-06 23:17:00	54.9000015	90	1010	5.0999999	1.26999998	2018-12-06 15:13:00
Daly City	City	San Mateo	california	37.6879005	-122.470001	1.75999999	58	Moderate air quality	pm25	2018-12-06 23:15:00	61.7400017	40	1013	2.5999999	0	2018-12-06 15:13:00
Dana Point	City	Orange	california	33.4672012	-117.697998	2.50999999	49	Good air quality	pm25	2018-12-06 23:30:00	54	90	1011	2.5999999	3.52999997	2018-12-06 15:13:00
Danville	Town	Contra Costa	california	37.8216019	-122	1.73000002	53	Moderate air quality	pm25	2018-12-06 23:15:00	61.75	1	1013	3.5999999	0	2018-12-06 15:13:00
Davis	City	Yolo	california	38.544899	-121.740997	1.63	54	Moderate air quality	pm25	2018-12-06 23:15:00	60.2999992	1	1014	3.5999999	0	2018-12-06 15:13:00
Del Mar	City	San Diego	california	32.9594994	-117.264999	2.69000006	36	Good air quality	pm25	2018-12-06 23:30:00	59.9000015	90	1011	2.5999999	5.42999983	2018-12-06 15:13:00
Del Rey Oaks	City	Monterey	california	36.5932999	-121.834999	1.88999999	29	Good air quality	pm25	2018-12-06 23:15:00	63.7900009	20	1012	3.0999999	0	2018-12-06 15:13:00
Delano	City	Kern	california	35.7687988	-119.247002	1.94000006	69	Moderate air quality	pm25	2018-12-06 23:15:00	52.5900002	90	1014	2.0999999	1.01999998	2018-12-06 15:13:00
Desert Hot Springs	City	Riverside	california	33.9611015	-116.501999	2.5	54	Moderate air quality	pm25	2018-12-06 22:56:00	48.0200005	90	1017	5.69999981	0.75999999	2018-12-06 15:13:00
Diamond Bar	City	Los Angeles	california	34.0285988	-117.809998	2.3499999	59	Moderate air quality	pm25	2018-12-06 23:17:00	54.0699997	90	1013	5.0999999	2.13000011	2018-12-06 15:13:00
Dinuba	City	Tulare	california	36.5433006	-119.387001	1.87	56	Moderate air quality	pm25	2018-12-06 23:15:00	53.2000008	90	1014	2.0999999	1.01999998	2018-12-06 15:13:00
Dixon	City	Solano	california	38.4454994	-121.822998	1.64999998	47	Good air quality	pm25	2018-12-06 23:20:00	60.2200012	1	1014	4.0999999	0	2018-12-06 15:13:00
Dorris	City	Siskiyou	california	41.9673996	-121.917999	1.36000001	42	Good air quality	pm25	2018-12-06 22:53:00	38.4399986	1	1017	4.0999999	0	2018-12-06 15:13:00
Dos Palos	City	Merced	california	36.9860992	-120.626999	1.80999994	55	Moderate air quality	pm25	2018-12-06 23:17:00	58.6599998	90	1014	2.0999999	0	2018-12-06 15:13:00
Downey	City	Los Angeles	california	33.9401016	-118.133003	2.36999989	55	Moderate air quality	pm25	2018-12-06 23:17:00	54.9000015	90	1010	5.0999999	1.26999998	2018-12-06 15:13:00
Duarte	City	Los Angeles	california	34.1394997	-117.976997	2.3499999	55	Moderate air quality	pm25	2018-12-06 23:17:00	54.5699997	90	1013	5.0999999	1.26999998	2018-12-06 15:13:00
Dublin	City	Alameda	california	37.7022018	-121.935997	1.75999999	53	Moderate air quality	pm25	2018-12-06 23:15:00	61.2099991	1	1014	3.0999999	0	2018-12-06 15:13:00
Dunsmuir	City	Siskiyou	california	41.2081985	-122.272003	1.46000004	58	Moderate air quality	pm25	2018-12-06 23:10:00	44.6699982	1	1015	2.5999999	0	2018-12-06 15:13:00
East Palo Alto	City	San Mateo	california	37.4687996	-122.140999	1.80999994	70	Moderate air quality	pm25	2018-12-06 23:15:00	61.5699997	1	1014	2.5999999	0	2018-12-06 15:13:00
Eastvale	City	Riverside	california	33.9524994	-117.584999	2.41000009	27	Good air quality	pm25	2018-12-06 23:17:00	55.0900002	90	1013	5.0999999	1.26999998	2018-12-06 15:13:00
El Cajon	City	San Diego	california	32.7947998	-116.962997	2.72000003	55	Moderate air quality	pm25	2018-12-06 23:30:00	60.1500015	90	1011	2.5999999	6.73000002	2018-12-06 15:13:00
El Centro	City	Imperial	california	32.7919998	-115.563004	2.70000005	43	Good air quality	pm25	2018-12-06 22:56:00	52.9199982	90	1015	1.65999997	0.75999999	2018-12-06 15:13:00
El Cerrito	City	Contra Costa	california	37.9160995	-122.310997	1.71000004	56	Moderate air quality	pm25	2018-12-06 23:15:00	61.5200005	1	1014	2.55999994	0	2018-12-06 15:13:00
El Monte	City	Los Angeles	california	34.0685997	-118.028	2.32999992	60	Moderate air quality	pm25	2018-12-06 23:17:00	54.5699997	90	1013	5.0999999	1.26999998	2018-12-06 15:13:00
El Segundo	City	Los Angeles	california	33.9192009	-118.416	2.36999989	52	Moderate air quality	pm25	2018-12-06 22:58:00	55.5099983	75	1011	6.69999981	1.23000002	2018-12-06 15:13:00
Elk Grove	City	Sacramento	california	38.4087982	-121.372002	1.64999998	52	Moderate air quality	pm25	2018-12-06 23:20:00	59.2299995	1	1015	4.0999999	0	2018-12-06 15:13:00
Emeryville	City	Alameda	california	37.8312988	-122.285004	1.71000004	51	Moderate air quality	pm25	2018-12-06 23:15:00	61.7900009	1	1014	2.55999994	0	2018-12-06 15:13:00
Encinitas	City	San Diego	california	33.0369987	-117.292	2.5999999	46	Good air quality	pm25	2018-12-06 23:30:00	59.9199982	90	1011	2.5999999	5.42999983	2018-12-06 15:13:00
Escalon	City	San Joaquin	california	37.7974014	-120.997002	1.71000004	64	Moderate air quality	pm25	2018-12-06 23:15:00	58.9300003	1	1014	3.5999999	0	2018-12-06 15:13:00
Escondido	City	San Diego	california	33.1192017	-117.085999	2.61999989	52	Moderate air quality	pm25	2018-12-06 23:30:00	59.9399986	90	1011	2.5999999	5.42999983	2018-12-06 15:13:00
Etna	City	Siskiyou	california	41.4567986	-122.894997	1.44000006	46	Good air quality	pm25	2018-12-06 23:10:00	44.5600014	1	1015	0.75999999	0	2018-12-06 15:13:00
Eureka	City	Humboldt	california	40.8021011	-124.164001	1.44000006	48	Good air quality	pm25	2018-12-06 22:55:00	54.6800003	1	1015	2.0999999	0	2018-12-06 15:13:00
Exeter	City	Tulare	california	36.2961006	-119.141998	1.89999998	58	Moderate air quality	pm25	2018-12-06 23:15:00	52.4500008	90	1014	2.0999999	1.01999998	2018-12-06 15:13:00
Fairfax	Town	Marin	california	37.9870987	-122.588997	1.72000003	24	Good air quality	pm10	2018-12-06 23:15:00	61.8300018	1	1014	2.55999994	0	2018-12-06 15:13:00
Fairfield	City	Solano	california	38.2494011	-122.040001	1.69000006	43	Good air quality	pm25	2018-12-06 23:15:00	60.9799995	1	1014	5.0999999	0	2018-12-06 15:13:00
Farmersville	City	Tulare	california	36.297699	-119.207001	1.89999998	58	Moderate air quality	pm25	2018-12-06 23:15:00	53.4599991	90	1014	2.0999999	1.01999998	2018-12-06 15:13:00
Ferndale	City	Humboldt	california	40.5761986	-124.264	1.45000005	23	Good air quality	o3	2018-12-06 22:55:00	54.6100006	1	1015	3.5999999	0	2018-12-06 15:13:00
Fillmore	City	Ventura	california	34.3992004	-118.917999	2.25999999	29	Good air quality	o3	2018-12-06 22:57:00	54.6100006	75	1012	9.80000019	0.25	2018-12-06 15:13:00
Firebaugh	City	Fresno	california	36.858799	-120.456001	1.80999994	68	Moderate air quality	pm25	2018-12-06 23:17:00	56.1199989	90	1014	2.0999999	0	2018-12-06 15:13:00
Folsom	City	Sacramento	california	38.6780014	-121.176003	1.63	62	Moderate air quality	pm25	2018-12-06 23:20:00	57.9399986	1	1015	4.0999999	0	2018-12-06 15:13:00
Fontana	City	San Bernardino	california	34.0922012	-117.434998	2.36999989	54	Moderate air quality	pm25	2018-12-06 23:17:00	53.4199982	90	1013	5.0999999	2.71000004	2018-12-06 15:13:00
Fort Bragg	City	Mendocino	california	39.4457016	-123.805	1.59000003	54	Moderate air quality	pm25	2018-12-06 22:56:00	60.0800018	1	1014	1.5	0	2018-12-06 15:13:00
Fort Jones	City	Siskiyou	california	41.6076012	-122.839996	1.38999999	46	Good air quality	pm25	2018-12-06 22:56:00	41.9000015	1	1017	0.75999999	0	2018-12-06 15:13:00
Fortuna	City	Humboldt	california	40.5982018	-124.156998	1.46000004	38	Good air quality	pm25	2018-12-06 22:55:00	54.6100006	1	1015	3.5999999	0	2018-12-06 15:13:00
Foster City	City	San Mateo	california	37.5584984	-122.271004	1.75999999	63	Moderate air quality	pm25	2018-12-06 23:15:00	61.5699997	40	1013	2.5999999	0	2018-12-06 15:13:00
Fountain Valley	City	Orange	california	33.7089996	-117.954002	2.44000006	47	Good air quality	pm25	2018-12-06 23:17:00	54.9000015	90	1013	5.0999999	1.26999998	2018-12-06 15:13:00
Fowler	City	Fresno	california	36.6305008	-119.678001	1.86000001	51	Moderate air quality	pm25	2018-12-06 23:17:00	53.9399986	90	1014	2.0999999	1.01999998	2018-12-06 15:13:00
Fremont	City	Alameda	california	37.5483017	-121.988998	1.75999999	56	Moderate air quality	pm25	2018-12-06 23:15:00	61.5699997	1	1014	3.0999999	0	2018-12-06 15:13:00
Fresno	City	Fresno	california	36.7378006	-119.787003	1.85000002	70	Moderate air quality	pm25	2018-12-06 23:17:00	53.9399986	90	1014	2.0999999	1.01999998	2018-12-06 15:13:00
Fullerton	City	Orange	california	33.8703995	-117.924004	2.38000011	44	Good air quality	pm25	2018-12-06 23:25:00	53.8699989	90	1013	5.0999999	1.26999998	2018-12-06 15:13:00
Galt	City	Sacramento	california	38.2546005	-121.300003	1.64999998	56	Moderate air quality	pm25	2018-12-06 23:20:00	59.5900002	1	1014	4.0999999	0	2018-12-06 15:13:00
Garden Grove	City	Orange	california	33.7742996	-117.938004	2.38000011	41	Good air quality	pm25	2018-12-06 23:25:00	53.8699989	90	1013	5.0999999	1.26999998	2018-12-06 15:13:00
Gardena	City	Los Angeles	california	33.8883018	-118.308998	2.36999989	53	Moderate air quality	pm25	2018-12-06 23:17:00	54.9000015	20	1011	2.5999999	1.26999998	2018-12-06 15:13:00
Gilroy	City	Santa Clara	california	37.0057983	-121.568001	1.83000004	64	Moderate air quality	pm25	2018-12-06 23:15:00	62.6500015	1	1013	1.5	0	2018-12-06 15:13:00
Glendale	City	Los Angeles	california	34.1425018	-118.254997	2.29999995	57	Moderate air quality	pm25	2018-12-06 23:17:00	53.5299988	40	1011	5.0999999	1.29999995	2018-12-06 15:13:00
Glendora	City	Los Angeles	california	34.1361008	-117.864998	2.3499999	58	Moderate air quality	pm25	2018-12-06 23:25:00	54.0499992	90	1013	5.0999999	1.26999998	2018-12-06 15:13:00
Goleta	City	Santa Barbara	california	34.4357986	-119.828003	2.22000003	47	Good air quality	pm25	2018-12-06 23:15:00	57.8300018	90	1012	2.0999999	1.77999997	2018-12-06 15:13:00
Gonzales	City	Monterey	california	36.5065994	-121.444	1.88999999	60	Moderate air quality	pm25	2018-12-06 23:15:00	63.8199997	1	1013	4.5999999	0	2018-12-06 15:13:00
Grand Terrace	City	San Bernardino	california	34.0339012	-117.314003	2.36999989	51	Moderate air quality	pm25	2018-12-06 23:35:00	52.7700005	90	1013	8.69999981	2.02999997	2018-12-06 15:13:00
Grass Valley	City	Nevada	california	39.219101	-121.060997	1.61000001	55	Moderate air quality	pm25	2018-12-06 23:15:00	57.7000008	1	1014	2.0999999	0	2018-12-06 15:13:00
Greenfield	City	Monterey	california	36.3208008	-121.244003	1.92999995	58	Moderate air quality	pm25	2018-12-06 23:15:00	64.2699966	1	1013	4.5999999	0	2018-12-06 15:13:00
Gridley	City	Butte	california	39.3638	-121.694	1.55999994	42	Good air quality	pm25	2018-12-06 23:15:00	58.1199989	1	1014	3.5999999	0	2018-12-06 15:13:00
Grover Beach	City	San Luis Obispo	california	35.1216011	-120.621002	2.07999992	37	Good air quality	pm25	2018-12-06 22:56:00	57.1100006	75	1012	2.0999999	1.14999998	2018-12-06 15:13:00
Guadalupe	City	Santa Barbara	california	34.9715996	-120.571999	2.11999989	22	Good air quality	o3	2018-12-06 23:15:00	57.4500008	90	1012	2.5999999	1.14999998	2018-12-06 15:13:00
Gustine	City	Merced	california	37.2577019	-120.999001	1.75999999	54	Moderate air quality	pm25	2018-12-06 23:15:00	60.7799988	1	1013	4.5999999	0	2018-12-06 15:13:00
Half Moon Bay	City	San Mateo	california	37.4636002	-122.429001	1.79999995	39	Good air quality	pm25	2018-12-06 23:00:00	61.7400017	1	1014	4.5999999	0	2018-12-06 15:13:00
Hanford	City	Kings	california	36.3274002	-119.646004	1.88999999	53	Moderate air quality	pm25	2018-12-06 23:37:00	53.4700012	90	1015	1.40999997	1.01999998	2018-12-06 15:13:00
Hawaiian Gardens	City	Los Angeles	california	33.8314018	-118.072998	2.36999989	50	Good air quality	pm25	2018-12-06 23:17:00	54.9000015	90	1010	5.0999999	1.26999998	2018-12-06 15:13:00
Hawthorne	City	Los Angeles	california	33.9164009	-118.352997	2.36999989	54	Moderate air quality	pm25	2018-12-06 23:17:00	54.9000015	20	1011	2.5999999	1.26999998	2018-12-06 15:13:00
Hayward	City	Alameda	california	37.6688004	-122.081001	1.74000001	57	Moderate air quality	pm25	2018-12-06 23:15:00	61.4500008	1	1013	3.5999999	0	2018-12-06 15:13:00
Healdsburg	City	Sonoma	california	38.6105003	-122.869003	1.64999998	58	Moderate air quality	pm25	2018-12-06 23:15:00	61.2900009	1	1014	1.46000004	0	2018-12-06 15:13:00
Hemet	City	Riverside	california	33.7475014	-116.972	2.55999994	55	Moderate air quality	pm25	2018-12-06 23:35:00	51.3499985	90	1014	3.5999999	6.5999999	2018-12-06 15:13:00
Hercules	City	Contra Costa	california	38.0171013	-122.289001	1.67999995	28	Good air quality	pm25	2018-12-06 23:15:00	61.4799995	1	1014	2.55999994	0	2018-12-06 15:13:00
Hermosa Beach	City	Los Angeles	california	33.8622017	-118.400002	2.36999989	53	Moderate air quality	pm25	2018-12-06 22:58:00	55.0400009	75	1011	6.69999981	1.23000002	2018-12-06 15:13:00
Hesperia	City	San Bernardino	california	34.4263992	-117.301003	2.36999989	27	Good air quality	pm25	2018-12-06 23:25:00	49.1500015	90	1013	8.69999981	0.889999986	2018-12-06 15:13:00
Hidden Hills	City	Los Angeles	california	34.1603012	-118.652	2.30999994	28	Good air quality	o3	2018-12-06 22:58:00	56.0499992	40	1011	5.0999999	1.12	2018-12-06 15:13:00
Highland	City	San Bernardino	california	34.1282997	-117.209	2.43000007	50	Good air quality	pm25	2018-12-06 23:35:00	50.0499992	90	1013	8.69999981	1.51999998	2018-12-06 15:13:00
Hillsborough	Town	San Mateo	california	37.5741005	-122.378998	1.75999999	32	Good air quality	pm25	2018-12-06 23:15:00	61.8100014	40	1013	2.5999999	0	2018-12-06 15:13:00
Hollister	City	San Benito	california	36.8525009	-121.402	1.84000003	62	Moderate air quality	pm25	2018-12-06 23:15:00	63.5900002	1	1013	4.5999999	0	2018-12-06 15:13:00
Holtville	City	Imperial	california	32.8111992	-115.379997	2.71000004	72	Moderate air quality	pm25	2018-12-06 22:56:00	52.9000015	90	1015	2.05999994	0.75999999	2018-12-06 15:13:00
Hughson	City	Stanislaus	california	37.6026993	-120.865997	1.73000002	51	Moderate air quality	pm25	2018-12-06 23:15:00	59.25	1	1014	3.5999999	0	2018-12-06 15:13:00
Huntington Beach	City	Orange	california	33.6595001	-117.999001	2.44000006	45	Good air quality	pm25	2018-12-06 23:17:00	55.4000015	90	1013	5.0999999	1.44000006	2018-12-06 15:13:00
Huntington Park	City	Los Angeles	california	33.9817009	-118.224998	2.36999989	56	Moderate air quality	pm25	2018-12-06 23:17:00	54.9000015	20	1011	2.5999999	1.26999998	2018-12-06 15:13:00
Huron	City	Fresno	california	36.2027016	-120.102997	1.90999997	38	Good air quality	pm25	2018-12-06 23:35:00	53.9099998	90	1014	0.409999996	1.01999998	2018-12-06 15:13:00
Imperial	City	Imperial	california	32.847599	-115.569	2.70000005	62	Moderate air quality	pm25	2018-12-06 22:56:00	52.9199982	90	1015	1.65999997	0.75999999	2018-12-06 15:13:00
Imperial Beach	City	San Diego	california	32.5839005	-117.112999	2.73000002	65	Moderate air quality	pm25	2018-12-06 23:30:00	63.0699997	75	1011	4.5999999	2.02999997	2018-12-06 15:13:00
Indian Wells	City	Riverside	california	33.7176018	-116.341003	2.55999994	28	Good air quality	pm25	2018-12-06 23:15:00	51.2200012	90	1015	2.0999999	0.75999999	2018-12-06 15:13:00
Indio	City	Riverside	california	33.7206001	-116.216003	2.47000003	52	Moderate air quality	pm25	2018-12-06 23:15:00	51.2400017	90	1015	2.0999999	0.75999999	2018-12-06 15:13:00
Industry	City	Los Angeles	california	34.0196991	-117.959	2.3499999	53	Moderate air quality	pm25	2018-12-06 23:25:00	54.0299988	90	1013	5.0999999	1.26999998	2018-12-06 15:13:00
Inglewood	City	Los Angeles	california	33.9617004	-118.352997	2.36999989	58	Moderate air quality	pm25	2018-12-06 23:17:00	54.9000015	20	1011	2.5999999	1.26999998	2018-12-06 15:13:00
Ione	City	Amador	california	38.3526993	-120.932999	1.65999997	62	Moderate air quality	pm25	2018-12-06 23:15:00	58.4399986	1	1014	3.0999999	0	2018-12-06 15:13:00
Irvine	City	Orange	california	33.6846008	-117.827003	2.44000006	40	Good air quality	pm25	2018-12-06 23:18:00	54.75	90	1013	5.0999999	3.72000003	2018-12-06 15:13:00
Irwindale	City	Los Angeles	california	34.1069984	-117.934998	2.3499999	55	Moderate air quality	pm25	2018-12-06 23:25:00	54.0499992	90	1013	5.0999999	1.26999998	2018-12-06 15:13:00
Isleton	City	Sacramento	california	38.1618996	-121.612	1.66999996	29	Good air quality	pm25	2018-12-06 23:20:00	60.3699989	1	1014	4.0999999	0	2018-12-06 15:13:00
Jackson	City	Amador	california	38.3488007	-120.774002	1.65999997	52	Moderate air quality	pm25	2018-12-06 23:15:00	58.9799995	1	1014	3.0999999	0	2018-12-06 15:13:00
Jurupa Valley	City	Riverside	california	33.9972	-117.485001	2.41000009	56	Moderate air quality	pm25	2018-12-06 23:35:00	53.5499992	90	1013	8.69999981	1.62	2018-12-06 15:13:00
Kerman	City	Fresno	california	36.7235985	-120.059998	1.83000004	57	Moderate air quality	pm25	2018-12-06 23:17:00	54.0699997	90	1014	2.0999999	0	2018-12-06 15:13:00
King City	City	Monterey	california	36.2126999	-121.125999	1.96000004	61	Moderate air quality	pm25	2018-12-06 22:53:00	64.0400009	1	1012	4.5999999	0	2018-12-06 15:13:00
Kingsburg	City	Fresno	california	36.5138016	-119.554001	1.86000001	55	Moderate air quality	pm25	2018-12-06 23:37:00	53.4700012	90	1015	1.40999997	1.01999998	2018-12-06 15:13:00
La CaÃ±ada Flintridge	City	Los Angeles	california	34.2067986	-118.199997	2.32999992	54	Moderate air quality	pm25	2018-12-06 23:17:00	53.5299988	75	1012	5.69999981	1.29999995	2018-12-06 15:13:00
La Habra	City	Orange	california	33.9319	-117.945999	2.38000011	45	Good air quality	pm25	2018-12-06 23:25:00	54.0299988	90	1013	5.0999999	1.26999998	2018-12-06 15:13:00
La Habra Heights	City	Los Angeles	california	33.9608002	-117.950996	2.38000011	30	Good air quality	pm25	2018-12-06 23:25:00	54.0299988	90	1013	5.0999999	1.26999998	2018-12-06 15:13:00
La Mesa	City	San Diego	california	32.7677994	-117.023003	2.68000007	54	Moderate air quality	pm25	2018-12-06 23:30:00	60.1500015	90	1011	2.5999999	6.73000002	2018-12-06 15:13:00
La Mirada	City	Los Angeles	california	33.9171982	-118.012001	2.36999989	47	Good air quality	pm25	2018-12-06 23:25:00	53.8699989	90	1013	5.0999999	1.26999998	2018-12-06 15:13:00
La Palma	City	Orange	california	33.8462982	-118.045998	2.36999989	34	Good air quality	pm25	2018-12-06 23:17:00	54.9000015	90	1010	5.0999999	1.26999998	2018-12-06 15:13:00
La Puente	City	Los Angeles	california	34.0200005	-117.949997	2.3499999	51	Moderate air quality	pm25	2018-12-06 23:17:00	54.0499992	90	1013	5.0999999	2.13000011	2018-12-06 15:13:00
La Quinta	City	Riverside	california	33.6633987	-116.309998	2.55999994	27	Good air quality	pm25	2018-12-06 23:15:00	55.4000015	90	1015	2.0999999	0	2018-12-06 15:13:00
La Verne	City	Los Angeles	california	34.1007996	-117.767998	2.3499999	54	Moderate air quality	pm25	2018-12-06 23:25:00	54.0499992	90	1013	5.0999999	1.26999998	2018-12-06 15:13:00
Lafayette	City	Contra Costa	california	37.8857994	-122.117996	1.72000003	41	Good air quality	pm25	2018-12-06 23:15:00	61.7900009	1	1014	2.55999994	0	2018-12-06 15:13:00
Laguna Beach	City	Orange	california	33.5427017	-117.785004	2.44000006	49	Good air quality	pm25	2018-12-06 23:35:00	53.5999985	90	1014	3.5999999	3.8900001	2018-12-06 15:13:00
Laguna Hills	City	Orange	california	33.5915985	-117.698997	2.48000002	34	Good air quality	o3	2018-12-06 23:35:00	53.5999985	90	1014	3.5999999	3.8900001	2018-12-06 15:13:00
Laguna Niguel	City	Orange	california	33.5237007	-117.714996	2.48000002	47	Good air quality	pm25	2018-12-06 23:35:00	53.4199982	90	1014	3.5999999	3.8900001	2018-12-06 15:13:00
Laguna Woods	City	Orange	california	33.610199	-117.724998	2.48000002	35	Good air quality	pm25	2018-12-06 23:30:00	54.6800003	90	1013	5.0999999	3.55999994	2018-12-06 15:13:00
Lake Elsinore	City	Riverside	california	33.6680984	-117.327003	2.5	48	Good air quality	pm25	2018-12-06 23:35:00	53.1500015	90	1014	3.5999999	4.3499999	2018-12-06 15:13:00
Lake Forest	City	Orange	california	33.6469002	-117.685997	2.48000002	34	Good air quality	o3	2018-12-06 23:30:00	54.9099998	90	1013	5.0999999	3.55999994	2018-12-06 15:13:00
Lakeport	City	Lake	california	39.0429001	-122.916	1.63999999	58	Moderate air quality	pm25	2018-12-06 22:56:00	60.0800018	1	1014	1.5	0	2018-12-06 15:13:00
Lakewood	City	Los Angeles	california	33.8535995	-118.134003	2.36999989	41	Good air quality	pm25	2018-12-06 23:17:00	54.9000015	90	1010	5.0999999	1.26999998	2018-12-06 15:13:00
Lancaster	City	Los Angeles	california	34.6867981	-118.153999	2.25999999	29	Good air quality	pm25	2018-12-06 23:13:00	44.5099983	90	1015	2.5999999	0.660000026	2018-12-06 15:13:00
Larkspur	City	Marin	california	37.9341011	-122.535004	1.72000003	25	Good air quality	pm10	2018-12-06 23:15:00	61.5600014	1	1014	2.55999994	0	2018-12-06 15:13:00
Lathrop	City	San Joaquin	california	37.8227005	-121.277	1.71000004	47	Good air quality	pm25	2018-12-06 23:15:00	59.7000008	1	1014	3.0999999	0	2018-12-06 15:13:00
Lawndale	City	Los Angeles	california	33.8871994	-118.352997	2.36999989	54	Moderate air quality	pm25	2018-12-06 23:17:00	54.9000015	20	1011	2.5999999	1.26999998	2018-12-06 15:13:00
Lemon Grove	City	San Diego	california	32.7425003	-117.030998	2.73000002	57	Moderate air quality	pm25	2018-12-06 23:30:00	60.7999992	90	1011	2.5999999	8.13000011	2018-12-06 15:13:00
Lemoore	City	Kings	california	36.3008003	-119.782997	1.88	47	Good air quality	pm25	2018-12-06 23:15:00	53.4000015	75	1015	2.0999999	1.01999998	2018-12-06 15:13:00
Lincoln	City	Placer	california	38.8916016	-121.292999	1.60000002	57	Moderate air quality	pm25	2018-12-06 23:20:00	58.5699997	1	1014	4.0999999	0	2018-12-06 15:13:00
Lindsay	City	Tulare	california	36.2029991	-119.087997	1.91999996	58	Moderate air quality	pm25	2018-12-06 23:15:00	52.4700012	90	1015	0.959999979	1.01999998	2018-12-06 15:13:00
Live Oak	City	Sutter	california	39.2756996	-121.660004	1.55999994	54	Moderate air quality	pm25	2018-12-06 23:15:00	58.0999985	1	1014	4.0999999	0	2018-12-06 15:13:00
Livermore	City	Alameda	california	37.6819	-121.767998	1.75999999	60	Moderate air quality	pm25	2018-12-06 23:10:00	61.7900009	1	1014	4.0999999	0	2018-12-06 15:13:00
Livingston	City	Merced	california	37.3869019	-120.723999	1.75999999	56	Moderate air quality	pm25	2018-12-06 23:17:00	58.9599991	90	1014	1.5	0	2018-12-06 15:13:00
Lodi	City	San Joaquin	california	38.1341019	-121.272003	1.66999996	60	Moderate air quality	pm25	2018-12-06 23:20:00	59.9700012	1	1014	3.0999999	0	2018-12-06 15:13:00
Loma Linda	City	San Bernardino	california	34.0483017	-117.261002	2.36999989	52	Moderate air quality	pm25	2018-12-06 23:35:00	52.7900009	90	1013	8.69999981	2.02999997	2018-12-06 15:13:00
Lomita	City	Los Angeles	california	33.7921982	-118.315002	2.36999989	21	Good air quality	o3	2018-12-06 23:17:00	55.0800018	75	1011	4.0999999	1.17999995	2018-12-06 15:13:00
Lompoc	City	Santa Barbara	california	34.6390991	-120.458	2.18000007	46	Good air quality	pm25	2018-12-06 23:15:00	58.0999985	90	1012	2.0999999	1.14999998	2018-12-06 15:13:00
Long Beach	City	Los Angeles	california	33.7700996	-118.194	2.36999989	56	Moderate air quality	pm25	2018-12-06 23:17:00	54.9000015	90	1010	5.0999999	1.26999998	2018-12-06 15:13:00
Loomis	Town	Placer	california	38.8213005	-121.193001	1.62	56	Moderate air quality	pm25	2018-12-06 23:20:00	58.3300018	1	1014	4.0999999	0	2018-12-06 15:13:00
Los Alamitos	City	Orange	california	33.8031998	-118.071999	2.36999989	42	Good air quality	pm25	2018-12-06 23:17:00	54.9000015	90	1010	5.0999999	1.26999998	2018-12-06 15:13:00
Los Altos	City	Santa Clara	california	37.3852005	-122.113998	1.80999994	60	Moderate air quality	pm25	2018-12-06 23:15:00	61.5699997	1	1014	2.5999999	0	2018-12-06 15:13:00
Los Altos Hills	Town	Santa Clara	california	37.3796997	-122.137001	1.80999994	46	Good air quality	pm25	2018-12-06 23:40:00	61.2900009	1	1014	5.69999981	0	2018-12-06 15:13:00
Los Angeles	City	Los Angeles	california	34.0522003	-118.244003	2.32999992	65	Moderate air quality	pm25	2018-12-06 23:17:00	54.75	40	1011	2.0999999	1.17999995	2018-12-06 15:13:00
Los Banos	City	Merced	california	37.0583	-120.849998	1.78999996	55	Moderate air quality	pm25	2018-12-06 23:17:00	60.1699982	1	1013	4.5999999	0	2018-12-06 15:13:00
Los Gatos	Town	Santa Clara	california	37.2358017	-121.961998	1.84000003	52	Moderate air quality	pm25	2018-12-06 23:40:00	61.5400009	1	1014	5.69999981	0	2018-12-06 15:13:00
Loyalton	City	Sierra	california	39.6763	-120.240997	1.64999998	40	Good air quality	pm25	2018-12-06 23:15:00	29.5699997	90	1018	4.5999999	0	2018-12-06 15:13:00
Lynwood	City	Los Angeles	california	33.9303017	-118.210999	2.36999989	56	Moderate air quality	pm25	2018-12-06 23:17:00	55.0800018	75	1011	4.0999999	1.17999995	2018-12-06 15:13:00
Madera	City	Madera	california	36.9612999	-120.060997	1.79999995	72	Moderate air quality	pm25	2018-12-06 23:37:00	56.0999985	90	1014	1.21000004	0	2018-12-06 15:13:00
Malibu	City	Los Angeles	california	34.0259018	-118.779999	2.31999993	29	Good air quality	o3	2018-12-06 22:57:00	55.2700005	75	1012	9.80000019	0.340000004	2018-12-06 15:13:00
Mammoth Lakes	Town	Mono	california	37.6484985	-118.972	2	59	Moderate air quality	pm25	2018-12-06 23:15:00	30.5599995	90	1016	0.860000014	0	2018-12-06 15:13:00
Manhattan Beach	City	Los Angeles	california	33.8847008	-118.411003	2.36999989	51	Moderate air quality	pm25	2018-12-06 23:04:00	55.2400017	75	1011	6.69999981	1.12	2018-12-06 15:13:00
Manteca	City	San Joaquin	california	37.7974014	-121.216003	1.71000004	64	Moderate air quality	pm25	2018-12-06 23:15:00	59.7000008	1	1014	3.0999999	0	2018-12-06 15:13:00
Maricopa	City	Kern	california	35.0588989	-119.401001	2.05999994	52	Moderate air quality	pm25	2018-12-06 22:54:00	53.9599991	90	1013	5.0999999	0	2018-12-06 15:13:00
Marina	City	Monterey	california	36.6843987	-121.802002	1.88999999	54	Moderate air quality	pm25	2018-12-06 23:15:00	63.8100014	1	1013	4.5999999	0	2018-12-06 15:13:00
Martinez	City	Contra Costa	california	38.0194016	-122.134003	1.69000006	57	Moderate air quality	pm25	2018-12-06 23:40:00	61.1100006	1	1014	5.69999981	0	2018-12-06 15:13:00
Marysville	City	Yuba	california	39.1456985	-121.591003	1.58000004	61	Moderate air quality	pm25	2018-12-06 23:15:00	58.2299995	1	1014	4.0999999	0	2018-12-06 15:13:00
Maywood	City	Los Angeles	california	33.9866982	-118.184998	2.36999989	56	Moderate air quality	pm25	2018-12-06 23:17:00	54.9000015	20	1011	2.5999999	1.26999998	2018-12-06 15:13:00
McFarland	City	Kern	california	35.6780014	-119.228996	1.98000002	120	Unhealthy for sensitive groups air quality	pm25	2018-12-06 23:15:00	51.9799995	90	1014	2.0999999	0	2018-12-06 15:13:00
Mendota	City	Fresno	california	36.7536011	-120.382004	1.80999994	59	Moderate air quality	pm25	2018-12-06 23:37:00	55.3800011	90	1014	1.21000004	0	2018-12-06 15:13:00
Menifee	City	Riverside	california	33.6971016	-117.184998	2.49000001	24	Good air quality	o3	2018-12-06 23:35:00	52.5400009	90	1014	3.5999999	5.03999996	2018-12-06 15:13:00
Menlo Park	City	San Mateo	california	37.4529991	-122.181999	1.80999994	73	Moderate air quality	pm25	2018-12-06 23:40:00	61.2900009	1	1014	5.69999981	0	2018-12-06 15:13:00
Merced	City	Merced	california	37.3022003	-120.483002	1.75999999	61	Moderate air quality	pm25	2018-12-06 23:17:00	59	90	1014	1.5	0	2018-12-06 15:13:00
Mill Valley	City	Marin	california	37.9059982	-122.544998	1.72000003	44	Good air quality	no2	2018-12-06 23:40:00	61.25	1	1014	5.69999981	0	2018-12-06 15:13:00
Millbrae	City	San Mateo	california	37.5984993	-122.387001	1.75999999	57	Moderate air quality	pm25	2018-12-06 23:15:00	61.6599998	40	1013	2.5999999	0	2018-12-06 15:13:00
Milpitas	City	Santa Clara	california	37.4323006	-121.900002	1.77999997	61	Moderate air quality	pm25	2018-12-06 23:40:00	61.2900009	1	1014	5.69999981	0	2018-12-06 15:13:00
Mission Viejo	City	Orange	california	33.5969009	-117.657997	2.48000002	37	Good air quality	pm25	2018-12-06 23:35:00	53.7099991	90	1014	3.5999999	4.15999985	2018-12-06 15:13:00
Modesto	City	Stanislaus	california	37.6390991	-120.997002	1.73000002	70	Moderate air quality	pm25	2018-12-06 23:15:00	59.2000008	1	1014	3.5999999	0	2018-12-06 15:13:00
Monrovia	City	Los Angeles	california	34.1442986	-118.001999	2.32999992	56	Moderate air quality	pm25	2018-12-06 23:17:00	53.6699982	90	1013	5.0999999	1.23000002	2018-12-06 15:13:00
Montague	City	Siskiyou	california	41.728199	-122.528	1.38	45	Good air quality	pm25	2018-12-06 22:56:00	41.7700005	1	1017	0.959999979	0	2018-12-06 15:13:00
Montclair	City	San Bernardino	california	34.0774994	-117.690002	2.38000011	51	Moderate air quality	pm25	2018-12-06 23:25:00	54.2099991	90	1013	5.0999999	1.17999995	2018-12-06 15:13:00
Monte Sereno	City	Santa Clara	california	37.2363014	-121.991997	1.84000003	44	Good air quality	pm25	2018-12-06 23:40:00	61.5400009	1	1014	5.69999981	0	2018-12-06 15:13:00
Montebello	City	Los Angeles	california	34.0164986	-118.113998	2.32999992	42	Good air quality	pm25	2018-12-06 23:17:00	54.75	75	1011	4.0999999	1.17999995	2018-12-06 15:13:00
Monterey	City	Monterey	california	36.6002007	-121.894997	1.88999999	61	Moderate air quality	pm25	2018-12-06 23:15:00	63.7900009	20	1012	3.0999999	0	2018-12-06 15:13:00
Monterey Park	City	Los Angeles	california	34.0625	-118.123001	2.32999992	54	Moderate air quality	pm25	2018-12-06 23:17:00	54.75	90	1013	5.0999999	1.17999995	2018-12-06 15:13:00
Moorpark	City	Ventura	california	34.2855988	-118.882004	2.25999999	45	Good air quality	pm25	2018-12-06 22:57:00	55.1699982	75	1012	9.80000019	0.379999995	2018-12-06 15:13:00
Moraga	Town	Contra Costa	california	37.8348999	-122.129997	1.72000003	25	Good air quality	pm10	2018-12-06 23:15:00	61.7900009	20	1014	4.0999999	0	2018-12-06 15:13:00
Moreno Valley	City	Riverside	california	33.9425011	-117.230003	2.43000007	52	Moderate air quality	pm25	2018-12-06 23:35:00	52.6100006	90	1013	8.69999981	2.16000009	2018-12-06 15:13:00
Morgan Hill	City	Santa Clara	california	37.1305008	-121.653999	1.83000004	62	Moderate air quality	pm25	2018-12-06 23:15:00	62.0999985	1	1013	1.5	0	2018-12-06 15:13:00
Morro Bay	City	San Luis Obispo	california	35.3658981	-120.849998	2.04999995	30	Good air quality	o3	2018-12-06 22:56:00	57.9399986	75	1012	2.0999999	0.50999999	2018-12-06 15:13:00
Mount Shasta	City	Siskiyou	california	41.3098984	-122.310997	1.42999995	53	Moderate air quality	pm25	2018-12-06 23:10:00	44.7599983	1	1015	2.5999999	0	2018-12-06 15:13:00
Mountain View	City	Santa Clara	california	37.3861008	-122.084	1.80999994	67	Moderate air quality	pm25	2018-12-06 23:40:00	61.2900009	1	1014	5.69999981	0	2018-12-06 15:13:00
Murrieta	City	Riverside	california	33.5539017	-117.213997	2.49000001	30	Good air quality	o3	2018-12-06 23:35:00	52.5200005	90	1014	3.5999999	5.03999996	2018-12-06 15:13:00
Napa	City	Napa	california	38.2975006	-122.287003	1.66999996	51	Moderate air quality	pm25	2018-12-06 23:20:00	61.8400002	1	1014	0.959999979	0	2018-12-06 15:13:00
National City	City	San Diego	california	32.6781006	-117.098999	2.73000002	58	Moderate air quality	pm25	2018-12-06 23:30:00	61.5400009	75	1011	4.5999999	7.61999989	2018-12-06 15:13:00
Needles	City	San Bernardino	california	34.8480988	-114.613998	2.19000006	57	Moderate air quality	pm25	2018-12-06 23:35:00	59.6699982	90	1016	2.0999999	0	2018-12-06 15:13:00
Nevada City	City	Nevada	california	39.2616005	-121.015999	1.60000002	33	Good air quality	pm25	2018-12-06 23:35:00	56.8400002	1	1014	3.0999999	0	2018-12-06 15:13:00
Newark	City	Alameda	california	37.5297012	-122.040001	1.74000001	46	Good air quality	pm25	2018-12-06 23:40:00	61.2900009	1	1014	5.69999981	0	2018-12-06 15:13:00
Newman	City	Stanislaus	california	37.3138008	-121.021004	1.76999998	52	Moderate air quality	pm25	2018-12-06 23:15:00	61	1	1013	4.5999999	0	2018-12-06 15:13:00
Newport Beach	City	Orange	california	33.6189003	-117.93	2.44000006	27	Good air quality	o3	2018-12-06 23:18:00	54.9000015	75	1011	4.0999999	3.97000003	2018-12-06 15:13:00
Norco	City	Riverside	california	33.9310989	-117.549004	2.41000009	28	Good air quality	pm25	2018-12-06 23:35:00	54.2299995	90	1013	5.0999999	1.37	2018-12-06 15:13:00
Norwalk	City	Los Angeles	california	33.9021988	-118.082001	2.36999989	54	Moderate air quality	pm25	2018-12-06 23:17:00	55.0800018	75	1011	4.0999999	1.17999995	2018-12-06 15:13:00
Novato	City	Marin	california	38.107399	-122.57	1.67999995	51	Moderate air quality	pm25	2018-12-06 23:40:00	61.5699997	1	1014	0.959999979	0	2018-12-06 15:13:00
Oakdale	City	Stanislaus	california	37.7666016	-120.847	1.71000004	63	Moderate air quality	pm25	2018-12-06 23:15:00	58.7999992	1	1014	3.0999999	0	2018-12-06 15:13:00
Oakland	City	Alameda	california	37.8044014	-122.271004	1.71000004	57	Moderate air quality	pm25	2018-12-06 23:40:00	61.3899994	1	1014	5.69999981	0	2018-12-06 15:13:00
Oakley	City	Contra Costa	california	37.9973984	-121.711998	1.71000004	54	Moderate air quality	pm25	2018-12-06 23:20:00	61.0699997	1	1014	3.0999999	0	2018-12-06 15:13:00
Oceanside	City	San Diego	california	33.1959	-117.378998	2.5999999	57	Moderate air quality	pm25	2018-12-06 23:35:00	58.5999985	90	1011	2.5999999	5.73999977	2018-12-06 15:13:00
Ojai	City	Ventura	california	34.4480019	-119.242996	2.25999999	50	Good air quality	pm25	2018-12-06 22:57:00	60.0400009	90	1011	9.80000019	0	2018-12-06 15:13:00
Ontario	City	San Bernardino	california	34.0633011	-117.651001	2.38000011	51	Moderate air quality	pm25	2018-12-06 23:17:00	55.3499985	90	1013	5.0999999	1.17999995	2018-12-06 15:13:00
Orange	City	Orange	california	33.787899	-117.852997	2.38000011	47	Good air quality	pm25	2018-12-06 23:17:00	55.0800018	90	1013	5.0999999	1.17999995	2018-12-06 15:13:00
Orange Cove	City	Fresno	california	36.6244011	-119.314003	1.87	55	Moderate air quality	pm25	2018-12-06 23:41:00	53.5499992	90	1015	2.0999999	0	2018-12-06 15:13:00
Orinda	City	Contra Costa	california	37.8771019	-122.18	1.72000003	46	Good air quality	pm25	2018-12-06 23:40:00	61.3899994	1	1014	5.69999981	0	2018-12-06 15:13:00
Orland	City	Glenn	california	39.7473984	-122.195999	1.53999996	25	Good air quality	pm25	2018-12-06 22:54:00	61.0200005	1	1014	3.5999999	0	2018-12-06 15:13:00
Oroville	City	Butte	california	39.5138016	-121.556	1.54999995	39	Good air quality	pm25	2018-12-06 23:35:00	58.0800018	1	1014	3.0999999	0	2018-12-06 15:13:00
Oxnard	City	Ventura	california	34.1974983	-119.177002	2.28999996	67	Moderate air quality	pm25	2018-12-06 22:57:00	60.0800018	75	1012	9.80000019	0	2018-12-06 15:13:00
Pacific Grove	City	Monterey	california	36.6176987	-121.917	1.88999999	49	Good air quality	pm25	2018-12-06 23:15:00	63.7900009	20	1012	3.0999999	0	2018-12-06 15:13:00
Pacifica	City	San Mateo	california	37.6138	-122.487	1.75999999	35	Good air quality	pm10	2018-12-06 23:40:00	61.3800011	1	1014	5.69999981	0	2018-12-06 15:13:00
Palm Desert	City	Riverside	california	33.7221985	-116.374001	2.55999994	54	Moderate air quality	pm25	2018-12-06 23:15:00	51.1899986	90	1015	2.0999999	0.75999999	2018-12-06 15:13:00
Palm Springs	City	Riverside	california	33.8302994	-116.544998	2.5	43	Good air quality	pm25	2018-12-06 23:35:00	49.9799995	90	1014	3.5999999	0.75999999	2018-12-06 15:13:00
Palmdale	City	Los Angeles	california	34.5793991	-118.115997	2.25999999	40	Good air quality	pm25	2018-12-06 23:13:00	44.4900017	90	1015	2.5999999	0.660000026	2018-12-06 15:13:00
Palo Alto	City	Santa Clara	california	37.4418983	-122.142998	1.80999994	66	Moderate air quality	pm25	2018-12-06 23:40:00	61.2900009	1	1014	5.69999981	0	2018-12-06 15:13:00
Palos Verdes Estates	City	Los Angeles	california	33.8005981	-118.389999	2.36999989	22	Good air quality	o3	2018-12-06 23:04:00	55.2200012	90	1011	2.0999999	1.12	2018-12-06 15:13:00
Paradise	Town	Butte	california	39.7596016	-121.622002	1.57000005	37	Good air quality	pm25	2018-12-06 22:54:00	61.2000008	1	1014	3.5999999	0	2018-12-06 15:13:00
Paramount	City	Los Angeles	california	33.8894997	-118.160004	2.36999989	47	Good air quality	pm25	2018-12-06 23:17:00	55.0800018	75	1011	4.0999999	1.17999995	2018-12-06 15:13:00
Parlier	City	Fresno	california	36.611599	-119.527	1.86000001	52	Moderate air quality	pm25	2018-12-06 23:37:00	53.7299995	90	1015	1.40999997	1.01999998	2018-12-06 15:13:00
Pasadena	City	Los Angeles	california	34.1478004	-118.144997	2.32999992	55	Moderate air quality	pm25	2018-12-06 23:17:00	53.6899986	90	1013	5.0999999	1.23000002	2018-12-06 15:13:00
Paso Robles	City	San Luis Obispo	california	35.6369019	-120.654999	2.01999998	29	Good air quality	o3	2018-12-06 22:56:00	57.8100014	90	1013	6.19999981	0	2018-12-06 15:13:00
Patterson	City	Stanislaus	california	37.4715996	-121.129997	1.76999998	53	Moderate air quality	pm25	2018-12-06 23:15:00	60.8499985	1	1014	3.5999999	0	2018-12-06 15:13:00
Perris	City	Riverside	california	33.7825012	-117.228996	2.43000007	57	Moderate air quality	pm25	2018-12-06 23:35:00	52.2000008	90	1014	3.5999999	5.63999987	2018-12-06 15:13:00
Petaluma	City	Sonoma	california	38.232399	-122.637001	1.67999995	57	Moderate air quality	pm25	2018-12-06 23:15:00	62.2400017	1	1014	0.959999979	0	2018-12-06 15:13:00
Pico Rivera	City	Los Angeles	california	33.9831009	-118.097	2.36999989	55	Moderate air quality	pm25	2018-12-06 23:17:00	55.4000015	75	1011	4.0999999	1.17999995	2018-12-06 15:13:00
Piedmont	City	Alameda	california	37.8244019	-122.232002	1.72000003	26	Good air quality	o3	2018-12-06 23:40:00	61.3899994	1	1014	5.69999981	0	2018-12-06 15:13:00
Pinole	City	Contra Costa	california	38.0043983	-122.299004	1.67999995	52	Moderate air quality	pm25	2018-12-06 23:40:00	61.2700005	1	1014	5.69999981	0	2018-12-06 15:13:00
Pismo Beach	City	San Luis Obispo	california	35.1427994	-120.640999	2.07999992	37	Good air quality	pm25	2018-12-06 23:28:00	57.1300011	75	1012	1.5	1.14999998	2018-12-06 15:13:00
Pittsburg	City	Contra Costa	california	38.0279999	-121.885002	1.66999996	54	Moderate air quality	pm25	2018-12-06 23:20:00	61.25	1	1014	3.0999999	0	2018-12-06 15:13:00
Placentia	City	Orange	california	33.8711014	-117.862999	2.38000011	44	Good air quality	pm25	2018-12-06 23:25:00	54.1899986	90	1013	5.0999999	1.17999995	2018-12-06 15:13:00
Placerville	City	El Dorado	california	38.729599	-120.799004	1.64999998	57	Moderate air quality	pm25	2018-12-06 23:15:00	57.5200005	1	1014	2.0999999	0	2018-12-06 15:13:00
Pleasant Hill	City	Contra Costa	california	37.9480019	-122.060997	1.72000003	55	Moderate air quality	pm25	2018-12-06 23:40:00	61.1800003	1	1014	5.69999981	0	2018-12-06 15:13:00
Pleasanton	City	Alameda	california	37.6623993	-121.875	1.75999999	55	Moderate air quality	pm25	2018-12-06 23:40:00	61.3400002	1	1014	5.69999981	0	2018-12-06 15:13:00
Plymouth	City	Amador	california	38.4818993	-120.845001	1.65999997	42	Good air quality	pm25	2018-12-06 23:15:00	58.0999985	1	1014	3.0999999	0	2018-12-06 15:13:00
Point Arena	City	Mendocino	california	38.9087982	-123.693001	1.63999999	57	Moderate air quality	pm25	2018-12-06 22:56:00	60.0800018	1	1014	1.5	0	2018-12-06 15:13:00
Pomona	City	Los Angeles	california	34.0550995	-117.75	2.38000011	55	Moderate air quality	pm25	2018-12-06 23:25:00	54.2099991	90	1013	5.0999999	1.17999995	2018-12-06 15:13:00
Port Hueneme	City	Ventura	california	34.1478004	-119.195	2.28999996	58	Moderate air quality	pm25	2018-12-06 22:57:00	60.0800018	75	1012	9.80000019	0	2018-12-06 15:13:00
Porterville	City	Tulare	california	36.0652008	-119.016998	1.91999996	77	Moderate air quality	pm25	2018-12-06 23:15:00	52.2099991	90	1015	0.959999979	1.01999998	2018-12-06 15:13:00
Portola	City	Plumas	california	39.8105011	-120.469002	1.62	51	Moderate air quality	pm25	2018-12-06 23:35:00	30.6299992	90	1019	1.5	0	2018-12-06 15:13:00
Portola Valley	Town	San Mateo	california	37.3841019	-122.235001	1.80999994	51	Moderate air quality	pm25	2018-12-06 23:40:00	61.5	1	1014	5.69999981	0	2018-12-06 15:13:00
Poway	City	San Diego	california	32.9627991	-117.036003	2.68000007	30	Good air quality	o3	2018-12-06 23:35:00	59.3800011	90	1011	2.5999999	6.73000002	2018-12-06 15:13:00
Rancho Cordova	City	Sacramento	california	38.5890999	-121.303001	1.63	55	Moderate air quality	pm25	2018-12-06 23:20:00	59.3800011	1	1015	4.0999999	0	2018-12-06 15:13:00
Rancho Cucamonga	City	San Bernardino	california	34.1063995	-117.593002	2.38000011	37	Good air quality	pm25	2018-12-06 23:17:00	56.1599998	90	1013	5.0999999	1.37	2018-12-06 15:13:00
Rancho Mirage	City	Riverside	california	33.7397003	-116.413002	2.55999994	29	Good air quality	pm25	2018-12-06 23:35:00	50.4900017	90	1014	3.5999999	0.75999999	2018-12-06 15:13:00
Rancho Palos Verdes	City	Los Angeles	california	33.7444992	-118.387001	2.44000006	22	Good air quality	o3	2018-12-06 23:04:00	55.2400017	75	1011	4.0999999	1.12	2018-12-06 15:13:00
Rancho Santa Margarita	City	Orange	california	33.6402016	-117.602997	2.48000002	34	Good air quality	no2	2018-12-06 23:35:00	53.5600014	90	1014	3.5999999	4.15999985	2018-12-06 15:13:00
Red Bluff	City	Tehama	california	40.1785011	-122.236	1.5	40	Good air quality	pm25	2018-12-06 22:54:00	62.0600014	1	1014	3.5999999	0	2018-12-06 15:13:00
Redding	City	Shasta	california	40.5864983	-122.391998	1.45000005	96	Moderate air quality	pm25	2018-12-06 23:10:00	58.0999985	1	1014	2.5999999	0	2018-12-06 15:13:00
Redlands	City	San Bernardino	california	34.0555992	-117.182999	2.43000007	59	Moderate air quality	pm25	2018-12-06 23:35:00	50.0699997	90	1013	8.69999981	1.51999998	2018-12-06 15:13:00
Redondo Beach	City	Los Angeles	california	33.8492012	-118.388	2.36999989	53	Moderate air quality	pm25	2018-12-06 23:04:00	55.2200012	20	1011	2.5999999	1.12	2018-12-06 15:13:00
Redwood City	City	San Mateo	california	37.485199	-122.236	1.80999994	66	Moderate air quality	pm25	2018-12-06 23:40:00	61.1800003	1	1014	5.69999981	0	2018-12-06 15:13:00
Reedley	City	Fresno	california	36.5962982	-119.449997	1.87	54	Moderate air quality	pm25	2018-12-06 23:41:00	53.5600014	90	1015	2.0999999	0	2018-12-06 15:13:00
Rialto	City	San Bernardino	california	34.1063995	-117.370003	2.36999989	53	Moderate air quality	pm25	2018-12-06 23:35:00	52.75	90	1013	8.69999981	2.02999997	2018-12-06 15:13:00
Richmond	City	Contra Costa	california	37.9357986	-122.348	1.71000004	61	Moderate air quality	pm25	2018-12-06 23:40:00	61.2700005	1	1014	5.69999981	0	2018-12-06 15:13:00
Ridgecrest	City	Kern	california	35.6225014	-117.670998	2.05999994	43	Good air quality	pm25	2018-12-06 22:56:00	44.0600014	90	1016	2.5999999	0.25	2018-12-06 15:13:00
Rio Dell	City	Humboldt	california	40.4992981	-124.106003	1.50999999	21	Good air quality	o3	2018-12-06 23:35:00	53.8300018	1	1014	1.5	0	2018-12-06 15:13:00
Rio Vista	City	Solano	california	38.1557999	-121.691002	1.66999996	27	Good air quality	pm25	2018-12-06 23:20:00	60.4199982	1	1014	4.0999999	0	2018-12-06 15:13:00
Ripon	City	San Joaquin	california	37.7394981	-121.135002	1.73000002	43	Good air quality	pm25	2018-12-06 23:15:00	59.9000015	1	1014	3.0999999	0	2018-12-06 15:13:00
Riverbank	City	Stanislaus	california	37.7360001	-120.934998	1.73000002	46	Good air quality	pm25	2018-12-06 23:15:00	59.2200012	1	1014	3.5999999	0	2018-12-06 15:13:00
Riverside	City	Riverside	california	33.9805984	-117.375	2.41000009	58	Moderate air quality	pm25	2018-12-06 23:35:00	53.5099983	90	1013	8.69999981	2.02999997	2018-12-06 15:13:00
Rocklin	City	Placer	california	38.790699	-121.236	1.62	59	Moderate air quality	pm25	2018-12-06 23:20:00	58.1699982	1	1014	4.0999999	0	2018-12-06 15:13:00
Rohnert Park	City	Sonoma	california	38.3395996	-122.700996	1.66999996	41	Good air quality	pm25	2018-12-06 23:15:00	61.9300003	1	1014	0.959999979	0	2018-12-06 15:13:00
Rolling Hills	City	Los Angeles	california	33.757	-118.353996	2.36999989	22	Good air quality	o3	2018-12-06 23:04:00	55.2200012	75	1011	4.0999999	1.12	2018-12-06 15:13:00
Rolling Hills Estates	City	Los Angeles	california	33.7877998	-118.358002	2.36999989	40	Good air quality	pm25	2018-12-06 23:04:00	55.2200012	90	1011	2.0999999	1.12	2018-12-06 15:13:00
Rosemead	City	Los Angeles	california	34.0806007	-118.072998	2.32999992	53	Moderate air quality	pm25	2018-12-06 23:17:00	54.75	90	1013	5.0999999	1.17999995	2018-12-06 15:13:00
Roseville	City	Placer	california	38.7521019	-121.288002	1.60000002	60	Moderate air quality	pm25	2018-12-06 23:20:00	58.1699982	1	1015	4.0999999	0	2018-12-06 15:13:00
Ross	Town	Marin	california	37.9623985	-122.555	1.72000003	32	Good air quality	pm25	2018-12-06 23:40:00	61.5	1	1014	5.69999981	0	2018-12-06 15:13:00
Sacramento	City	Sacramento	california	38.5816002	-121.494003	1.63	52	Moderate air quality	pm25	2018-12-06 23:20:00	59.3800011	1	1015	4.0999999	0	2018-12-06 15:13:00
St. Helena	City	Napa	california	38.5051994	-122.470001	1.65999997	42	Good air quality	pm25	2018-12-06 23:20:00	61.5200005	1	1014	0.959999979	0	2018-12-06 15:13:00
Salinas	City	Monterey	california	36.6777	-121.655998	1.88	58	Moderate air quality	pm25	2018-12-06 23:15:00	63.8199997	1	1013	4.5999999	0	2018-12-06 15:13:00
San Anselmo	Town	Marin	california	37.9746017	-122.561996	1.72000003	32	Good air quality	pm25	2018-12-06 23:40:00	61.5	1	1014	5.69999981	0	2018-12-06 15:13:00
San Bernardino	City	San Bernardino	california	34.1082993	-117.290001	2.36999989	52	Moderate air quality	pm25	2018-12-06 23:35:00	51.6699982	90	1013	8.69999981	2.16000009	2018-12-06 15:13:00
San Bruno	City	San Mateo	california	37.6305008	-122.411003	1.75999999	61	Moderate air quality	pm25	2018-12-06 23:40:00	61.3800011	1	1014	5.69999981	0	2018-12-06 15:13:00
San Carlos	City	San Mateo	california	37.5071983	-122.261002	1.75999999	67	Moderate air quality	pm25	2018-12-06 23:40:00	61.1800003	1	1014	5.69999981	0	2018-12-06 15:13:00
San Clemente	City	Orange	california	33.4273987	-117.612999	2.50999999	53	Moderate air quality	pm25	2018-12-06 23:35:00	53.5600014	90	1014	3.5999999	4.15999985	2018-12-06 15:13:00
San Diego	City	San Diego	california	32.7156982	-117.161003	2.73000002	63	Moderate air quality	pm25	2018-12-06 23:30:00	60.7799988	75	1011	4.5999999	8.13000011	2018-12-06 15:13:00
San Dimas	City	Los Angeles	california	34.1067009	-117.806999	2.3499999	56	Moderate air quality	pm25	2018-12-06 23:25:00	54.2099991	90	1013	5.0999999	1.17999995	2018-12-06 15:13:00
San Fernando	City	Los Angeles	california	34.2818985	-118.439003	2.29999995	56	Moderate air quality	pm25	2018-12-06 23:04:00	54.0099983	75	1012	5.69999981	1.05999994	2018-12-06 15:13:00
San Francisco	City and county	San Francisco	california	37.7748985	-122.418999	1.71000004	61	Moderate air quality	pm25	2018-12-06 23:40:00	61.1599998	1	1014	5.69999981	0	2018-12-06 15:13:00
San Gabriel	City	Los Angeles	california	34.0960999	-118.106003	2.32999992	55	Moderate air quality	pm25	2018-12-06 23:17:00	54.75	90	1013	5.0999999	1.17999995	2018-12-06 15:13:00
San Jacinto	City	Riverside	california	33.7839012	-116.959	2.49000001	59	Moderate air quality	pm25	2018-12-06 23:35:00	50.8499985	90	1014	3.5999999	4.4000001	2018-12-06 15:13:00
San Joaquin	City	Fresno	california	36.6066017	-120.189003	1.83000004	48	Good air quality	pm25	2018-12-06 23:37:00	54.3899994	90	1014	1.30999994	0	2018-12-06 15:13:00
San Jose	City	Santa Clara	california	37.3381996	-121.886002	1.77999997	66	Moderate air quality	pm25	2018-12-06 23:40:00	61.3199997	1	1014	5.69999981	0	2018-12-06 15:13:00
San Juan Bautista	City	San Benito	california	36.8455009	-121.538002	1.84000003	34	Good air quality	pm25	2018-12-06 23:15:00	63.3199997	1	1013	4.5999999	0	2018-12-06 15:13:00
San Juan Capistrano	City	Orange	california	33.5018997	-117.663002	2.48000002	51	Moderate air quality	pm25	2018-12-06 23:35:00	53.5600014	90	1014	3.5999999	4.15999985	2018-12-06 15:13:00
San Leandro	City	Alameda	california	37.7248993	-122.155998	1.74000001	48	Good air quality	pm25	2018-12-06 23:40:00	60.9799995	1	1014	5.69999981	0	2018-12-06 15:13:00
San Luis Obispo	City	San Luis Obispo	california	35.2827988	-120.660004	2.05999994	29	Good air quality	o3	2018-12-06 23:28:00	57.4300003	75	1012	2.0999999	0.50999999	2018-12-06 15:13:00
San Marcos	City	San Diego	california	33.1433983	-117.166	2.61999989	36	Good air quality	pm25	2018-12-06 23:35:00	59.8300018	90	1011	2.5999999	6.73000002	2018-12-06 15:13:00
San Marino	City	Los Angeles	california	34.1213989	-118.106003	2.32999992	55	Moderate air quality	pm25	2018-12-06 23:17:00	53.6699982	90	1013	5.0999999	1.23000002	2018-12-06 15:13:00
San Mateo	City	San Mateo	california	37.5629997	-122.325996	1.75999999	65	Moderate air quality	pm25	2018-12-06 23:40:00	61.2900009	1	1014	5.69999981	0	2018-12-06 15:13:00
San Pablo	City	Contra Costa	california	37.962101	-122.346001	1.71000004	56	Moderate air quality	pm25	2018-12-06 23:40:00	61.2700005	1	1014	5.69999981	0	2018-12-06 15:13:00
San Rafael	City	Marin	california	37.9734993	-122.530998	1.72000003	56	Moderate air quality	pm25	2018-12-06 23:40:00	61.3899994	1	1014	5.69999981	0	2018-12-06 15:13:00
San Ramon	City	Contra Costa	california	37.7798996	-121.977997	1.73000002	51	Moderate air quality	pm25	2018-12-06 23:40:00	61.3800011	1	1014	5.69999981	0	2018-12-06 15:13:00
Sand City	City	Monterey	california	36.6171989	-121.848	1.88999999	29	Good air quality	pm25	2018-12-06 23:15:00	63.7900009	20	1012	3.0999999	0	2018-12-06 15:13:00
Sanger	City	Fresno	california	36.7080002	-119.556	1.86000001	52	Moderate air quality	pm25	2018-12-06 23:41:00	53.8300018	90	1015	1.40999997	0	2018-12-06 15:13:00
Santa Ana	City	Orange	california	33.7454987	-117.867996	2.44000006	49	Good air quality	pm25	2018-12-06 23:17:00	54.8100014	90	1013	5.0999999	2.31999993	2018-12-06 15:13:00
Santa Barbara	City	Santa Barbara	california	34.4207993	-119.697998	2.25	44	Good air quality	pm25	2018-12-06 23:35:00	58.5499992	90	1012	1.5	0	2018-12-06 15:13:00
Santa Clara	City	Santa Clara	california	37.3540993	-121.955002	1.77999997	60	Moderate air quality	pm25	2018-12-06 23:40:00	61.3199997	1	1014	5.69999981	0	2018-12-06 15:13:00
Santa Clarita	City	Los Angeles	california	34.3917007	-118.542999	2.26999998	23	Good air quality	o3	2018-12-06 23:10:00	52.4300003	75	1012	5.69999981	0.75999999	2018-12-06 15:13:00
Santa Cruz	City	Santa Cruz	california	36.9740982	-122.030998	1.86000001	58	Moderate air quality	pm25	2018-12-06 23:15:00	62.3800011	1	1013	1.5	0	2018-12-06 15:13:00
Santa Fe Springs	City	Los Angeles	california	33.9472008	-118.084999	2.36999989	43	Good air quality	pm25	2018-12-06 23:17:00	55.0800018	75	1011	4.0999999	1.17999995	2018-12-06 15:13:00
Santa Maria	City	Santa Barbara	california	34.9529991	-120.435997	2.1099999	41	Good air quality	pm25	2018-12-06 23:35:00	57.1500015	75	1012	1.5	1.14999998	2018-12-06 15:13:00
Santa Monica	City	Los Angeles	california	34.0195007	-118.490997	2.29999995	61	Moderate air quality	pm25	2018-12-06 23:04:00	55.9599991	75	1011	6.69999981	1.12	2018-12-06 15:13:00
Santa Paula	City	Ventura	california	34.3541985	-119.058998	2.25999999	58	Moderate air quality	pm25	2018-12-06 22:57:00	54.0999985	75	1012	9.80000019	0.25	2018-12-06 15:13:00
Santa Rosa	City	Sonoma	california	38.4403992	-122.713997	1.66999996	62	Moderate air quality	pm25	2018-12-06 23:15:00	62.0400009	1	1014	1.46000004	0	2018-12-06 15:13:00
Santee	City	San Diego	california	32.8384018	-116.973999	2.72000003	37	Good air quality	pm25	2018-12-06 23:30:00	60.1500015	75	1011	4.5999999	6.73000002	2018-12-06 15:13:00
Saratoga	City	Santa Clara	california	37.2638016	-122.023003	1.80999994	43	Good air quality	pm25	2018-12-06 23:40:00	61.5400009	1	1014	5.69999981	0	2018-12-06 15:13:00
Sausalito	City	Marin	california	37.8591003	-122.485001	1.71000004	36	Good air quality	pm25	2018-12-06 23:40:00	61.0699997	1	1014	5.69999981	0	2018-12-06 15:13:00
Scotts Valley	City	Santa Cruz	california	37.0511017	-122.014999	1.85000002	37	Good air quality	pm25	2018-12-06 23:40:00	61.8600006	1	1014	5.69999981	0	2018-12-06 15:13:00
Seal Beach	City	Orange	california	33.7414017	-118.105003	2.44000006	25	Good air quality	pm25	2018-12-06 23:17:00	55.0800018	75	1011	4.0999999	1.17999995	2018-12-06 15:13:00
Seaside	City	Monterey	california	36.6148987	-121.821999	1.88999999	45	Good air quality	pm25	2018-12-06 23:15:00	63.7900009	20	1012	3.0999999	0	2018-12-06 15:13:00
Sebastopol	City	Sonoma	california	38.4020996	-122.823997	1.65999997	58	Moderate air quality	pm25	2018-12-06 23:15:00	61.6800003	1	1014	1.46000004	0	2018-12-06 15:13:00
Selma	City	Fresno	california	36.5708008	-119.612	1.86000001	59	Moderate air quality	pm25	2018-12-06 23:41:00	53.8300018	90	1015	1.40999997	0	2018-12-06 15:13:00
Shafter	City	Kern	california	35.5004997	-119.272003	1.97000003	56	Moderate air quality	pm25	2018-12-06 23:15:00	51.9300003	90	1014	2.0999999	0	2018-12-06 15:13:00
Shasta Lake	City	Shasta	california	40.6804008	-122.371002	1.45000005	73	Moderate air quality	pm25	2018-12-06 23:10:00	58.2299995	1	1015	0.910000026	0	2018-12-06 15:13:00
Sierra Madre	City	Los Angeles	california	34.1617012	-118.053001	2.32999992	53	Moderate air quality	pm25	2018-12-06 23:17:00	53.6899986	90	1013	5.0999999	1.23000002	2018-12-06 15:13:00
Signal Hill	City	Los Angeles	california	33.8045006	-118.167999	2.36999989	49	Good air quality	pm25	2018-12-06 23:17:00	55.0800018	75	1011	4.0999999	1.17999995	2018-12-06 15:13:00
Simi Valley	City	Ventura	california	34.2694016	-118.780998	2.25999999	30	Good air quality	o3	2018-12-06 22:57:00	55.2200012	75	1012	5.69999981	0.379999995	2018-12-06 15:13:00
Solana Beach	City	San Diego	california	32.9911995	-117.271004	2.69000006	48	Good air quality	pm25	2018-12-06 23:35:00	59.8100014	90	1011	2.5999999	6.98999977	2018-12-06 15:13:00
Soledad	City	Monterey	california	36.4247017	-121.325996	1.92999995	60	Moderate air quality	pm25	2018-12-06 23:15:00	64.2699966	1	1013	4.5999999	0	2018-12-06 15:13:00
Solvang	City	Santa Barbara	california	34.5957985	-120.138	2.18000007	27	Good air quality	o3	2018-12-06 23:35:00	57.2000008	90	1012	1.5	1.14999998	2018-12-06 15:13:00
Sonoma	City	Sonoma	california	38.2919006	-122.458	1.66999996	49	Good air quality	pm25	2018-12-06 23:20:00	61.8400002	1	1014	0.959999979	0	2018-12-06 15:13:00
Sonora	City	Tuolumne	california	37.9828987	-120.382004	1.74000001	66	Moderate air quality	pm25	2018-12-06 23:15:00	58.3699989	1	1014	3.0999999	0	2018-12-06 15:13:00
South El Monte	City	Los Angeles	california	34.0519981	-118.046997	2.32999992	52	Moderate air quality	pm25	2018-12-06 23:17:00	54.75	90	1013	5.0999999	1.17999995	2018-12-06 15:13:00
South Gate	City	Los Angeles	california	33.9547005	-118.211998	2.36999989	56	Moderate air quality	pm25	2018-12-06 23:17:00	55.0800018	75	1011	4.0999999	1.17999995	2018-12-06 15:13:00
South Lake Tahoe	City	El Dorado	california	38.9398994	-119.976997	1.74000001	29	Good air quality	o3	2018-12-06 23:15:00	31.5100002	90	1018	4.5999999	0	2018-12-06 15:13:00
South Pasadena	City	Los Angeles	california	34.1161003	-118.150002	2.32999992	53	Moderate air quality	pm25	2018-12-06 23:17:00	53.6699982	90	1013	5.0999999	1.23000002	2018-12-06 15:13:00
South San Francisco	City	San Mateo	california	37.6547012	-122.407997	1.75999999	60	Moderate air quality	pm25	2018-12-06 23:40:00	61.4700012	1	1014	5.69999981	0	2018-12-06 15:13:00
Stanton	City	Orange	california	33.8028984	-117.992996	2.38000011	36	Good air quality	no2	2018-12-06 23:25:00	54.0099983	75	1011	4.0999999	1.17999995	2018-12-06 15:13:00
Stockton	City	San Joaquin	california	37.9576988	-121.291	1.71000004	71	Moderate air quality	pm25	2018-12-06 23:15:00	60.3300018	1	1014	3.0999999	0	2018-12-06 15:13:00
Suisun City	City	Solano	california	38.2382011	-122.040001	1.69000006	20	Good air quality	pm25	2018-12-06 23:20:00	60.9799995	1	1014	4.0999999	0	2018-12-06 15:13:00
Sunnyvale	City	Santa Clara	california	37.3688011	-122.036003	1.80999994	61	Moderate air quality	pm25	2018-12-06 23:40:00	61.2900009	1	1014	5.69999981	0	2018-12-06 15:13:00
Susanville	City	Lassen	california	40.4163017	-120.653	1.54999995	42	Good air quality	pm25	2018-12-06 23:35:00	32	90	1019	1.5	0	2018-12-06 15:13:00
Sutter Creek	City	Amador	california	38.3930016	-120.802002	1.65999997	61	Moderate air quality	pm25	2018-12-06 23:35:00	57.7400017	1	1014	4.0999999	0	2018-12-06 15:13:00
Taft	City	Kern	california	35.1425018	-119.457001	2.05999994	49	Good air quality	pm25	2018-12-06 22:54:00	53.9599991	90	1013	5.0999999	0	2018-12-06 15:13:00
Tehachapi	City	Kern	california	35.1321983	-118.448997	2.20000005	37	Good air quality	pm25	2018-12-06 23:43:00	42.5699997	90	1016	4.5999999	0.75999999	2018-12-06 15:13:00
Tehama	City	Tehama	california	40.0270996	-122.123001	1.5	22	Good air quality	pm25	2018-12-06 22:54:00	62.0600014	1	1014	3.5999999	0	2018-12-06 15:13:00
Temecula	City	Riverside	california	33.4935989	-117.148003	2.54999995	53	Moderate air quality	pm25	2018-12-06 23:35:00	53.6199989	90	1014	3.5999999	5.03999996	2018-12-06 15:13:00
Temple City	City	Los Angeles	california	34.1072006	-118.057999	2.32999992	42	Good air quality	pm25	2018-12-06 23:17:00	54.75	90	1013	5.0999999	1.17999995	2018-12-06 15:13:00
Thousand Oaks	City	Ventura	california	34.1706009	-118.837997	2.31999993	50	Good air quality	pm25	2018-12-06 22:57:00	55.2000008	75	1012	9.80000019	0.379999995	2018-12-06 15:13:00
Tiburon	Town	Marin	california	37.8735008	-122.457001	1.71000004	52	Moderate air quality	pm25	2018-12-06 23:40:00	61.0699997	1	1014	5.69999981	0	2018-12-06 15:13:00
Torrance	City	Los Angeles	california	33.8358002	-118.341003	2.36999989	31	Good air quality	pm25	2018-12-06 23:17:00	55.0800018	20	1011	2.5999999	1.17999995	2018-12-06 15:13:00
Tracy	City	San Joaquin	california	37.7397003	-121.425003	1.75	56	Moderate air quality	pm25	2018-12-06 23:15:00	61.2299995	1	1014	3.0999999	0	2018-12-06 15:13:00
Trinidad	City	Humboldt	california	41.0592995	-124.142998	1.40999997	21	Good air quality	pm25	2018-12-06 23:35:00	53.7999992	1	1014	1.5	0	2018-12-06 15:13:00
Truckee	Town	Nevada	california	39.3279991	-120.182999	1.66999996	61	Moderate air quality	pm25	2018-12-06 23:15:00	30.7000008	90	1018	4.5999999	0	2018-12-06 15:13:00
Tulare	City	Tulare	california	36.2076988	-119.347	1.91999996	75	Moderate air quality	pm25	2018-12-06 23:41:00	52.9700012	90	1015	2.0999999	0	2018-12-06 15:13:00
Tulelake	City	Siskiyou	california	41.9560013	-121.476997	1.35000002	44	Good air quality	pm25	2018-12-06 22:53:00	32	1	1017	4.0999999	0	2018-12-06 15:13:00
Turlock	City	Stanislaus	california	37.4947014	-120.847	1.75999999	72	Moderate air quality	pm25	2018-12-06 22:55:00	60.2400017	1	1014	3.5999999	0	2018-12-06 15:13:00
Tustin	City	Orange	california	33.7420006	-117.823997	2.44000006	27	Good air quality	o3	2018-12-06 23:35:00	54.0299988	90	1013	5.0999999	2.78999996	2018-12-06 15:13:00
Twentynine Palms	City	San Bernardino	california	34.135601	-116.054001	2.43000007	41	Good air quality	pm25	2018-12-06 22:56:00	48.0200005	90	1017	5.69999981	0.75999999	2018-12-06 15:13:00
Ukiah	City	Mendocino	california	39.1501999	-123.208	1.63999999	76	Moderate air quality	pm25	2018-12-06 22:56:00	60.0800018	1	1014	1.5	0	2018-12-06 15:13:00
Union City	City	Alameda	california	37.593399	-122.043999	1.74000001	46	Good air quality	pm25	2018-12-06 23:40:00	61.2900009	1	1014	5.69999981	0	2018-12-06 15:13:00
Upland	City	San Bernardino	california	34.0974998	-117.648003	2.38000011	46	Good air quality	pm25	2018-12-06 23:17:00	55.3300018	90	1013	5.0999999	1.17999995	2018-12-06 15:13:00
Vacaville	City	Solano	california	38.3566017	-121.987999	1.64999998	44	Good air quality	pm25	2018-12-06 23:20:00	60.6199989	1	1014	4.0999999	0	2018-12-06 15:13:00
Vallejo	City	Solano	california	38.1040993	-122.257004	1.67999995	65	Moderate air quality	pm25	2018-12-06 23:40:00	61.0499992	1	1014	0.959999979	0	2018-12-06 15:13:00
Ventura	City	Ventura	california	34.2804985	-119.294998	2.25999999	60	Moderate air quality	pm25	2018-12-06 22:57:00	60.0600014	90	1011	9.80000019	0	2018-12-06 15:13:00
Vernon	City	Los Angeles	california	34.0038986	-118.230003	2.32999992	60	Moderate air quality	pm25	2018-12-06 23:51:00	55.0200005	90	1011	6.19999981	1.17999995	2018-12-06 15:13:00
Victorville	City	San Bernardino	california	34.5362015	-117.292999	2.27999997	54	Moderate air quality	pm25	2018-12-06 22:58:00	45.6800003	90	1015	3.5999999	0.379999995	2018-12-06 15:13:00
Villa Park	City	Orange	california	33.8139992	-117.821999	2.38000011	39	Good air quality	pm25	2018-12-06 23:35:00	54.2099991	90	1013	5.0999999	1.17999995	2018-12-06 15:13:00
Visalia	City	Tulare	california	36.3302002	-119.292	1.88999999	74	Moderate air quality	pm25	2018-12-06 23:41:00	53.5499992	90	1015	2.0999999	0	2018-12-06 15:13:00
Vista	City	San Diego	california	33.2000008	-117.242996	2.61999989	52	Moderate air quality	pm25	2018-12-06 23:35:00	58.7700005	90	1012	4.0999999	6.98999977	2018-12-06 15:13:00
Walnut	City	Los Angeles	california	34.0203018	-117.864998	2.3499999	41	Good air quality	pm25	2018-12-06 23:25:00	54.2099991	90	1013	5.0999999	1.17999995	2018-12-06 15:13:00
Walnut Creek	City	Contra Costa	california	37.910099	-122.065002	1.72000003	57	Moderate air quality	pm25	2018-12-06 23:40:00	61.3899994	1	1014	5.69999981	0	2018-12-06 15:13:00
Wasco	City	Kern	california	35.594101	-119.341003	1.97000003	82	Moderate air quality	pm25	2018-12-06 23:15:00	51.9599991	90	1014	2.0999999	0	2018-12-06 15:13:00
Waterford	City	Stanislaus	california	37.6413002	-120.760002	1.73000002	64	Moderate air quality	pm25	2018-12-06 23:15:00	59.25	1	1014	3.5999999	0	2018-12-06 15:13:00
Watsonville	City	Santa Cruz	california	36.9101982	-121.757004	1.84000003	62	Moderate air quality	pm25	2018-12-06 23:15:00	62.6500015	1	1013	4.5999999	0	2018-12-06 15:13:00
Weed	City	Siskiyou	california	41.4225998	-122.386002	1.42999995	64	Moderate air quality	pm25	2018-12-06 23:10:00	44.7400017	1	1015	2.5999999	0	2018-12-06 15:13:00
West Covina	City	Los Angeles	california	34.0685997	-117.939003	2.3499999	59	Moderate air quality	pm25	2018-12-06 23:25:00	54.2099991	90	1013	5.0999999	1.17999995	2018-12-06 15:13:00
West Hollywood	City	Los Angeles	california	34.0900002	-118.362	2.29999995	55	Moderate air quality	pm25	2018-12-06 23:04:00	54.8800011	40	1011	5.0999999	1.12	2018-12-06 15:13:00
West Sacramento	City	Yolo	california	38.5805016	-121.529999	1.63	33	Good air quality	pm25	2018-12-06 23:20:00	59.3800011	1	1015	4.0999999	0	2018-12-06 15:13:00
Westlake Village	City	Los Angeles	california	34.1465988	-118.806999	2.31999993	31	Good air quality	o3	2018-12-06 22:57:00	55.2000008	75	1012	9.80000019	0.379999995	2018-12-06 15:13:00
Westminster	City	Orange	california	33.759201	-117.989998	2.38000011	41	Good air quality	pm25	2018-12-06 23:51:00	53.9599991	90	1011	6.19999981	1.17999995	2018-12-06 15:13:00
Westmorland	City	Imperial	california	33.0373001	-115.621002	2.61999989	59	Moderate air quality	pm25	2018-12-06 23:35:00	53.4900017	90	1015	2.0999999	0.75999999	2018-12-06 15:13:00
Wheatland	City	Yuba	california	39.0098991	-121.422997	1.58000004	34	Good air quality	pm25	2018-12-06 23:35:00	58.5499992	1	1014	4.0999999	0	2018-12-06 15:13:00
Whittier	City	Los Angeles	california	33.9791985	-118.032997	2.36999989	49	Good air quality	pm25	2018-12-06 23:17:00	55.4000015	90	1013	5.0999999	1.17999995	2018-12-06 15:13:00
Wildomar	City	Riverside	california	33.5988998	-117.279999	2.5	21	Good air quality	o3	2018-12-06 23:35:00	52.5200005	90	1014	3.5999999	5.21000004	2018-12-06 15:13:00
Williams	City	Colusa	california	39.1545982	-122.149002	1.58000004	59	Moderate air quality	pm25	2018-12-06 22:58:00	59.7000008	1	1014	5.0999999	0	2018-12-06 15:13:00
Willits	City	Mendocino	california	39.4095993	-123.356003	1.61000001	63	Moderate air quality	pm25	2018-12-06 22:56:00	60.0800018	1	1014	1.5	0	2018-12-06 15:13:00
Willows	City	Glenn	california	39.5242996	-122.194	1.53999996	34	Good air quality	pm25	2018-12-06 22:53:00	60.0800018	1	1014	3.5999999	0	2018-12-06 15:13:00
Windsor	Town	Sonoma	california	38.5471001	-122.816002	1.64999998	54	Moderate air quality	pm25	2018-12-06 23:15:00	61.6800003	1	1014	1.46000004	0	2018-12-06 15:13:00
Winters	City	Yolo	california	38.5248985	-121.971001	1.63	27	Good air quality	o3	2018-12-06 23:35:00	60.6199989	1	1014	4.0999999	0	2018-12-06 15:13:00
Woodlake	City	Tulare	california	36.4136009	-119.098999	1.89999998	59	Moderate air quality	pm25	2018-12-06 23:41:00	53.2400017	90	1015	2.0999999	0	2018-12-06 15:13:00
Woodland	City	Yolo	california	38.6785011	-121.773003	1.63	57	Moderate air quality	pm25	2018-12-06 23:35:00	60.1199989	1	1014	4.0999999	0	2018-12-06 15:13:00
Woodside	Town	San Mateo	california	37.4299011	-122.253998	1.79999995	61	Moderate air quality	pm25	2018-12-06 23:40:00	61.5	1	1014	5.69999981	0	2018-12-06 15:13:00
Yorba Linda	City	Orange	california	33.8885002	-117.813004	2.38000011	35	Good air quality	pm25	2018-12-06 23:25:00	54.1899986	90	1013	5.0999999	1.17999995	2018-12-06 15:13:00
Yountville	Town	Napa	california	38.4015999	-122.361	1.66999996	24	Good air quality	pm25	2018-12-06 23:20:00	61.5200005	1	1014	0.959999979	0	2018-12-06 15:13:00
Yreka	City	Siskiyou	california	41.7354012	-122.634003	1.38	55	Moderate air quality	pm25	2018-12-06 22:56:00	41.7599983	1	1017	0.959999979	0	2018-12-06 15:13:00
Yuba City	City	Sutter	california	39.1403999	-121.616997	1.58000004	52	Moderate air quality	pm25	2018-12-06 23:35:00	58.9099998	1	1014	4.0999999	0	2018-12-06 15:13:00
Yucaipa	City	San Bernardino	california	34.0335999	-117.042999	2.43000007	53	Moderate air quality	pm25	2018-12-06 23:35:00	50.1100006	90	1013	8.69999981	1.51999998	2018-12-06 15:13:00
Yucca Valley	Town	San Bernardino	california	34.1142006	-116.431999	2.45000005	38	Good air quality	o3	2018-12-06 22:56:00	48.0200005	90	1017	5.69999981	0.75999999	2018-12-06 15:13:00
Adelanto	City	San Bernardino	california	34.5828018	-117.408997	2.49000001	23	Good air quality	pm25	2018-12-06 23:58:00	43.8400002	90	1015	4.5999999	2.16000009	2018-12-06 15:58:00
Agoura Hills	City	Los Angeles	california	34.1533012	-118.762001	2.54999995	30	Good air quality	o3	2018-12-06 23:57:00	56.0099983	40	1012	5.69999981	0.25	2018-12-06 15:58:00
Alameda	City	Alameda	california	37.7652016	-122.241997	1.84000003	51	Moderate air quality	pm25	2018-12-06 23:56:00	60.6399994	20	1014	3.5999999	0	2018-12-06 15:58:00
Albany	City	Alameda	california	37.8869019	-122.297997	1.83000004	58	Moderate air quality	pm25	2018-12-07 00:00:00	60.6599998	20	1014	3.5999999	0	2018-12-06 15:58:00
Alhambra	City	Los Angeles	california	34.0952988	-118.126999	2.52999997	53	Moderate air quality	pm25	2018-12-06 23:53:00	54.9500008	1	1011	2.0999999	1.33000004	2018-12-06 15:58:00
Aliso Viejo	City	Orange	california	33.5685005	-117.725998	2.6099999	33	Good air quality	o3	2018-12-06 23:58:00	53.8199997	90	1011	7.69999981	6.82999992	2018-12-06 15:58:00
Alturas	City	Modoc	california	41.4870987	-120.542	1.48000002	78	Moderate air quality	pm25	2018-12-06 22:55:00	37.0400009	1	1017	4.5999999	0	2018-12-06 15:58:00
Amador City	City	Amador	california	38.4193993	-120.823997	1.76999998	47	Good air quality	pm25	2018-12-06 23:55:00	57.5999985	1	1014	4.0999999	0	2018-12-06 15:58:00
American Canyon	City	Napa	california	38.1749001	-122.261002	1.78999996	31	Good air quality	pm25	2018-12-06 23:55:00	60.6699982	1	1014	0.959999979	0	2018-12-06 15:58:00
Anaheim	City	Orange	california	33.8366013	-117.914001	2.53999996	44	Good air quality	pm25	2018-12-06 23:58:00	54.3199997	90	1011	7.69999981	2.44000006	2018-12-06 15:58:00
Anderson	City	Shasta	california	40.4482002	-122.297997	1.48000002	83	Moderate air quality	pm25	2018-12-06 23:54:00	54.7700005	1	1014	2.0999999	0	2018-12-06 15:58:00
Angels Camp	City	Calaveras	california	38.0677986	-120.539001	1.83000004	62	Moderate air quality	pm25	2018-12-06 23:55:00	57.8499985	1	1014	1.96000004	0	2018-12-06 15:58:00
Antioch	City	Contra Costa	california	38.0049019	-121.806	1.76999998	54	Moderate air quality	pm25	2018-12-06 23:56:00	60.6199989	1	1014	3.0999999	0	2018-12-06 15:58:00
Apple Valley	Town	San Bernardino	california	34.5008011	-117.185997	2.49000001	23	Good air quality	pm25	2018-12-06 23:50:00	47.2799988	90	1016	5.0999999	0	2018-12-06 15:58:00
Arcadia	City	Los Angeles	california	34.1397018	-118.035004	2.52999997	48	Good air quality	pm25	2018-12-06 23:53:00	53.8300018	90	1011	7.69999981	1.37	2018-12-06 15:58:00
Arcata	City	Humboldt	california	40.8665009	-124.083	1.40999997	25	Good air quality	pm10	2018-12-06 23:55:00	53.0999985	1	1014	2.5999999	0	2018-12-06 15:58:00
Arroyo Grande	City	San Luis Obispo	california	35.1185989	-120.591003	2.3900001	37	Good air quality	pm25	2018-12-06 23:53:00	57.2200012	90	1013	4.0999999	1.14999998	2018-12-06 15:58:00
Artesia	City	Los Angeles	california	33.865799	-118.083	2.54999995	46	Good air quality	pm25	2018-12-06 23:53:00	55.1300011	1	1011	7.21000004	1.59000003	2018-12-06 15:58:00
Arvin	City	Kern	california	35.2018013	-118.833	2.3900001	32	Good air quality	pm25	2018-12-06 23:20:00	47.75	90	1015	8.19999981	0	2018-12-06 15:58:00
Atascadero	City	San Luis Obispo	california	35.489399	-120.670998	2.36999989	54	Moderate air quality	pm25	2018-12-06 23:56:00	57.5400009	90	1013	4.0999999	0.50999999	2018-12-06 15:58:00
Atherton	Town	San Mateo	california	37.4612999	-122.197998	1.94000006	69	Moderate air quality	pm25	2018-12-07 00:00:00	60.3499985	1	1014	2.5999999	0	2018-12-06 15:58:00
Atwater	City	Merced	california	37.3476982	-120.609001	1.92999995	70	Moderate air quality	pm25	2018-12-06 23:53:00	58.2299995	90	1014	1.71000004	0	2018-12-06 15:58:00
Auburn	City	Placer	california	38.8965988	-121.077003	1.71000004	42	Good air quality	pm25	2018-12-06 23:55:00	57.4900017	1	1014	1.80999994	0	2018-12-06 15:58:00
Avalon	City	Los Angeles	california	33.3428001	-118.328003	2.6400001	28	Good air quality	o3	2018-12-06 23:04:00	56.6599998	75	1012	9.80000019	1.61000001	2018-12-06 15:58:00
Avenal	City	Kings	california	36.0041008	-120.128998	2.19000006	41	Good air quality	pm25	2018-12-06 23:56:00	53.9599991	90	1015	1.5	0	2018-12-06 15:58:00
Azusa	City	Los Angeles	california	34.1335983	-117.907997	2.53999996	58	Moderate air quality	pm25	2018-12-06 23:58:00	54.6300011	90	1011	7.69999981	2.18000007	2018-12-06 15:58:00
Bakersfield	City	Kern	california	35.3732986	-119.018997	2.32999992	66	Moderate air quality	pm25	2018-12-06 23:55:00	52.2900009	90	1014	0.610000014	0	2018-12-06 15:58:00
Baldwin Park	City	Los Angeles	california	34.0853004	-117.960999	2.53999996	59	Moderate air quality	pm25	2018-12-06 23:58:00	54.6300011	90	1011	7.69999981	2.18000007	2018-12-06 15:58:00
Banning	City	Riverside	california	33.9255981	-116.875999	2.5999999	45	Good air quality	pm25	2018-12-06 23:35:00	50.1599998	90	1014	3.5999999	1.51999998	2018-12-06 15:58:00
Barstow	City	San Bernardino	california	34.8958015	-117.016998	2.41000009	23	Good air quality	pm25	2018-12-06 23:55:00	45.75	90	1016	5.0999999	1.26999998	2018-12-06 15:58:00
Beaumont	City	Riverside	california	33.9295006	-116.976997	2.5999999	62	Moderate air quality	pm25	2018-12-06 23:58:00	50.5400009	90	1012	9.80000019	3.98000002	2018-12-06 15:58:00
Bell	City	Los Angeles	california	33.9775009	-118.186996	2.54999995	55	Moderate air quality	pm25	2018-12-06 23:58:00	55.5099983	1	1011	2.5999999	1.01999998	2018-12-06 15:58:00
Bell Gardens	City	Los Angeles	california	33.9653015	-118.151001	2.54999995	53	Moderate air quality	pm25	2018-12-06 23:58:00	55.5099983	75	1011	5.69999981	1.01999998	2018-12-06 15:58:00
Bellflower	City	Los Angeles	california	33.8816986	-118.116997	2.54999995	36	Good air quality	pm25	2018-12-06 23:58:00	55.5099983	75	1011	5.69999981	1.01999998	2018-12-06 15:58:00
Belmont	City	San Mateo	california	37.5201988	-122.276001	1.88	71	Moderate air quality	pm25	2018-12-07 00:00:00	60.3100014	1	1014	5.0999999	0	2018-12-06 15:58:00
Belvedere	City	Marin	california	37.8726997	-122.463997	1.83000004	26	Good air quality	pm10	2018-12-06 23:56:00	60.4799995	20	1014	3.5999999	0	2018-12-06 15:58:00
Benicia	City	Solano	california	38.0494003	-122.158997	1.78999996	30	Good air quality	pm25	2018-12-06 23:55:00	60.5499992	1	1014	3.0999999	0	2018-12-06 15:58:00
Berkeley	City	Alameda	california	37.8716011	-122.273003	1.83000004	59	Moderate air quality	pm25	2018-12-07 00:00:00	60.4599991	20	1014	3.5999999	0	2018-12-06 15:58:00
Beverly Hills	City	Los Angeles	california	34.0736008	-118.400002	2.52999997	46	Good air quality	pm25	2018-12-06 23:57:00	55.2599983	1	1011	2.0999999	1.61000001	2018-12-06 15:58:00
Big Bear Lake	City	San Bernardino	california	34.2439003	-116.911003	2.70000005	33	Good air quality	pm25	2018-12-06 23:58:00	47.3499985	90	1012	9.80000019	3.80999994	2018-12-06 15:58:00
Biggs	City	Butte	california	39.4123993	-121.712997	1.62	41	Good air quality	pm25	2018-12-06 23:53:00	57.5400009	1	1014	2.0999999	0	2018-12-06 15:58:00
Bishop	City	Inyo	california	37.3614006	-118.400002	2.11999989	53	Moderate air quality	pm25	2018-12-06 23:55:00	30.5599995	90	1016	0.959999979	0	2018-12-06 15:58:00
Blue Lake	City	Humboldt	california	40.8829002	-123.984001	1.41999996	20	Good air quality	pm10	2018-12-06 23:55:00	53.0999985	1	1014	2.5999999	0	2018-12-06 15:58:00
Blythe	City	Riverside	california	33.6178017	-114.587997	2.44000006	32	Good air quality	pm25	2018-12-07 00:15:10	47.1399994	92	1001.53003	1.86000001	0.879999995	2018-12-06 15:58:00
Bradbury	City	Los Angeles	california	34.1469002	-117.971001	2.53999996	29	Good air quality	pm25	2018-12-06 23:58:00	54.0999985	90	1011	7.69999981	1.12	2018-12-06 15:58:00
Brawley	City	Imperial	california	32.9786987	-115.529999	2.6400001	65	Moderate air quality	pm25	2018-12-06 23:56:00	52.8300018	90	1016	1.5	1.26999998	2018-12-06 15:58:00
Brea	City	Orange	california	33.9165001	-117.900002	2.53999996	45	Good air quality	pm25	2018-12-06 23:58:00	54.6300011	90	1011	7.69999981	2.18000007	2018-12-06 15:58:00
Brentwood	City	Contra Costa	california	37.9319	-121.695999	1.82000005	56	Moderate air quality	pm25	2018-12-06 23:56:00	60.8199997	1	1014	4.5999999	0	2018-12-06 15:58:00
Brisbane	City	San Mateo	california	37.6808014	-122.400002	1.88	30	Good air quality	pm10	2018-12-06 23:56:00	60.7099991	20	1014	3.5999999	0	2018-12-06 15:58:00
Buellton	City	Santa Barbara	california	34.6136017	-120.193001	2.49000001	47	Good air quality	pm25	2018-12-06 23:53:00	56.6800003	90	1011	3.5999999	1.77999997	2018-12-06 15:58:00
Buena Park	City	Orange	california	33.8674011	-117.998001	2.53999996	49	Good air quality	pm25	2018-12-06 23:58:00	54.3400002	90	1011	7.69999981	2.18000007	2018-12-06 15:58:00
Burbank	City	Los Angeles	california	34.1808014	-118.308998	2.52999997	59	Moderate air quality	pm25	2018-12-06 23:53:00	53.7999992	1	1011	2.0999999	1.59000003	2018-12-06 15:58:00
Burlingame	City	San Mateo	california	37.5778999	-122.348	1.88	57	Moderate air quality	pm25	2018-12-07 00:00:00	60.3499985	20	1013	3.5999999	0	2018-12-06 15:58:00
Calabasas	City	Los Angeles	california	34.1366997	-118.661003	2.53999996	28	Good air quality	o3	2018-12-06 23:58:00	56.5200005	1	1011	2.0999999	1.01999998	2018-12-06 15:58:00
Calexico	City	Imperial	california	32.6789017	-115.499001	2.68000007	70	Moderate air quality	pm25	2018-12-06 23:56:00	52.8300018	90	1016	1.5	1.26999998	2018-12-06 15:58:00
California City	City	Kern	california	35.1258011	-117.986	2.41000009	32	Good air quality	o3	2018-12-06 23:58:00	42.7099991	90	1015	4.5999999	1.94000006	2018-12-06 15:58:00
Calimesa	City	Riverside	california	34.0038986	-117.061996	2.56999993	59	Moderate air quality	pm25	2018-12-06 23:58:00	50.1300011	90	1012	9.80000019	4.19000006	2018-12-06 15:58:00
Calipatria	City	Imperial	california	33.1255989	-115.514	2.56999993	62	Moderate air quality	pm25	2018-12-06 23:56:00	52.8300018	90	1016	1.5	1.26999998	2018-12-06 15:58:00
Calistoga	City	Napa	california	38.5788002	-122.580002	1.73000002	49	Good air quality	pm25	2018-12-06 23:58:00	60.5699997	1	1014	0.959999979	0	2018-12-06 15:58:00
Camarillo	City	Ventura	california	34.2164001	-119.038002	2.51999998	59	Moderate air quality	pm25	2018-12-06 23:57:00	54.2099991	40	1012	5.69999981	0	2018-12-06 15:58:00
Campbell	City	Santa Clara	california	37.2872009	-121.949997	1.91999996	60	Moderate air quality	pm25	2018-12-07 00:00:00	60.4199982	1	1014	2.5999999	0	2018-12-06 15:58:00
Canyon Lake	City	Riverside	california	33.6850014	-117.273003	2.6099999	20	Good air quality	o3	2018-12-06 23:58:00	53.1899986	90	1012	9.80000019	7.48999977	2018-12-06 15:58:00
Capitola	City	Santa Cruz	california	36.9752007	-121.953003	2.00999999	62	Moderate air quality	pm25	2018-12-06 23:56:00	61.7900009	20	1013	3.5999999	0	2018-12-06 15:58:00
Carlsbad	City	San Diego	california	33.1581001	-117.350998	2.6500001	52	Moderate air quality	pm25	2018-12-07 00:06:00	58.5299988	90	1012	3.0999999	9.90999985	2018-12-06 15:58:00
Carmel-by-the-Sea	City	Monterey	california	36.5551987	-121.922997	2.06999993	55	Moderate air quality	pm25	2018-12-06 23:55:00	62.4199982	1	1012	3.5999999	0	2018-12-06 15:58:00
Carpinteria	City	Santa Barbara	california	34.3988991	-119.517998	2.51999998	35	Good air quality	o3	2018-12-06 23:57:00	57.9000015	90	1011	7.69999981	0	2018-12-06 15:58:00
Carson	City	Los Angeles	california	33.8316994	-118.281998	2.55999994	47	Good air quality	pm25	2018-12-06 23:58:00	55.5099983	1	1011	2.5999999	1.01999998	2018-12-06 15:58:00
Cathedral City	City	Riverside	california	33.7804985	-116.467003	2.50999999	35	Good air quality	pm25	2018-12-06 23:55:00	50.4099998	90	1013	4.5999999	0.75999999	2018-12-06 15:58:00
Ceres	City	Stanislaus	california	37.5948982	-120.958	1.87	63	Moderate air quality	pm25	2018-12-06 23:55:00	58.5099983	1	1014	3.5999999	0	2018-12-06 15:58:00
Cerritos	City	Los Angeles	california	33.8582993	-118.065002	2.54999995	40	Good air quality	pm25	2018-12-06 23:58:00	55.5099983	75	1011	5.69999981	1.01999998	2018-12-06 15:58:00
Chico	City	Butte	california	39.7285004	-121.836998	1.58000004	62	Moderate air quality	pm25	2018-12-06 23:54:00	59.5800018	1	1014	2.0999999	0	2018-12-06 15:58:00
Chino	City	San Bernardino	california	34.0121994	-117.689003	2.55999994	47	Good air quality	pm25	2018-12-06 23:58:00	55.9599991	90	1011	7.69999981	1.01999998	2018-12-06 15:58:00
Chino Hills	City	San Bernardino	california	33.9897995	-117.733002	2.55999994	23	Good air quality	o3	2018-12-06 23:58:00	54.6300011	90	1011	7.69999981	2.18000007	2018-12-06 15:58:00
Chowchilla	City	Madera	california	37.1230011	-120.260002	1.98000002	57	Moderate air quality	pm25	2018-12-06 23:55:00	56.0999985	90	1015	1.5	0	2018-12-06 15:58:00
Chula Vista	City	San Diego	california	32.6400986	-117.084	2.74000001	60	Moderate air quality	pm25	2018-12-07 00:06:00	60.1699982	75	1011	1.5	6.30000019	2018-12-06 15:58:00
Citrus Heights	City	Sacramento	california	38.7070999	-121.280998	1.71000004	47	Good air quality	pm25	2018-12-06 23:55:00	57.8100014	1	1014	4.0999999	0	2018-12-06 15:58:00
Claremont	City	Los Angeles	california	34.0966988	-117.720001	2.55999994	54	Moderate air quality	pm25	2018-12-06 23:58:00	54.6300011	90	1011	7.69999981	2.18000007	2018-12-06 15:58:00
Clayton	City	Contra Costa	california	37.9410019	-121.935997	1.84000003	25	Good air quality	pm25	2018-12-07 00:00:00	60.3100014	1	1014	3.0999999	0	2018-12-06 15:58:00
Clearlake	City	Lake	california	38.9581985	-122.625999	1.71000004	38	Good air quality	pm25	2018-12-06 22:56:00	60.0800018	1	1014	1.5	0	2018-12-06 15:58:00
Cloverdale	City	Sonoma	california	38.8055	-123.016998	1.69000006	65	Moderate air quality	pm25	2018-12-06 22:56:00	60.0800018	1	1014	1.5	0	2018-12-06 15:58:00
Clovis	City	Fresno	california	36.8251991	-119.703003	2.05999994	47	Good air quality	pm25	2018-12-06 23:56:00	53.6399994	90	1015	1.5	0.25	2018-12-06 15:58:00
Coachella	City	Riverside	california	33.6803017	-116.174004	2.5	28	Good air quality	o3	2018-12-06 23:35:00	50.5600014	90	1015	2.0999999	0.75999999	2018-12-06 15:58:00
Coalinga	City	Fresno	california	36.1397018	-120.360001	2.21000004	40	Good air quality	pm25	2018-12-06 23:56:00	53.9599991	90	1015	1.5	0	2018-12-06 15:58:00
Colfax	City	Placer	california	39.1007004	-120.953003	1.73000002	29	Good air quality	pm25	2018-12-06 23:55:00	56.6199989	1	1014	2.0999999	0	2018-12-06 15:58:00
Colma	Town	San Mateo	california	37.676899	-122.459999	1.88	52	Moderate air quality	pm25	2018-12-07 00:00:00	60.4799995	20	1013	3.5999999	0	2018-12-06 15:58:00
Colton	City	San Bernardino	california	34.0738983	-117.314003	2.52999997	52	Moderate air quality	pm25	2018-12-06 23:58:00	53.0099983	90	1012	9.80000019	2.67000008	2018-12-06 15:58:00
Colusa	City	Colusa	california	39.2142982	-122.009003	1.63	50	Good air quality	pm25	2018-12-06 23:53:00	59.1399994	1	1014	3.0999999	0	2018-12-06 15:58:00
Commerce	City	Los Angeles	california	34.0005989	-118.160004	2.52999997	54	Moderate air quality	pm25	2018-12-06 23:58:00	55.9599991	75	1011	5.69999981	1.01999998	2018-12-06 15:58:00
Compton	City	Los Angeles	california	33.8958015	-118.220001	2.54999995	55	Moderate air quality	pm25	2018-12-06 23:58:00	55.5099983	1	1011	2.5999999	1.01999998	2018-12-06 15:58:00
Concord	City	Contra Costa	california	37.9780006	-122.030998	1.84000003	59	Moderate air quality	pm25	2018-12-06 23:56:00	60.5699997	1	1014	3.0999999	0	2018-12-06 15:58:00
Corcoran	City	Kings	california	36.0979996	-119.559998	2.19000006	70	Moderate air quality	pm25	2018-12-06 23:56:00	53.5299988	75	1015	2.5999999	0.25	2018-12-06 15:58:00
Corning	City	Tehama	california	39.9277	-122.179001	1.53999996	42	Good air quality	pm25	2018-12-06 23:54:00	60.0099983	1	1014	2.0999999	0	2018-12-06 15:58:00
Corona	City	Riverside	california	33.8753014	-117.566002	2.55999994	46	Good air quality	pm25	2018-12-06 23:58:00	53.9399986	90	1012	9.80000019	4.25	2018-12-06 15:58:00
Coronado	City	San Diego	california	32.6859016	-117.182999	2.74000001	55	Moderate air quality	pm25	2018-12-07 00:06:00	59.6100006	75	1011	10.3000002	7.78999996	2018-12-06 15:58:00
Corte Madera	Town	Marin	california	37.925499	-122.527	1.83000004	32	Good air quality	pm25	2018-12-06 23:55:00	60.8699989	1	1014	2.55999994	0	2018-12-06 15:58:00
Costa Mesa	City	Orange	california	33.641201	-117.918999	2.56999993	45	Good air quality	pm25	2018-12-06 23:58:00	55.3600006	75	1011	7.21000004	3.80999994	2018-12-06 15:58:00
Cotati	City	Sonoma	california	38.3292999	-122.709999	1.75999999	58	Moderate air quality	pm25	2018-12-06 23:58:00	61.0699997	1	1014	1.46000004	0	2018-12-06 15:58:00
Covina	City	Los Angeles	california	34.0900002	-117.889999	2.53999996	53	Moderate air quality	pm25	2018-12-06 23:58:00	54.2799988	1	1011	2.0999999	2.6400001	2018-12-06 15:58:00
Crescent City	City	Del Norte	california	41.7556992	-124.203003	1.26999998	58	Moderate air quality	pm25	2018-12-06 23:56:00	51.9799995	40	1015	2.5999999	0	2018-12-06 15:58:00
Cudahy	City	Los Angeles	california	33.9606018	-118.184998	2.54999995	53	Moderate air quality	pm25	2018-12-06 23:58:00	55.5099983	1	1011	2.5999999	1.01999998	2018-12-06 15:58:00
Culver City	City	Los Angeles	california	34.0210991	-118.396004	2.52999997	58	Moderate air quality	pm25	2018-12-06 23:58:00	55.9199982	1	1011	2.5999999	0.850000024	2018-12-06 15:58:00
Cupertino	City	Santa Clara	california	37.3230019	-122.031998	1.94000006	61	Moderate air quality	pm25	2018-12-07 00:00:00	60.4799995	1	1014	2.5999999	0	2018-12-06 15:58:00
Cypress	City	Orange	california	33.8168983	-118.037003	2.54999995	34	Good air quality	pm25	2018-12-06 23:58:00	55.5099983	75	1011	5.69999981	1.01999998	2018-12-06 15:58:00
Daly City	City	San Mateo	california	37.6879005	-122.470001	1.88	58	Moderate air quality	pm25	2018-12-07 00:00:00	60.4799995	20	1013	3.5999999	0	2018-12-06 15:58:00
Dana Point	City	Orange	california	33.4672012	-117.697998	2.5999999	48	Good air quality	pm25	2018-12-06 23:58:00	53.6699982	75	1011	2.41000009	6.69000006	2018-12-06 15:58:00
Danville	Town	Contra Costa	california	37.8216019	-122	1.84000003	53	Moderate air quality	pm25	2018-12-07 00:00:00	60.3699989	1	1014	3.0999999	0	2018-12-06 15:58:00
Davis	City	Yolo	california	38.544899	-121.740997	1.71000004	54	Moderate air quality	pm25	2018-12-06 23:55:00	59.7900009	1	1014	3.0999999	0	2018-12-06 15:58:00
Del Mar	City	San Diego	california	32.9594994	-117.264999	2.73000002	35	Good air quality	pm25	2018-12-07 00:06:00	58.8699989	90	1012	5.69999981	8.34000015	2018-12-06 15:58:00
Del Rey Oaks	City	Monterey	california	36.5932999	-121.834999	2.06999993	28	Good air quality	pm25	2018-12-06 23:55:00	62.0999985	1	1012	3.5999999	0	2018-12-06 15:58:00
Delano	City	Kern	california	35.7687988	-119.247002	2.23000002	69	Moderate air quality	pm25	2018-12-06 23:56:00	52.9900017	90	1014	1.46000004	0.25	2018-12-06 15:58:00
Desert Hot Springs	City	Riverside	california	33.9611015	-116.501999	2.58999991	54	Moderate air quality	pm25	2018-12-06 22:56:00	48.0200005	90	1017	5.69999981	0.75999999	2018-12-06 15:58:00
Diamond Bar	City	Los Angeles	california	34.0285988	-117.809998	2.53999996	59	Moderate air quality	pm25	2018-12-06 23:58:00	54.2799988	90	1012	9.80000019	2.6400001	2018-12-06 15:58:00
Dinuba	City	Tulare	california	36.5433006	-119.387001	2.0999999	56	Moderate air quality	pm25	2018-12-06 23:56:00	53.5499992	90	1015	1.40999997	0	2018-12-06 15:58:00
Dixon	City	Solano	california	38.4454994	-121.822998	1.74000001	47	Good air quality	pm25	2018-12-06 23:58:00	59.2900009	1	1014	3.0999999	0	2018-12-06 15:58:00
Dorris	City	Siskiyou	california	41.9673996	-121.917999	1.37	42	Good air quality	pm25	2018-12-06 23:53:00	36.7000008	1	1017	1.15999997	0	2018-12-06 15:58:00
Dos Palos	City	Merced	california	36.9860992	-120.626999	2.01999998	55	Moderate air quality	pm25	2018-12-06 23:53:00	57.9900017	90	1014	1.71000004	0	2018-12-06 15:58:00
Downey	City	Los Angeles	california	33.9401016	-118.133003	2.54999995	55	Moderate air quality	pm25	2018-12-06 23:58:00	55.5099983	75	1011	5.69999981	1.01999998	2018-12-06 15:58:00
Duarte	City	Los Angeles	california	34.1394997	-117.976997	2.53999996	55	Moderate air quality	pm25	2018-12-06 23:58:00	55.2400017	90	1011	7.69999981	1.01999998	2018-12-06 15:58:00
Dublin	City	Alameda	california	37.7022018	-121.935997	1.88	53	Moderate air quality	pm25	2018-12-07 00:00:00	60.2400017	1	1014	4.5999999	0	2018-12-06 15:58:00
Dunsmuir	City	Siskiyou	california	41.2081985	-122.272003	1.46000004	58	Moderate air quality	pm25	2018-12-06 23:53:00	42.7299995	1	1015	0.810000002	0	2018-12-06 15:58:00
East Palo Alto	City	San Mateo	california	37.4687996	-122.140999	1.94000006	71	Moderate air quality	pm25	2018-12-07 00:00:00	60.5999985	1	1014	2.5999999	0	2018-12-06 15:58:00
Eastvale	City	Riverside	california	33.9524994	-117.584999	2.55999994	27	Good air quality	pm25	2018-12-06 23:58:00	54.8400002	90	1012	9.80000019	2.18000007	2018-12-06 15:58:00
El Cajon	City	San Diego	california	32.7947998	-116.962997	2.73000002	54	Moderate air quality	pm25	2018-12-07 00:06:00	59.0499992	90	1012	5.69999981	7.17999983	2018-12-06 15:58:00
El Centro	City	Imperial	california	32.7919998	-115.563004	2.6400001	45	Good air quality	pm25	2018-12-06 23:56:00	52.8300018	90	1016	1.5	1.26999998	2018-12-06 15:58:00
El Cerrito	City	Contra Costa	california	37.9160995	-122.310997	1.83000004	56	Moderate air quality	pm25	2018-12-07 00:00:00	60.3499985	20	1014	3.5999999	0	2018-12-06 15:58:00
El Monte	City	Los Angeles	california	34.0685997	-118.028	2.52999997	60	Moderate air quality	pm25	2018-12-06 23:58:00	55.2400017	90	1011	7.69999981	1.01999998	2018-12-06 15:58:00
El Segundo	City	Los Angeles	california	33.9192009	-118.416	2.55999994	52	Moderate air quality	pm25	2018-12-06 23:58:00	55.9199982	1	1011	2.5999999	0.850000024	2018-12-06 15:58:00
Elk Grove	City	Sacramento	california	38.4087982	-121.372002	1.74000001	53	Moderate air quality	pm25	2018-12-06 23:55:00	58.6899986	1	1014	4.0999999	0	2018-12-06 15:58:00
Emeryville	City	Alameda	california	37.8312988	-122.285004	1.83000004	49	Good air quality	pm25	2018-12-07 00:00:00	60.3100014	20	1014	3.5999999	0	2018-12-06 15:58:00
Encinitas	City	San Diego	california	33.0369987	-117.292	2.6500001	47	Good air quality	pm25	2018-12-07 00:06:00	58.8899994	90	1012	3.0999999	8.34000015	2018-12-06 15:58:00
Escalon	City	San Joaquin	california	37.7974014	-120.997002	1.83000004	64	Moderate air quality	pm25	2018-12-06 23:55:00	58.1500015	1	1014	3.5999999	0	2018-12-06 15:58:00
Escondido	City	San Diego	california	33.1192017	-117.085999	2.67000008	52	Moderate air quality	pm25	2018-12-07 00:06:00	58.8899994	90	1012	5.69999981	8.34000015	2018-12-06 15:58:00
Etna	City	Siskiyou	california	41.4567986	-122.894997	1.41999996	46	Good air quality	pm25	2018-12-06 23:53:00	42.5999985	1	1017	0.75999999	0	2018-12-06 15:58:00
Eureka	City	Humboldt	california	40.8021011	-124.164001	1.40999997	48	Good air quality	pm25	2018-12-06 23:55:00	53.1699982	1	1014	2.5999999	0	2018-12-06 15:58:00
Exeter	City	Tulare	california	36.2961006	-119.141998	2.1500001	58	Moderate air quality	pm25	2018-12-06 23:56:00	52.7200012	75	1015	2.5999999	0.25	2018-12-06 15:58:00
Fairfax	Town	Marin	california	37.9870987	-122.588997	1.83000004	24	Good air quality	pm10	2018-12-07 00:00:00	60.4000015	1	1014	2.55999994	0	2018-12-06 15:58:00
Fairfield	City	Solano	california	38.2494011	-122.040001	1.78999996	42	Good air quality	pm25	2018-12-06 23:58:00	60.2400017	1	1014	5.0999999	0	2018-12-06 15:58:00
Farmersville	City	Tulare	california	36.297699	-119.207001	2.1500001	59	Moderate air quality	pm25	2018-12-06 23:56:00	53.4599991	75	1015	2.5999999	0.25	2018-12-06 15:58:00
Ferndale	City	Humboldt	california	40.5761986	-124.264	1.41999996	24	Good air quality	o3	2018-12-06 23:55:00	53.3100014	1	1014	2.5999999	0	2018-12-06 15:58:00
Fillmore	City	Ventura	california	34.3992004	-118.917999	2.52999997	29	Good air quality	o3	2018-12-06 23:57:00	54.2700005	40	1012	5.69999981	0	2018-12-06 15:58:00
Firebaugh	City	Fresno	california	36.858799	-120.456001	2.01999998	68	Moderate air quality	pm25	2018-12-06 23:55:00	56.1199989	90	1015	1.5	0	2018-12-06 15:58:00
Folsom	City	Sacramento	california	38.6780014	-121.176003	1.73000002	62	Moderate air quality	pm25	2018-12-06 23:55:00	57.5400009	5	1014	3.5999999	0	2018-12-06 15:58:00
Fontana	City	San Bernardino	california	34.0922012	-117.434998	2.52999997	54	Moderate air quality	pm25	2018-12-06 23:58:00	53.5999985	90	1012	9.80000019	2.67000008	2018-12-06 15:58:00
Fort Bragg	City	Mendocino	california	39.4457016	-123.805	1.60000002	54	Moderate air quality	pm25	2018-12-06 22:56:00	60.0800018	1	1014	1.5	0	2018-12-06 15:58:00
Fort Jones	City	Siskiyou	california	41.6076012	-122.839996	1.37	46	Good air quality	pm25	2018-12-06 23:53:00	41.25	1	1017	0.75999999	0	2018-12-06 15:58:00
Fortuna	City	Humboldt	california	40.5982018	-124.156998	1.42999995	38	Good air quality	pm25	2018-12-06 23:55:00	53.2900009	1	1014	2.5999999	0	2018-12-06 15:58:00
Foster City	City	San Mateo	california	37.5584984	-122.271004	1.88	64	Moderate air quality	pm25	2018-12-07 00:00:00	60.5999985	20	1013	3.5999999	0	2018-12-06 15:58:00
Fountain Valley	City	Orange	california	33.7089996	-117.954002	2.56999993	48	Good air quality	pm25	2018-12-06 23:58:00	55.6699982	75	1011	5.69999981	1.01999998	2018-12-06 15:58:00
Fowler	City	Fresno	california	36.6305008	-119.678001	2.0999999	51	Moderate air quality	pm25	2018-12-06 23:56:00	53.5499992	90	1014	1.40999997	0.25	2018-12-06 15:58:00
Fremont	City	Alameda	california	37.5483017	-121.988998	1.88	56	Moderate air quality	pm25	2018-12-07 00:00:00	60.5999985	1	1014	2.5999999	0	2018-12-06 15:58:00
Fresno	City	Fresno	california	36.7378006	-119.787003	2.0999999	70	Moderate air quality	pm25	2018-12-06 23:56:00	53.5499992	90	1014	1.30999994	0.25	2018-12-06 15:58:00
Fullerton	City	Orange	california	33.8703995	-117.924004	2.53999996	44	Good air quality	pm25	2018-12-07 00:00:00	55.2000008	90	1011	7.69999981	1.01999998	2018-12-06 15:58:00
Galt	City	Sacramento	california	38.2546005	-121.300003	1.74000001	56	Moderate air quality	pm25	2018-12-06 23:58:00	58.5099983	1	1014	4.0999999	0	2018-12-06 15:58:00
Garden Grove	City	Orange	california	33.7742996	-117.938004	2.53999996	41	Good air quality	pm25	2018-12-06 23:58:00	54.3400002	75	1011	5.69999981	2.18000007	2018-12-06 15:58:00
Gardena	City	Los Angeles	california	33.8883018	-118.308998	2.55999994	53	Moderate air quality	pm25	2018-12-06 23:58:00	55.6699982	40	1011	3.0999999	1.01999998	2018-12-06 15:58:00
Gilroy	City	Santa Clara	california	37.0057983	-121.568001	1.99000001	65	Moderate air quality	pm25	2018-12-06 23:56:00	61.4700012	20	1013	3.5999999	0	2018-12-06 15:58:00
Glendale	City	Los Angeles	california	34.1425018	-118.254997	2.52999997	57	Moderate air quality	pm25	2018-12-07 00:00:00	54.4799995	75	1012	5.69999981	1.01999998	2018-12-06 15:58:00
Glendora	City	Los Angeles	california	34.1361008	-117.864998	2.53999996	58	Moderate air quality	pm25	2018-12-07 00:00:00	54.9500008	90	1011	7.69999981	2.18000007	2018-12-06 15:58:00
Goleta	City	Santa Barbara	california	34.4357986	-119.828003	2.49000001	47	Good air quality	pm25	2018-12-06 23:53:00	56.7900009	90	1011	3.5999999	1.77999997	2018-12-06 15:58:00
Gonzales	City	Monterey	california	36.5065994	-121.444	2.0999999	60	Moderate air quality	pm25	2018-12-06 23:55:00	62.1300011	1	1013	4.5999999	0	2018-12-06 15:58:00
Grand Terrace	City	San Bernardino	california	34.0339012	-117.314003	2.52999997	51	Moderate air quality	pm25	2018-12-06 23:58:00	53.0099983	90	1012	9.80000019	2.67000008	2018-12-06 15:58:00
Grass Valley	City	Nevada	california	39.219101	-121.060997	1.70000005	55	Moderate air quality	pm25	2018-12-06 23:55:00	56.6100006	1	1014	2.0999999	0	2018-12-06 15:58:00
Greenfield	City	Monterey	california	36.3208008	-121.244003	2.17000008	58	Moderate air quality	pm25	2018-12-06 23:55:00	62.5999985	1	1013	4.5999999	0	2018-12-06 15:58:00
Gridley	City	Butte	california	39.3638	-121.694	1.62	42	Good air quality	pm25	2018-12-06 23:53:00	58.6399994	1	1014	2.0999999	0	2018-12-06 15:58:00
Grover Beach	City	San Luis Obispo	california	35.1216011	-120.621002	2.3900001	36	Good air quality	pm25	2018-12-06 23:56:00	56.5	40	1012	2.0999999	1.39999998	2018-12-06 15:58:00
Guadalupe	City	Santa Barbara	california	34.9715996	-120.571999	2.43000007	24	Good air quality	o3	2018-12-06 23:56:00	56.4099998	90	1012	1.5	1.39999998	2018-12-06 15:58:00
Gustine	City	Merced	california	37.2577019	-120.999001	1.91999996	54	Moderate air quality	pm25	2018-12-06 23:55:00	59.5	1	1014	3.5999999	0	2018-12-06 15:58:00
Half Moon Bay	City	San Mateo	california	37.4636002	-122.429001	1.92999995	40	Good air quality	pm25	2018-12-07 00:00:00	60.4599991	1	1014	5.0999999	0	2018-12-06 15:58:00
Hanford	City	Kings	california	36.3274002	-119.646004	2.1500001	54	Moderate air quality	pm25	2018-12-06 23:56:00	53.4700012	90	1015	2.0999999	0.25	2018-12-06 15:58:00
Hawaiian Gardens	City	Los Angeles	california	33.8314018	-118.072998	2.54999995	50	Good air quality	pm25	2018-12-07 00:00:00	55.2000008	75	1011	5.69999981	1.01999998	2018-12-06 15:58:00
Hawthorne	City	Los Angeles	california	33.9164009	-118.352997	2.55999994	54	Moderate air quality	pm25	2018-12-07 00:00:00	55.2000008	1	1011	2.5999999	1.01999998	2018-12-06 15:58:00
Hayward	City	Alameda	california	37.6688004	-122.081001	1.86000001	57	Moderate air quality	pm25	2018-12-07 00:00:00	60.2200012	20	1014	3.5999999	0	2018-12-06 15:58:00
Healdsburg	City	Sonoma	california	38.6105003	-122.869003	1.71000004	58	Moderate air quality	pm25	2018-12-06 23:56:00	59.2200012	1	1014	1.46000004	0	2018-12-06 15:58:00
Hemet	City	Riverside	california	33.7475014	-116.972	2.6400001	55	Moderate air quality	pm25	2018-12-06 23:58:00	51.4900017	90	1013	4.5999999	10.7700005	2018-12-06 15:58:00
Hercules	City	Contra Costa	california	38.0171013	-122.289001	1.78999996	28	Good air quality	pm25	2018-12-07 00:00:00	60.2400017	1	1014	3.0999999	0	2018-12-06 15:58:00
Hermosa Beach	City	Los Angeles	california	33.8622017	-118.400002	2.55999994	53	Moderate air quality	pm25	2018-12-06 23:58:00	55.7200012	1	1011	2.5999999	0.850000024	2018-12-06 15:58:00
Hesperia	City	San Bernardino	california	34.4263992	-117.301003	2.54999995	26	Good air quality	pm25	2018-12-06 23:58:00	49.4099998	90	1012	9.80000019	4.19000006	2018-12-06 15:58:00
Hidden Hills	City	Los Angeles	california	34.1603012	-118.652	2.53999996	28	Good air quality	o3	2018-12-06 23:58:00	56.7000008	1	1011	2.0999999	1.01999998	2018-12-06 15:58:00
Highland	City	San Bernardino	california	34.1282997	-117.209	2.56999993	51	Moderate air quality	pm25	2018-12-06 23:58:00	50.0900002	90	1012	9.80000019	4.19000006	2018-12-06 15:58:00
Hillsborough	Town	San Mateo	california	37.5741005	-122.378998	1.88	32	Good air quality	pm25	2018-12-07 00:00:00	60.75	20	1013	3.5999999	0	2018-12-06 15:58:00
Hollister	City	San Benito	california	36.8525009	-121.402	2.01999998	62	Moderate air quality	pm25	2018-12-06 23:55:00	62.2599983	1	1013	4.5999999	0	2018-12-06 15:58:00
Holtville	City	Imperial	california	32.8111992	-115.379997	2.61999989	72	Moderate air quality	pm25	2018-12-06 23:56:00	52.8100014	90	1016	1.5	1.26999998	2018-12-06 15:58:00
Hughson	City	Stanislaus	california	37.6026993	-120.865997	1.87	50	Good air quality	pm25	2018-12-06 23:55:00	58.4399986	1	1014	3.5999999	0	2018-12-06 15:58:00
Huntington Beach	City	Orange	california	33.6595001	-117.999001	2.56999993	46	Good air quality	pm25	2018-12-06 23:58:00	55.6699982	75	1011	5.69999981	1.01999998	2018-12-06 15:58:00
Huntington Park	City	Los Angeles	california	33.9817009	-118.224998	2.54999995	56	Moderate air quality	pm25	2018-12-06 23:58:00	55.5099983	1	1011	2.5999999	1.01999998	2018-12-06 15:58:00
Huron	City	Fresno	california	36.2027016	-120.102997	2.19000006	40	Good air quality	pm25	2018-12-06 23:56:00	53.6399994	90	1015	1.5	0.25	2018-12-06 15:58:00
Imperial	City	Imperial	california	32.847599	-115.569	2.6400001	63	Moderate air quality	pm25	2018-12-06 23:56:00	53.2599983	90	1015	2.0999999	0.25	2018-12-06 15:58:00
Imperial Beach	City	San Diego	california	32.5839005	-117.112999	2.74000001	64	Moderate air quality	pm25	2018-12-07 00:06:00	61.7200012	75	1011	1.5	1.51999998	2018-12-06 15:58:00
Indian Wells	City	Riverside	california	33.7176018	-116.341003	2.6099999	29	Good air quality	pm25	2018-12-06 23:35:00	50.6100006	90	1015	2.0999999	0.75999999	2018-12-06 15:58:00
Indio	City	Riverside	california	33.7206001	-116.216003	2.5	53	Moderate air quality	pm25	2018-12-06 23:35:00	50.6500015	90	1015	2.0999999	0.75999999	2018-12-06 15:58:00
Industry	City	Los Angeles	california	34.0196991	-117.959	2.53999996	53	Moderate air quality	pm25	2018-12-07 00:00:00	54.9500008	90	1011	7.69999981	2.18000007	2018-12-06 15:58:00
\.


--
-- PostgreSQL database dump complete
--
