// PEDALERA CONCAVA RADIAL, 32 NOTAS C-G. Unidades: mm.
// Adaptacion a radios BDO del plano Laukhuff: concavidad 3680 y planta 2000.
// Conserva 32 notas, paso propio de 63.5 mm y mecanismo previamente definido.
// No representa una certificacion dimensional BDO completa.
// 63.5 exactos EN PROYECCION X en la referencia posterior de cada grupo.
// Referencia geometrica historica; los fondos reales se adaptan a las colas actuales.
// Revision solo CAD: travesano de dos capas de 12.7, canales rectos arriba y abajo. Planos pendientes.
// Reposo: apoyo frontal con lamina y holgura de 12.7 mm sobre el tope trasero.
// No se confunde paso proyectado con distancia de arco ni cuerda.
// Geometria rigida: sin scale(). Posiciones calculadas una sola vez.
// No requiere bibliotecas externas. Compilado y renderizado con OpenSCAD WASM (Manifold).
// Ventanas traseras delimitadas por dos arcos globales comunes.

use <manuales.scad>

/* [Vista] */
mostrar_manuales = true;
mostrar_teclas = true;
mostrar_estructuras = true;
mostrar_tapas = true;
mostrar_laterales = true;
mostrar_laminas = true;
mostrar_tornillos = true;
mostrar_varillas = true;
mostrar_tornillos_union_trasera = true;
informe_detallado = false;

/* [Piezas del gabinete] */
mostrar_travesano_frontal = true;
mostrar_travesano_trasero = true;
mostrar_tapa_travesano_trasero = true;
mostrar_lateral_izquierdo = true;
mostrar_lateral_derecho = true;
mostrar_tapa_superior_frontal = true;
mostrar_tapa_frontal_vertical = true;
mostrar_faldon_frontal = true;

/* [Laminas individuales] */
mostrar_lamina_do1 = true;
mostrar_lamina_do_sostenido1 = true;
mostrar_lamina_re1 = true;
mostrar_lamina_re_sostenido1 = true;
mostrar_lamina_mi1 = true;
mostrar_lamina_fa1 = true;
mostrar_lamina_fa_sostenido1 = true;
mostrar_lamina_sol1 = true;
mostrar_lamina_sol_sostenido1 = true;
mostrar_lamina_la1 = true;
mostrar_lamina_la_sostenido1 = true;
mostrar_lamina_si1 = true;
mostrar_lamina_do2 = true;
mostrar_lamina_do_sostenido2 = true;
mostrar_lamina_re2 = true;
mostrar_lamina_re_sostenido2 = true;
mostrar_lamina_mi2 = true;
mostrar_lamina_fa2 = true;
mostrar_lamina_fa_sostenido2 = true;
mostrar_lamina_sol2 = true;
mostrar_lamina_sol_sostenido2 = true;
mostrar_lamina_la2 = true;
mostrar_lamina_la_sostenido2 = true;
mostrar_lamina_si2 = true;
mostrar_lamina_do3 = true;
mostrar_lamina_do_sostenido3 = true;
mostrar_lamina_re3 = true;
mostrar_lamina_re_sostenido3 = true;
mostrar_lamina_mi3 = true;
mostrar_lamina_fa3 = true;
mostrar_lamina_fa_sostenido3 = true;
mostrar_lamina_sol3 = true;

/* [Varillas individuales] */
mostrar_varilla_do1 = true;
mostrar_varilla_do_sostenido1 = true;
mostrar_varilla_re1 = true;
mostrar_varilla_re_sostenido1 = true;
mostrar_varilla_mi1 = true;
mostrar_varilla_fa1 = true;
mostrar_varilla_fa_sostenido1 = true;
mostrar_varilla_sol1 = true;
mostrar_varilla_sol_sostenido1 = true;
mostrar_varilla_la1 = true;
mostrar_varilla_la_sostenido1 = true;
mostrar_varilla_si1 = true;
mostrar_varilla_do2 = true;
mostrar_varilla_do_sostenido2 = true;
mostrar_varilla_re2 = true;
mostrar_varilla_re_sostenido2 = true;
mostrar_varilla_mi2 = true;
mostrar_varilla_fa2 = true;
mostrar_varilla_fa_sostenido2 = true;
mostrar_varilla_sol2 = true;
mostrar_varilla_sol_sostenido2 = true;
mostrar_varilla_la2 = true;
mostrar_varilla_la_sostenido2 = true;
mostrar_varilla_si2 = true;
mostrar_varilla_do3 = true;
mostrar_varilla_do_sostenido3 = true;
mostrar_varilla_re3 = true;
mostrar_varilla_re_sostenido3 = true;
mostrar_varilla_mi3 = true;
mostrar_varilla_fa3 = true;
mostrar_varilla_fa_sostenido3 = true;
mostrar_varilla_sol3 = true;

/* [Tornillos al travesano individuales] */
mostrar_tornillo_travesano_do1 = true;
mostrar_tornillo_travesano_do_sostenido1 = true;
mostrar_tornillo_travesano_re1 = true;
mostrar_tornillo_travesano_re_sostenido1 = true;
mostrar_tornillo_travesano_mi1 = true;
mostrar_tornillo_travesano_fa1 = true;
mostrar_tornillo_travesano_fa_sostenido1 = true;
mostrar_tornillo_travesano_sol1 = true;
mostrar_tornillo_travesano_sol_sostenido1 = true;
mostrar_tornillo_travesano_la1 = true;
mostrar_tornillo_travesano_la_sostenido1 = true;
mostrar_tornillo_travesano_si1 = true;
mostrar_tornillo_travesano_do2 = true;
mostrar_tornillo_travesano_do_sostenido2 = true;
mostrar_tornillo_travesano_re2 = true;
mostrar_tornillo_travesano_re_sostenido2 = true;
mostrar_tornillo_travesano_mi2 = true;
mostrar_tornillo_travesano_fa2 = true;
mostrar_tornillo_travesano_fa_sostenido2 = true;
mostrar_tornillo_travesano_sol2 = true;
mostrar_tornillo_travesano_sol_sostenido2 = true;
mostrar_tornillo_travesano_la2 = true;
mostrar_tornillo_travesano_la_sostenido2 = true;
mostrar_tornillo_travesano_si2 = true;
mostrar_tornillo_travesano_do3 = true;
mostrar_tornillo_travesano_do_sostenido3 = true;
mostrar_tornillo_travesano_re3 = true;
mostrar_tornillo_travesano_re_sostenido3 = true;
mostrar_tornillo_travesano_mi3 = true;
mostrar_tornillo_travesano_fa3 = true;
mostrar_tornillo_travesano_fa_sostenido3 = true;
mostrar_tornillo_travesano_sol3 = true;

/* [Primer tornillo bajo cada tecla] */
mostrar_tornillo_tecla_1_do1 = true;
mostrar_tornillo_tecla_1_do_sostenido1 = true;
mostrar_tornillo_tecla_1_re1 = true;
mostrar_tornillo_tecla_1_re_sostenido1 = true;
mostrar_tornillo_tecla_1_mi1 = true;
mostrar_tornillo_tecla_1_fa1 = true;
mostrar_tornillo_tecla_1_fa_sostenido1 = true;
mostrar_tornillo_tecla_1_sol1 = true;
mostrar_tornillo_tecla_1_sol_sostenido1 = true;
mostrar_tornillo_tecla_1_la1 = true;
mostrar_tornillo_tecla_1_la_sostenido1 = true;
mostrar_tornillo_tecla_1_si1 = true;
mostrar_tornillo_tecla_1_do2 = true;
mostrar_tornillo_tecla_1_do_sostenido2 = true;
mostrar_tornillo_tecla_1_re2 = true;
mostrar_tornillo_tecla_1_re_sostenido2 = true;
mostrar_tornillo_tecla_1_mi2 = true;
mostrar_tornillo_tecla_1_fa2 = true;
mostrar_tornillo_tecla_1_fa_sostenido2 = true;
mostrar_tornillo_tecla_1_sol2 = true;
mostrar_tornillo_tecla_1_sol_sostenido2 = true;
mostrar_tornillo_tecla_1_la2 = true;
mostrar_tornillo_tecla_1_la_sostenido2 = true;
mostrar_tornillo_tecla_1_si2 = true;
mostrar_tornillo_tecla_1_do3 = true;
mostrar_tornillo_tecla_1_do_sostenido3 = true;
mostrar_tornillo_tecla_1_re3 = true;
mostrar_tornillo_tecla_1_re_sostenido3 = true;
mostrar_tornillo_tecla_1_mi3 = true;
mostrar_tornillo_tecla_1_fa3 = true;
mostrar_tornillo_tecla_1_fa_sostenido3 = true;
mostrar_tornillo_tecla_1_sol3 = true;

/* [Segundo tornillo bajo cada tecla] */
mostrar_tornillo_tecla_2_do1 = true;
mostrar_tornillo_tecla_2_do_sostenido1 = true;
mostrar_tornillo_tecla_2_re1 = true;
mostrar_tornillo_tecla_2_re_sostenido1 = true;
mostrar_tornillo_tecla_2_mi1 = true;
mostrar_tornillo_tecla_2_fa1 = true;
mostrar_tornillo_tecla_2_fa_sostenido1 = true;
mostrar_tornillo_tecla_2_sol1 = true;
mostrar_tornillo_tecla_2_sol_sostenido1 = true;
mostrar_tornillo_tecla_2_la1 = true;
mostrar_tornillo_tecla_2_la_sostenido1 = true;
mostrar_tornillo_tecla_2_si1 = true;
mostrar_tornillo_tecla_2_do2 = true;
mostrar_tornillo_tecla_2_do_sostenido2 = true;
mostrar_tornillo_tecla_2_re2 = true;
mostrar_tornillo_tecla_2_re_sostenido2 = true;
mostrar_tornillo_tecla_2_mi2 = true;
mostrar_tornillo_tecla_2_fa2 = true;
mostrar_tornillo_tecla_2_fa_sostenido2 = true;
mostrar_tornillo_tecla_2_sol2 = true;
mostrar_tornillo_tecla_2_sol_sostenido2 = true;
mostrar_tornillo_tecla_2_la2 = true;
mostrar_tornillo_tecla_2_la_sostenido2 = true;
mostrar_tornillo_tecla_2_si2 = true;
mostrar_tornillo_tecla_2_do3 = true;
mostrar_tornillo_tecla_2_do_sostenido3 = true;
mostrar_tornillo_tecla_2_re3 = true;
mostrar_tornillo_tecla_2_re_sostenido3 = true;
mostrar_tornillo_tecla_2_mi3 = true;
mostrar_tornillo_tecla_2_fa3 = true;
mostrar_tornillo_tecla_2_fa_sostenido3 = true;
mostrar_tornillo_tecla_2_sol3 = true;

