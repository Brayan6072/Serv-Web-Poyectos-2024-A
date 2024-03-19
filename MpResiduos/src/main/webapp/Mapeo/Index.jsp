
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Mapa Interactivo del Cutonala</title>

    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />

    <link href="css/mapa.css" rel="stylesheet" />
    <link href="css/styles.css" rel="stylesheet" />
    <link href="css/graficos.css" rel="stylesheet" />
    <script src="js/scripts.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="js/puntero.js"></script>
    
</head>

<body>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <p tabindex="1" aria-label="Titulo de la pagina" class="navbar-brand" href="#">Mapa Interactivo del Cutonala</p>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">

                    <li class="nav-item dropdown">
                        <a tabindex="2" aria-label="Menu desplegable" class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Otros</a>
                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">

                            <li><a class="dropdown-item" href="VistaReportes/VerReportes.jsp">Reportes</a></li>
                            <li>
                                <hr class="dropdown-divider" />
                            </li>
                            <li><a class="dropdown-item" href="Others/Infografias.pdf">Infografias</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">

        <div class="text-center mt-5">
            <h1 tabindex="3">¡Conoce tu Universidad!</h1>
            <p tabindex="4" class="lead">¿A Donde quieres ir?</p>

        </div>

        <!--
                "#212529" areas externas
                yellowgreen edificios
                #31827c verde alternativa
                #ee9b57 punteros
            -->

        <div id="svg-container">
            <div id="main_container" class="container">
                <svg id="mapa_int" version="1.0" xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" viewBox="0 0 1366.000000 768.000000" preserveAspectRatio="xMidYMid meet">
    
                        <g tabindex="5" aria-label="Estas dentro del mapa Cutonala, Se recomienda ser auxiliado para una mejor experiencia" class="map" transform="translate(0.000000,768.000000) scale(0.100000,-0.100000)"
                        fill="#212529" stroke="none">
                            <path ondblclick="ocultarCuadroTexto()" d="M103 7563 c235 -331 267 -383 396 -641 121 -241 135 -277 214 -523
                            47 -145 97 -292 111 -325 99 -235 174 -735 202 -1340 13 -288 14 -391 4 -594
                            -6 -135 -13 -254 -16 -266 -3 -11 4 -46 16 -77 l21 -57 64 41 c54 34 109 52
                            387 130 177 49 331 92 341 95 14 4 17 17 17 67 1 34 6 74 13 89 15 35 147 184
                            168 191 23 7 46 63 79 194 16 65 58 223 94 350 l65 233 145 280 145 280 107
                            338 c120 378 145 441 199 501 56 61 80 71 182 71 103 0 215 -22 402 -79 118
                            -36 137 -39 155 -27 39 25 180 327 251 536 57 167 83 227 186 418 65 124 119
                            226 119 228 0 2 -934 4 -2075 4 l-2075 0 83 -117z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M4192 7563 c-77 -151 -172 -372 -255 -593 -72 -193 -147 -421 -147
                            -445 0 -13 47 -15 413 -15 405 0 1658 -13 2542 -26 l450 -6 -3 230 -3 230 -87
                            30 c-237 83 -325 134 -335 194 -5 32 6 300 19 446 l6 72 -1270 0 -1269 0 -61
                            -117z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M6930 7671 c0 -4 10 -31 21 -60 21 -50 23 -52 88 -71 38 -11 127 -24
                            211 -30 270 -19 209 2 716 -255 267 -135 460 -239 462 -248 8 -41 -76 -49
                            -678 -67 -206 -6 -403 -13 -437 -16 l-63 -6 0 -218 0 -218 63 -6 c34 -3 134
                            -8 222 -11 288 -10 788 -35 909 -45 115 -10 123 -12 220 -61 148 -75 317 -189
                            394 -267 70 -70 84 -96 142 -257 62 -173 271 -571 371 -709 l58 -79 11 29 c22
                            57 198 661 225 772 42 174 28 242 -74 354 -69 75 -110 102 -249 158 -142 58
                            -284 122 -279 126 2 2 104 -39 228 -91 l224 -95 75 -78 c42 -42 86 -99 100
                            -126 50 -104 41 -157 -102 -595 -94 -289 -138 -441 -138 -479 0 -34 30 -100
                            233 -512 239 -484 347 -673 484 -843 62 -77 119 -123 172 -137 125 -33 641
                            -60 1563 -81 l478 -10 242 123 c191 96 253 132 288 168 25 25 120 166 212 313
                            l168 267 -15 107 -15 108 -47 43 c-27 24 -61 54 -78 67 -26 20 -656 346 -2470
                            1280 -286 147 -824 422 -1195 610 -665 337 -847 431 -1774 912 l-469 243 -248
                            0 c-137 0 -249 -4 -249 -9z m990 -842 c173 -8 270 -7 370 1 100 9 171 9 274 0
                            l139 -11 214 -130 c117 -72 213 -133 213 -135 0 -7 -32 11 -237 134 l-193 115
                            -575 10 -575 10 -97 -58 c-54 -32 -109 -65 -123 -74 -14 -8 -21 -11 -17 -5 5
                            5 61 42 125 81 136 85 99 80 482 62z m-620 -154 c0 -2 -10 -9 -22 -15 -22 -11
                            -22 -10 -4 4 21 17 26 19 26 11z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M7765 7573 c121 -59 500 -247 843 -419 l622 -313 -6 67 c-3 37 -18
                            225 -33 417 l-26 350 -810 2 -810 3 220 -107z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M9265 7598 c3 -46 10 -153 16 -238 12 -182 34 -357 56 -455 13 -59
                            22 -76 57 -110 54 -51 193 -130 536 -301 151 -75 601 -306 1000 -514 634 -329
                            1150 -588 1845 -925 105 -51 284 -149 398 -219 l209 -126 46 10 c77 17 175 52
                            205 72 l27 19 0 1435 0 1434 -2201 0 -2200 0 6 -82z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M0 3824 c0 -2013 3 -3696 7 -3742 l6 -82 175 2 176 3 7 25 c3 14 59
                            214 124 445 337 1210 626 2294 665 2500 l12 61 -96 286 c-53 157 -96 302 -96
                            322 0 22 -10 51 -26 75 -41 63 -55 121 -43 188 6 34 10 251 10 523 0 431 -2
                            482 -26 695 -57 514 -100 784 -135 840 -11 17 -73 193 -138 391 -66 197 -149
                            429 -186 514 -135 313 -266 504 -408 595 l-28 17 0 -3658z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M6883 7443 c-24 -58 -37 -153 -24 -185 12 -31 147 -123 273 -187 l83
                            -41 455 15 c250 9 458 17 463 18 10 3 -328 205 -438 262 l-90 46 -293 25
                            c-285 24 -294 25 -346 54 -29 17 -56 30 -60 30 -4 0 -14 -17 -23 -37z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M3030 6490 c-19 -11 -45 -19 -57 -20 -18 0 -30 -16 -62 -82 -75 -158
                            -201 -493 -227 -605 -24 -105 -111 -294 -311 -673 -25 -49 -114 -389 -158
                            -610 l-27 -135 -105 -100 -104 -100 -6 -58 -6 -58 50 20 c330 130 367 141 511
                            156 l64 7 113 107 c139 133 295 274 358 325 38 31 50 36 61 26 8 -6 43 -20 78
                            -31 50 -15 94 -19 214 -19 83 0 172 3 198 6 54 8 54 8 66 146 l7 93 1 -90 c0
                            -49 -3 -110 -6 -134 -7 -41 -10 -45 -49 -58 -41 -14 -93 -62 -93 -86 0 -7 -9
                            -120 -20 -252 -10 -131 -18 -240 -16 -242 1 -1 76 -14 167 -28 90 -14 176 -28
                            190 -31 24 -4 38 10 163 166 l137 170 -7 64 -7 64 -33 -5 c-40 -7 -40 -7 -49
                            110 l-7 89 -46 -6 c-26 -3 -82 -8 -124 -12 l-78 -6 0 49 0 50 128 6 c70 4 169
                            7 220 7 l94 0 -6 38 c-3 20 -8 65 -12 100 l-6 63 -167 -7 -168 -7 -6 69 c-4
                            38 -7 88 -7 112 l0 43 -90 -7 -90 -7 0 53 0 52 263 -6 c144 -3 332 -9 418 -12
                            l156 -6 7 622 c4 342 6 624 4 625 -2 2 -178 8 -392 14 l-390 11 -66 -46 c-45
                            -30 -78 -46 -101 -46 -19 -1 -135 28 -259 64 -291 84 -269 80 -310 58z m667
                            -1533 c-2 -23 -3 -1 -3 48 0 50 1 68 3 42 2 -26 2 -67 0 -90z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M5964 6322 l-59 -37 -215 -5 -215 -5 2 -124 c1 -68 5 -126 7 -129 3
                            -3 89 -33 191 -68 l184 -63 60 72 59 73 25 159 c14 88 25 161 23 162 -1 1 -29
                            -14 -62 -35z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M6137 6274 c-14 -38 -37 -99 -51 -136 l-25 -67 41 -33 41 -32 -7
                            -428 c-7 -407 -6 -428 11 -428 10 0 140 -7 288 -15 369 -19 678 -29 706 -22
                            l24 6 3 533 c2 293 1 549 -3 569 l-6 35 -467 38 c-257 21 -481 41 -498 43 -31
                            5 -32 4 -57 -63z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M7245 5819 c-6 -410 -5 -493 6 -501 38 -25 225 19 311 74 62 39 86
                            31 29 -10 -60 -44 -138 -71 -259 -90 l-104 -17 6 -35 c3 -19 6 -44 6 -55 0
                            -20 6 -20 868 -19 477 1 951 4 1053 9 l187 7 -44 82 c-123 227 -246 467 -311
                            611 -116 253 -133 283 -176 321 -52 44 -127 79 -197 92 -32 6 -330 13 -711 16
                            l-656 6 -8 -491z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M4610 6253 c0 -26 -7 -273 -15 -547 -8 -275 -13 -501 -12 -502 3 -3
                            840 -34 843 -31 3 3 34 1110 31 1112 -1 1 -192 5 -424 9 l-423 7 0 -48z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M5927 5935 c-48 -53 -75 -75 -92 -75 -26 0 -132 38 -262 93 l-83 35
                            0 -56 c0 -32 -5 -207 -10 -391 -5 -184 -9 -336 -7 -337 1 -1 115 -10 252 -18
                            138 -9 278 -19 311 -22 l62 -5 6 253 c3 139 9 323 12 409 l6 156 -48 12 c-27
                            7 -56 14 -64 16 -9 3 -42 -25 -83 -70z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M5030 5104 c17 -15 46 -56 64 -93 44 -86 96 -252 89 -279 -11 -43 26
                            -22 82 45 80 97 93 103 237 113 68 5 137 10 153 10 24 1 19 4 -29 21 -59 20
                            -164 83 -238 141 -34 27 -52 31 -185 48 -82 11 -161 20 -176 20 l-29 0 32 -26z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M4563 5069 c4 -30 7 -69 7 -88 l0 -34 65 6 c36 4 65 2 65 -2 0 -5 26
                            -12 57 -16 32 -4 75 -16 95 -26 21 -11 48 -17 60 -15 13 3 42 7 66 10 l42 6 0
                            -48 c0 -48 0 -48 56 -80 31 -18 59 -30 62 -27 9 8 -74 253 -101 300 -22 38
                            -25 40 -68 37 -45 -3 -302 13 -373 24 l-39 6 6 -53z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M8230 5108 c-27 -10 -36 -20 -41 -46 -9 -44 -52 -88 -106 -108 -36
                            -14 -43 -21 -43 -43 0 -28 -15 -332 -25 -492 l-6 -97 70 -50 69 -51 -60 -117
                            -61 -116 79 6 c44 3 181 11 307 17 l227 11 31 -26 31 -26 32 19 c17 10 231
                            130 476 266 245 136 448 250 451 253 4 4 -22 59 -58 122 -36 63 -108 195 -160
                            293 l-96 177 -190 -2 -190 -3 -48 -85 c-27 -47 -53 -86 -58 -88 -5 -2 -32 33
                            -60 78 -28 44 -53 80 -54 80 -2 0 -55 7 -118 15 -167 22 -356 28 -399 13z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M3936 5063 c-8 -57 13 -84 83 -108 39 -13 80 -15 280 -9 l233 7 -6
                            45 c-3 25 -6 60 -6 78 l0 34 -289 0 -288 0 -7 -47z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M5610 5100 l-225 -5 65 -46 c154 -110 222 -133 343 -118 53 7 86 18
                            127 43 30 18 79 45 108 60 28 14 52 30 52 35 0 5 3 16 6 25 7 18 6 18 -476 6z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M7230 4979 c0 -74 -3 -218 -7 -322 l-6 -187 79 44 c154 88 235 107
                            501 122 122 7 123 7 158 -20 l35 -27 0 169 0 169 -227 -1 -228 -1 -40 26 c-22
                            15 -71 54 -110 88 -38 33 -75 61 -81 61 -6 0 -26 3 -43 6 l-31 7 0 -134z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M6120 5084 c0 -14 46 -15 478 -11 262 3 495 10 517 15 28 7 -117 10
                            -477 11 -467 1 -518 -1 -518 -15z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M7495 5079 c-49 -5 -93 -10 -97 -11 -4 -2 31 -27 78 -55 l84 -53 210
                            0 c161 0 210 3 210 13 0 6 -19 33 -43 60 l-42 47 -113 -10 c-99 -10 -117 -9
                            -137 4 -14 9 -32 15 -42 15 -10 -1 -58 -6 -108 -10z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M8798 5082 c-14 -6 -11 -14 22 -55 l39 -48 29 43 c48 72 49 68 -15
                            67 -32 0 -65 -3 -75 -7z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M7100 5069 c-30 -4 -262 -13 -515 -20 -253 -6 -462 -14 -465 -16 -3
                            -3 -7 -43 -9 -89 l-3 -84 243 0 c134 0 376 3 537 7 l292 6 0 51 c0 67 -11 156
                            -19 155 -3 -1 -31 -5 -61 -10z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M7960 5071 l-24 -7 36 -39 c20 -22 38 -38 40 -35 2 3 19 24 37 48
                            l33 42 -49 -1 c-26 -1 -59 -4 -73 -8z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M8098 5051 c-35 -30 -75 -91 -61 -91 22 0 143 95 143 112 0 19 -52 6
                            -82 -21z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M6043 5018 c-17 -4 -64 -28 -103 -52 -48 -30 -88 -47 -123 -51 -106
                            -15 -86 -22 82 -29 96 -4 175 -5 178 -3 2 3 3 36 1 74 l-3 69 -32 -8z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M5645 4873 c-11 -2 -43 -11 -71 -18 l-51 -15 -5 -210 c-3 -116 -3
                            -242 0 -281 4 -64 7 -70 30 -76 14 -3 66 1 115 10 l90 16 200 -140 199 -140
                            -6 118 c-3 65 -8 201 -11 303 -4 102 -11 223 -16 270 -9 83 -11 86 -52 123
                            -41 37 -43 37 -107 32 -220 -16 -271 -17 -268 -4 3 14 -16 19 -47 12z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M5411 4840 c-37 -6 -54 -16 -98 -64 l-53 -57 0 -128 c0 -70 3 -223 7
                            -339 l6 -212 108 0 107 0 69 79 c37 44 73 80 78 80 6 1 18 15 27 31 l17 30
                            -62 -5 c-52 -5 -67 -3 -94 14 l-33 21 0 280 c0 314 9 285 -79 270z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M6180 4410 l0 -400 502 0 501 0 -6 233 c-4 127 -7 307 -7 400 l0 167
                            -495 0 -495 0 0 -400z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M13576 4646 c-38 -12 -71 -26 -73 -32 -3 -10 84 -101 91 -93 17 18
                            66 114 66 129 0 24 3 24 -84 -4z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M3059 4593 c-81 -62 -403 -377 -398 -391 2 -6 56 -48 119 -93 67 -48
                            155 -125 210 -182 52 -54 124 -124 159 -155 l64 -57 84 90 c46 50 101 113 123
                            141 39 50 40 52 60 208 11 86 20 173 20 194 0 20 9 73 19 117 11 44 18 81 16
                            83 -2 2 -77 16 -167 31 -90 16 -178 36 -195 45 -18 9 -36 16 -42 16 -5 0 -37
                            -21 -72 -47z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M7656 4610 c-150 -24 -340 -98 -404 -159 -24 -21 -32 -38 -32 -63 0
                            -58 10 -77 44 -86 17 -4 185 -6 374 -4 l343 4 -7 121 c-4 67 -12 128 -18 136
                            -36 46 -179 70 -300 51z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M9563 4377 c-73 -45 -131 -86 -130 -91 4 -12 791 -725 795 -721 4 3
                            -527 896 -531 894 -1 0 -62 -37 -134 -82z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M4283 4375 c-12 -9 -25 -31 -29 -50 -5 -28 -11 -35 -30 -35 -18 0
                            -54 -37 -161 -166 -76 -92 -138 -171 -138 -177 0 -12 169 -61 270 -78 63 -11
                            76 -10 97 3 12 8 98 43 189 77 l167 61 173 10 c96 5 218 10 272 10 l97 0 0
                            175 0 175 -25 0 c-18 0 -25 -5 -25 -20 0 -19 -4 -20 -52 -14 -29 4 -55 10 -58
                            14 -6 9 -442 30 -611 30 -87 0 -120 -4 -136 -15z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M13469 4031 l-187 -338 -139 -384 -140 -384 -264 -1022 c-145 -562
                            -265 -1020 -267 -1018 -6 6 280 1518 323 1710 76 337 87 379 105 414 l17 35
                            -36 26 c-20 15 -85 71 -144 126 -60 54 -121 107 -136 116 -48 31 -284 40
                            -1196 47 l-870 6 -105 42 -105 42 -285 20 c-157 11 -311 23 -342 26 l-57 6
                            -213 -323 c-118 -178 -245 -372 -283 -432 -38 -59 -88 -125 -112 -145 -64 -57
                            -238 -177 -443 -305 l-185 -116 -95 0 c-52 0 -143 5 -203 10 -99 10 -110 9
                            -147 -10 -22 -11 -47 -31 -56 -45 -9 -13 -32 -91 -51 -172 -92 -387 -178 -735
                            -199 -798 -42 -131 -155 -438 -184 -499 -17 -36 -31 -87 -35 -126 l-7 -65 240
                            -237 239 -238 2176 0 c1786 0 2177 2 2177 13 0 36 395 1421 588 2062 33 110
                            90 301 126 425 135 463 290 893 496 1375 107 251 190 459 188 472 -2 15 -61
                            -82 -189 -316z m-3506 -597 c57 -19 129 -81 165 -142 25 -43 27 -56 27 -147 0
                            -91 -2 -104 -27 -147 -36 -61 -108 -123 -165 -142 -60 -20 -166 -20 -226 0
                            -57 19 -140 92 -170 148 -18 34 -22 57 -22 141 0 84 4 107 22 141 29 54 113
                            129 166 147 56 20 172 21 230 1z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M7527 4283 l-208 -3 26 -44 c39 -67 28 -153 -28 -215 l-22 -24 344 6
                            c189 3 345 8 347 10 3 2 2 66 -2 141 l-7 136 -121 -2 c-67 -2 -215 -4 -329 -5z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M8010 4154 c0 -76 2 -135 4 -133 2 2 29 46 60 96 l55 93 -59 40 -60
                            41 0 -137z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M5697 4233 c-19 -21 -64 -71 -101 -111 -38 -40 -66 -75 -64 -77 4 -4
                            531 -25 535 -21 2 2 -49 43 -114 91 -65 48 -132 103 -150 121 -41 44 -63 43
                            -106 -3z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M7230 4136 c0 -149 4 -157 53 -112 42 39 60 83 55 138 -6 63 -35 102
                            -76 106 l-32 3 0 -135z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M8715 3910 l-660 -359 -6 -153 c-9 -221 -10 -1081 -1 -1094 10 -15
                            168 -49 227 -49 45 0 67 10 225 101 96 56 195 111 220 124 60 30 233 144 276
                            182 49 43 202 265 272 394 32 60 110 190 172 289 61 99 118 192 126 208 14 25
                            18 27 82 27 37 0 168 -11 292 -24 124 -13 226 -23 228 -21 2 2 -34 39 -80 83
                            -108 103 -707 652 -710 651 -2 0 -300 -162 -663 -359z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M2239 4036 c-118 -41 -252 -88 -299 -104 -47 -17 -218 -67 -380 -113
                            -246 -68 -308 -89 -372 -126 -42 -24 -81 -50 -87 -57 -6 -8 -12 -40 -13 -72
                            -2 -53 5 -74 64 -206 108 -240 123 -287 122 -398 0 -82 -5 -109 -36 -200 -20
                            -58 -96 -325 -168 -595 -73 -269 -167 -607 -210 -750 -73 -242 -262 -889 -363
                            -1245 l-44 -155 3281 -7 c1805 -4 3470 -7 3700 -5 l419 2 -888 775 c-1506
                            1313 -1431 1249 -1512 1287 -40 18 -109 47 -153 63 -63 23 -165 85 -453 274
                            -400 262 -599 386 -937 587 -234 139 -332 214 -473 359 -51 52 -227 231 -392
                            398 -351 355 -362 362 -505 362 -81 0 -98 -4 -301 -74z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M4740 3958 c-54 -5 -101 -14 -110 -22 -8 -8 -66 -35 -129 -60 -63
                            -25 -124 -54 -135 -65 -12 -10 -35 -22 -52 -25 -70 -15 -378 50 -451 95 -18
                            11 -83 31 -146 44 -62 13 -120 27 -128 30 -20 7 -90 -67 -192 -202 l-78 -103
                            72 -94 c57 -77 104 -123 242 -238 193 -160 177 -150 532 -353 143 -82 453
                            -274 690 -428 280 -182 455 -289 503 -308 40 -16 99 -42 130 -58 51 -26 330
                            -232 464 -343 l46 -38 90 123 c120 167 152 250 153 410 1 62 4 155 8 207 l6
                            94 77 46 c42 25 79 47 82 50 6 7 81 737 91 881 l6 97 -184 129 -183 130 -655
                            5 c-360 3 -697 1 -749 -4z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M6236 3946 c12 -8 267 -173 568 -365 l547 -351 89 51 89 50 -50 77
                            c-27 42 -79 112 -114 154 l-65 77 0 155 0 156 -247 0 c-137 0 -381 3 -543 6
                            -269 6 -293 5 -274 -10z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M7542 3943 l-223 -3 3 -155 3 -154 32 -28 c17 -15 70 -81 118 -146
                            80 -110 87 -117 108 -106 40 22 432 260 440 268 4 4 5 80 1 169 l-7 162 -126
                            -2 c-69 -2 -226 -4 -349 -5z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M8061 3853 c1 -54 4 -125 8 -159 l6 -61 279 151 278 151 -113 6 c-63
                            4 -192 7 -286 8 l-173 1 1 -97z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M13612 3878 c-111 -182 -428 -1201 -952 -3057 -72 -255 -129 -465
                            -127 -467 1 -2 112 337 245 754 133 416 386 1207 562 1757 176 550 319 1009
                            318 1019 -5 32 -24 29 -46 -6z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M6546 3668 c-9 -55 -77 -909 -74 -923 2 -9 41 9 118 53 243 138 446
                            261 464 281 19 21 19 22 -6 49 -59 63 -80 165 -49 240 8 18 12 34 10 36 -5 4
                            -427 278 -446 289 -8 5 -14 -3 -17 -25z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M7710 3357 c-282 -150 -544 -294 -580 -317 -12 -8 -8 -17 26 -52 64
                            -66 67 -78 59 -189 l-6 -97 28 -6 c60 -12 445 -57 590 -68 118 -9 156 -9 165
                            0 12 12 31 586 26 789 l-3 102 -305 -162z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M7026 3364 c-3 -9 -6 -45 -6 -81 0 -76 19 -124 63 -155 l30 -22 71
                            37 c76 40 112 64 105 71 -2 2 -61 40 -131 84 -99 63 -128 77 -132 66z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M13395 2563 c-444 -1355 -730 -2241 -821 -2545 -5 -17 25 -18 540
                            -18 l546 0 0 1675 c0 921 -1 1675 -3 1675 -2 0 -120 -354 -262 -787z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M6750 2824 l-335 -182 -3 -41 c-4 -47 0 -49 46 -21 18 11 88 30 161
                            44 98 18 143 31 185 55 80 46 292 280 284 314 -2 9 -108 -44 -338 -169z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M7067 2912 c-52 -92 -152 -191 -246 -245 -67 -39 -91 -47 -205 -65
                            -154 -26 -196 -47 -196 -97 0 -18 3 -47 6 -65 l7 -32 86 6 c47 3 150 8 227 12
                            l142 6 4 65 c3 54 8 68 29 84 34 28 124 73 197 99 34 12 62 25 62 29 0 3 7 49
                            15 101 l15 95 -43 37 c-23 21 -46 38 -52 38 -5 0 -27 -31 -48 -68z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M7048 2619 c-96 -38 -128 -71 -128 -135 0 -64 19 -135 44 -162 11
                            -13 116 -97 231 -185 116 -89 277 -215 359 -279 82 -65 151 -116 152 -115 2 2
                            19 75 38 163 52 238 61 262 115 316 36 36 57 49 89 54 l42 7 0 153 0 154 -145
                            0 c-79 0 -154 4 -167 10 -21 9 -457 50 -523 50 -17 -1 -65 -14 -107 -31z"/>
                            <path ondblclick="ocultarCuadroTexto()" d="M6347 2480 c-3 -14 -9 -99 -12 -190 l-7 -165 -49 -116 c-40 -93 -65
                            -135 -125 -207 -41 -50 -74 -95 -74 -99 0 -5 78 -78 172 -163 95 -85 381 -345
                            635 -577 255 -233 465 -423 468 -423 3 0 5 38 5 84 0 65 4 88 18 107 39 50
                            113 261 206 581 40 139 106 388 106 402 0 3 -107 85 -237 183 -131 98 -281
                            212 -333 253 -119 94 -129 101 -220 140 l-75 32 -145 -11 c-80 -7 -181 -16
                            -224 -21 -44 -6 -81 -8 -83 -6 -3 2 -8 53 -12 113 -4 64 -10 98 -14 83z"/>
                        </g>
    
    
                        <g tabindex="6" aria-label="Estas en la capa de los edificios" class="edificios" transform="translate(0.000000,768.000000) scale(0.100000,-0.100000)"
                            fill="#b5e8c3" stroke="none">
                            <path onclick="mostrarCuadroTexto('Aula amplia 2', ['Images/ImagenesCUT/Aulas Amplias.jpg'], '', false)" ondblclick="ocultarCuadroTexto()" d="M4600 4929 l0 -31 -160 7 -160 7 0 -112 0 -112 368 7 c202 4 370 9
                            375 12 4 2 7 49 7 104 l0 99 -32 0 c-18 0 -80 -7 -138 -15 -162 -22 -160 -22
                            -160 25 l0 40 -50 0 c-49 0 -50 0 -50 -31z"/>
                            <path onclick="mostrarCuadroTexto('Cine al aire libre', ['https://thehappening.com/wp-content/uploads/2020/06/cine-al-aire-libre-en-casa.jpg'], '', false)" ondblclick="ocultarCuadroTexto()" d="M5040 4670 l0 -29 -102 -3 -103 -3 -3 -107 -3 -108 39 0 c22 0 67 -3
                            101 -6 l61 -7 0 -33 0 -34 60 0 60 0 0 30 c0 30 1 30 55 30 l55 0 0 109 c0 60
                            -3 116 -6 125 -4 12 -20 16 -55 16 -46 0 -49 2 -49 25 0 24 -3 25 -55 25 -54
                            0 -55 0 -55 -30z"/>
                            <path onclick="mostrarCuadroTexto('Aula amplia 3', ['Images/ImagenesCUT/Aula amplia 3.png'], '', false)" ondblclick="ocultarCuadroTexto()" d="M4103 4623 c-9 -3 -13 -31 -13 -89 l0 -84 35 0 35 0 0 -80 0 -80 50
                            0 50 0 0 78 0 77 275 -3 275 -3 0 96 0 95 -347 -1 c-192 0 -354 -3 -360 -6z"/>
                            <path onclick="mostrarCuadroTexto('Centro de Posgrado de Investigacion', ['Images/ImagenesCUT/Centro de Posgrado de Investigacion.jpg'], '', false)" ondblclick="ocultarCuadroTexto()" d="M9733 3433 c-53 -18 -137 -93 -166 -147 -18 -34 -22 -57 -22 -141 0
                            -84 4 -107 22 -141 30 -56 113 -129 170 -148 60 -20 166 -20 226 0 57 19 129
                            81 165 142 25 43 27 56 27 147 0 91 -2 104 -27 147 -36 61 -108 123 -165 142
                            -58 20 -174 19 -230 -1z"/>
                            <path onclick="mostrarCuadroTexto('Area para estacionarse', ['Images/ImagenesCUT/Estacionamiento.png'], '', false)" ondblclick="ocultarCuadroTexto()" d="M3776 6839 c-3 -79 -9 -188 -12 -241 l-6 -98 43 0 c24 0 222 -5 439
                            -10 833 -21 1847 -40 2133 -40 l297 0 0 148 c0 82 3 196 6 254 l7 106 -834 6
                            c-459 3 -1111 9 -1450 12 l-617 6 -6 -143z"/>
                            <path onclick="mostrarCuadroTexto('Parada 644 y 615', ['Images/ImagenesCUT/Parada644y615.png'], '', false)" ondblclick="ocultarCuadroTexto()" d="M7250 6885 l0 -35 205 0 205 0 0 35 0 35 -205 0 -205 0 0 -35z"/>
                            <path onclick="mostrarCuadroTexto('Taller', ['Images/ImagenesCUT/Cargando.jpeg'], '', false)" ondblclick="ocultarCuadroTexto()" d="M6740 6676 c0 -145 3 -197 13 -203 24 -15 417 4 434 21 2 2 1 87 -3
                            190 l-7 186 -219 0 -218 0 0 -194z"/>
                            <path onclick="mostrarCuadroTexto('Estacionamiento Cutonala', ['Images/ImagenesCUT/Estacionamiento_grande.png'], '', false)" ondblclick="ocultarCuadroTexto()" d="M7421 6741 c-177 -105 -171 -99 -171 -187 l0 -72 83 -6 c45 -3 213
                            -11 372 -16 160 -6 414 -17 565 -25 l275 -15 111 -55 c230 -112 436 -273 487
                            -378 14 -28 40 -92 57 -142 62 -177 227 -496 353 -684 38 -57 73 -99 77 -95
                            12 12 199 629 206 679 4 22 18 80 31 129 37 132 27 190 -55 299 -63 83 -130
                            124 -349 213 -202 82 -291 129 -603 317 l-165 100 -280 3 c-154 2 -411 6 -571
                            8 l-292 4 -131 -77z"/>
                            <path onclick="mostrarCuadroTexto('Estacionamiento', ['Images/ImagenesCUT/Estacionamiento.png'], '', false)" ondblclick="ocultarCuadroTexto()" d="M5480 6322 l0 -40 328 -6 c180 -3 443 -9 585 -12 l257 -6 0 40 0 40
                            -357 6 c-197 3 -460 9 -585 12 l-228 6 0 -40z"/>
                            <path onclick="mostrarCuadroTexto('Canchas de Basquetball', ['Images/ImagenesCUT/Canchas_uso_multiple.png'], '', false)" ondblclick="ocultarCuadroTexto()" d="M2916 6123 c-4 -70 -9 -163 -12 -205 l-6 -78 129 0 c72 0 239 -3 372
                            -7 l242 -6 -7 204 c-4 112 -7 205 -8 205 0 1 -159 5 -352 8 l-352 7 -6 -128z"/>
                            <path onclick="mostrarCuadroTexto('Centro Global de Idiomas', ['Images/ImagenesCUT/Cargando.jpeg'], '', false)" ondblclick="ocultarCuadroTexto()" d="M5576 6177 c6 -58 5 -67 -10 -67 -13 0 -16 -10 -16 -50 0 -46 2 -50
                            28 -56 15 -4 83 -22 152 -40 69 -17 126 -31 126 -30 1 0 4 22 8 47 l7 47 -53
                            12 c-133 30 -128 27 -128 65 l0 35 70 0 70 0 0 45 0 45 -47 0 c-27 0 -85 3
                            -131 7 l-83 6 7 -66z"/>
                            <path onclick="mostrarCuadroTexto('Edificio H', ['Images/ImagenesCUT/Cargando.jpeg'], '', false)" ondblclick="ocultarCuadroTexto()" d="M7350 6145 l0 -75 173 0 c96 0 323 -3 505 -7 l332 -6 0 26 c0 24 -4
                            27 -35 27 l-35 0 0 55 0 55 -470 0 -470 0 0 -75z"/>
                            <path onclick="mostrarCuadroTexto('Canchas de Futbol ', ['Images/ImagenesCUT/Canchas_futbol.png'], '', false)" ondblclick="ocultarCuadroTexto()" d="M3810 5750 l0 -400 265 0 265 0 0 65 0 65 105 0 105 0 0 245 0 245
                            -100 0 -100 0 0 90 0 90 -270 0 -270 0 0 -400z"/>
                            <path onclick="mostrarCuadroTexto('Edificio F', ['Images/ImagenesCUT/EdificioF.png'], '', false)" ondblclick="ocultarCuadroTexto()" d="M7590 5935 c0 -70 -4 -115 -10 -115 -5 0 -10 -13 -10 -30 l0 -30 405
                            0 405 0 0 90 0 90 -127 0 c-71 0 -226 3 -345 7 l-218 6 0 49 0 48 -50 0 -50 0
                            0 -115z"/>
                            <path onclick="mostrarCuadroTexto('Canchas de Voleiball', ['Images/ImagenesCUT/Canchas.png'], '', false)" ondblclick="ocultarCuadroTexto()" d="M3300 5697 c0 -57 -3 -172 -7 -255 l-6 -152 136 0 137 0 0 255 0 255
                            -130 0 -130 0 0 -103z"/>
                            <path onclick="mostrarCuadroTexto('Edificio I', ['Images/ImagenesCUT/EdificioI.png'], '', false)" ondblclick="ocultarCuadroTexto()" d="M8246 5695 l7 -55 -452 0 -451 0 0 -75 0 -75 158 0 c86 0 316 -3 510
                            -7 l352 -6 0 36 c0 33 -3 37 -25 37 l-25 0 0 100 0 100 -40 0 -40 0 6 -55z"/>
                            <path onclick="mostrarCuadroTexto('Edificio de Tutorias',['Images/ImagenesCUT/ECristal.png'], '', false)" ondblclick="ocultarCuadroTexto()" d="M6260 5475 l0 -205 180 0 180 0 0 205 0 205 -180 0 -180 0 0 -205z"/>
    
                            <path onclick="mostrarCuadroTexto('Coordinación de Investigacion Posgrado',['Images/ImagenesCUT/Investigacion.png'],'', false)" ondblclick="ocultarCuadroTexto()" d="M5520 5410 l0 -210 265 0 265 0 0 83 c0 45 3 139 7 210 l6 127 -271 0 -272 0 0 -210z"/>
                            <path onclick="mostrarCuadroTexto('Edificio J', ['Images/ImagenesCUT/Edificio J.png'], '', false)" ondblclick="ocultarCuadroTexto()" d="M7590 5385 c0 -78 -3 -95 -15 -95 -10 0 -15 -10 -15 -30 0 -19 5 -30
                            14 -30 8 0 16 -4 18 -9 2 -4 175 -11 386 -15 l382 -8 0 71 c0 69 -1 71 -25 71
                            -24 0 -25 2 -25 65 l0 65 -30 0 -30 0 0 -60 0 -60 -290 0 -290 0 0 65 0 65
                            -40 0 -40 0 0 -95z"/>
                            <path onclick="mostrarCuadroTexto('Canchas de Voleiball', ['Images/ImagenesCUT/Canchas.png'], '', false)" ondblclick="ocultarCuadroTexto()" d="M3293 5053 c4 -91 7 -219 7 -285 l0 -118 137 0 136 0 -6 167 c-4 91
                            -7 219 -7 285 l0 118 -137 0 -136 0 6 -167z"/>
                            <path onclick="mostrarCuadroTexto('Sala de Juicios Orales', ['Images/ImagenesCUT/Cargando.jpeg'], '', false)" ondblclick="ocultarCuadroTexto()" d="M3810 4785 l0 -185 119 0 120 0 3 53 3 52 93 3 92 3 0 33 c0 18 -3
                            61 -6 95 l-7 61 -88 0 -89 0 0 35 0 35 -120 0 -120 0 0 -185z"/>
                            <path onclick="mostrarCuadroTexto('Coordinacion', ['Images/ImagenesCUT/Salones_nutricion.png'], '', false)" ondblclick="ocultarCuadroTexto()" d="M6420 4915 l0 -45 315 0 315 0 0 45 0 45 -315 0 -315 0 0 -45z"/>
                            <path onclick="mostrarCuadroTexto('Edificio E', ['Images/ImagenesCUT/Edificio E.png'], '', false)" ondblclick="ocultarCuadroTexto()" d="M8450 4891 c0 -15 -18 -25 -87 -48 -88 -30 -88 -30 -91 -66 -4 -45 0
                            -45 98 -12 86 29 80 29 80 11 0 -11 48 -15 278 -18 l277 -3 71 -37 c101 -52
                            204 -116 236 -146 l28 -26 25 24 c31 30 31 37 -2 72 l-27 28 22 23 c12 13 22
                            28 22 34 0 12 -94 75 -169 112 -24 13 -87 34 -139 47 -88 22 -113 24 -358 24
                            -254 0 -264 -1 -264 -19z"/>
                            <path onclick="mostrarCuadroTexto('Edificio D', ['Images/ImagenesCUT/Edificio D.png'], '', false)" ondblclick="ocultarCuadroTexto()" d="M7350 4796 l0 -74 188 -6 c103 -3 233 -9 290 -12 l102 -6 0 -69 0
                            -69 65 0 65 0 0 70 0 70 100 -6 100 -7 0 91 0 92 -455 0 -455 0 0 -74z"/>
                            <path onclick="mostrarCuadroTexto('Biblioteca', ['Images/ImagenesCUT/Biblioteca.png'], '', false)" ondblclick="ocultarCuadroTexto()" d="M5500 4563 l0 -290 321 -7 c176 -4 322 -6 323 -4 2 1 6 135 10 296
                            l7 292 -115 0 -116 0 0 -75 c0 -68 -2 -75 -20 -75 -18 0 -20 7 -20 70 l0 70
                            -100 0 -100 0 0 -70 c0 -69 0 -70 -26 -70 l-27 0 7 70 7 70 -29 0 c-16 0 -50
                            3 -76 6 l-46 7 0 -290z"/>
                            <path onclick="mostrarCuadroTexto('Laboratorio de Nutricion', ['Images/ImagenesCUT/LBN.png'], '', false)" ondblclick="ocultarCuadroTexto()" d="M6610 4395 l0 -285 222 0 221 0 -6 167 c-4 91 -7 219 -7 285 l0 118
                            -215 0 -215 0 0 -285z"/>
                            <path onclick="mostrarCuadroTexto('Edificio C', ['Images/ImagenesCUT/Edificio C.jpg'], '', false)" ondblclick="ocultarCuadroTexto()" d="M7930 4535 c0 -8 -4 -15 -10 -15 -5 0 -10 -11 -10 -25 0 -14 5 -25
                            10 -25 6 0 10 -37 10 -90 l0 -90 70 0 70 0 0 56 0 56 228 -6 c513 -14 572 -17
                            572 -32 0 -10 14 -14 50 -14 l50 0 0 39 c0 37 -1 39 -40 45 l-40 6 0 55 0 55
                            -480 0 c-420 0 -480 -2 -480 -15z"/>
                            <path onclick="mostrarCuadroTexto('El Maya', ['Images/ImagenesCUT/El maya.jpg'], '', false)" ondblclick="ocultarCuadroTexto()" d="M6470 4396 l0 -143 31 -7 c17 -3 47 -6 65 -6 l34 0 0 150 0 150 -65
                            0 -65 0 0 -144z"/>
                            <path onclick="mostrarCuadroTexto('Edificio B', ['Images/ImagenesCUT/Edificio B.jpg'], '', false)" ondblclick="ocultarCuadroTexto()" d="M7330 4358 l0 -81 197 6 c108 4 240 7 295 7 l98 0 0 75 0 75 -295 0
                            -295 0 0 -82z"/>
                            <path onclick="mostrarCuadroTexto('Edificio A', ['Images/ImagenesCUT/Edificio A.png'], '', false)" ondblclick="ocultarCuadroTexto()" d="M8080 4327 c0 -45 -1 -47 -27 -47 -25 0 -18 -9 75 -103 56 -57 100
                            -106 97 -109 -13 -12 123 -38 201 -38 51 0 335 70 381 94 l22 11 -24 53 c-20
                            43 -28 52 -43 48 -61 -20 -294 -66 -332 -66 -82 0 -158 18 -195 46 -31 23 -35
                            32 -35 70 0 46 -2 48 -35 34 -15 -6 -28 -1 -52 23 l-33 31 0 -47z"/>
                            <path onclick="mostrarCuadroTexto('La Isla', ['Images/ImagenesCUT/La Isla.jpg'], '', false)" ondblclick="ocultarCuadroTexto()" d="M6720 3870 l0 -70 270 0 270 0 0 70 0 70 -270 0 -270 0 0 -70z"/>
                            <path onclick="mostrarCuadroTexto('CRECE', ['Images/ImagenesCUT/CRECE.jpg'], '', false)" ondblclick="ocultarCuadroTexto()" d="M3550 3855 l0 -55 -75 0 -75 0 0 -62 c0 -35 -3 -100 -7 -145 l-6 -83
                            297 0 296 0 0 145 0 145 -135 0 -135 0 0 55 0 55 -80 0 -80 0 0 -55z"/>
                            <path onclick="mostrarCuadroTexto('Control Escolar', ['Images/ImagenesCUT/ControlEscolar.png'], '', false)" ondblclick="ocultarCuadroTexto()" d="M4320 3780 l0 -30 -95 0 -95 0 0 -150 0 -150 207 0 206 0 -6 107 c-4
                            58 -7 139 -7 180 l0 73 -105 0 -105 0 0 -30z"/>
                            <path onclick="mostrarCuadroTexto('Instituto de Energias Renovables', ['Images/ImagenesCUT/Instituto de energias renovables.png'], '', false)" ondblclick="ocultarCuadroTexto()" d="M5100 3764 l0 -37 -155 7 -155 7 0 -70 0 -71 -30 0 -30 0 0 -285 0
                            -285 225 0 225 0 0 158 c0 87 3 261 7 385 l6 227 -46 0 -47 0 0 -36z"/>
                            <path onclick="mostrarCuadroTexto('Panel Solar', ['Images/ImagenesCUT/Panel Solar.jpg'], '', false)" ondblclick="ocultarCuadroTexto()" d="M5310 3243 l0 -156 278 6 c152 4 343 7 424 7 l148 0 -86 110 -86 110
                            -114 0 -114 0 0 40 0 40 -225 0 -225 0 0 -157z"/>
                            <path onclick="mostrarCuadroTexto('Fuente', ['Images/ImagenesCUT/Fuente.png'], '', false)" ondblclick="ocultarCuadroTexto()" d="M6672 3374 c-19 -10 -53 -36 -77 -58 l-43 -41 -7 -176 -6 -176 36
                            -21 35 -21 161 88 c89 49 166 96 172 106 5 10 12 57 14 104 4 73 1 91 -15 117
                            -43 68 -201 113 -270 78z"/>
                            <path onclick="mostrarCuadroTexto('Edificio', ['Images/ImagenesCUT/Cargando.jpeg'], '', false)" ondblclick="ocultarCuadroTexto()" d="M4233 3110 c-24 -11 -43 -21 -43 -24 0 -3 54 -46 120 -96 116 -88
                            120 -90 120 -63 0 15 3 44 6 64 6 36 6 36 -75 87 -45 29 -83 52 -84 51 -1 0
                            -21 -9 -44 -19z"/>
                            <path onclick="mostrarCuadroTexto('Panel Solar', ['Images/ImagenesCUT/Panel Solar.jpg'], '', false)" ondblclick="ocultarCuadroTexto()" d="M5310 2891 l0 -111 33 0 c17 0 225 -7 461 -15 236 -8 430 -14 431
                            -12 1 1 5 52 9 113 l7 112 -273 6 c-150 3 -362 9 -470 12 l-198 6 0 -111z"/>
                            <path onclick="mostrarCuadroTexto('Laboratorio de Evaluación y Cuidado del Estado Nutricio', ['Images/ImagenesCUT/LECEN.jpg'], '', false)" ondblclick="ocultarCuadroTexto()" d="M7246 2958 c-16 -50 -46 -302 -38 -307 6 -3 168 -26 361 -50 l351
                            -43 298 57 c163 32 301 61 306 65 4 5 -5 70 -21 147 l-29 138 -612 3 c-485 2
                            -613 0 -616 -10z"/>
                            <path onclick="mostrarCuadroTexto('Edificio', ['Images/ImagenesCUT/Cargando.jpeg'], '', false)" ondblclick="ocultarCuadroTexto()" d="M5030 2870 l0 -30 70 0 70 0 0 30 0 30 -70 0 -70 0 0 -30z"/>
                            <path onclick="mostrarCuadroTexto('Edificio', ['Images/ImagenesCUT/Cargando.jpeg'], '', false)" ondblclick="ocultarCuadroTexto()" d="M5070 2743 c0 -21 -3 -48 -6 -60 -6 -22 -4 -23 50 -23 51 0 56 2 56
                            23 0 12 3 39 6 60 l7 37 -57 0 -56 0 0 -37z"/>
                            <path onclick="mostrarCuadroTexto('Panel Solar', ['Images/ImagenesCUT/Panel Solar.jpg'], '', false)" ondblclick="ocultarCuadroTexto()" d="M5294 2579 c3 -19 16 -42 29 -53 29 -24 188 -103 302 -150 95 -39
                            128 -64 242 -189 l62 -67 106 0 c77 0 105 3 105 13 0 8 27 317 40 453 0 1
                            -116 4 -257 8 -142 3 -343 9 -447 12 l-189 6 7 -33z"/>
                            <path onclick="mostrarCuadroTexto('Edificio de Artesanias', ['Images/ImagenesCUT/Edificio de Artesanias.jpg'], '', false)" ondblclick="ocultarCuadroTexto()" d="M6496 2249 c-4 -94 -6 -173 -4 -174 2 -1 108 -6 236 -10 l232 -7 0
                            90 0 89 53 7 c28 3 67 6 86 6 30 0 33 2 27 23 -3 12 -6 28 -6 35 0 7 -13 12
                            -34 12 -18 0 -54 3 -80 6 l-46 7 0 43 0 44 -228 0 -229 0 -7 -171z"/>
                            
                            <path onclick="mostrarCuadroTexto('Parada C-98', ['Images/ImagenesCUT/ParadaC98.png'],'',false)" ondblclick="ocultarCuadroTexto()" d="M12895 3471 c-115 -48 -208 -90 -206 -93 2 -3 61 -64 132 -136 l128
                            -130 50 127 c27 69 63 162 79 206 17 44 33 88 37 98 4 9 3 17 -1 16 -5 -1
                            -103 -40 -219 -88z"/>
    
                            <path onclick="mostrarCuadroTexto('Estacionamiento de Motocicletas', ['Images/ImagenesCUT/Cargando.jpeg'],'',false)" ondblclick="ocultarCuadroTexto()" d="M10047 4696 c-42 -28 -78 -55 -78 -59 -1 -5 33 -64 75 -133 l77 -124 89 60 90 60 -77 113 c-42 61 -81 117 -87 123 -8 9 -31 -2 -89 -40z"/>
                            <path onclick="mostrarCuadroTexto('Huerto Comunitario', ['Images/ImagenesCUT/Huerto.png'],'',false)" ondblclick="ocultarCuadroTexto()" d="M3220 4405 l0 -155 120 0 120 0 0 155 0 155 -120 0 -120 0 0 -155z"/>
                        </g>
                        
                        <g tabindex="7" aria-label="Estas en la capa de los botes"  class="Botes" transform="translate(0.000000,768.000000) scale(0.100000,-0.100000)"
                            fill="#ee9b57" stroke="none" onclick="mostrarCuadroTexto('Botes de Reciclaje', [img_papel, img_inorganicos, img_organicos,img_plasticos],'Puedes reciclar este tipo de residuos', true), grafica(['Papel', 'Inorganicos', 'Organicos','Plasticos'])" ondblclick="ocultarCuadroTexto()" >
                            <path class="point" d="M7053 6375 c-21 -23 -15 -72 15 -114 15 -22 32 -40 37 -40 6 0 22 18
                            38 40 30 43 35 92 13 115 -19 18 -87 18 -103 -1z"/>
                        </g>
                        <g tabindex="7" aria-label="Estas en la capa de los botes"  class="Botes" transform="translate(0.000000,768.000000) scale(0.100000,-0.100000)"
                            fill="#ee9b57" stroke="none" onclick="mostrarCuadroTexto('Bote para Reciclaje',[img_papel, img_vidrio, img_plasticos, img_dificil_reclaje],'Puedes reciclar este tipo de residuos', true), grafica(['Papel', 'Vidrio', 'Plasticos', 'Dificil Reciclaje'])" ondblclick="ocultarCuadroTexto()" >
                            <path class="point" d="M5753 6285 c-21 -23 -15 -72 15 -114 15 -22 32 -40 37 -40 6 0 22 18
                            38 40 30 43 35 92 13 115 -19 18 -87 18 -103 -1z"/>
                        </g>
                        <g tabindex="7" aria-label="Estas en la capa de los botes"  class="Botes" transform="translate(0.000000,768.000000) scale(0.100000,-0.100000)"
                            fill="#ee9b57" stroke="none" onclick="mostrarCuadroTexto('Bote para Reciclaje',[img_plasticos, img_vidrio, img_metal, img_dificil_reclaje],'Puedes reciclar este tipo de residuos', true), grafica(['Plasticos','Vidrio', 'Metal', 'Dificil Reciclaje'])" ondblclick="ocultarCuadroTexto()" >
                            <path class="point" d="M7563 5715 c-21 -23 -15 -72 15 -114 15 -22 32 -40 37 -40 6 0 22 18
                            38 40 30 43 35 92 13 115 -19 18 -87 18 -103 -1z"/>
                        </g>
                        <g tabindex="7" aria-label="Estas en la capa de los botes"  class="Botes" transform="translate(0.000000,768.000000) scale(0.100000,-0.100000)"
                            fill="#ee9b57" stroke="none" onclick="mostrarCuadroTexto('Bote para Reciclaje',[img_papel, img_metal, img_vidrio, img_plasticos, img_dificil_reclaje],'Puedes reciclar este tipo de residuos', true), grafica(['Papel', 'Metal', 'Vidrio', 'Plasticos', 'Dificil Reciclaje'])" ondblclick="ocultarCuadroTexto()" >
                            <path class="point" d="M6993 5305 c-21 -23 -15 -72 15 -114 15 -22 32 -40 37 -40 6 0 22 18
                            38 40 30 43 35 92 13 115 -19 18 -87 18 -103 -1z"/>
                        </g>
                        <g tabindex="7" aria-label="Estas en la capa de los botes"  class="Botes" transform="translate(0.000000,768.000000) scale(0.100000,-0.100000)"
                            fill="#ee9b57" stroke="none" onclick="mostrarCuadroTexto('Bote para Reciclaje',[img_papel,img_organicos, img_plasticos, img_dificil_reclaje],'Puedes reciclar este tipo de residuos', true), grafica(['Papel','Organicos', 'Plasticos', 'Dificil Reciclaje'])" ondblclick="ocultarCuadroTexto()" >
                            <path class="point" d="M3693 5265 c-21 -23 -15 -72 15 -114 15 -22 32 -40 37 -40 6 0 22 18
                            38 40 30 43 35 92 13 115 -19 18 -87 18 -103 -1z"/>
                        </g>
                        <g tabindex="7" aria-label="Estas en la capa de los botes"  class="Botes" transform="translate(0.000000,768.000000) scale(0.100000,-0.100000)"
                            fill="#ee9b57" stroke="none" onclick="mostrarCuadroTexto('Bote para Reciclaje',[img_plasticos,img_dificil_reclaje],'Puedes reciclar este tipo de residuos', true), grafica(['Plasticos','Dificil Reciclaje'])" ondblclick="ocultarCuadroTexto()" >
                            <path class="point" d="M6193 5265 c-21 -23 -15 -72 15 -114 15 -22 32 -40 37 -40 6 0 22 18
                            38 40 30 43 35 92 13 115 -19 18 -87 18 -103 -1z"/>
                        </g>
                        <g tabindex="7" aria-label="Estas en la capa de los botes"  class="Botes" transform="translate(0.000000,768.000000) scale(0.100000,-0.100000)"
                            fill="#ee9b57" stroke="none" onclick="mostrarCuadroTexto('Bote para Reciclaje',[img_papel, img_metal],'Puedes reciclar este tipo de residuos', true), grafica(['Papel', 'Metal'])" ondblclick="ocultarCuadroTexto()" >
                            <path class="point" d="M6553 5265 c-21 -23 -15 -72 15 -114 15 -22 32 -40 37 -40 6 0 22 18
                            38 40 30 43 35 92 13 115 -19 18 -87 18 -103 -1z"/>
                        </g>
                        <g tabindex="7" aria-label="Estas en la capa de los botes"  class="Botes" transform="translate(0.000000,768.000000) scale(0.100000,-0.100000)"
                            fill="#ee9b57" stroke="none" onclick="mostrarCuadroTexto('Bote para Reciclaje',[img_plasticos, img_vidrio, img_metal, img_dificil_reclaje],'Puedes reciclar este tipo de residuos', true), grafica(['Plasticos', 'Vidrio', 'Metal', 'Dificil Reciclaje'])" ondblclick="ocultarCuadroTexto()" >
                            <path class="point" d="M8903 5215 c-21 -23 -15 -72 15 -114 15 -22 32 -40 37 -40 6 0 22 18
                            38 40 30 43 35 92 13 115 -19 18 -87 18 -103 -1z"/>
                        </g>
                        <g tabindex="7" aria-label="Estas en la capa de los botes"  class="Botes" transform="translate(0.000000,768.000000) scale(0.100000,-0.100000)"
                            fill="#ee9b57" stroke="none" onclick="mostrarCuadroTexto('Bote para Reciclaje',[img_metal, img_vidrio, img_plasticos, img_dificil_reclaje],'Puedes reciclar este tipo de residuos', true), grafica(['Metal', 'Vidrio', 'Plasticos', 'Dificil Reciclaje'])" ondblclick="ocultarCuadroTexto()" >
                            <path class="point" d="M4033 5095 c-21 -23 -15 -72 15 -114 15 -22 32 -40 37 -40 6 0 22 18
                            38 40 30 43 35 92 13 115 -19 18 -87 18 -103 -1z"/>
                        </g>
                        <g tabindex="7" aria-label="Estas en la capa de los botes"  class="Botes" transform="translate(0.000000,768.000000) scale(0.100000,-0.100000)"
                            fill="#ee9b57" stroke="none" onclick="mostrarCuadroTexto('Bote para Reciclaje',[img_plasticos, img_metal, img_vidrio, img_dificil_reclaje],'Puedes reciclar este tipo de residuos', true), grafica(['Plasticos', 'Metal', 'Vidrio', 'Dificil Reciclaje'])" ondblclick="ocultarCuadroTexto()">
                            <path class="point" d="M9423 4565 c-21 -23 -15 -72 15 -114 15 -22 32 -40 37 -40 6 0 22 18
                            38 40 30 43 35 92 13 115 -19 18 -87 18 -103 -1z"/>
                        </g>
                        <g tabindex="7" aria-label="Estas en la capa de los botes"  class="Botes" transform="translate(0.000000,768.000000) scale(0.100000,-0.100000)"
                            fill="#ee9b57" stroke="none" onclick="mostrarCuadroTexto('Bote para Reciclaje',[img_metal, img_vidrio, img_plasticos, img_dificil_reclaje],'Puedes reciclar este tipo de residuos', true), grafica(['Metal', 'Vidrio', 'Plasticos', 'Dificil Reciclaje'])" ondblclick="ocultarCuadroTexto()" >
                            <path class="point" d="M7123 4485 c-21 -23 -15 -72 15 -114 15 -22 32 -40 37 -40 6 0 22 18
                            38 40 30 43 35 92 13 115 -19 18 -87 18 -103 -1z"/>
                        </g>
                        <g tabindex="7" aria-label="Estas en la capa de los botes"  class="Botes" transform="translate(0.000000,768.000000) scale(0.100000,-0.100000)"
                            fill="#ee9b57" stroke="none" onclick="mostrarCuadroTexto('Bote para Reciclaje',[img_metal, img_vidrio, img_plasticos,img_dificil_reclaje],'Puedes reciclar este tipo de residuos', true), grafica(['Metal', 'Vidrio', 'Plasticos', 'Dificil Reciclaje'])" ondblclick="ocultarCuadroTexto()" >
                            <path class="point" d="M7913 4265 c-21 -23 -15 -72 15 -114 15 -22 32 -40 37 -40 6 0 22 18
                            38 40 30 43 35 92 13 115 -19 18 -87 18 -103 -1z"/>
                        </g>
                        <g tabindex="7" aria-label="Estas en la capa de los botes"  class="Botes" transform="translate(0.000000,768.000000) scale(0.100000,-0.100000)"
                            fill="#ee9b57" stroke="none" onclick="mostrarCuadroTexto('Bote para Reciclaje',[img_plasticos, img_vidrio, img_metal, img_organicos, img_papel, img_dificil_reclaje],'Puedes reciclar este tipo de residuos', true), grafica(['Plasticos', 'Vidrio', 'Metal','Organicos','Papel', 'Dificil Reciclaje'])" ondblclick="ocultarCuadroTexto()" >
                            <path class="point" d="M6803 4215 c-21 -23 -15 -72 15 -114 15 -22 32 -40 37 -40 6 0 22 18
                            38 40 30 43 35 92 13 115 -19 18 -87 18 -103 -1z"/>
                        </g>
                        <g tabindex="7" aria-label="Estas en la capa de los botes"  class="Botes" transform="translate(0.000000,768.000000) scale(0.100000,-0.100000)"
                            fill="#ee9b57" stroke="none" onclick="mostrarCuadroTexto('Bote para Reciclaje',[img_papel, img_organicos, img_metal, img_vidrio, img_plasticos, img_dificil_reclaje],'Puedes reciclar este tipo de residuos', true), grafica(['Papel', 'Organicos', 'Metal', 'Vidrio', 'Plasticos', 'Dificil Reciclaje'])" ondblclick="ocultarCuadroTexto()" >
                            <path class="point" d="M7503 4135 c-21 -23 -15 -72 15 -114 15 -22 32 -40 37 -40 6 0 22 18
                            38 40 30 43 35 92 13 115 -19 18 -87 18 -103 -1z"/>
                        </g>
                        <g tabindex="7" aria-label="Estas en la capa de los botes"  class="Botes" transform="translate(0.000000,768.000000) scale(0.100000,-0.100000)"
                            fill="#ee9b57" stroke="none" onclick="mostrarCuadroTexto('Bote para Reciclaje',[img_metal, img_vidrio, img_plasticos, img_dificil_reclaje],'Puedes reciclar este tipo de residuos', true), grafica(['Metal', 'Vidrio', 'Plasticos', 'Dificil Reciclaje'])" ondblclick="ocultarCuadroTexto()" >
                            <path class="point" d="M5313 4095 c-21 -23 -15 -72 15 -114 15 -22 32 -40 37 -40 6 0 22 18
                            38 40 30 43 35 92 13 115 -19 18 -87 18 -103 -1z"/>
                        </g>
                        <g tabindex="7" aria-label="Estas en la capa de los botes"  class="Botes" transform="translate(0.000000,768.000000) scale(0.100000,-0.100000)"
                           fill="#ee9b57" stroke="none" onclick="mostrarCuadroTexto('Bote para Reciclaje',[img_papel, img_organicos, img_plasticos, img_dificil_reclaje],'Puedes reciclar este tipo de residuos', true), grafica(['Papel', 'Organicos', 'Plasticos', 'Dificil Reciclaje'])" ondblclick="ocultarCuadroTexto()" >
                            <path class="point" d="M6323 4095 c-21 -23 -15 -72 15 -114 15 -22 32 -40 37 -40 6 0 22 18
                            38 40 30 43 35 92 13 115 -19 18 -87 18 -103 -1z"/>
                        </g>
                        <g tabindex="7" aria-label="Estas en la capa de los botes"  class="Botes" transform="translate(0.000000,768.000000) scale(0.100000,-0.100000)"
                            fill="#ee9b57" stroke="none" onclick="mostrarCuadroTexto('Bote para Reciclaje',[img_metal, img_plasticos, img_vidrio, img_dificil_reclaje],'Puedes reciclar este tipo de residuos', true), grafica(['Metal', 'Plasticos', 'Vidrio', 'Dificil Reciclaje'])" ondblclick="ocultarCuadroTexto()" >
                            <path class="point" d="M3483 4005 c-21 -23 -15 -72 15 -114 15 -22 32 -40 37 -40 6 0 22 18
                            38 40 30 43 35 92 13 115 -19 18 -87 18 -103 -1z"/>
                        </g>
                        <g tabindex="7" aria-label="Estas en la capa de los botes"  class="Botes" transform="translate(0.000000,768.000000) scale(0.100000,-0.100000)"
                            fill="#ee9b57" stroke="none" onclick="mostrarCuadroTexto('Bote para Reciclaje',[img_plasticos, img_papel, img_metal, img_dificil_reclaje],'Puedes reciclar este tipo de residuos', true), grafica(['Plasticos', 'Papel', 'Metal', 'Dificil Reciclaje'])" ondblclick="ocultarCuadroTexto()" >
                            <path class="point" d="M9103 5455 c-21 -23 -15 -72 15 -114 15 -22 32 -40 37 -40 6 0 22 18 38 40 30 43 35 92 13 115 -19 18 -87 18 -103 -1z"/>
                        </g>
                        <g tabindex="7" aria-label="Estas en la capa de los botes"  class="Botes" transform="translate(0.000000,768.000000) scale(0.100000,-0.100000)"
                            fill="#ee9b57" stroke="none" onclick="mostrarCuadroTexto('Bote para Reciclaje',[img_papel, img_organicos, img_plasticos, img_dificil_reclaje],'Puedes reciclar este tipo de residuos', true), grafica(['Papel', 'Organicos', 'Plasticos', 'Dificil Reciclaje'])" ondblclick="ocultarCuadroTexto()" >
                            <path class="point" d="M6453 2825 c-21 -23 -15 -72 15 -114 15 -22 32 -40 37 -40 6 0 22 18 38 40 30 43 35 92 13 115 -19 18 -87 18 -103 -1z"/>
                        </g>
                        <g tabindex="7" aria-label="Estas en la capa de los botes"  class="Botes" transform="translate(0.000000,768.000000) scale(0.100000,-0.100000)"
                            fill="#ee9b57" stroke="none" onclick="mostrarCuadroTexto('Bote para Reciclaje',[img_vidrio, img_plasticos, img_dificil_reclaje],'Puedes reciclar este tipo de residuos', true, 'Bote sss'), grafica(['Vidrio','Plasticos','Dificil Reciclaje'])" ondblclick="ocultarCuadroTexto()" >
                            <path class="point" d="M7823 2985 c-21 -23 -15 -72 15 -114 15 -22 32 -40 37 -40 6 0 22 18 38 40 30 43 35 92 13 115 -19 18 -87 18 -103 -1z"/>
                        </g>
                        <g tabindex="7" aria-label="Estas en la capa de los botes"  class="Botes" transform="translate(0.000000,768.000000) scale(0.100000,-0.100000)"
                            fill="#ee9b57" stroke="none" onclick="mostrarCuadroTexto('Bote para Reciclaje',[img_papel, img_metal],'Puedes reciclar este tipo de residuos', true, 'Bote Medicina'),grafica(['Papel', 'Metal'])" ondblclick="ocultarCuadroTexto()" >
                            <path class="point" d="M7993 2985 c-21 -23 -15 -72 15 -114 15 -22 32 -40 37 -40 6 0 22 18 38 40 30 43 35 92 13 115 -19 18 -87 18 -103 -1z"/>
                        </g>
                    </svg>
            </div>
        </div>

        <div id="cuadroTexto" class="cuadroTexto">
            <p id="textoCuadro"></p>
            <a href="" id="imagenCuadro"></a>
            <p id="informacionCuadro"></p>
        </div>

        <div id="cuadroreporte" class="cuadroreporte">
                <form method="post" name = "Reportar" action = "/MpResiduos/MdReportes">                             
                          <div class="e1">                           
                                <input type="text" id="ub" readonly />
                                                                                        
                              Lleno<input type="radio" id="" name="Estado" value="Lleno">
                               Dañado<input type="radio" id="" name="Estado" value="Dan ado">
                                Basura Mezclada<input type="radio" id="" name="Estado" value="Basura Mezclada">
                              
                              
                          </div>                                
                          
                          <div class="AccionesR" >
                              <button type="submit">Reportar</button>  
                              
                          </div>     
                          
                     </form>   
           
        </div>
           
          
            
    </div>
     
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

    <script src="js/scripts.js"></script>
</body>

</html>


