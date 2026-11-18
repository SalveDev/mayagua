// Estudio de consola para el organo MIDI. Unidades: mm.
// Abrir este archivo para ver el conjunto. Los modelos base no se alteran.
include <modelos/pedalera_recortada.scad>

/* [Consola del organo] */
mostrar_consola = true;
consola_espesor = 25.4;
consola_holgura_pedalera = 15;
consola_altura_sobre_manual = 190;
mostrar_registros = true;
mostrar_botones_registro = true;
mostrar_encendido_y_volumen = true;
mostrar_atril = true;
saliente_secreter = 22;
mostrar_secreter = true;
apertura_secreter = 1; // [0:0.05:1]

/* [Banco] */
mostrar_banco = true;
banco_distancia_manual = 210;

/* [Hidden] */
// Nogal americano: tono medio, veta clara y veta oscura del catálogo.
consola_madera = "#66372A";
consola_cantos = "#673B2F";
consola_frentes = "#633426";

// Dimensiones de la envolvente de manuales.scad: dos cajas escalonadas,
// contando las tapas laterales de 25.4 mm y los salientes de 3 mm.
consola_ancho_manuales = 33*(164-6)/7 + 32 + 2*25.4;
consola_frente = y_frente_manual_inferior - 3;
consola_base_manuales = z_superficie_manual_inferior - 60;
consola_fondo_manuales = y_frente_manual_inferior + 117.7 + 150;
consola_altura = z_superficie_manual_inferior + consola_altura_sobre_manual;

// Los costados no cargan sobre el bastidor ni atrapan las teclas.
consola_medio_hueco = max([
    abs(x_izquierda_travesano_trasero), x_derecha_travesano_trasero,
    for (i=[0:1], y=[0,inicio_apoyo_trasero], z=[0,altura_cierre_trasero])
        abs(x_interior_lateral(i,y,z)+(i==0?-1:1)*espesor_lateral/datos_laterales[i][1][0])
]) + consola_holgura_pedalera;
consola_fin_pedales = max([for(n=notas, l=[-ancho_tecla/2,ancho_tecla/2],
    z=[0,grosor_tecla(n)]) (punto(n,t_fin(n))+l*datos[n][2]+z*datos[n][4])[1]]);
consola_respaldo_y = max(consola_fin_pedales, cara_trasera_travesano)
    + consola_holgura_pedalera;
consola_fondo = consola_respaldo_y + consola_espesor;
consola_ancho = 2*(consola_medio_hueco + consola_espesor);

registro_ancho = 25;
registro_alto = 60;
registro_inclinacion = 20;
registro_paso = registro_ancho + 1.2;
registro_separacion_grupos = 12;
registro_grupos = [12,14,14]; // Pedalier, manual inferior, manual superior.
registro_color = "#E8D7B7";
registro_ancho_grupo = [for (n=registro_grupos) (n-1)*registro_paso+registro_ancho];
registro_ancho_fila = registro_ancho_grupo[0]+registro_ancho_grupo[1]
    +registro_ancho_grupo[2]+2*registro_separacion_grupos;
registro_base_z = consola_base_manuales+151;
registro_base_y = consola_fondo_manuales-32;
consola_alto_hueco_manuales = 140;

function frente_tabla_registros(z) =
    registro_base_y+(z-registro_base_z)*tan(registro_inclinacion);

// Recorrido en Y/Z: de la repisa a la boca bajo el atril y al rollo interior.
secreter_diametro_broca = 3/8*25.4;
secreter_radio_ranura = secreter_diametro_broca/2;
secreter_fondo_ranura = 1/4*25.4;
secreter_paso = 10;
secreter_ancho_cuerpo_lama = 8; // En el sentido del recorrido, sin contar el solape.
secreter_espesor_lama = 8;
secreter_espesor_punta = 6;
secreter_entrada_punta = 4.5;
secreter_holgura_hombro = 0.75;
secreter_espacio_respaldo = 2; // Tela o listón flexible, incluido el adhesivo.
secreter_frente = consola_frente-saliente_secreter+12;
secreter_cota = consola_altura-consola_espesor-8;
secreter_eje_y = consola_respaldo_y-61;
secreter_radio_rollo = 54;
secreter_arranque = [secreter_frente,consola_base_manuales];
secreter_curva_inicio = [secreter_frente,z_superficie_manual_inferior+20];
secreter_curva_fin = [secreter_eje_y,secreter_cota];