/* [Tornillos de union del travesano doble] */
mostrar_tornillo_union_trasera_01 = true;
mostrar_tornillo_union_trasera_02 = true;
mostrar_tornillo_union_trasera_03 = true;
mostrar_tornillo_union_trasera_04 = true;
mostrar_tornillo_union_trasera_05 = true;
mostrar_tornillo_union_trasera_06 = true;
mostrar_tornillo_union_trasera_07 = true;
mostrar_tornillo_union_trasera_08 = true;
mostrar_tornillo_union_trasera_09 = true;
mostrar_tornillo_union_trasera_10 = true;

/* [Cotas conservadas] */
cantidad_teclas = 32;
ancho_tecla = 22.225;
largo_tecla = 915; // Conserva la geometria de referencia y las posiciones.
recorte_frontal = 50; // Limite frontal global; extremos a escuadra por tecla.
grosor_natural = 40;
grosor_sostenido = 20;
ancho_ranura = 7;
profundidad_ranura = 38.1; // 1 1/2: travesano de 1 pulgada + 1/4 nominal por lado.
margen_ranura_travesano = 6.35; // 1/4 de pulgada nominal a cada lado del travesano.
profundidad_ranura_referencia = 38.1; // Referencia geometrica anterior; conserva posiciones.
distancia_referencia = 10;
paso_naturales = 63.5;
elevacion_posterior = 12.7;
radio_distribucion = 2000; // Arco en planta de la referencia BDO.
radio_concavidad = 3680; // Radio vertical BDO para el travesano trasero.
radio_travesano_frontal = 3680; // Radio vertical frontal coordinado con el trasero.
holgura_reposo_trasera = 12.7; // 1/2 pulgada vertical sobre el tope, en reposo.
altura_centro = 25.4;
ancho_delantero = 1130; // Ancho del tablero antes del recorte contra los laterales.
ancho_trasero = 1390;
separacion = 915;
desplazamiento_estructura_frontal = 19.05; // 3/4 de pulgada hacia atras (+Y).
espesor = 19.05;
cara_trasera_travesano = 850; // Posicion absoluta de la cara posterior, medida en Y.
espesor_capa_trasera = 12.7; // Dos piezas de madera de 1/2 pulgada.
espesor_travesano_trasero = 2*espesor_capa_trasera;
inicio_apoyo_trasero = cara_trasera_travesano-espesor_travesano_trasero;
y_union_capas_traseras = inicio_apoyo_trasero+espesor_capa_trasera;
desplazamiento_trasero_hacia_frente = separacion-cara_trasera_travesano;
referencia_tapa_trasera = cara_trasera_travesano+29.05; // Conserva la planta del cierre anterior.
profundidad_tapa_delantera = 102; // Tapa de borde recto: Y=0 a Y=102.
espesor_tapa_frontal_vertical = 19.05; // Cierre delantero Y=0..19.05, bajo la tapa superior.
espesor_faldon_frontal = 19.05; // Faldon bajo el borde posterior de la tapa.
holgura_faldon_frontal = 6.35; // Minimo vertical respecto a las teclas.
holgura_vertical_tapa_frontal = 6.35; // 1/4 pulgada sobre la tecla mas alta bajo la tapa.
profundidad_tapa_trasera = 70;
radio_arco_sostenidos = 2000;
referencia_mi3 = 28; // C1=0; Mi3=28.
distancia_arco_ranura_mi3 = 165.1; // 6 1/2 pulgadas hacia el frente.
separacion_sostenido_ranura = 0; // El realce termina justo al inicio de la ranura.
altura_sostenido_frente = 25.4;
altura_sostenido_atras = 38.1;

/* [Union de acero] */
espesor_lamina = 2; // Provisional, ajustable al material real.
ancho_lamina = 15;
longitud_bajo_tecla = 100;
diametro_barreno = 2;
profundidad_tornillo_tecla = 12;
// Distancias desde el nuevo frente, medidas sobre el eje de cada tecla.
posiciones_tornillos_tecla = [30,80];
salida_natural_tapa_frontal = 10; // Holgura minima en Y entre el borde recto y el escalon.
holgura_realce_tapa = 10; // Distancia minima en planta entre los realces y la tapa recortada.

/* [Guias traseras] */
diametro_varilla = 6.35; // Acero de 1/4 de pulgada.
profundidad_canal_guia = 6.65; // Alojamiento para varilla 6.35, con holgura de montaje.
ancho_canal_guia = 6.55;
longitud_asiento_guia = 6.35; // Asiento recto inferior y superior de 1/4 pulgada.
y_asiento_guias = y_union_capas_traseras-profundidad_canal_guia/2;
incrustacion_varilla = 6; // Insercion minima con asientos de 1/4 y holgura de extremo.

/* [Marco trasero y tope de retorno] */
holgura_lateral_ventana = 12.7; // 1/2 pulgada libre por cada lado de la tecla.
espesor_cielo_trasero = 19.05; // Madera minima sobre la ventana mas alta.
radio_techo_ventanas = 3680; // Arco superior comun a todas las ventanas, en X/Z global.
pasos_techo_ventana = 24;

/* [Tapas laterales] */
holgura_laterales = 12.7; // Luz minima real entre madera lateral y cualquier tecla.
retraso_elevacion_lateral = 100; // Inicio estetico de la subida, 100 mm despues del arco en Y.
crecimiento_travesano_trasero_por_lado = 19.05; // 3/4 por extremo, respecto al ancho anterior maximo.
altura_cierre_trasero = 180; // Coronacion comun del travesano y ambos laterales.
inicio_lateral_y = 0; // Los laterales llegan al frente, bajo la tapa.
espesor_lateral = 19.05;

/* [Abanico] */
// Foco recalculado para conservar la luz Do1-Sol3 de referencia en Y=876.425.
// El cierre actual se situa en Y=850; las matrices de las teclas no se desplazan.
// No confundir el foco radial con el radio de 2000 del arco en planta.
foco_radial_y = -4821.587710147414;
ancho_juego_varillas_referencia = 1124.9795480338673; // Calibracion anterior en Y=876.425.
altura_maxima_sostenidos = 180; // Limite desde el suelo; no se eleva todo el conjunto.

/* [Hidden] */
tolerancia = 0.00001;
pasos_curva = 180;
y_referencia_reposo = 790; // Referencia virtual: conserva la orientacion de las teclas.
$fn = 32;
notas = [0:cantidad_teclas-1];
d_ref = largo_tecla - profundidad_ranura_referencia + distancia_referencia;
y_ref_central = sqrt(largo_tecla*largo_tecla-elevacion_posterior*elevacion_posterior)
    * d_ref/largo_tecla;
realce_frente = grosor_natural-grosor_sostenido+altura_sostenido_frente;
realce_atras = grosor_natural-grosor_sostenido+altura_sostenido_atras;

// Visibilidad de piezas repetidas, en orden Do1-Sol3. No cambia barrenos ni posiciones.
visibilidad_lamina = [
    mostrar_lamina_do1,
    mostrar_lamina_do_sostenido1,
    mostrar_lamina_re1,
    mostrar_lamina_re_sostenido1,
    mostrar_lamina_mi1,
    mostrar_lamina_fa1,
    mostrar_lamina_fa_sostenido1,
    mostrar_lamina_sol1,
    mostrar_lamina_sol_sostenido1,
    mostrar_lamina_la1,
    mostrar_lamina_la_sostenido1,
    mostrar_lamina_si1,
    mostrar_lamina_do2,
    mostrar_lamina_do_sostenido2,
    mostrar_lamina_re2,
    mostrar_lamina_re_sostenido2,
    mostrar_lamina_mi2,
    mostrar_lamina_fa2,
    mostrar_lamina_fa_sostenido2,
    mostrar_lamina_sol2,
    mostrar_lamina_sol_sostenido2,
    mostrar_lamina_la2,
    mostrar_lamina_la_sostenido2,
    mostrar_lamina_si2,
    mostrar_lamina_do3,
    mostrar_lamina_do_sostenido3,
    mostrar_lamina_re3,
    mostrar_lamina_re_sostenido3,
    mostrar_lamina_mi3,
    mostrar_lamina_fa3,
    mostrar_lamina_fa_sostenido3,
    mostrar_lamina_sol3];
function ver_lamina(n) = visibilidad_lamina[n];
visibilidad_varilla = [
    mostrar_varilla_do1,
    mostrar_varilla_do_sostenido1,
    mostrar_varilla_re1,
    mostrar_varilla_re_sostenido1,
    mostrar_varilla_mi1,
    mostrar_varilla_fa1,
    mostrar_varilla_fa_sostenido1,
    mostrar_varilla_sol1,
    mostrar_varilla_sol_sostenido1,
    mostrar_varilla_la1,
    mostrar_varilla_la_sostenido1,
    mostrar_varilla_si1,
    mostrar_varilla_do2,
    mostrar_varilla_do_sostenido2,
    mostrar_varilla_re2,
    mostrar_varilla_re_sostenido2,
    mostrar_varilla_mi2,
    mostrar_varilla_fa2,
    mostrar_varilla_fa_sostenido2,
    mostrar_varilla_sol2,
    mostrar_varilla_sol_sostenido2,
    mostrar_varilla_la2,
    mostrar_varilla_la_sostenido2,
    mostrar_varilla_si2,
    mostrar_varilla_do3,
    mostrar_varilla_do_sostenido3,
    mostrar_varilla_re3,
    mostrar_varilla_re_sostenido3,
    mostrar_varilla_mi3,
    mostrar_varilla_fa3,
    mostrar_varilla_fa_sostenido3,
    mostrar_varilla_sol3];
function ver_varilla(n) = visibilidad_varilla[n];
visibilidad_tornillo_travesano = [
    mostrar_tornillo_travesano_do1,
    mostrar_tornillo_travesano_do_sostenido1,
    mostrar_tornillo_travesano_re1,
    mostrar_tornillo_travesano_re_sostenido1,
    mostrar_tornillo_travesano_mi1,
    mostrar_tornillo_travesano_fa1,
    mostrar_tornillo_travesano_fa_sostenido1,
    mostrar_tornillo_travesano_sol1,
    mostrar_tornillo_travesano_sol_sostenido1,
    mostrar_tornillo_travesano_la1,
    mostrar_tornillo_travesano_la_sostenido1,
    mostrar_tornillo_travesano_si1,
    mostrar_tornillo_travesano_do2,
    mostrar_tornillo_travesano_do_sostenido2,
    mostrar_tornillo_travesano_re2,
    mostrar_tornillo_travesano_re_sostenido2,
    mostrar_tornillo_travesano_mi2,
    mostrar_tornillo_travesano_fa2,
    mostrar_tornillo_travesano_fa_sostenido2,
    mostrar_tornillo_travesano_sol2,
    mostrar_tornillo_travesano_sol_sostenido2,
    mostrar_tornillo_travesano_la2,
    mostrar_tornillo_travesano_la_sostenido2,
    mostrar_tornillo_travesano_si2,
    mostrar_tornillo_travesano_do3,
    mostrar_tornillo_travesano_do_sostenido3,
    mostrar_tornillo_travesano_re3,
    mostrar_tornillo_travesano_re_sostenido3,
    mostrar_tornillo_travesano_mi3,
    mostrar_tornillo_travesano_fa3,
    mostrar_tornillo_travesano_fa_sostenido3,
    mostrar_tornillo_travesano_sol3];
