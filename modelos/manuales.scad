/* [Manual inferior] */
mostrar_inferior = true;
naturales_inferior = true;
alteradas_inferior = true;
tapas_alteradas_inferior = true;
liston_posterior_inferior = true;
clavos_inferior = true;
tapa_frontal_inferior = true;
laterales_inferior = true;

/* [Manual superior] */
mostrar_superior = true;
naturales_superior = true;
alteradas_superior = true;
tapas_alteradas_superior = true;
liston_posterior_superior = true;
clavos_superior = true;
tapa_frontal_superior = true;
laterales_superior = true;

/* [Hidden] */
// Dos manuales en mm. X=0 es el centro del conjunto.
// y_frente y z_superficie corresponden a las teclas naturales inferiores.
// Cada lista de piezas sigue el orden de los parámetros de manual_completo.
module manuales_organo(
    y_frente, z_superficie,
    mostrar_inferior = true, mostrar_superior = true,
    piezas_inferior = [true, true, true, true, true, true, true],
    piezas_superior = [true, true, true, true, true, true, true]
) {
    $fn = 48;

    // ==========================================
    // 1. DIMENSIONES GENERALES
    // ==========================================

    ancho_octava = 164;
    fondo = 150;
    grosor = 10;

    octavas_completas = 4;
    cantidad_naturales = 33;
    separacion = 1;

    ancho_pieza =
        (ancho_octava - 6 * separacion) / 7;

    paso = ancho_pieza + separacion;

    ancho_total =
        cantidad_naturales * ancho_pieza
        + (cantidad_naturales - 1) * separacion;

    // ==========================================
    // 2. COLORES
    // ==========================================

    color_pino = "#C98D54"; // Pino americano.
    color_alteradas = "#45291F"; // Tzalam.
    color_tapas = color_alteradas; // Tzalam, según el plano P10.
    color_liston = "#97745E"; // Encino americano.
    color_clavos = [0.72, 0.74, 0.76];

    color_tapa_frontal = "#66372A"; // Nogal americano, como la consola.
    color_laterales = color_tapa_frontal;

    // ==========================================
    // 3. RANURAS PARA ALTERADAS
    // ==========================================

    material_entre_ranuras = 11;

    ancho_ranura =
        paso - material_entre_ranuras;

    inicio_ranura = 44;

    // ==========================================
    // 4. TECLAS ALTERADAS
    // ==========================================

    ancho_alterada = 11;
    separacion_y = 1;

    inicio_alterada =
        inicio_ranura + separacion_y;

    largo_alterada =
        fondo - inicio_alterada;

    // ==========================================
    // 5. TAPAS TRAPEZOIDALES
    // ==========================================

    base_tapa = 11;
    superior_tapa = 9;

    largo_tapa = 80;
    altura_tapa = 12;

    angulo_corte = 27;
    altura_vertical = 3;

    retroceso_superior =
        (altura_tapa - altura_vertical)
        * tan(angulo_corte);

    // ==========================================
    // 6. LISTON POSTERIOR
    // ==========================================

    ancho_liston = 25;
    altura_liston = 10;

    centro_y_clavo =
        fondo - ancho_liston / 2;

    // ==========================================
    // 7. CLAVOS Y BARRENOS
    // ==========================================

    diametro_clavo = 2;
    diametro_barreno = 3;

    sobresaliente_clavo = 0;

    altura_clavo =
        altura_liston
        + grosor
        + sobresaliente_clavo;

    // ==========================================
    // 8. DISTRIBUCION MUSICAL
    // ==========================================

    patron_alteradas = [0, 1, 3, 4, 5];

    alteradas_completas = [
        for (oct = [0 : octavas_completas - 1])
            for (pos = patron_alteradas)
                oct * 7 + pos
    ];

    alteradas_finales = [28, 29, 31];

    posiciones_alteradas =
        concat(
            alteradas_completas,
            alteradas_finales
        );

    // ==========================================
    // 9. FUNCIONES DE CENTRADO
    // ==========================================

    // Reparte el ancho trasero de las naturales dentro de cada grupo:
    // Do–Mi (dos sostenidos) y Fa–Si (tres sostenidos).
    recorte_centrado = (ancho_ranura - separacion) / 2;
    desfase_alteradas = [
        -recorte_centrado / 3,  // Do#
         recorte_centrado / 3,  // Re#
         0,
        -recorte_centrado / 2,  // Fa#
         0,                    // Sol#
         recorte_centrado / 2,  // La#
         0
    ];

    function centro_alterada(indice) =
        (indice + 1) * paso
        - separacion / 2
        + desfase_alteradas[indice % 7];

    function hay_ranura(indice) =
        len(search(indice, posiciones_alteradas)) > 0;

    // Las ranuras pueden recortar uno o ambos lados de la parte trasera.
    function centro_trasero_natural(i) =
        let(
            izquierdo = hay_ranura(i - 1)
                ? centro_alterada(i - 1) + ancho_ranura / 2
                : i * paso,
            derecho = hay_ranura(i)
                ? centro_alterada(i) - ancho_ranura / 2
                : i * paso + ancho_pieza
        )
        (izquierdo + derecho) / 2;

    // ==========================================
    // 10. TAPA TRAPEZOIDAL
    // ==========================================

    module tapa_trapezoidal() {

        margen =
            (base_tapa - superior_tapa) / 2;

        polyhedron(
            points = [

                // Base inferior
                [0, 0, 0],
                [base_tapa, 0, 0],
                [base_tapa, largo_tapa, 0],
                [0, largo_tapa, 0],

                // Frente vertical
                [0, 0, altura_vertical],
                [base_tapa, 0, altura_vertical],

                // Parte superior
                [
                    margen,
                    retroceso_superior,
                    altura_tapa
                ],
                [
                    base_tapa - margen,
                    retroceso_superior,
                    altura_tapa
                ],
                [
                    base_tapa - margen,
                    largo_tapa,
                    altura_tapa
                ],
                [
                    margen,
                    largo_tapa,
                    altura_tapa
                ]
            ],

            faces = [
                [0, 1, 2, 3],
                [9, 8, 7, 6],
                [4, 5, 1, 0],
                [6, 7, 5, 4],
                [5, 7, 8, 2, 1],
                [9, 6, 4, 0, 3],
                [8, 9, 3, 2]
            ],

            convexity = 10
        );
    }

    // ==========================================
    // 11. BARRENO VERTICAL
    // ==========================================

    module barreno(x) {

        translate([
            x,
            centro_y_clavo,
            -0.1
        ])
            cylinder(
                h = grosor + 0.2,
                d = diametro_barreno
            );
    }

    // ==========================================
    // 12. TECLAS NATURALES
    // ==========================================

    module teclas_naturales() {

        color(color_pino)
        difference() {

            union() {

                for (i = [0 : cantidad_naturales - 1]) {

                    translate([
                        i * paso,
                        0,
                        0
                    ])
                        cube([
                            ancho_pieza,
                            fondo,
                            grosor
                        ]);
                }
            }

            // Ranuras para alteradas
            for (indice = posiciones_alteradas) {

                centro =
                    centro_alterada(indice);

                translate([
                    centro - ancho_ranura / 2,
                    inicio_ranura,
                    -1
                ])
                    cube([
                        ancho_ranura,
                        fondo - inicio_ranura + 1,
                        grosor + 2
                    ]);
            }

            // Barrenos naturales
            for (i = [0 : cantidad_naturales - 1]) {

                barreno(centro_trasero_natural(i));
            }
        }
    }

    // ==========================================
    // 13. TECLAS ALTERADAS
    // ==========================================

    module teclas_alteradas(mostrar_cuerpo, mostrar_tapa) {

        for (indice = posiciones_alteradas) {

            centro =
                centro_alterada(indice);

            // Cuerpo de madera
            if (mostrar_cuerpo) color(color_alteradas)
            difference() {

                translate([
                    centro - ancho_alterada / 2,
                    inicio_alterada,
                    0
                ])
                    cube([
                        ancho_alterada,
                        largo_alterada,
                        grosor
                    ]);

                barreno(centro);
            }

            // Tapa trapezoidal
            if (mostrar_tapa) color(color_tapas)
            translate([
                centro - base_tapa / 2,
                inicio_alterada,
                grosor
            ])
                tapa_trapezoidal();
        }
    }

    // ==========================================
    // 14. LISTON POSTERIOR
    // ==========================================

    module liston_posterior() {

        color(color_liston)
        translate([
            0,
            fondo - ancho_liston,
            -altura_liston
        ])
            cube([
                ancho_total,
                ancho_liston,
                altura_liston
            ]);
    }

    // ==========================================
    // 15. CLAVOS POSTERIORES
    // ==========================================

    module clavo(x) {

        color(color_clavos)
        translate([
            x,
            centro_y_clavo,
            -altura_liston
        ])
            cylinder(
                h = altura_clavo,
                d = diametro_clavo
            );
    }

    module clavos_posteriores() {

        for (i = [0 : cantidad_naturales - 1])
            clavo(centro_trasero_natural(i));

        for (indice = posiciones_alteradas)
            clavo(centro_alterada(indice));
    }

    // ==========================================
    // 16. TAPA FRONTAL
    // ==========================================

    altura_tapa_frontal = 40;
    grosor_tapa_frontal = 12.7;

    retroceso_tapa_frontal = 20;
    saliente_lateral_frontal = 1;

    y_inicio_tapa_frontal =
        -fondo / 2
        - grosor_tapa_frontal
        + retroceso_tapa_frontal;

    module tapa_frontal() {

        color(color_tapa_frontal)
        translate([
            -ancho_total / 2
                - saliente_lateral_frontal,

            y_inicio_tapa_frontal,

            -altura_tapa_frontal
        ])
            cube([
                ancho_total
                    + 2 * saliente_lateral_frontal,

                grosor_tapa_frontal,

                altura_tapa_frontal
            ]);
    }

    // ==========================================
    // 17. TAPAS LATERALES MACIZAS
    // ==========================================

    grosor_lateral = 25.4;
    saliente_frontal = 3;
    altura_extra_lateral = 3;

    elevacion_z = 10;

    z_superior_naturales =
        elevacion_z + grosor;

    z_superior_laterales =
        z_superior_naturales
        + altura_extra_lateral;

    altura_lateral =
        altura_tapa_frontal
        + z_superior_laterales;

    largo_lateral =
        fondo + saliente_frontal;

    module tapas_laterales() {

        color(color_laterales) {

            // Lateral izquierdo
            translate([
                -ancho_total / 2
                    - grosor_lateral,

                -fondo / 2
                    - saliente_frontal,

                -altura_tapa_frontal
            ])
                cube([
                    grosor_lateral,
                    largo_lateral,
                    altura_lateral
                ]);

            // Lateral derecho
            translate([
                ancho_total / 2,

                -fondo / 2
                    - saliente_frontal,

                -altura_tapa_frontal
            ])
                cube([
                    grosor_lateral,
                    largo_lateral,
                    altura_lateral
                ]);
        }
    }

    // ==========================================
    // 18. CONJUNTO DE TECLAS
    // ==========================================

    module teclado_completo(naturales, alteradas, tapas_alteradas, liston, clavos) {

        if (liston) liston_posterior();
        if (naturales) teclas_naturales();
        teclas_alteradas(alteradas, tapas_alteradas);
        if (clavos) clavos_posteriores();
    }

    // ==========================================
    // 19. MANUAL COMPLETO REUTILIZABLE
    // ==========================================

    module manual_completo(naturales, alteradas, tapas_alteradas, liston, clavos, frontal, laterales) {

        // Teclas y soporte
        translate([
            -ancho_total / 2,
            -fondo / 2,
            elevacion_z
        ])
            teclado_completo(naturales, alteradas, tapas_alteradas, liston, clavos);

        // Estructura fija
        if (frontal) tapa_frontal();
        if (laterales) tapas_laterales();
    }

    // Escalon original: el faldon superior empieza donde terminan las tapas
    // de las alteradas inferiores. Su base queda al nivel de los laterales.
    desplazamiento_y_superior =
        -fondo / 2 + inicio_alterada + largo_tapa - y_inicio_tapa_frontal;
    desplazamiento_z_superior = altura_tapa_frontal + z_superior_laterales;

    translate([0, y_frente + fondo / 2, z_superficie - z_superior_naturales]) {
        if (mostrar_inferior)
            manual_completo(
                piezas_inferior[0], piezas_inferior[1], piezas_inferior[2],
                piezas_inferior[3], piezas_inferior[4], piezas_inferior[5],
                piezas_inferior[6]
            );
        if (mostrar_superior)
            translate([0, desplazamiento_y_superior, desplazamiento_z_superior])
                manual_completo(
                    piezas_superior[0], piezas_superior[1], piezas_superior[2],
                    piezas_superior[3], piezas_superior[4], piezas_superior[5],
                    piezas_superior[6]
                );
    }
}

// Vista independiente; al importar con use, sólo se carga el módulo.
manuales_organo(
    0, 0,
    mostrar_inferior = mostrar_inferior,
    mostrar_superior = mostrar_superior,
    piezas_inferior = [
        naturales_inferior, alteradas_inferior, tapas_alteradas_inferior,
        liston_posterior_inferior, clavos_inferior, tapa_frontal_inferior,
        laterales_inferior
    ],
    piezas_superior = [
        naturales_superior, alteradas_superior, tapas_alteradas_superior,
        liston_posterior_superior, clavos_superior, tapa_frontal_superior,
        laterales_superior
    ]
);