function punto_bezier(p0,p1,p2,p3,u) = let(v=1-u)
    v*v*v*p0+3*v*v*u*p1+3*v*u*u*p2+u*u*u*p3;

secreter_recorrido_frontal = concat([secreter_arranque],[
    for (i=[0:64]) punto_bezier(
        secreter_curva_inicio,secreter_curva_inicio+[0,125],
        secreter_curva_fin+[-175,0],secreter_curva_fin,i/64)
]);
secreter_recorrido = concat(secreter_recorrido_frontal,[
    for (a=[3:3:648]) let(r=secreter_radio_rollo-14*a/360)
        [secreter_eje_y+r*sin(a),secreter_cota-secreter_radio_rollo+r*cos(a)]
]);

function longitudes_secreter(puntos,i=1,cotas=[0]) = i==len(puntos) ? cotas :
    longitudes_secreter(puntos,i+1,concat(cotas,[
        cotas[i-1]+norm(puntos[i]-puntos[i-1])
    ]));
secreter_cotas = longitudes_secreter(secreter_recorrido);
secreter_lamas = ceil(secreter_cotas[len(secreter_recorrido_frontal)-1]/secreter_paso);
secreter_carrera = max([for (i=[0:len(secreter_recorrido_frontal)-1])
    if (secreter_recorrido_frontal[i][0] <= consola_fondo_manuales-40) secreter_cotas[i]]);

function tramo_secreter(s,lo,hi) = hi-lo<=1 ? lo :
    let(m=floor((lo+hi)/2)) s<secreter_cotas[m]
        ? tramo_secreter(s,lo,m) : tramo_secreter(s,m,hi);
function punto_secreter(s) = let(
    i=tramo_secreter(s,0,len(secreter_cotas)-1),
    u=(s-secreter_cotas[i])/(secreter_cotas[i+1]-secreter_cotas[i])
) secreter_recorrido[i]+u*(secreter_recorrido[i+1]-secreter_recorrido[i]);

function borde_ranura_secreter(i,lado) = let(
    p=secreter_recorrido[i],
    d=secreter_recorrido[min(i+1,len(secreter_recorrido)-1)]
        -secreter_recorrido[max(i-1,0)]
) p+lado*secreter_radio_ranura*[-d[1],d[0]]/norm(d);

module ranura_secreter(x) {
    ultimo = len(secreter_recorrido)-1;
    multmatrix([[0,0,1,x],[1,0,0,0],[0,1,0,0],[0,0,0,1]])
        linear_extrude(height=secreter_fondo_ranura+0.01) {
            polygon(concat(
                [[secreter_frente-secreter_radio_ranura,consola_base_manuales-0.01]],
                [for (i=[0:ultimo]) borde_ranura_secreter(i,1)],
                [for (i=[ultimo:-1:0]) borde_ranura_secreter(i,-1)],
                [[secreter_frente+secreter_radio_ranura,consola_base_manuales-0.01]]
            ));
            translate(secreter_recorrido[ultimo]) circle(r=secreter_radio_ranura,$fn=40);
        }
}

module consola_panel(x0,x1,y0,y1,z0,z1,acabado) {
    color(acabado) translate([x0,y0,z0]) cube([x1-x0,y1-y0,z1-z0]);
}

module consola_costado(lado) {
    // La curva nace bajo la tapa y llega vertical al canto de la repisa.
    h = consola_medio_hueco;
    t = consola_espesor;
    x = lado<0 ? -h-t : h;
    frente = consola_frente-saliente_secreter;
    alto_nariz = z_superficie_manual_inferior+40;
    inicio = [frente_tabla_registros(consola_altura),consola_altura];
    control_superior = [consola_frente+100,consola_altura];
    control_inferior = [frente,alto_nariz+76];
    nariz = [frente,alto_nariz];
    caida = [for (i=[0:32]) let(u=i/32,v=1-u)
        v*v*v*inicio+3*v*v*u*control_superior+3*v*u*u*control_inferior+u*u*u*nariz];
    x_guia = lado<0 ? -h-secreter_fondo_ranura : h-0.01;