function ver_tornillo_travesano(n) = visibilidad_tornillo_travesano[n];
visibilidad_tornillo_tecla_1 = [
    mostrar_tornillo_tecla_1_do1,
    mostrar_tornillo_tecla_1_do_sostenido1,
    mostrar_tornillo_tecla_1_re1,
    mostrar_tornillo_tecla_1_re_sostenido1,
    mostrar_tornillo_tecla_1_mi1,
    mostrar_tornillo_tecla_1_fa1,
    mostrar_tornillo_tecla_1_fa_sostenido1,
    mostrar_tornillo_tecla_1_sol1,
    mostrar_tornillo_tecla_1_sol_sostenido1,
    mostrar_tornillo_tecla_1_la1,
    mostrar_tornillo_tecla_1_la_sostenido1,
    mostrar_tornillo_tecla_1_si1,
    mostrar_tornillo_tecla_1_do2,
    mostrar_tornillo_tecla_1_do_sostenido2,
    mostrar_tornillo_tecla_1_re2,
    mostrar_tornillo_tecla_1_re_sostenido2,
    mostrar_tornillo_tecla_1_mi2,
    mostrar_tornillo_tecla_1_fa2,
    mostrar_tornillo_tecla_1_fa_sostenido2,
    mostrar_tornillo_tecla_1_sol2,
    mostrar_tornillo_tecla_1_sol_sostenido2,
    mostrar_tornillo_tecla_1_la2,
    mostrar_tornillo_tecla_1_la_sostenido2,
    mostrar_tornillo_tecla_1_si2,
    mostrar_tornillo_tecla_1_do3,
    mostrar_tornillo_tecla_1_do_sostenido3,
    mostrar_tornillo_tecla_1_re3,
    mostrar_tornillo_tecla_1_re_sostenido3,
    mostrar_tornillo_tecla_1_mi3,
    mostrar_tornillo_tecla_1_fa3,
    mostrar_tornillo_tecla_1_fa_sostenido3,
    mostrar_tornillo_tecla_1_sol3];
function ver_tornillo_tecla_1(n) = visibilidad_tornillo_tecla_1[n];
visibilidad_tornillo_tecla_2 = [
    mostrar_tornillo_tecla_2_do1,
    mostrar_tornillo_tecla_2_do_sostenido1,
    mostrar_tornillo_tecla_2_re1,
    mostrar_tornillo_tecla_2_re_sostenido1,
    mostrar_tornillo_tecla_2_mi1,
    mostrar_tornillo_tecla_2_fa1,
    mostrar_tornillo_tecla_2_fa_sostenido1,
    mostrar_tornillo_tecla_2_sol1,
    mostrar_tornillo_tecla_2_sol_sostenido1,
    mostrar_tornillo_tecla_2_la1,
    mostrar_tornillo_tecla_2_la_sostenido1,
    mostrar_tornillo_tecla_2_si1,
    mostrar_tornillo_tecla_2_do2,
    mostrar_tornillo_tecla_2_do_sostenido2,
    mostrar_tornillo_tecla_2_re2,
    mostrar_tornillo_tecla_2_re_sostenido2,
    mostrar_tornillo_tecla_2_mi2,
    mostrar_tornillo_tecla_2_fa2,
    mostrar_tornillo_tecla_2_fa_sostenido2,
    mostrar_tornillo_tecla_2_sol2,
    mostrar_tornillo_tecla_2_sol_sostenido2,
    mostrar_tornillo_tecla_2_la2,
    mostrar_tornillo_tecla_2_la_sostenido2,
    mostrar_tornillo_tecla_2_si2,
    mostrar_tornillo_tecla_2_do3,
    mostrar_tornillo_tecla_2_do_sostenido3,
    mostrar_tornillo_tecla_2_re3,
    mostrar_tornillo_tecla_2_re_sostenido3,
    mostrar_tornillo_tecla_2_mi3,
    mostrar_tornillo_tecla_2_fa3,
    mostrar_tornillo_tecla_2_fa_sostenido3,
    mostrar_tornillo_tecla_2_sol3];
function ver_tornillo_tecla_2(n) = visibilidad_tornillo_tecla_2[n];

function es_sostenido(n) = let(k=n%12) k==1 || k==3 || k==6 || k==8 || k==10;
function posicion(n) = let(m=[0,0.5,1,1.5,2,3,3.5,4,4.5,5,5.5,6])
    floor(n/12)*7 + m[n%12];
centro_musical = (posicion(0)+posicion(cantidad_teclas-1))/2;
function altura_curva(x) = altura_centro+radio_concavidad
    -sqrt(radio_concavidad*radio_concavidad-x*x);
function altura_frontal(x) = altura_centro+sagita(x,radio_travesano_frontal);
function sagita(x,r) = r-sqrt(r*r-x*x);
function x_ref(n) = (posicion(n)-centro_musical)*paso_naturales;
function y_ref(n) = y_ref_central-sagita(x_ref(n),radio_distribucion);

assert(cantidad_teclas==32,"Esta distribucion corresponde a 32 notas C-G");
assert(ancho_ranura>0 && ancho_ranura<ancho_tecla);
assert(profundidad_ranura>0 && profundidad_ranura<largo_tecla);
assert(d_ref>0 && d_ref<largo_tecla);
assert(foco_radial_y<0);
assert(ancho_trasero/2<radio_distribucion);
assert(ancho_trasero/2<radio_concavidad);
assert(ancho_delantero/2<radio_travesano_frontal);

// Referencia posterior en planta y direccion horizontal de cada tecla.
abanico = [for(n=notas) let(
    x=x_ref(n), y=y_ref(n), radial=[x,y-foco_radial_y])
    [[x,y],radial/norm(radial)]];

// Ajuste de inclinacion: conserva X/Y de las referencias y el abanico.
// El travesano trasero es un tope de accionamiento, no un asiento de reposo.
y_apoyo_frontal = desplazamiento_estructura_frontal+espesor/2;
// Referencia virtual para conservar el reposo al restaurar la tabla de 19.05 mm.
// No agrega material; las patitas reales se ajustan despues al canto del travesano.
// Giro alrededor del eje longitudinal: el eje central no cambia.
// La cara inferior sigue la tangente lateral del radio frontal.
function marco_tecla(n,a) = let(
    d=abanico[n],u=d[1][0],v=d[1][1],
    xf=d[0][0]+(y_apoyo_frontal-d[0][1])*u/v,
    pendiente=xf/sqrt(radio_travesano_frontal*radio_travesano_frontal-xf*xf),
    b=atan(pendiente*v/(cos(a)+pendiente*u*sin(a))),
    ex0=[v,-u,0],ey=[u*cos(a),v*cos(a),sin(a)],
    ez0=[-u*sin(a),-v*sin(a),cos(a)])
    [ex0*cos(b)+ez0*sin(b),ey,ez0*cos(b)-ex0*sin(b)];
function esquinas_traseras(n,e) = let(
    ref=abanico[n][0],ex=e[0],ey=e[1],
    ox=ref[0]-d_ref*ey[0],oy=ref[1]-d_ref*ey[1])
    [for(l=[-ancho_tecla/2,ancho_tecla/2])
        for(t=[max(0,(y_referencia_reposo-oy-ex[1]*l)/ey[1]),
               min(largo_tecla,(separacion-oy-ex[1]*l)/ey[1])])
            [t,ox+ex[0]*l+t*ey[0],l*ex[2]]];
function altura_origen(n,e) = holgura_reposo_trasera+max([
    for(q=esquinas_traseras(n,e)) altura_curva(q[1])-q[0]*e[1][2]-q[2]]);
function error_apoyo(n,a) = let(
    d=abanico[n],e=marco_tecla(n,a),ey=e[1],ez=e[2],
    oy=d[0][1]-d_ref*ey[1],
    ta=(y_apoyo_frontal-oy)/ey[1],
    xf=d[0][0]+(ta-d_ref)*ey[0])
    altura_origen(n,e)+ta*ey[2]-espesor_lamina/ez[2]
        -(altura_frontal(xf)-espesor_lamina);
function resolver_inclinacion(n,lo=-15,hi=15,k=48) = let(a=(lo+hi)/2)
    k==0 ? a : error_apoyo(n,a)>0
        ? resolver_inclinacion(n,a,hi,k-1)
        : resolver_inclinacion(n,lo,a,k-1);
// Cada entrada: [frente, referencia, eje lateral, eje largo, eje vertical].
datos = [for(n=notas) let(
    ref=abanico[n][0],direccion=abanico[n][1],a=resolver_inclinacion(n),
    cb=cos(a),e=marco_tecla(n,a),
    ex=e[0],ey=e[1],ez=e[2],
    origen=[ref[0]-d_ref*cb*direccion[0],ref[1]-d_ref*cb*direccion[1],
            altura_origen(n,e)])
    [origen,origen+d_ref*ey,ex,ey,ez]];

function punto(n,t) = datos[n][0]+t*datos[n][3];
function matriz(n) = let(p=datos[n][0],ex=datos[n][2],ey=datos[n][3],ez=datos[n][4])
    [[ex[0],ey[0],ez[0],p[0]],
     [ex[1],ey[1],ez[1],p[1]],
     [ex[2],ey[2],ez[2],p[2]],
     [0,0,0,1]];

// Interseccion del eje de cada tecla con el centro del travesano.
function t_en_y(n,y) = (y-datos[n][0][1])/datos[n][3][1];
function t_anclaje(n) = t_en_y(n,desplazamiento_estructura_frontal+espesor/2);
// Cortes de taller perpendiculares al eje longitudinal (planos Y locales).
// Se contemplan ancho, grosor y giro: ninguna esquina rebasa los limites.
function grosor_frontal(n) = grosor_sostenido; // Frente de 20 mm en todas las teclas.
function grosor_tecla(n) = grosor_natural; // Todas las colas tienen la misma altura.
function cortes_en_limite(n,y,grosor) = [
    for(l=[-ancho_tecla/2,ancho_tecla/2]) for(z=[0,grosor])
        (y-datos[n][0][1]-l*datos[n][2][1]-z*datos[n][4][1])/datos[n][3][1]];
function t_frente(n) = max(cortes_en_limite(n,recorte_frontal,grosor_frontal(n)));
// Ranuras de longitud identica y cortes posteriores a escuadra.
// La ranura se centra sobre el espesor laminado, en el eje de la tecla.
// Los 38.1 mm son longitud fisica; su proyeccion Y varia ligeramente por el abanico.
function centro_ranura(n) = t_en_y(n,inicio_apoyo_trasero+espesor_travesano_trasero/2);
function t_fin(n) = centro_ranura(n)+profundidad_ranura/2;
function fondo_ranura_actual(n) = centro_ranura(n)-profundidad_ranura/2;
function base_anclaje(n) = let(p=punto(n,t_anclaje(n)))
    [p[0],p[1],p[2]-espesor_lamina/datos[n][4][2]];

// Los dos cantos de todas las ventanas provienen de dos arcos globales.
// Se conserva la envolvente del techo anterior, redondeada arriba a 0.01 mm,
// para no bajar el tope sobre ninguna de las teclas en reposo.
altura_centro_techo_ventanas = ceil(100*max([
    for(n=notas) for(j=[0:32])
        for(y=[inicio_apoyo_trasero,cara_trasera_travesano]) let(
            l=medio_ancho_ventana()*(j/16-1),
            p=punto_borde_en_y(n,l,z_cielo_local_referencia(n,l),y))
            p[2]-sagita(p[0],radio_techo_ventanas)]))/100;
function altura_techo_comun(x) = altura_centro_techo_ventanas+sagita(x,radio_techo_ventanas);

// Varillas rectas en el plano transversal de la tecla, sin componente en Y.
// Asi ambos extremos se alojan entre las dos capas, sin canales en la tapa.
datos_guias = [for(n=notas) let(
    x=datos[n][2], v=[-x[2],0,x[0]], t=t_en_y(n,y_asiento_guias))
    [t,punto(n,t),v/norm(v)]];
function eje_varilla(n) = datos_guias[n][2];
function t_guia(n,s) = datos_guias[n][0];
function punto_guia(n,s) = datos_guias[n][1]+s*eje_varilla(n);

function resolver_asiento(n,altura,lo,hi,k=48) = let(
    s=(lo+hi)/2,p=punto_guia(n,s))
    k==0 ? s : p[2]>altura(p[0])
        ? resolver_asiento(n,altura,lo,s,k-1)
        : resolver_asiento(n,altura,s,hi,k-1);

// Los alojamientos, las marcas y las varillas comparten estos extremos.
asientos_guias = [for(n=notas) [
    resolver_asiento(n,function(x) altura_curva(x),-200,0),
    resolver_asiento(n,function(x) altura_techo_comun(x),0,200)]];
function s_asiento_guia(n) = asientos_guias[n][0];
function s_superficie_tecla(n) = grosor_tecla(n)/(eje_varilla(n)*datos[n][4]);
function s_canal_inferior_fin(n) = s_asiento_guia(n);
function s_canal_inferior_inicio(n) = s_canal_inferior_fin(n)-longitud_asiento_guia;
function s_canal_superior_inicio(n) = asientos_guias[n][1];
function s_canal_superior_fin(n) = s_canal_superior_inicio(n)+longitud_asiento_guia;
largo_varilla_comun = min([for(n=notas)
    s_canal_superior_fin(n)-s_canal_inferior_inicio(n)]);
// Reparte la holgura de extremo para conservar el anclaje en ambos asientos.
function inicio_varilla(n) = (s_canal_inferior_inicio(n)+s_canal_superior_fin(n)-largo_varilla_comun)/2;
function fin_varilla(n) = inicio_varilla(n)+largo_varilla_comun;
module cilindro_guia(n,inicio,fin,diametro) {
    z=eje_varilla(n);x=datos[n][2];y=cross(z,x);p=punto_guia(n,inicio);
    multmatrix([[x[0],y[0],z[0],p[0]],[x[1],y[1],z[1],p[1]],
                [x[2],y[2],z[2],p[2]],[0,0,0,1]])
        cylinder(d=diametro,h=fin-inicio,$fn=48);
}
module varilla_guia(n) {
    color("#A9B0B8") cilindro_guia(n,inicio_varilla(n),fin_varilla(n),diametro_varilla);
}
// Fresados con extremos planos a escuadra: exactamente 6.35 mm de longitud.
module asiento_recto_guia(n,inicio,fin) {
    z=eje_varilla(n);x=cross([0,1,0],z);p=punto_guia(n,inicio);
    o=p-x*ancho_canal_guia/2+[0,y_union_capas_traseras-profundidad_canal_guia-p[1],0];
    multmatrix([[x[0],0,z[0],o[0]],[x[1],1,z[1],o[1]],
                [x[2],0,z[2],o[2]],[0,0,0,1]])
        cube([ancho_canal_guia,profundidad_canal_guia+0.02,fin-inicio]);
}
module canales_guias_rectos(n) {
    // La herramienta entra un poco en el hueco para abrir toda la boca del asiento.
    asiento_recto_guia(n,s_canal_inferior_inicio(n),s_canal_inferior_fin(n)+0.25);
    asiento_recto_guia(n,s_canal_superior_inicio(n)-0.2,s_canal_superior_fin(n));
}
// Marca de referencia grabada en la cara opuesta a los canales.
// Centro 6.35 mm verticales debajo del extremo inferior de cada asiento.
module marca_cruz_guia(n) {
    p=punto_guia(n,s_canal_inferior_inicio(n));
    translate([p[0],inicio_apoyo_trasero,p[2]-6.35]) union() {
        translate([-2,-0.01,-0.3]) cube([4,0.51,0.6]);
        translate([-0.3,-0.01,-2]) cube([0.6,0.51,4]);
    }
}
function posicion_tornillo_union_trasera(i) = [
    (floor(i/2)-2)*ancho_final_travesano_trasero/5+(i==4?10:0),
    cara_trasera_travesano,i%2==0?10:altura_cierre_trasero-12];
function ver_tornillo_union_trasera(i) = [
mostrar_tornillo_union_trasera_01, mostrar_tornillo_union_trasera_02, mostrar_tornillo_union_trasera_03, mostrar_tornillo_union_trasera_04, mostrar_tornillo_union_trasera_05, mostrar_tornillo_union_trasera_06, mostrar_tornillo_union_trasera_07, mostrar_tornillo_union_trasera_08, mostrar_tornillo_union_trasera_09, mostrar_tornillo_union_trasera_10][i];
module cilindro_hacia_y(x,y,z,d,l) {
    translate([x,y,z]) rotate([-90,0,0]) cylinder(d=d,h=l,$fn=32);
}
module barrenos_union_trasera() {
    for(i=[0:9]) let(p=posicion_tornillo_union_trasera(i))
        cilindro_hacia_y(p[0],p[1]-20,p[2],3.2,20.1);
}
module tornillo_union_trasera(i) {
    p=posicion_tornillo_union_trasera(i);
    color("#89939D") {
        cilindro_hacia_y(p[0],p[1]-20,p[2],3,20);
        cilindro_hacia_y(p[0],p[1],p[2],5.5,1.8);
    }
}

module barreno_vertical(p,z0,largo) {
    translate([p[0],p[1],z0]) cylinder(d=diametro_barreno,h=largo,$fn=24);
}

// Pieza plana de espesor constante, paralela a la cara inferior de la tecla.
module lamina(n) {
    color("Silver") difference() {
        multmatrix(matriz(n))
            translate([-ancho_lamina/2,t_anclaje(n)-6,-espesor_lamina])
                cube([ancho_lamina,
                    t_frente(n)+longitud_bajo_tecla-t_anclaje(n)+6,
                    espesor_lamina]);
        barreno_vertical(base_anclaje(n),-100,1000);
        for(a=posiciones_tornillos_tecla)
            barreno_vertical(punto(n,t_frente(n)+a),-100,1000);
    }
}

// Tornillos esquematicos, sin rosca; no definen una especificacion comercial.
module tornillo_travesano(n) {
    p=base_anclaje(n);
    color("DimGray") union() {
        translate([p[0],p[1],p[2]-12]) cylinder(d=diametro_barreno,h=12+espesor_lamina);
        translate([p[0],p[1],p[2]+espesor_lamina]) cylinder(d=4,h=1.5);
    }
}
module tornillo_tecla(n,i) {
    a=posiciones_tornillos_tecla[i];
    q=punto(n,t_frente(n)+a);
    z=q[2]-espesor_lamina/datos[n][4][2];
    color("DimGray") union() {
        translate([q[0],q[1],z]) cylinder(d=diametro_barreno,h=espesor_lamina+profundidad_tornillo_tecla);
        translate([q[0],q[1],z-1.5]) cylinder(d=4,h=1.5);
    }
}
module tornillos_union(n) {
    tornillo_travesano(n);
    for(i=[0:len(posiciones_tornillos_tecla)-1]) tornillo_tecla(n,i);
}

// Cada escalon es un plano Y local: perpendicular al eje de su tecla.
// La esquina mas adelantada queda 10 mm despues del borde recto Y=102.
function inicio_crecimiento_natural(n) = max(cortes_en_limite(n,
    profundidad_tapa_delantera+salida_natural_tapa_frontal,grosor_natural));
function y_minimo_escalon_natural(n) = min([
    for(l=[-ancho_tecla/2,ancho_tecla/2]) for(z=[0,grosor_natural])
        let(p=punto(n,inicio_crecimiento_natural(n))+l*datos[n][2]+z*datos[n][4]) p[1]]);

module cuerpo_tecla(grosor,n) {
    inicio=t_frente(n);
    fin=t_fin(n);
    fondo_ranura=fondo_ranura_actual(n);
    grosor_base=grosor_sostenido;
    crecimiento=es_sostenido(n)?fin_realce(n):inicio_crecimiento_natural(n);
    assert(crecimiento>inicio && crecimiento<fin);
    assert(fin>fondo_ranura && fondo_ranura>inicio,
        "La ranura no cabe entre los cortes");
    difference() {
        // Ambos extremos a escuadra, sin cortes oblicuos globales.
        union() {
            translate([0,inicio,0]) cube([ancho_tecla,fin-inicio,grosor_base]);
            translate([0,crecimiento,grosor_base])
                cube([ancho_tecla,fin-crecimiento,grosor_natural-grosor_base]);
        }
        // Conserva el fondo; las patitas terminan en el corte posterior.
        translate([(ancho_tecla-ancho_ranura)/2,fondo_ranura,-1])
            cube([ancho_ranura,fin-fondo_ranura+1,grosor_natural+2]);
    }
}