    color(consola_madera) difference() {
        multmatrix([[0,0,1,x],[1,0,0,0],[0,1,0,0],[0,0,0,1]])
            linear_extrude(height=t)
                polygon(concat([
                    [consola_frente+70,0],[consola_fondo,0],
                    [consola_fondo,consola_altura]
                ],caida,[
                    [frente,consola_base_manuales-t],
                    [consola_frente+70,consola_base_manuales-80]
                ]));

        ranura_secreter(x_guia);
    }
}

module consola_organo() {
    h = consola_medio_hueco;
    m = consola_ancho_manuales/2;
    t = consola_espesor;
    z = consola_base_manuales;
    assert(consola_holgura_pedalera > 0 && m < h);
    assert(consola_espesor > 0 && consola_altura_sobre_manual > 63);

    consola_costado(-1);
    consola_costado(1);

    // La repisa sólo se adelanta fuera de los manuales para recibir la tapa.
    y_repisa = frente_tabla_registros(z);
    x_tope = m+0.5;
    x_extremo = h+t;
    y_tope = consola_frente-saliente_secreter;
    color(consola_cantos) translate([0,0,z-t]) linear_extrude(height=t)
        polygon([
            [-x_extremo,y_tope],[-x_tope,y_tope],[-x_tope,consola_frente],
            [x_tope,consola_frente],[x_tope,y_tope],[x_extremo,y_tope],
            [x_extremo,consola_respaldo_y],[-x_extremo,consola_respaldo_y]
        ]);

    // Una tabla inclinada con un solo hueco para los dos manuales.
    // El tramo curvo llega a la boca ligeramente por debajo de la cota del rollo.
    z_tabla = secreter_cota-secreter_espesor_lama/2-secreter_espacio_respaldo-1.5;
    y_tabla = frente_tabla_registros(z_tabla);
    fondo_tabla = t/cos(registro_inclinacion);
    color(consola_frentes) difference() {
        multmatrix([[0,0,1,-h],[1,0,0,0],[0,1,0,0],[0,0,0,1]])
            linear_extrude(height=2*h) polygon([
                [y_repisa,z],[y_repisa+fondo_tabla,z],
                [y_tabla+fondo_tabla,z_tabla],[y_tabla,z_tabla]
            ]);
        consola_panel(-m-0.5,m+0.5,consola_frente,consola_respaldo_y,
            z-1,z+consola_alto_hueco_manuales,consola_frentes);
    }
    // Tapa superior de la consola.
    consola_panel(-h-t-5,h+t+5,consola_fondo_manuales-18,consola_fondo+5,
        consola_altura-t,consola_altura,consola_cantos);
    // Respaldo detrás de las colas. Une los costados por encima del piso.
    consola_panel(-h,h,consola_respaldo_y,consola_fondo,
        altura_cierre_trasero-12.7,consola_altura-t,consola_madera);
}

module consola_secreter() {
    h = consola_medio_hueco;
    avance = min(1,max(0,apertura_secreter))*secreter_carrera;
    punta = h+secreter_entrada_punta;
    hombro = h-secreter_holgura_hombro;
    medio_ancho = secreter_ancho_cuerpo_lama/2;
    assert(secreter_carrera+(secreter_lamas-1)*secreter_paso+secreter_paso/2+medio_ancho
        < secreter_cotas[len(secreter_cotas)-1], "El rollo no cabe en las guías");
    for (i=[0:secreter_lamas-1]) {
        s = avance+(i+0.5)*secreter_paso;
        p = punto_secreter(s);
        d = punto_secreter(s+medio_ancho)-punto_secreter(s-medio_ancho);
        translate([0,p[0],p[1]]) rotate([atan2(d[1],d[0]),0,0]) {
            // Representación dimensional: los cantos de encastre se labran en taller.
            color(i%2==0 ? consola_cantos : consola_frentes) {
                translate([-punta,-medio_ancho,-secreter_espesor_punta/2])
                    cube([2*punta,2*medio_ancho,secreter_espesor_punta]);
                translate([-hombro,-medio_ancho,-secreter_espesor_lama/2])
                    cube([2*hombro,2*medio_ancho,secreter_espesor_lama]);
            }
            // El listón de tiro llega a la repisa; sus puntas delgadas guían.
            if (i==0)
                color(consola_cantos)
                    multmatrix([[0,0,1,-h+1],[1,0,0,0],[0,1,0,0],[0,0,0,1]])
                        linear_extrude(height=2*h-2)
                            polygon([[-5,1.5],[4,1.5],[4,8],
                                [12,8],[12,15],[9,18],[-2,18],[-5,15]]);
        }
    }
}