// Arco de ataque simetrico: pasa por la cara superior del Mi3,
// 165.1 mm antes del comienzo de su ranura, medidos sobre su propio eje.
punto_arco_mi3 = punto(referencia_mi3,
    fondo_ranura_actual(referencia_mi3)-distancia_arco_ranura_mi3)
    +grosor_natural*datos[referencia_mi3][4];
centro_arco_sostenidos = [0,punto_arco_mi3[1]
    -sqrt(radio_arco_sostenidos*radio_arco_sostenidos-punto_arco_mi3[0]*punto_arco_mi3[0])];

// Punto medio del arco de los frentes de los sostenidos, sobre el eje X=0.
// El centro geometrico del circulo queda fuera de la zona de pedales.
y_centro_frente_pedales = centro_arco_sostenidos[1]+radio_arco_sostenidos;
pedal_central_manuales = 16; // Mi2 natural, centrado en X=0.
function superficie_pedal_central(y) = let(
    n=pedal_central_manuales, ez=datos[n][4],
    t=t_en_y(n,y-grosor_natural*ez[1]))
    punto(n,t)+grosor_natural*ez;
referencia_manuales = superficie_pedal_central(y_centro_frente_pedales);
y_frente_manual_inferior = referencia_manuales[1]-8.5*25.4;
z_superficie_manual_inferior = referencia_manuales[2]+29.5*25.4;

function error_inicio_realce(n,t) = let(
    p=punto(n,t)+(grosor_sostenido+realce_frente)*datos[n][4])
    norm([p[0],p[1]]-centro_arco_sostenidos)-radio_arco_sostenidos;
function resolver_inicio_realce(n,lo=0,hi=largo_tecla,k=48) = let(t=(lo+hi)/2)
    k==0 ? t : error_inicio_realce(n,t)>0
        ? resolver_inicio_realce(n,lo,t,k-1) : resolver_inicio_realce(n,t,hi,k-1);
inicios_realces = [for(n=notas)
    es_sostenido(n) ? resolver_inicio_realce(n) : undef];
function inicio_realce(n) = es_sostenido(n) ? inicios_realces[n] : resolver_inicio_realce(n);
function fin_realce(n) = fondo_ranura_actual(n)-separacion_sostenido_ranura;
function largo_realce(n) = fin_realce(n)-inicio_realce(n);

function esquinas_realce(n) = [
    for(l=[-ancho_tecla/2,ancho_tecla/2]) for(e=[0,1]) for(superior=[0,1]) let(
        t=e==0?inicio_realce(n):fin_realce(n),
        z=grosor_sostenido+(superior==0?0:(e==0?realce_frente:realce_atras)))
        punto(n,t)+l*datos[n][2]+z*datos[n][4]];
// Retira de la tapa el material que invadiria los realces prolongados.
borde_frontal_libre_tapa_trasera = max([for(n=notas)
    if(es_sostenido(n)) for(p=esquinas_realce(n)) p[1]])+holgura_realce_tapa;

module realce_sostenido(n) {
    // Extrusion de trapecio: evita caras de polyhedron mal orientadas.
    // El eje de extrusion se convierte en el ancho X de la tecla.
    multmatrix([[0,0,1,0],[1,0,0,inicio_realce(n)],
                [0,1,0,grosor_sostenido],[0,0,0,1]])
        linear_extrude(height=ancho_tecla,convexity=4)
            polygon([[0,0],[largo_realce(n),0],
                     [largo_realce(n),realce_atras],[0,realce_frente]]);
}

module tecla_original(n) {
    multmatrix(matriz(n)) translate([-ancho_tecla/2,0,0])
        if(es_sostenido(n)) {
            // Sostenido macizo: base y realce forman una sola pieza del mismo material.
            // Tzalam para las teclas sostenidas.
            color("#45291F") render(convexity=6) union() {
                cuerpo_tecla(grosor_sostenido,n);
                realce_sostenido(n);
            }
        } else color("#E19F6A") cuerpo_tecla(grosor_natural,n); // Haya.
}

// Los extremos ya se recortan en coordenadas locales dentro del cuerpo.
module tecla(n) {
    difference() {
        tecla_original(n);
        for(a=posiciones_tornillos_tecla) let(q=punto(n,t_frente(n)+a))
            barreno_vertical(q,q[2]-espesor_lamina-1,
                espesor_lamina+1+profundidad_tornillo_tecla);
    }
}

module travesano(ancho,profundidad=espesor,radio=radio_concavidad) {
    // Perfil concavo muestreado localmente: evita restar un cilindro
    // enorme con baja resolucion respecto al radio de concavidad.
    multmatrix([[1,0,0,0],[0,0,-1,profundidad],[0,1,0,0],[0,0,0,1]])
        linear_extrude(height=profundidad,convexity=4)
            polygon(concat([[-ancho/2,0],[ancho/2,0]],
                [for(i=[0:pasos_curva]) let(x=ancho/2-i*ancho/pasos_curva)
                    [x,altura_centro+sagita(x,radio)]]));
}

// Ventanas independientes: paredes paralelas a cada tecla y cielo circular.
// El techo y el apoyo son dos curvas comunes en el plano transversal global.
function medio_ancho_ventana() = ancho_tecla/2+holgura_lateral_ventana;
function z_cielo_local_referencia(n,x) = grosor_tecla(n)
    +sagita(x,radio_techo_ventanas)-sagita(ancho_ranura/2,radio_techo_ventanas);
function esquinas_cielo_global(n) = [
    for(x=[-medio_ancho_ventana(),medio_ancho_ventana()])
        for(y=[inicio_apoyo_trasero,inicio_apoyo_trasero+espesor_travesano_trasero]) let(
            z=z_cielo_local_referencia(n,x),d=datos[n],
            t=(y-d[0][1]-x*d[2][1]-z*d[4][1])/d[3][1])
            d[0]+x*d[2]+t*d[3]+z*d[4]];
// Exterior recto: la misma altura absoluta a todo lo ancho y espesor.
altura_minima_marco = max([for(n=notas)
    for(p=esquinas_cielo_global(n)) altura_techo_comun(p[0])])+espesor_cielo_trasero;
altura_exterior_marco = altura_cierre_trasero;
altura_tapa_trasera = altura_exterior_marco; // Cara inferior apoyada sobre el marco trasero.
// Laterales verticales al suelo; conservan el abanico solamente en planta.
// Se recalcula la separacion para mantener 12.7 mm libres con las teclas.
function marco_lateral(i,x,y) = let(
    m=norm([x,y-foco_radial_y]),u=x/m,v=(y-foco_radial_y)/m)
    [[v,-u,0],[u,v,0],[0,0,1]];
function datos_lateral_con_paso(i,paso) = let(
    lado=i==0?-1:1,x=lado*(abs(x_ref(cantidad_teclas-1))+paso),
    y=y_ref_central-sagita(x,radio_distribucion),e=marco_lateral(i,x,y))
    [[x,y,0],e[0],e[1],e[2]];
// Vertices reales de los cuerpos escalonados y realces; las ranuras no
// eliminan ninguna esquina exterior relevante para la distancia lateral.
function esquinas_cuerpo_lateral(n) = let(
    a=t_frente(n),b=t_fin(n),
    c=es_sostenido(n)?fin_realce(n):inicio_crecimiento_natural(n))
    [for(l=[-ancho_tecla/2,ancho_tecla/2])
        for(v=[[a,0],[b,0],[a,grosor_sostenido],[b,grosor_sostenido],
               [c,grosor_natural],[b,grosor_natural]])
            punto(n,v[0])+l*datos[n][2]+v[1]*datos[n][4]];
puntos_control_laterales = concat(
    [for(n=notas) each esquinas_cuerpo_lateral(n)],
    [for(n=notas) if(es_sostenido(n)) each esquinas_realce(n)]);
function luz_lateral_con_paso(i,paso) = let(d=datos_lateral_con_paso(i,paso),
    signo=i==0?1:-1)
    min([for(p=puntos_control_laterales) signo*((p-d[0])*d[1])-espesor_lateral/2]);
function resolver_separacion_lateral(lo=20,hi=63.5,k=40) = let(
    paso=(lo+hi)/2,luz=min([for(i=[0:1]) luz_lateral_con_paso(i,paso)]))
    k==0 ? paso : luz<holgura_laterales
        ? resolver_separacion_lateral(paso,hi,k-1)
        : resolver_separacion_lateral(lo,paso,k-1);
paso_lateral = resolver_separacion_lateral();
datos_laterales = [for(i=[0:1]) datos_lateral_con_paso(i,paso_lateral)];
function matriz_lateral(i) = let(d=datos_laterales[i],p=d[0],ex=d[1],ey=d[2],ez=d[3])
    [[ex[0],ey[0],ez[0],p[0]],[ex[1],ey[1],ez[1],p[1]],
     [ex[2],ey[2],ez[2],p[2]],[0,0,0,1]];
function x_interior_lateral(i,y,z=0) = let(d=datos_laterales[i],
    offset=i==0?espesor_lateral/2:-espesor_lateral/2)
    (d[1]*d[0]+offset-d[1][1]*y-d[1][2]*z)/d[1][0];
module semiespacio_lateral(i) {
    // Plano de la cara interior real, incluyendo el giro transversal.
    multmatrix(matriz_lateral(i))
        translate([i==0?espesor_lateral/2:-3000-espesor_lateral/2,-3000,-3000])
            cube([3000,6000,6000]);
}
module limite_cierre_trasero() {
    intersection() {
        semiespacio_lateral(0);
        semiespacio_lateral(1);
        translate([-2000,-2000,-1000])
            cube([4000,2000+cara_trasera_travesano,3000]);
    }
}
// Cota superior de la natural exterior en la misma seccion Y.
function altura_natural_lateral(i,y,grosor=grosor_natural) = let(
    n=i==0?0:cantidad_teclas-1,l=i==0?-ancho_tecla/2:ancho_tecla/2,
    p=punto_borde_en_y(n,l,grosor,y)) p[2];
function y_escalon_natural_lateral(i) = let(
    n=i==0?0:cantidad_teclas-1,l=i==0?-ancho_tecla/2:ancho_tecla/2,
    p=punto(n,inicio_crecimiento_natural(n))+l*datos[n][2]+grosor_natural*datos[n][4]) p[1];
function y_arco_lateral(i) = let(
    d=datos_laterales[i],v=[d[2][0],d[2][1]],
    q=[d[0][0],d[0][1]]-centro_arco_sostenidos,
    h=q*v,t=-h+sqrt(h*h-(q*q-radio_arco_sostenidos*radio_arco_sostenidos)))
    d[0][1]+t*d[2][1];
function y_elevacion_lateral(i) = y_arco_lateral(i)+retraso_elevacion_lateral;
function perfil_lateral(i) = let(
    ya=y_elevacion_lateral(i),
    h_bajo=altura_natural_lateral(i,ya),h_arco=h_bajo+altura_sostenido_frente,
    h_tapa=altura_tapa_frontal+espesor,
    h_natural_frente=altura_natural_lateral(i,profundidad_tapa_delantera),
    y_union=max(profundidad_tapa_delantera,min(ya,
        profundidad_tapa_delantera+(h_tapa-h_natural_frente)
            *(ya-profundidad_tapa_delantera)/(h_bajo-h_natural_frente))))
    [[inicio_lateral_y,0],[inicio_apoyo_trasero,0],
     [inicio_apoyo_trasero,altura_cierre_trasero],
     [ya,h_arco],[ya,h_bajo],
     // Rellena la muesca: continua al ras de la cara superior de la tapa
     // hasta enlazar sin escalones con la linea de las naturales.
     [y_union,h_tapa],
     [profundidad_tapa_delantera,h_tapa],
     [profundidad_tapa_delantera,altura_tapa_frontal],
     [inicio_lateral_y,altura_tapa_frontal]];
module tapa_lateral(i) {
    intersection() {
        multmatrix(matriz_lateral(i)) translate([-espesor_lateral/2,-3000,0])
            cube([espesor_lateral,6000,altura_cierre_trasero]);
        // Corte global a escuadra: los laterales terminan en la cara delantera
        // del travesano doble (Y=824.6), incluso al cambiar su espesor.
        translate([-2000,inicio_lateral_y,0])
            cube([4000,inicio_apoyo_trasero-inicio_lateral_y,altura_cierre_trasero]);
        // El perfil conserva la forma estetica; el limite anterior fija la union a tope.
        multmatrix([[0,0,1,-2000],[1,0,0,0],[0,1,0,0],[0,0,0,1]])
            linear_extrude(height=4000,convexity=6) polygon(perfil_lateral(i));
    }
}
function x_exterior_lateral(i,y) = x_interior_lateral(i,y)
    +(i==0?-1:1)*espesor_lateral/datos_laterales[i][1][0];
module semiespacio_exterior_lateral(i) {
    multmatrix(matriz_lateral(i))
        translate([i==0?-espesor_lateral/2:-3000+espesor_lateral/2,-3000,-3000])
            cube([3000,6000,6000]);
}
module limite_exterior_laterales() {
    // Dos hijos independientes: no agrupar los semiespacios con un for/union.
    intersection() {
        semiespacio_exterior_lateral(0);
        semiespacio_exterior_lateral(1);
        translate([-2000,-2000,-1000]) cube([4000,2000+cara_trasera_travesano,3000]);
    }
}
// Orejas superiores del travesano frontal. Se dejan 2 mm libres respecto a
// las laminas de acero, ademas de conservar el perfil concavo inferior.
function luz_lamina_lateral(i) = let(d=datos_laterales[i],signo=i==0?1:-1)
    min([for(n=notas) for(l=[-ancho_lamina/2,ancho_lamina/2])
        for(t=[t_anclaje(n)-espesor,t_anclaje(n)+espesor]) for(z=[-espesor_lamina,0])
            let(p=punto(n,t)+l*datos[n][2]+z*datos[n][4])
            signo*((p-d[0])*d[1])-espesor_lateral/2]);
function ancho_oreja_frontal(i) = min(espesor,luz_lamina_lateral(i)-2);
module orejas_travesano_frontal() {
    for(i=[0:1]) let(w=ancho_oreja_frontal(i)) intersection() {
        multmatrix(matriz_lateral(i))
            translate([i==0?espesor_lateral/2:-espesor_lateral/2-w,-3000,0])
                cube([w,6000,altura_tapa_frontal]);
        translate([-2000,desplazamiento_estructura_frontal,0])
            cube([4000,espesor,altura_tapa_frontal]);
    }
}
// Recorte inferior: elimina el excedente de 2 mm causado por alojar la lamina.
module travesano_frontal_completo() {
    intersection() {
        travesano_frontal_sin_recorte_inferior();
        translate([-2000,-2000,0]) cube([4000,4000,2000]);
    }
}
// Referencias 2D sin ancho ni profundidad: no se restan del solido.
// Se exportan como lineas de 4 mm para STEP/DXF, centradas en los barrenos.
function extremos_marca_frontal(n) = let(
    x=base_anclaje(n)[0],z=altura_frontal(x)-espesor_lamina-2.5)
    [[x,desplazamiento_estructura_frontal,z-2],
     [x,desplazamiento_estructura_frontal,z+2]];
module travesano_frontal_sin_recorte_inferior() {
    difference() {
        union() {
            intersection() {
                translate([0,desplazamiento_estructura_frontal,-espesor_lamina])
                    travesano(ancho_delantero,espesor,radio_travesano_frontal);
                limite_cierre_trasero();
            }
            orejas_travesano_frontal();
        }
        for(n=notas) {
            barreno_vertical(base_anclaje(n),-100,1000);
        }
    }
}
// El travesano cierra por detras: extremos rectos y 19.05 mm mas por lado.
// Se toma como referencia el ancho maximo anterior, en su cara posterior Y=850.
x_izquierda_travesano_trasero = x_interior_lateral(0,cara_trasera_travesano)
    -crecimiento_travesano_trasero_por_lado;
x_derecha_travesano_trasero = x_interior_lateral(1,cara_trasera_travesano)
    +crecimiento_travesano_trasero_por_lado;
ancho_final_travesano_trasero = x_derecha_travesano_trasero-x_izquierda_travesano_trasero;
module volumen_lamina_trasera(y) {
    translate([x_izquierda_travesano_trasero,y,0])
        cube([ancho_final_travesano_trasero,espesor_capa_trasera,altura_cierre_trasero]);
}
module base_travesano_trasero() {
    difference() {
        intersection() { marco_trasero_sin_recorte();volumen_lamina_trasera(inicio_apoyo_trasero); }
        for(n=notas) { canales_guias_rectos(n);marca_cruz_guia(n); }
        barrenos_union_trasera();
    }
}
module tapa_travesano_trasero() {
    difference() {
        // Misma serie de ventanas, pero sin ningun canal para varillas.
        intersection() { marco_trasero_sin_recorte();volumen_lamina_trasera(y_union_capas_traseras); }
        barrenos_union_trasera();
    }
}
module marco_trasero() { base_travesano_trasero();tapa_travesano_trasero(); }
module tapa_trasera_ajustada() {
    intersection() {
        translate([0,referencia_tapa_trasera,altura_tapa_trasera]) tapa_trasera();
        limite_cierre_trasero();
        translate([-2000,borde_frontal_libre_tapa_trasera,-1000]) cube([4000,2000,3000]);
    }
}

function inicio_ventana(n) = t_en_y(n,inicio_apoyo_trasero)-100;
function fin_ventana(n) = t_en_y(n,inicio_apoyo_trasero+espesor_travesano_trasero)+100;
module ventana_trasera(n) {
    w=medio_ancho_ventana();
    z_bajo=-holgura_reposo_trasera-espesor-5;
    // Las paredes siguen el abanico; el techo y piso se recortan luego con el arco comun.
    multmatrix(matriz(n)) translate([-w,inicio_ventana(n),z_bajo])
        cube([2*w,fin_ventana(n)-inicio_ventana(n),2*altura_cierre_trasero]);
}
// Conserva separadores solo en los intervalos Mi-Fa y Si-Do.
function conservar_separador(n) = !es_sostenido(n) && !es_sostenido(n+1);
function borde_ventana(n,l,z,y) = let(
    d=datos[n],
    t=(y-d[0][1]-l*d[2][1]-z*d[4][1])/d[3][1])
    d[0]+l*d[2]+t*d[3]+z*d[4];
// Interseccion del costado de la ventana con una cota Z global.
function borde_ventana_cota(n,l,y,z) = let(d=datos[n],
    yy=y-d[0][1]-l*d[2][1],zz=z-d[0][2]-l*d[2][2],
    zl=(zz*d[3][1]-yy*d[3][2])/(d[4][2]*d[3][1]-d[4][1]*d[3][2]))
    borde_ventana(n,l,zl,y);
module unir_ventanas(n) {
    // Abre solamente el espacio entre bordes: no retira los topes sobre las teclas.
    y0=inicio_apoyo_trasero-0.01;
    y1=inicio_apoyo_trasero+espesor_travesano_trasero+0.01;
    a=borde_ventana_cota(n,medio_ancho_ventana(),y0,altura_cierre_trasero+10)+[-0.02,0,0];
    b=borde_ventana_cota(n+1,-medio_ancho_ventana(),y0,altura_cierre_trasero+10)+[0.02,0,0];
    c=borde_ventana_cota(n+1,-medio_ancho_ventana(),y1,altura_cierre_trasero+10)+[0.02,0,0];
    d=borde_ventana_cota(n,medio_ancho_ventana(),y1,altura_cierre_trasero+10)+[-0.02,0,0];
    z_bajo=-holgura_reposo_trasera-espesor-5;
    aa=borde_ventana(n,medio_ancho_ventana(),z_bajo,y0)+[-0.02,0,0];
    bb=borde_ventana(n+1,-medio_ancho_ventana(),z_bajo,y0)+[0.02,0,0];
    cc=borde_ventana(n+1,-medio_ancho_ventana(),z_bajo,y1)+[0.02,0,0];
    dd=borde_ventana(n,medio_ancho_ventana(),z_bajo,y1)+[-0.02,0,0];
    // Si las ventanas ampliadas ya se solapan, no hace falta otro vaciado.
    if(a[0]<b[0] && d[0]<c[0])
    polyhedron(points=[aa,bb,cc,dd,a,b,c,d],faces=[
        [0,3,2],[0,2,1],[4,5,6],[4,6,7],
        [0,1,5,4],[1,2,6,5],[2,3,7,6],[3,0,4,7]],convexity=4);
}

module banda_curva_ventanas() {
    // Un solo perfil X/Z para ambos travesanos, extruido a lo largo del espesor.
    multmatrix([[1,0,0,0],[0,0,1,inicio_apoyo_trasero-0.01],[0,1,0,0],[0,0,0,1]])
        linear_extrude(height=espesor_travesano_trasero+0.02,convexity=4)
            polygon(concat(
                [for(i=[0:pasos_curva]) let(x=-ancho_trasero/2+i*ancho_trasero/pasos_curva)
                    [x,altura_curva(x)]],
                [for(i=[0:pasos_curva]) let(x=ancho_trasero/2-i*ancho_trasero/pasos_curva)
                    [x,altura_techo_comun(x)]]));
}
module marco_trasero_sin_recorte() {
    difference() {
        translate([-ancho_trasero/2,inicio_apoyo_trasero,0])
            cube([ancho_trasero,espesor_travesano_trasero,altura_exterior_marco]);
        intersection() {
            banda_curva_ventanas();
            union() {
                for(n=notas) ventana_trasera(n);
                for(n=[0:cantidad_teclas-2]) if(!conservar_separador(n)) unir_ventanas(n);
            }
        }
    }
}