module consola_registros() {
    izquierda = [-registro_ancho_fila/2,
        -registro_ancho_fila/2+registro_ancho_grupo[0]+registro_separacion_grupos,
        registro_ancho_fila/2-registro_ancho_grupo[2]];
    alto_proyectado = registro_alto*cos(registro_inclinacion);
    assert(registro_ancho_fila < 2*consola_medio_hueco, "Los registros exceden el ancho interior");
    assert(registro_base_z+alto_proyectado < consola_altura-consola_espesor,
        "La tapa superior no deja altura para los registros");

    for (g=[0:2], i=[0:registro_grupos[g]-1])
        translate([izquierda[g]+i*registro_paso,registro_base_y,registro_base_z])
            rotate([-registro_inclinacion,0,0]) {
                color(registro_color)
                    translate([0,-5,0]) cube([registro_ancho,5.1,registro_alto]);
                color("#423327")
                    translate([registro_ancho/2,-4.95,16])
                        rotate([90,0,0]) linear_extrude(height=0.25)
                            text(str(["P","I","II"][g], " ", i+1),size=4.3,
                                halign="center",valign="center");
            }
}

module boton_registro(x, texto, acabado, tinta) {
    // Cara de la tapa inferior: 7.3 mm detrás del frente de las teclas.
    translate([x,y_frente_manual_inferior+7.3,consola_base_manuales+20])
        rotate([90,0,0]) {
            color(acabado) cylinder(d=18,h=3,$fn=40);
            color(tinta)
                translate([0,0,2.95]) linear_extrude(height=0.25)
                    text(texto,size=len(texto)>2 ? 2.7 : 5.5,halign="center",valign="center");
        }
}

module consola_botones_registro() {
    for (i=[0:9])
        boton_registro((i-4.5)*32,str(i+1),"#E8D7B7","#423327");
    boton_registro(-192,"SET","#514B45","#F5E9D4");
    boton_registro(192,"CANCEL","#793B36","#F5E9D4");
}

module consola_encendido_y_volumen() {
    x = (registro_ancho_fila/2+consola_medio_hueco)/2;
    z = registro_base_z+registro_alto/2*cos(registro_inclinacion);

    // Los ejes de los controles coinciden con el centro de la fila.
    for (lado=[-1,1])
        translate([lado*x,frente_tabla_registros(z),z])
            rotate([90-registro_inclinacion,0,0]) {
                color("#E8D7B7")
                    translate([0,20,0.13]) linear_extrude(height=0.25)
                        text(lado<0 ? "ENCENDIDO" : "VOLUMEN",size=5,
                            halign="center",valign="center");
                color("#BEB3A3") cylinder(d=lado<0 ? 25 : 31,h=1.7,$fn=48);
                color("#39332E")
                    translate([0,0,1.6]) cylinder(d=lado<0 ? 20 : 27,
                        h=lado<0 ? 3 : 10,$fn=48);

                if (lado<0) {
                    // Símbolo de encendido con aro abierto en la parte superior.
                    color("#E8D7B7") translate([0,0,4.52])
                        linear_extrude(height=0.28) {
                            difference() {
                                circle(d=10,$fn=40);
                                circle(d=8.3,$fn=40);
                                translate([-1.6,0]) square([3.2,6]);
                            }
                            translate([-0.46,0.9]) square([0.92,5.1]);
                        }
                } else {
                    // La marca indica la posición de la perilla.
                    color("#E8D7B7") translate([-0.8,6,11.52]) cube([1.6,5,0.28]);
                    for (marca=[-1,1])
                        color("#E8D7B7")
                            translate([marca*23,-6,0.13]) linear_extrude(height=0.25)
                                text(marca<0 ? "-" : "+",size=6,halign="center",valign="center");
                }
            }
}

module consola_atril() {
    ancho = 640;
    alto = 280;
    radio = 12;
    inclinacion = 16;
    y = consola_fondo_manuales+35;
    z = consola_altura+24;

    // Pedestales sobre la tapa, detrás del reborde de las partituras.
    for (x=[-215,215])
        consola_panel(x-24,x+24,y+2,y+48,consola_altura,z+4,consola_madera);

    color(consola_cantos)
        translate([0,y,z]) rotate([-inclinacion,0,0])
            rotate([90,0,0]) translate([0,0,-14])
                linear_extrude(height=14)
                    hull()
                        for (x=[-ancho/2+radio,ancho/2-radio], h=[radio,alto-radio])
                            translate([x,h]) circle(r=radio,$fn=40);

    // Repisa horizontal y reborde que evita que resbalen las hojas.
    consola_panel(-ancho/2,ancho/2,y-46,y+22,z-12,z,consola_madera);
    consola_panel(-ancho/2,ancho/2,y-46,y-39,z,z+10,consola_cantos);
}

module banco_organo() {
    // La referencia es el Mi central en reposo usado para los manuales.
    altura_sobre_pedal = 550;
    z_asiento = referencia_manuales[2]+altura_sobre_pedal;
    luz = max(1265,2*consola_medio_hueco);
    pata = 45;
    semiancho = luz/2+pata+12;
    frente = y_frente_manual_inferior-banco_distancia_manual; // Borde hacia las teclas.
    fondo = frente-345;
    z_bastidor = z_asiento-29;
    assert(frente < consola_frente+70, "El banco invade el apoyo de la consola");

    // Canto curvo hacia el órgano y canto recto hacia el músico.
    color(consola_cantos)
        translate([0,0,z_asiento-30])
            linear_extrude(height=30)
                offset(r=7,$fn=32) offset(delta=-7)
                    polygon(concat(
                        [for (i=[0:48]) let(u=i/24-1)
                            [semiancho*u,frente-60*u*u]],
                        [[semiancho,fondo],[-semiancho,fondo]]
                    ));

    for (lado=[-1,1]) {
        x0 = lado<0 ? -luz/2-pata : luz/2;
        x1 = x0+pata;
        // Dos montantes por lado, sobre un patín de 350 mm.
        consola_panel(x0-5,x1+5,fondo-2.5,frente+2.5,0,45,consola_cantos);
        for (y=[fondo+72,frente-110])
            consola_panel(x0,x1,y,y+45,45,z_bastidor,consola_madera);
        consola_panel(x0,x1,fondo+72,frente-65,125,170,consola_madera);
        consola_panel(x0,x1,fondo+72,frente-65,z_bastidor-45,z_bastidor,consola_madera);
    }
    // Travesaño hacia el músico, detrás del borde de la pedalera.
    consola_panel(-luz/2,luz/2,fondo+75,fondo+104,125,170,consola_madera);
    consola_panel(-luz/2-pata,luz/2+pata,fondo+81,fondo+108,
        z_asiento-82,z_asiento-29,consola_madera);

    if (informe_detallado)
        echo("Banco: asiento sobre Mi central, alto desde piso, ancho, fondo y luz",
            altura_sobre_pedal,z_asiento,2*semiancho,345,luz);
}

if (mostrar_consola) consola_organo();
if (mostrar_consola && mostrar_secreter) consola_secreter();
if (mostrar_consola && mostrar_registros) consola_registros();
if (mostrar_manuales && mostrar_botones_registro) consola_botones_registro();
if (mostrar_consola && mostrar_encendido_y_volumen) consola_encendido_y_volumen();
if (mostrar_consola && mostrar_atril) consola_atril();
if (mostrar_banco) banco_organo();
// Encuentro de frente, costado y pedalera.
$vpt = [0,mostrar_banco ? 385 : 455,mostrar_consola && mostrar_atril ? 622 : 495];
$vpr = [67,0,332];
$vpd = mostrar_consola && mostrar_atril ? 3000 : 2600;