module tapa_trasera() {
    linear_extrude(height=espesor,convexity=4)
        polygon(concat([[-ancho_trasero/2,0],[ancho_trasero/2,0]],
            [for(i=[0:pasos_curva]) let(x=ancho_trasero/2-i*ancho_trasero/pasos_curva)
                [x,-profundidad_tapa_trasera-sagita(x,radio_distribucion)]]));
}
// Recorta las caras superiores de 20 mm contra la planta real de la tapa.
// El maximo de Z en esos poligonos da la tecla mas alta que queda debajo.
function cruz_xy(a,b) = a[0]*b[1]-a[1]*b[0];
function recortar_arista(poly,a,b) = len(poly)==0?[]:[
    for(i=[0:len(poly)-1]) let(
        p=poly[(i+len(poly)-1)%len(poly)],q=poly[i],
        cp=cruz_xy(b-a,p-a),cq=cruz_xy(b-a,q-a),
        pin=cp>=0,qin=cq>=0)
        each(pin && qin ? [q] : pin && !qin ? [p+(q-p)*cp/(cp-cq)] :
            !pin && qin ? [p+(q-p)*cp/(cp-cq),q] : [])];
function recortar_planta(poly,borde,i=0) = i==len(borde)||len(poly)==0 ? poly :
    recortar_planta(recortar_arista(poly,borde[i],borde[(i+1)%len(borde)]),borde,i+1);
// Trapecio en planta: ambos extremos son las caras exteriores exactas de los laterales.
function planta_tapa_frontal() = [
    [x_exterior_lateral(0,0),0,0],[x_exterior_lateral(1,0),0,0],
    [x_exterior_lateral(1,profundidad_tapa_delantera),profundidad_tapa_delantera,0],
    [x_exterior_lateral(0,profundidad_tapa_delantera),profundidad_tapa_delantera,0]];
function cara_delgada_bajo_tapa(n) = let(
    inicio=t_frente(n),fin=es_sostenido(n)?fin_realce(n):inicio_crecimiento_natural(n))
    [for(v=[[-ancho_tecla/2,inicio],[ancho_tecla/2,inicio],
            [ancho_tecla/2,fin],[-ancho_tecla/2,fin]])
        punto(n,v[1])+v[0]*datos[n][2]+grosor_frontal(n)*datos[n][4]];
caras_bajo_tapa = [for(n=notas)
    recortar_planta(cara_delgada_bajo_tapa(n),planta_tapa_frontal())];
altura_maxima_bajo_tapa = max([for(cara=caras_bajo_tapa) for(p=cara) p[2]]);
altura_tapa_frontal = altura_maxima_bajo_tapa+holgura_vertical_tapa_frontal;

// Faldon de 3/4: cara posterior en Y=102; todo el espesor bajo la tapa.
inicio_faldon_frontal = profundidad_tapa_delantera-espesor_faldon_frontal;
function planta_faldon_frontal() = [
    [-ancho_delantero/2,inicio_faldon_frontal,0],
    [ancho_delantero/2,inicio_faldon_frontal,0],
    [ancho_delantero/2,profundidad_tapa_delantera,0],
    [-ancho_delantero/2,profundidad_tapa_delantera,0]];
caras_bajo_faldon = [for(n=notas)
    recortar_planta(cara_delgada_bajo_tapa(n),planta_faldon_frontal())];
function cota_sobre_arco_faldon(p) = p[2]-sagita(p[0],radio_travesano_frontal);
function maximo_segmento_faldon(p,q) = let(
    d=q-p,dx=d[0],pendiente=abs(dx)>0.000000001?d[2]/dx:0,
    xcrit=radio_travesano_frontal*pendiente/sqrt(1+pendiente*pendiente),
    t=abs(dx)>0.000000001?max(0,min(1,(xcrit-p[0])/dx)):0)
    max(cota_sobre_arco_faldon(p),cota_sobre_arco_faldon(q),
        cota_sobre_arco_faldon(p+t*d));
desfase_arco_faldon = holgura_faldon_frontal+max([
    for(cara=caras_bajo_faldon) if(len(cara)>0) for(i=[0:len(cara)-1])
        maximo_segmento_faldon(cara[i],cara[(i+1)%len(cara)])]);
function borde_inferior_faldon(x) = desfase_arco_faldon+sagita(x,radio_travesano_frontal);
module faldon_frontal() {
    intersection() {
        difference() {
            translate([-ancho_delantero/2,inicio_faldon_frontal,0])
                cube([ancho_delantero,espesor_faldon_frontal,altura_tapa_frontal]);
            // Vacia todo lo que queda por debajo del arco de seguridad.
            multmatrix([[1,0,0,0],[0,0,1,inicio_faldon_frontal-0.01],
                        [0,1,0,0],[0,0,0,1]])
                linear_extrude(height=espesor_faldon_frontal+0.02,convexity=4)
                    polygon(concat([[-ancho_delantero/2,-1000],[ancho_delantero/2,-1000]],
                        [for(i=[0:pasos_curva]) let(x=ancho_delantero/2-i*ancho_delantero/pasos_curva)
                            [x,borde_inferior_faldon(x)]]));
        }
        // Limita el faldon al espacio entre las caras interiores de los laterales.
        limite_cierre_trasero();
    }
}

module tapa_superior_frontal() {
    linear_extrude(height=espesor,convexity=4)
        polygon([for(p=planta_tapa_frontal()) [p[0],p[1]]]);
}

// Tapa frontal vertical de una pieza: cierra el hueco y oculta las uniones.
// Sus extremos siguen las caras interiores de los laterales, sin solaparlas.
module tapa_frontal_vertical() {
    intersection() {
        translate([-ancho_delantero/2,0,0])
            cube([ancho_delantero,espesor_tapa_frontal_vertical,altura_tapa_frontal]);
        limite_cierre_trasero();
    }
}

// Travesano laminado: Y=824.60..837.30 base; Y=837.30..850 contratapa. Total 25.4 mm.
function punto_borde_en_y(n,l,z,y) = let(d=datos[n],
    t=(y-d[0][1]-l*d[2][1]-z*d[4][1])/d[3][1])
    punto(n,t)+l*d[2]+z*d[4];
function altura_realce_completo(n) = max([
    for(l=[-ancho_tecla/2,ancho_tecla/2]) for(e=[0,1]) let(
        t=e==0?inicio_realce(n):fin_realce(n),
        z=grosor_sostenido+(e==0?realce_frente:realce_atras),
        p=punto(n,t)+l*datos[n][2]+z*datos[n][4]) p[2]]);
altura_real_sostenido_maximo = max([for(n=notas)
    if(es_sostenido(n)) altura_realce_completo(n)]);
function ancho_juego_varillas() = let(y=inicio_apoyo_trasero+espesor_travesano_trasero/2,
    a=punto_borde_en_y(0,ancho_tecla/2,grosor_natural,y),
    b=punto_borde_en_y(cantidad_teclas-1,-ancho_tecla/2,grosor_natural,y)) b[0]-a[0];

module validar() {
    assert(espesor_travesano_trasero==25.4 && espesor_capa_trasera==12.7);
    assert(profundidad_canal_guia<espesor_capa_trasera && ancho_canal_guia>diametro_varilla);
    for(n=notas) {
        assert(abs(s_canal_inferior_fin(n)-s_canal_inferior_inicio(n)-longitud_asiento_guia)<tolerancia);
        assert(abs(s_canal_superior_fin(n)-s_canal_superior_inicio(n)-longitud_asiento_guia)<tolerancia);
        assert(abs(eje_varilla(n)[1])<tolerancia);
    }
    assert(ancho_final_travesano_trasero<=ancho_trasero);
    assert(abs(ancho_final_travesano_trasero
        -(x_interior_lateral(1,cara_trasera_travesano)-x_interior_lateral(0,cara_trasera_travesano))
        -2*crecimiento_travesano_trasero_por_lado)<tolerancia);
    assert(x_izquierda_travesano_trasero<=x_exterior_lateral(0,inicio_apoyo_trasero));
    assert(x_derecha_travesano_trasero>=x_exterior_lateral(1,inicio_apoyo_trasero));
    for(i=[0:1]) for(p=perfil_lateral(i)) assert(p[0]<=inicio_apoyo_trasero+tolerancia,
        "Lateral invade el travesano trasero");
    assert(espesor_tapa_frontal_vertical>0 && espesor_tapa_frontal_vertical<=desplazamiento_estructura_frontal,
        "Tapa frontal invade el travesano");
    for(y=[0,espesor_tapa_frontal_vertical]) for(i=[0:1])
        assert(abs(x_interior_lateral(i,y))<ancho_delantero/2,
            "La tapa frontal no alcanza los laterales");
    assert(inicio_faldon_frontal>=0 && espesor_faldon_frontal>0);
    assert(borde_inferior_faldon(0)<altura_tapa_frontal,"El faldon no tiene altura util");
    for(cara=caras_bajo_faldon) for(p=cara)
        assert(borde_inferior_faldon(p[0])-p[2]>=holgura_faldon_frontal-tolerancia,
            "Holgura insuficiente bajo el faldon");
    assert(abs(min([for(i=[0:1]) luz_lateral_con_paso(i,paso_lateral)])
        -holgura_laterales)<tolerancia,"Separacion lateral incorrecta");
    assert(altura_exterior_marco==altura_cierre_trasero && altura_exterior_marco>=altura_minima_marco);
    for(i=[0:1]) let(d=datos_laterales[i]) {
        assert(abs(d[1][2])<tolerancia && abs(d[2][2])<tolerancia && d[3]==[0,0,1],
            "Lateral no perpendicular al suelo");
        assert(y_elevacion_lateral(i)>profundidad_tapa_delantera && y_elevacion_lateral(i)<inicio_apoyo_trasero);
        assert(ancho_oreja_frontal(i)>0,"No cabe la oreja frontal sin invadir la lamina");
        for(p=perfil_lateral(i)) assert(p[1]>=0 && p[1]<=altura_cierre_trasero);
        assert(perfil_lateral(i)[0][0]==0);
        for(j=[1:3]) assert(abs(norm(d[j])-1)<tolerancia);
    }
    assert(abs(norm([punto_arco_mi3[0],punto_arco_mi3[1]]-centro_arco_sostenidos)
        -radio_arco_sostenidos)<tolerancia);
    assert(borde_frontal_libre_tapa_trasera<cara_trasera_travesano,
        "No queda ancho disponible para la tapa trasera");
    assert(abs(inicio_apoyo_trasero+espesor_travesano_trasero-cara_trasera_travesano)<tolerancia);
    assert(ancho_juego_varillas()>0);
    assert(altura_real_sostenido_maximo<=altura_maxima_sostenidos+tolerancia,
        "Sostenido supera 180 mm desde el suelo");
    for(n=notas) {
        p=base_anclaje(n);
        assert(abs(p[0])+ancho_lamina/2<ancho_delantero/2,
            "Lamina fuera del travesano frontal");
    }
    assert(holgura_vertical_tapa_frontal>0);
    assert(abs(altura_tapa_frontal-altura_maxima_bajo_tapa-holgura_vertical_tapa_frontal)<tolerancia);
    for(cara=caras_bajo_tapa) for(p=cara)
        assert(altura_tapa_frontal-p[2]>=holgura_vertical_tapa_frontal-tolerancia);
    for(n=notas) if(!es_sostenido(n)) {
        assert(abs(y_minimo_escalon_natural(n)
            -profundidad_tapa_delantera-salida_natural_tapa_frontal)<tolerancia,
            "Escalon natural sin holgura respecto a la tapa frontal");
    }
    assert(holgura_lateral_ventana>0);
    assert(espesor_cielo_trasero>0);
    assert(radio_techo_ventanas>medio_ancho_ventana());
    for(n=notas) {
        for(p=esquinas_cielo_global(n)) {
            assert(abs(p[0])+holgura_lateral_ventana<ancho_trasero/2,
                "Ventana fuera del marco trasero");
            assert(altura_exterior_marco-altura_techo_comun(p[0])>=espesor_cielo_trasero-tolerancia);
            assert(altura_techo_comun(p[0])>=p[2]-tolerancia);
        }
    }
    assert(diametro_varilla<ancho_ranura);
    for(n=notas) let(
        s=s_asiento_guia(n),t=t_guia(n,s),p=punto_guia(n,s),
        fondo=fondo_ranura_actual(n)) {
        assert(abs(p[2]-altura_curva(p[0]))<tolerancia);
        assert(s-inicio_varilla(n)>=incrustacion_varilla-tolerancia);
        assert(fin_varilla(n)-s_canal_superior_inicio(n)>=incrustacion_varilla-tolerancia);
        assert(t-diametro_varilla/2>fondo && t+diametro_varilla/2<t_fin(n),
            "Varilla fuera de la ranura");
        assert(abs(p[1]-y_asiento_guias)<tolerancia);
    }
    for(n=notas) {
        assert(t_fin(n)>t_frente(n));
        frente_y=[for(l=[-ancho_tecla/2,ancho_tecla/2]) for(z=[0,grosor_frontal(n)])
            let(p=punto(n,t_frente(n))+l*datos[n][2]+z*datos[n][4]) p[1]];
        fin_y=[for(l=[-ancho_tecla/2,ancho_tecla/2]) for(z=[0,grosor_tecla(n)])
            let(p=punto(n,t_fin(n))+l*datos[n][2]+z*datos[n][4]) p[1]];
        assert(abs(min(frente_y)-recorte_frontal)<tolerancia);
        assert(abs(t_fin(n)-fondo_ranura_actual(n)-profundidad_ranura)<tolerancia);
        assert(abs(profundidad_ranura-espesor_travesano_trasero-2*margen_ranura_travesano)<tolerancia);
        assert(min(fin_y)>cara_trasera_travesano,
            "Las patitas no sobresalen por detras del travesano");
        inicio_ranura_y=[for(l=[-ancho_tecla/2,ancho_tecla/2]) for(z=[0,grosor_tecla(n)])
            let(p=punto(n,fondo_ranura_actual(n))+l*datos[n][2]+z*datos[n][4]) p[1]];
        assert(max(inicio_ranura_y)<inicio_apoyo_trasero,
            "La ranura no empieza antes del travesano");
    }
    for(n=notas) if(es_sostenido(n)) {
        assert(abs(error_inicio_realce(n,inicio_realce(n)))<tolerancia,
            "Frente del realce fuera del arco");
        assert(abs(fin_realce(n)-fondo_ranura_actual(n))<tolerancia);
        assert(inicio_realce(n)>t_frente(n) && largo_realce(n)>0);
    }
    for(n=notas) {
        p=base_anclaje(n);
        assert(abs(p[2]-(altura_frontal(p[0])-espesor_lamina))<tolerancia,
            "Lamina fuera del apoyo frontal");
        a=asin(datos[n][3][2]);
        holguras=[for(q=esquinas_traseras(n,marco_tecla(n,a)))
            datos[n][0][2]+q[0]*sin(a)+q[2]-altura_curva(q[1])];
        assert(min(holguras)>=holgura_reposo_trasera-tolerancia,
            "Holgura insuficiente sobre el tope trasero");
        assert(abs(min(holguras)-holgura_reposo_trasera)<tolerancia,
            "Holgura de reposo incorrecta");
        assert(abs(error_apoyo(n,-15))>0 && error_apoyo(n,-15)>0
            && error_apoyo(n,15)<0,"Inclinacion sin solucion acotada");
    }
    assert(abs(paso_naturales-63.5)<tolerancia);
    for(n=notas) let(
        d=datos[n], r=punto(n,d_ref), fondo=punto(n,largo_tecla-profundidad_ranura_referencia)) {
        assert(norm(r-d[1])<tolerancia,"Referencia transformada incorrecta");
        assert(abs(norm(punto(n,largo_tecla)-d[0])-largo_tecla)<tolerancia,
            "Longitud fisica incorrecta");
        assert(abs(norm(r-fondo)-distancia_referencia)<tolerancia);
        assert(abs(norm([r[0],r[1]-(y_ref_central-radio_distribucion)])
            -radio_distribucion)<tolerancia,"Referencia fuera del arco");
        for(j=[2:4]) assert(abs(norm(d[j])-1)<tolerancia);
        assert(abs(d[2]*d[3])<tolerancia && abs(d[2]*d[4])<tolerancia
            && abs(d[3]*d[4])<tolerancia,"Transformacion no rigida");
        if(informe_detallado) echo("Tecla",n,"frente",d[0],
            "referencia",d[1],"fin",punto(n,largo_tecla));
    }
    // Naturales consecutivas, incluidos los intervalos Mi-Fa y Si-Do.
    for(n=[0:cantidad_teclas-2]) if(!es_sostenido(n))
        let(j=n+(es_sostenido(n+1)?2:1)) if(j<cantidad_teclas)
            assert(abs(datos[j][1][0]-datos[n][1][0]-63.5)<tolerancia);
    // Sostenidas dentro de cada grupo: C#-D#, F#-G#-A#.
    for(n=[0:cantidad_teclas-3]) if(es_sostenido(n) && es_sostenido(n+2))
        assert(abs(datos[n+2][1][0]-datos[n][1][0]-63.5)<tolerancia);
    // Saltos entre grupos: no convertirlos en un paso uniforme.
    for(n=[0:cantidad_teclas-4]) if(es_sostenido(n) && es_sostenido(n+3))
        assert(abs(datos[n+3][1][0]-datos[n][1][0]-127)<tolerancia);
    if(informe_detallado) echo("Radios vertical/planta",radio_concavidad,radio_distribucion,
        "Foco Y",foco_radial_y,"Paso posterior X",paso_naturales,
        "Luz en varillas",ancho_juego_varillas(),
        "Altura maxima sostenido",altura_real_sostenido_maximo);
}
assert(ancho_lamina>diametro_barreno && ancho_lamina<ancho_tecla);
assert(espesor_lamina>0);
assert(holgura_reposo_trasera>0);
for(a=posiciones_tornillos_tecla) assert(a>5 && a<longitud_bajo_tecla);
validar();

if(mostrar_manuales) {
    if(informe_detallado) echo("Manuales: referencia pedal en reposo",referencia_manuales,
        "Y frente inferior",y_frente_manual_inferior,
        "Z superficie inferior",z_superficie_manual_inferior);
    manuales_organo(y_frente_manual_inferior,z_superficie_manual_inferior);
}

// Los controles generales actuan como interruptores maestros de cada grupo.
// Las perforaciones siempre pertenecen a su pieza, aunque se oculte el herraje.
// Encino americano en el bastidor y nogal americano en los cierres.
if(mostrar_estructuras) color("#97745E") {
    if(mostrar_travesano_frontal) travesano_frontal_completo();
    if(mostrar_travesano_trasero) base_travesano_trasero();
    if(mostrar_tapa_travesano_trasero) color("#66372A") tapa_travesano_trasero();
}
if(mostrar_laterales) color("#66372A") {
    if(mostrar_lateral_izquierdo) tapa_lateral(0);
    if(mostrar_lateral_derecho) tapa_lateral(1);
}
if(mostrar_varillas) for(n=notas)
    if(ver_varilla(n)) varilla_guia(n);
if(mostrar_laminas) for(n=notas)
    if(ver_lamina(n)) lamina(n);
if(mostrar_tornillos) for(n=notas) {
    if(ver_tornillo_travesano(n)) tornillo_travesano(n);
    if(ver_tornillo_tecla_1(n)) tornillo_tecla(n,0);
    if(ver_tornillo_tecla_2(n)) tornillo_tecla(n,1);
}
if(mostrar_tornillos_union_trasera) for(i=[0:9])
    if(ver_tornillo_union_trasera(i)) tornillo_union_trasera(i);
if(mostrar_teclas) for(n=notas) tecla(n);
if(mostrar_tapas) color("#66372A") {
    if(mostrar_tapa_frontal_vertical) tapa_frontal_vertical();
    if(mostrar_faldon_frontal) faldon_frontal();
    if(mostrar_tapa_superior_frontal) intersection() {
        translate([0,0,altura_tapa_frontal]) tapa_superior_frontal();
        limite_exterior_laterales();
    }
}
// LIMITES CONOCIDOS: el apoyo frontal se desplaza 19.05 mm hacia atras.
// Apoyo frontal bajado 2 mm; travesano trasero 12.7+12.7 mm con cara posterior Y=850.
// Transformaciones recalculadas con radios BDO; paso 63.5 y luz de juego conservados.
// Laterales a tope en Y=824.60; travesano posterior mas ancho, con extremos a escuadra.
// Giro longitudinal tangente al perfil frontal; reposo conservado con referencia virtual.
// Patitas prolongadas mas alla del canto trasero. Ranuras de 38.1 mm centradas sobre el travesano de 25.4.
// Guias con dos asientos rectos de 6.35 mm en la base; tapa de madera sin canales.
// Extremos frontal y posterior perpendiculares al eje de cada tecla.
// Laminas rectas en reposo. Flexion, cargas y recorrido no calculados.
// Marco trasero: cielo circular, coronacion recta y separadores solo entre Mi-Fa y Si-Do.
// Cielo y apoyo: dos arcos globales compartidos por todas las ventanas.
// El recorrido accionado y la flexion de las laminas no estan simulados.
