//
//  SecondViewController.swift
//  Mi-Guia
//
//  Created by Mariano Rodriguez Abarca on 14/05/18.
//  Copyright © 2018 Mariano Rodriguez Abarca. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController  {

    
    @IBOutlet weak var btncomenzar: UIButton!
    
    var arrayDatosPreguntas:[[String:String]] = []
    var arrayDatos:[[String:String]] = []
    
    var arrayRespuestas:[[String:String]] = []
    
    var arrayExamenAleatorio:[[String:String]] = []
    
    //consulta por materias
    var ConsultarExamenesRandomEspa:[[String:String]] = []
    var ConsultarExamenesRandomRazVerbal:[[String:String]] = []
    var ConsultarExamenesRandomHisUniv:[[String:String]] = []
    var ConsultarExamenesRandomHisMex:[[String:String]] = []
    var ConsultarExamenesRandomGeoUniv:[[String:String]] = []
    var ConsultarExamenesRandomGeoMex:[[String:String]] = []
    var ConsultarExamenesRandomCivismo:[[String:String]] = []
    var ConsultarExamenesRandomRazMate:[[String:String]] = []
    var ConsultarExamenesRandomMatematicas:[[String:String]] = []
    var ConsultarExamenesRandomFisica:[[String:String]] = []
    var ConsultarExamenesRandomQuimica:[[String:String]] = []
    var ConsultarExamenesRandomBiologia:[[String:String]] = []
    
    var arrayEscuelas:[[String:String]] = []
    
    var arrayEscuelasDOS:[[String:String]] = []
    
    
    var arrayEscuelasOpciones:[String] = [
        "Selecciona una licenciatura",
        "Actuaria Ciudad Universitaria",
        "Actuaria FES Acatlán",
        "Arquitectura Ciudad Universitaria",
        "Arquitectura FES Aragón",
        "Arquitectura FES Acatlán",
        "Arquitectura del Paisaje Ciudad Universitaria",
        "Ciencia de Materiales Sustentables Escuela Nacional de Estudios Superiores, Unidad Morelia",
        "Ciencias de la Computación Ciudad Universitaria",
        "Ciencias de la Tierra Ciudad Universitaria",
        "Ciencias de la Tierra UMDI, Juriquilla, Qro",
        "Diseño Industrial FES Aragón",
        "Física Ciudad Universitaria",
        "Física Biomédica Ciudad Universitaria",
        "Geociencias Escuela Nacional de Estudios Superiores, Unidad Morelia",
        "Ingeniería Cívil Ciudad Universitaria",
        "Ingeniería Cívil FES Aragón",
        "Ingeniería Cívil FES Acatlán",
        "Ingeniería de Eléctrica - Electrónica Ciudad Universitaria",
        "Ingeniería de Eléctrica - Electrónica FES Aragón",
        "Ingeniería de Minas y Metalurgia Ciudad Universitaria",
        "Ingeniería en Computación Ciudad Universitaria",
        "Ingeniería en Computación FES Aragón",
        "Ingeniería en Telecomunicaciones Sistemas y Electrónica FES Cuautitlán",
        "Ingeniería Geofísica Ciudad Universitaria",
        "Ingeniería Geológica Ciudad Universitaria",
        "Ingeniería Geomática Ciudad Universitaria",
        "Ingeniería Industrial Ciudad Universitaria",
        "Ingeniería Industrial FES Aragón",
        "Ingeniería Industrial FES Cuautitlán",
        "Ingeniería Mecánica Ciudad Universitaria",
        "Ingeniería Mecánica FES Aragón",
        "Ingeniería Mecánica Eléctrica FES Cuautitlán",
        "Ingeniería Petrolera Ciudad Universitaria",
        "Ingeniería Química Ciudad Universitaria",
        "Ingeniería Química FES Cuautitlán",
        "Ingeniería Química FES Zaragoza",
        "Ingeniería Química Metalúrgica Ciudad Universitaria",
        "Matemáticas Ciudad Universitaria",
        "Matemáticas Aplicadas Ciudad Universitaria",
        "Matemáticas Aplicadas y Computación FES Acatlán",
        "Tecnologías para la Información en Ciencias Escuela Nacional de Estudios Superiores, Unidad Morelia",
        "Biología Ciudad Universitaria",
        "Biología FES Zaragoza",
        "Biología FES Iztacala",
        "Biología Tlaxcala",
        "Bioquímica Diagnóstica FES Cuautitlán",
        "Ciencias Ambientales Escuela Nacional de Estudios Superiores, Unidad Morelia",
        "Cirujano Dentista Ciudad Universitaria",
        "Cirujano Dentista FES Zaragoza",
        "Cirujano Dentista FES Iztacala",
        "Enfermería FES Zaragoza",
        "Enfermería FES Iztacala",
        "Enfermería Escuela Nacional De Enfermería y Obstetricia",
        "Enfermería Tlaxcala",
        "Enfermería y Obstetricia Escuela Nacional De Enfermería y Obstetricia",
        "Farmacia FES Cuautitlán",
        "Físioterapia Escuela Nacional de Estudios Superiores, Unidad León",
        "Ingeniería Agrícola FES Cuautitlán",
        "Ingeniería en Alimentos FES Cuautitlán",
        "Medicina Veterinaria y Zootecnia Ciudad Universitaria",
        "Medicina Veterinaria y Zootecnia FES Cuautitlán",
        "Medico Cirujano Ciudad Universitaria",
        "Medico Cirujano FES Zaragoza",
        "Medico Cirujano FES Iztacala",
        "Odontología Escuela Nacional de Estudios Superiores, Unidad León",
        "Optometría FES Iztacala",
        "Optometría Escuela Nacional de Estudios Superiores, Unidad León",
        "Psicología Ciudad Universitaria",
        "Psicología FES Zaragoza",
        "Psicología FES Iztacala",
        "Psicología Modalidad Abierta Ciudad Universitaria",
        "Psicología Modalidad A Distancia",
        "Psicología Tlaxcala",
        "Química Ciudad Universitaria",
        "Química FES Cuautitlán",
        "Química de Alimentos Ciudad Universitaria",
        "Química Farmacéutico Biológica Ciudad Universitaria",
        "Química Farmacéutico Biológica FES Zaragoza",
        "Química Industrial FES Cuautitlán",
        "Administración Ciudad Universitaria",
        "Administración FES Cuautitlán",
        "Administración Modalidad Abierta Ciudad Universitaria",
        "Administración Modalidad A Distancia",
        "Administración Agropecuaria Escuela Nacional de Estudios Superiores, Unidad León",
        "Antropología Ciudad Universitaria",
        "Ciencias de la Comunicación Ciudad Universitaria",
        "Ciencias de la Comunicación Modalidad Abierta Ciudad Universitaria",
        "Ciencias de la Comunicación (Periodismo) Modalidad A Distancia",
        "Ciencias Políticas y Administración Pública Ciudad Universitaria",
        "Ciencias Políticas y Administración Pública FES Acatlán",
        "Ciencias Políticas y Administración Pública Modalidad Abierta Ciudad Universitaria",
        "Ciencias Políticas y Administración Pública Modalidad A Distancia",
        "Comunicación FES Acatlán",
        "Comunicación y Periodismo FES Aragón",
        "Contaduría Ciudad Universitaria",
        "Contaduría FES Cuautitlán",
        "Contaduría Modalidad Abierta Ciudad Universitaria",
        "Contaduría Modalidad A Distancia",
        "Derecho Ciudad Universitaria",
        "Derecho FES Aragón",
        "Derecho FES Acatlán",
        "Derecho Modalidad Abierta Acatlán",
        "Derecho Modalidad Abierta Ciudad Universitaria",
        "Derecho Modalidad Abierta Aragón",
        "Derecho Modalidad A Distancia",
        "Desarrollo Comunitario para el Envejecimiento Tlaxcala",
        "Desarrollo Territorial Escuela Nacional de Estudios Superiores, Unidad León",
        "Economía Ciudad Universitaria",
        "Economía FES Aragón",
        "Economía FES Acatlán",
        "Economía Modalidad Abierta Ciudad Universitaria",
        "Economía Modalidad Abierta Aragón",
        "Economía Modalidad A Distancia",
        "Economía Industrial Escuela Nacional de Estudios Superiores, Unidad León",
        "Estudios Sociales y Gestión Local Escuela Nacional de Estudios Superiores, Unidad Morelia",
        "Geografía Ciudad Universitaria",
        "Geografía Modalidad Abierta Ciudad Universitaria",
        "Informática FES Cuautitlán",
        "Planif. para el Desarrollo Agropecuario FES Aragón",
        "Relaciones Internacionales Ciudad Universitaria",
        "Relaciones Internacionales FES Aragón",
        "Relaciones Internacionales FES Acatlán",
        "Relaciones Internacionales Modalidad Abierta Acatlán",
        "Relaciones Internacionales Modalidad Abierta Ciudad Universitaria",
        "Relaciones Internacionales Modalidad Abierta Aragón",
        "Relaciones Internacionales Modalidad A Distancia",
        "Sociología Ciudad Universitaria",
        "Sociología FES Aragón",
        "Sociología FES Acatlán",
        "Sociología Modalidad Abierta Ciudad Universitaria",
        "Sociología Modalidad A Distancia",
        "Trabajo Social Modalidad A Distancia",
        "Trabajo Social Escuela Nacional de Trabajo Social",
        "Administración de Archivos y Gestión Documental Ciudad Universitaria",
        "Administración de Archivos y Gestión Documental Escuela Nacional de Estudios Superiores, Unidad Morelia",
        "Artes Visuales Facultad de Artes y Diseño",
        "Artes Visuales Plantel Taxco, GRO",
        "Arte y Diseño Escuela Nacional de Estudios Superiores, Unidad Morelia",
        "Arte y Diseño Plantel Taxco, GRO",
        "Bibliotecologia y Estudios de la Información Ciudad Universitaria",
        "Bibliotecologia y Estudios de la Información Modalidad A Distancia",
        "Canto Escuela Nacional de Música",
        "Composición Escuela Nacional de Música",
        "Desarrollo y Gestión Interculturales Ciudad Universitaria",
        "Desarrollo y Gestión Interculturales Escuela Nacional de Estudios Superiores, Unidad León",
        "Desarrollo y Gestión Interculturales Centro Peninsular en Humanidades y Ciencias Sociales",
        "Diseño Gráfico FES Acatlán",
        "Diseño y Comunicación Visual FES Cuautitlán",
        "Diseño y Comunicación Visual Modalidad A Distancia",
        "Diseño y Comunicación Visual Facultad de Artes y Diseño",
        "Educación Musical Escuela Nacional de Música",
        "Enseñanza de Alemán como Lengua Extranjera Modalidad A Distancia",
        "Enseñanza de Español como Lengua Extranjera Modalidad A Distancia",
        "Enseñanza de Francés como Lengua Extranjera Modalidad A Distancia",
        "Enseñanza de Inglés FES Acatlán",
        "Enseñanza de Inglés como Lengua Extranjera Modalidad A Distancia",
        "Enseñanza de Italiano como Lengua Extranjera Modalidad A Distancia",
        "Estudios Latinoamericanos Ciudad Universitaria",
        "Etnomusicología Escuela Nacional de Música",
        "Filosofía Ciudad Universitaria",
        "Filosofía FES Acatlán",
        "Filosofía Modalidad Abierta Ciudad Universitaria",
        "GeoHistoria Escuela Nacional de Estudios Superiores, Unidad Morelia",
        "Historia Ciudad Universitaria",
        "Historia FES Acatlán",
        "Historia Modalidad Abierta Ciudad Universitaria",
        "Historia del Arte Escuela Nacional de Estudios Superiores, Unidad Morelia",
        "Instrumentista Escuela Nacional de Música",
        "Lengua y Literaturas Hispánicas Ciudad Universitaria",
        "Lengua y Literaturas Hispánicas FES Acatlán",
        "Lengua y Literaturas Hispánicas Modalidad Abierta Ciudad Universitaria",
        "Lengua y Literaturas Modernas (Letras Alemanas) Ciudad Universitaria",
        "Lengua y Literaturas Modernas (Letras Francesas) Ciudad Universitaria",
        "Lengua y Literaturas Modernas (Letras Inglesas) Ciudad Universitaria",
        "Lengua y Literaturas Modernas (Letras Inglesas) Modalidad Abierta Ciudad Universitaria",
        "Lengua y Literaturas Modernas (Letras Italianas) Ciudad Universitaria",
        "Lengua y Literaturas Modernas (Letras Portuguesas) Ciudad Universitaria",
        "Letras Clásicas Ciudad Universitaria",
        "Lingüistica aplicada Ciudad Universitaria",
        "Literatura Dramática y Teatro Ciudad Universitaria",
        "Literatura Intercultural Escuela Nacional de Estudios Superiores, Unidad Morelia",
        "Música y Tecnología Artística Escuela Nacional de Estudios Superiores, Unidad Morelia",
        "Nutriología FES Zaragoza",
        "Pedagogía Ciudad Universitaria",
        "Pedagogía FES Aragón",
        "Pedagogía FES Acatlán",
        "Pedagogía Modalidad Abierta Ciudad Universitaria",
        "Pedagogía Modalidad A Distancia",
        "Piano Escuela Nacional de Música",
        "Traducción Ciudad Universitaria"
    ]
    
    var arrayEscuelasArea:[String] = [
        "",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 3: Ciencias Sociales",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes",
        "Área 4: Humanidades y Artes"
    ]
    
    
    @IBOutlet weak var instruccionesUno: UITextView!
    
    @IBOutlet weak var instruccionesDos: UITextView!
    
    
    @IBOutlet weak var btnLeyenda: UIButton!
    
    var arrayCompras:[[String:String]] = []
    
    var preguntasRealizadas:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        instruccionesUno.textColor = UIColor(red:0.03, green:0.08, blue:0.39, alpha:1.0)
        instruccionesDos.textColor = UIColor(red:0.03, green:0.08, blue:0.39, alpha:1.0)
       /* btnLeyenda.backgroundColor = UIColor(red:0.03, green:0.08, blue:0.39, alpha:1.0)*/
        
        UINavigationBar.appearance().barTintColor = UIColor(red:0.84, green:0.62, blue:0.06, alpha:1.0)
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.0)]
        
        /*DispatchQueue.main.async {
            
            do {
                self.clasificacionExamen()
                OperationQueue.main.addOperation {
                    self.boxView.removeFromSuperview()
                }
            } catch {
                print("error in Concurrent Queue)")
            }
        }*/
        // clasificacionExamen()
        //respuestas()
        
        
        //examenAleatorioAreaUno()
        
        
        //self.pregunta()
       
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
         self.clasificacionExamen()
        
        /*DispatchQueue.main.async {
            
            do {
                self.clasificacionExamen()
                OperationQueue.main.addOperation {
                    self.boxView.removeFromSuperview()
                }
            } catch {
                print("error in Concurrent Queue)")
            }
        }*/
        
        
    }
    
    
    // Create the Activity Indicator
    let activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: .gray)
    var boxView = UIView()
    
    func addCuestions() {
        // You only need to adjust this frame to move it anywhere you want
        boxView = UIView(frame: CGRect(x: view.frame.midX - 90, y: view.frame.midY - 25, width: 180, height: 50))
        boxView.backgroundColor = UIColor.white
        boxView.alpha = 0.8
        boxView.layer.cornerRadius = 10
        
        //Here the spinnier is initialized
        let activityView = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.gray)
        activityView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        activityView.startAnimating()
        
        let textLabel = UILabel(frame: CGRect(x: 60, y: 0, width: 200, height: 50))
        textLabel.textColor = UIColor.gray
        textLabel.text = "Cargando..."
        
        boxView.addSubview(activityView)
        boxView.addSubview(textLabel)
        
        view.addSubview(boxView)
    }
    var compra = ""
    
    func clasificacionExamen(){
        
        let objDaoIngresos = DataBase()
        
        arrayEscuelas = objDaoIngresos.ejecutarSelect("SELECT * FROM opcionesescuelas") as! [[String : String]]
        
        self.arrayCompras = objDaoIngresos.ejecutarSelect("SELECT * FROM planestudio") as! [[String : String]]
        
        for kk in 0..<arrayCompras.count {
            compra = arrayCompras[kk]["materia"]!
        }
        
        //parsingWSAndSyncCategorias()
        
        
        if(arrayEscuelas.count>0){
            var areaLicenciatura=""
            
            for k in 0 ..< arrayEscuelasOpciones.count{
                if(arrayEscuelasOpciones[k] == arrayEscuelas[0]["escuelalicenciatura"]){
                    areaLicenciatura = arrayEscuelasArea[k]
                }
            }

            
            print("areaLicenciatura_: \(arrayEscuelas[0]["escuelalicenciatura"]!)")
            
            areaLicenciatura = arrayEscuelas[0]["escuelalicenciatura"]!
            
            print("areaLicenciatura: \(areaLicenciatura)")
            
            if(areaLicenciatura=="Área 1: Ciencias Físico Matemáticas y de las Ingenierias"){
                examenAleatorioAreaUno()
            }
            
            if(areaLicenciatura=="Área 2: Ciencias Biológicas, Quimicas y de la Salud"){
                examenAleatorioAreaDos()
            }
            
            if(areaLicenciatura=="Área 3: Ciencias Sociales"){
                examenAleatorioAreaTres()
            }
            
            if(areaLicenciatura=="Área 4: Humanidades y Artes"){
                examenAleatorioAreaCuatro()
            }
        }
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    
    func examenAleatorioAreaUno(){
        
        let objDaoIngresos = DataBase()
        
        self.arrayDatos = objDaoIngresos.ejecutarSelect("SELECT * FROM tblpreguntasmodulo") as! [[String : String]]
        
        if(arrayDatos.count>0){
            self.ConsultarExamenesRandomEspa = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 1 ORDER BY RANDOM() LIMIT 18") as! [[String : String]]
            
            self.ConsultarExamenesRandomRazVerbal = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 12 ORDER BY RANDOM() LIMIT 16") as! [[String : String]]
            
            self.ConsultarExamenesRandomHisUniv = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 6 ORDER BY RANDOM() LIMIT 26") as! [[String : String]]
            
            self.ConsultarExamenesRandomHisMex = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 7 ORDER BY RANDOM() LIMIT 10") as! [[String : String]]
            
            self.ConsultarExamenesRandomGeoUniv = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 5 ORDER BY RANDOM() LIMIT 10") as! [[String : String]]
            
            self.ConsultarExamenesRandomGeoMex = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 4 ORDER BY RANDOM() LIMIT 10") as! [[String : String]]
            
            self.ConsultarExamenesRandomCivismo = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 11 ORDER BY RANDOM() LIMIT 10") as! [[String : String]]
            
            self.ConsultarExamenesRandomRazMate = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 3 ORDER BY RANDOM() LIMIT 10") as! [[String : String]]
            
            self.ConsultarExamenesRandomMatematicas = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 8 ORDER BY RANDOM() LIMIT 10") as! [[String : String]]

            
            arrayExamenAleatorio = ConsultarExamenesRandomEspa + ConsultarExamenesRandomRazVerbal + ConsultarExamenesRandomHisUniv + ConsultarExamenesRandomHisMex + ConsultarExamenesRandomGeoUniv
                + ConsultarExamenesRandomGeoMex + ConsultarExamenesRandomCivismo + ConsultarExamenesRandomRazMate
                + ConsultarExamenesRandomMatematicas + ConsultarExamenesRandomFisica + ConsultarExamenesRandomQuimica
                + ConsultarExamenesRandomBiologia
            
            print("arrayExamenAleatorio: \(self.arrayExamenAleatorio.count)")
            
            print("arrayDatos: \(self.arrayDatos.count)")
            
        }
 
    }
    
    func examenAleatorioAreaDos(){
        
        let objDaoIngresos = DataBase()
        
        self.arrayDatos = objDaoIngresos.ejecutarSelect("SELECT * FROM tblpreguntasmodulo") as! [[String : String]]
        
        if(arrayDatos.count>0){
            self.ConsultarExamenesRandomEspa = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 1 ORDER BY RANDOM() LIMIT 18") as! [[String : String]]
            
            self.ConsultarExamenesRandomRazVerbal = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 12 ORDER BY RANDOM() LIMIT 12") as! [[String : String]]
            
            self.ConsultarExamenesRandomHisUniv = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 6 ORDER BY RANDOM() LIMIT 24") as! [[String : String]]
            
            self.ConsultarExamenesRandomHisMex = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 7 ORDER BY RANDOM() LIMIT 10") as! [[String : String]]
            
            self.ConsultarExamenesRandomGeoUniv = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 5 ORDER BY RANDOM() LIMIT 10") as! [[String : String]]
            
            self.ConsultarExamenesRandomGeoMex = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 4 ORDER BY RANDOM() LIMIT 13") as! [[String : String]]
            
            self.ConsultarExamenesRandomCivismo = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 11 ORDER BY RANDOM() LIMIT 13") as! [[String : String]]
            
            self.ConsultarExamenesRandomRazMate = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 3 ORDER BY RANDOM() LIMIT 10") as! [[String : String]]
            
            self.ConsultarExamenesRandomMatematicas = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 8 ORDER BY RANDOM() LIMIT 10") as! [[String : String]]
            
            
            arrayExamenAleatorio = ConsultarExamenesRandomEspa + ConsultarExamenesRandomRazVerbal + ConsultarExamenesRandomHisUniv + ConsultarExamenesRandomHisMex + ConsultarExamenesRandomGeoUniv
                + ConsultarExamenesRandomGeoMex + ConsultarExamenesRandomCivismo + ConsultarExamenesRandomRazMate
                + ConsultarExamenesRandomMatematicas + ConsultarExamenesRandomFisica + ConsultarExamenesRandomQuimica
                + ConsultarExamenesRandomBiologia
            
            print("arrayExamenAleatorio: \(self.arrayExamenAleatorio.count)")
            
            print("arrayDatos: \(self.arrayDatos.count)")
            
        }
        
    }
    
    func examenAleatorioAreaTres(){
        
        let objDaoIngresos = DataBase()
        
        self.arrayDatos = objDaoIngresos.ejecutarSelect("SELECT * FROM tblpreguntasmodulo") as! [[String : String]]
        
        if(arrayDatos.count>0){
            self.ConsultarExamenesRandomEspa = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 1 ORDER BY RANDOM() LIMIT 18") as! [[String : String]]
            
            self.ConsultarExamenesRandomRazVerbal = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 12 ORDER BY RANDOM() LIMIT 10") as! [[String : String]]
            
            self.ConsultarExamenesRandomHisUniv = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 6 ORDER BY RANDOM() LIMIT 24") as! [[String : String]]
            
            self.ConsultarExamenesRandomHisMex = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 7 ORDER BY RANDOM() LIMIT 10") as! [[String : String]]
            
            self.ConsultarExamenesRandomGeoUniv = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 5 ORDER BY RANDOM() LIMIT 10") as! [[String : String]]
            
            self.ConsultarExamenesRandomGeoMex = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 4 ORDER BY RANDOM() LIMIT 10") as! [[String : String]]
            
            self.ConsultarExamenesRandomCivismo = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 11 ORDER BY RANDOM() LIMIT 10") as! [[String : String]]
            
            self.ConsultarExamenesRandomRazMate = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 3 ORDER BY RANDOM() LIMIT 14") as! [[String : String]]
            
            self.ConsultarExamenesRandomMatematicas = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 8 ORDER BY RANDOM() LIMIT 14") as! [[String : String]]
            
            
            arrayExamenAleatorio = ConsultarExamenesRandomEspa + ConsultarExamenesRandomRazVerbal + ConsultarExamenesRandomHisUniv + ConsultarExamenesRandomHisMex + ConsultarExamenesRandomGeoUniv
                + ConsultarExamenesRandomGeoMex + ConsultarExamenesRandomCivismo + ConsultarExamenesRandomRazMate
                + ConsultarExamenesRandomMatematicas + ConsultarExamenesRandomFisica + ConsultarExamenesRandomQuimica
                + ConsultarExamenesRandomBiologia
            
            print("arrayExamenAleatorio: \(self.arrayExamenAleatorio.count)")
            
            print("arrayDatos: \(self.arrayDatos.count)")
            
        }
        
    }
    
    func examenAleatorioAreaCuatro(){
        
        let objDaoIngresos = DataBase()
        
        self.arrayDatos = objDaoIngresos.ejecutarSelect("SELECT * FROM tblpreguntasmodulo") as! [[String : String]]
        
        if(arrayDatos.count>0){
            self.ConsultarExamenesRandomEspa = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 1 ORDER BY RANDOM() LIMIT 18") as! [[String : String]]
            
            self.ConsultarExamenesRandomRazVerbal = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 12 ORDER BY RANDOM() LIMIT 10") as! [[String : String]]
            
            self.ConsultarExamenesRandomHisUniv = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 6 ORDER BY RANDOM() LIMIT 22") as! [[String : String]]
            
            self.ConsultarExamenesRandomHisMex = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 7 ORDER BY RANDOM() LIMIT 10") as! [[String : String]]
            
            self.ConsultarExamenesRandomGeoUniv = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 5 ORDER BY RANDOM() LIMIT 10") as! [[String : String]]
            
            self.ConsultarExamenesRandomGeoMex = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 4 ORDER BY RANDOM() LIMIT 10") as! [[String : String]]
            
            self.ConsultarExamenesRandomCivismo = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 11 ORDER BY RANDOM() LIMIT 10") as! [[String : String]]
            
            self.ConsultarExamenesRandomRazMate = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 3 ORDER BY RANDOM() LIMIT 10") as! [[String : String]]
            
            self.ConsultarExamenesRandomMatematicas = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 8 ORDER BY RANDOM() LIMIT 10") as! [[String : String]]
            
            self.ConsultarExamenesRandomBiologia = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 2 ORDER BY RANDOM() LIMIT 10") as! [[String : String]]
            
            
            arrayExamenAleatorio = ConsultarExamenesRandomEspa + ConsultarExamenesRandomRazVerbal + ConsultarExamenesRandomHisUniv + ConsultarExamenesRandomHisMex + ConsultarExamenesRandomGeoUniv
                + ConsultarExamenesRandomGeoMex + ConsultarExamenesRandomCivismo + ConsultarExamenesRandomRazMate
                + ConsultarExamenesRandomMatematicas + ConsultarExamenesRandomFisica + ConsultarExamenesRandomQuimica
                + ConsultarExamenesRandomBiologia
            
            print("arrayExamenAleatorio: \(self.arrayExamenAleatorio.count)")
            
            print("arrayDatos: \(self.arrayDatos.count)")
            
        }
        
    }
    
    var arrayPreguntas:[[String:String]] = []
    
    func parsingWSAndSyncCategorias(){
        
        
        let objDaoIngresos = DataBase()
        
        
        //objDaoIngresos.ejecutarDelete("DELETE FROM tblpreguntasmodulo")
        
        self.arrayPreguntas = objDaoIngresos.ejecutarSelect("SELECT * FROM tblpreguntasmodulo") as! [[String : String]]
        
        print("arrayPreguntas: \(self.arrayPreguntas.count)")
        
        if(arrayPreguntas.count<956){
            objDaoIngresos.ejecutarDelete("DELETE FROM tblpreguntasmodulo")
        }
        
        if(self.arrayPreguntas.count<=0){
            // Add it to the view where you want it to appear
            /*     view.addSubview(activityIndicator)
             
             // Set up its size (the super view bounds usually)
             activityIndicator.frame = view.bounds
             // Start the loading animatio
             activityIndicator.startAnimating()*/
            
            addCuestions()
            
            OperationQueue().addOperation {
                
                //let rutaJson = "http://www.pypsolucionesintegrales.com/ventas/get_examen_free.php"
                
                let rutaJson = "http://www.pypsolucionesintegrales.com/ventas/get_modulo_universidad.php"
                
                let urlJson = URL(string: rutaJson)
                // variable metodo post inicia
                
                var request = URLRequest(url: urlJson!)
                request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
                request.httpMethod = "POST"
                let idMateria = "1"
                
                let postString = "mail=\(idMateria)"
                request.httpBody = postString.data(using: .utf8)
                
                // fin variable metodo post
                
                let task = URLSession.shared.dataTask(with: request) { data, response, error in
                    guard let data = data, error == nil else {                                                 // check for fundamental networking error
                        print("error=\(error!)")
                        return
                    }
                    
                    if let httpStatus = response as? HTTPURLResponse, httpStatus.statusCode != 200 {           // check for http errors
                        print("statusCode should be 200, but is \(httpStatus.statusCode)")
                        print("response = \(response!)")
                    }
                    
                    //let responseString = String(data: data, encoding: .utf8)
                    
                    do{
                        if NSString(data:data, encoding: String.Encoding.utf8.rawValue) != nil {
                            let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as! [String: AnyObject];
                            
                            for case let result in json["products"] as! [AnyObject] {
                                self.arrayDatosPreguntas.append(result as! [String : String])
                            }
                            
                            // print("arrayDatosPreguntas: \(self.arrayDatosPreguntas)")
                            
                            self.arrayPreguntas = objDaoIngresos.ejecutarSelect("SELECT * FROM tblpreguntasmodulo") as! [[String : String]]
                            
                            print("arrayDatosOLD: \(self.arrayPreguntas.count)")
                            
                            print("arrayDatosPreguntas: \(self.arrayDatosPreguntas.count)")
                            
                            if(self.arrayPreguntas.count != 598){
                                for k in 0 ..< self.arrayDatosPreguntas.count{
                                    
                                    print("imaPREG: \(self.arrayDatosPreguntas[k]["imagenpregunta"]!)")
                                    
                                    print("k: \(k)")
                                    
                                    objDaoIngresos.ejecutarInsert("INSERT INTO tblpreguntasmodulo (idmodulo, pregunta, respuestauno, respuestados, respuestatres, respuestacuatro, imagenpregunta, correcta, tooltip, imagentooltip) VALUES ('\(self.arrayDatosPreguntas[k]["idmodulo"]!)', '\(self.arrayDatosPreguntas[k]["pregunta"]!)', '\(self.arrayDatosPreguntas[k]["respuestauno"]!)', '\(self.arrayDatosPreguntas[k]["respuestados"]!)', '\(self.arrayDatosPreguntas[k]["respuestatres"]!)', '\(self.arrayDatosPreguntas[k]["respuestacuatro"]! )', '\(self.arrayDatosPreguntas[k]["imagenpregunta"]!)', '\(self.arrayDatosPreguntas[k]["correcta"]!)', '\(self.arrayDatosPreguntas[k]["tooltip"]!)', '\(self.arrayDatosPreguntas[k]["imagentooltip"]!)')")
                                    
                                    
                                }
                            }
                            
                            
                            
                            self.arrayPreguntas = objDaoIngresos.ejecutarSelect("SELECT * FROM tblpreguntasmodulo") as! [[String : String]]
                            
                            print("arrayDatosAFTER: \(self.arrayPreguntas.count)")
                            
                            OperationQueue.main.addOperation {
                                //self.activityIndicator.removeFromSuperview()
                                //self.activityIndicator.stopAnimating()
                                
                                self.boxView.removeFromSuperview()
                            }
                            
                        }
                    }catch{
                        print("Parse JSON failed")
                    }
                    
                    
                    
                }
                
                
                task.resume()
                
                //self.stopLoading()
                
            }
            
            
        }
        
        
    }
    
    
    func respuestas(){
        
        let objDaoIngresos = DataBase()
        
        self.arrayRespuestas = objDaoIngresos.ejecutarSelect("SELECT * FROM tblpreguntasmodulo") as! [[String : String]]
        
        //print("arrayRespuestas \(arrayRespuestas)")
        
        var contadorCorrecta = 0
        var contadorOpcional = 0
        
        for k in 0 ..< arrayRespuestas.count{
            
            contadorOpcional = 0
            
            if(arrayRespuestas[k]["correcta"]!.trimmingCharacters(in: .whitespaces)==arrayRespuestas[k]["respuestauno"]!.trimmingCharacters(in: .whitespaces)){
                contadorCorrecta = contadorCorrecta + 1
                contadorOpcional = contadorOpcional + 1
            }
            if(arrayRespuestas[k]["correcta"]!.trimmingCharacters(in: .whitespaces)==arrayRespuestas[k]["respuestados"]!.trimmingCharacters(in: .whitespaces)){
                contadorCorrecta = contadorCorrecta + 1
                contadorOpcional = contadorOpcional + 1
            }
            if(arrayRespuestas[k]["correcta"]!.trimmingCharacters(in: .whitespaces)==arrayRespuestas[k]["respuestatres"]!.trimmingCharacters(in: .whitespaces)){
                contadorCorrecta = contadorCorrecta + 1
                contadorOpcional = contadorOpcional + 1
            }
            if(arrayRespuestas[k]["correcta"]!.trimmingCharacters(in: .whitespaces)==arrayRespuestas[k]["respuestacuatro"]!.trimmingCharacters(in: .whitespaces)){
                contadorCorrecta = contadorCorrecta + 1
                contadorOpcional = contadorOpcional + 1
            }
            
            if(contadorOpcional>1){
                print("contadorCorrecta \(contadorCorrecta)")
                print("pregunta \(arrayRespuestas[k]["pregunta"]!)")
                print("materia \(arrayRespuestas[k]["idmodulo"]!)")
                print("correcta \(arrayRespuestas[k]["correcta"]!)")
                 print("respuestados \(arrayRespuestas[k]["respuestados"]!)")
            }
            
            
            if(arrayRespuestas[k]["imagentooltip"]!.contains(".PNG") || arrayRespuestas[k]["imagentooltip"]!.contains(".png") ){
                
                print("imagentooltip: \(arrayRespuestas[k]["imagentooltip"]!)")
                
                let bundlePath = Bundle.main.path(forResource: arrayRespuestas[k]["imagentooltip"]!.trimmingCharacters(in: .whitespaces), ofType: nil)
                
                let image: UIImage = UIImage(contentsOfFile: bundlePath!)!
                
                let imageView = UIImageView(image: image)
                
                
            }
            
            
        }
        
        print("contadorCorrecta \(contadorCorrecta)")
        
    }
    
    
    func consultaExamenAleatorio() {
        
        DispatchQueue.main.async {
            
            do {
                self.clasificacionExamen()
                OperationQueue.main.addOperation {
                    self.boxView.removeFromSuperview()
                }
            } catch {
                print("error in Concurrent Queue)")
            }
        }
        print("arrayEscuelas \(arrayEscuelas)")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //clasificacionExamen()
        consultaExamenAleatorio()
        
        if(arrayEscuelas.count>0){
            
            if(arrayExamenAleatorio.count>0){
                
                if segue.identifier == "verExamen"{
                    
                    let objVista2 = segue.destination as! ExamenViewController
                    
                    objVista2.arrayPreguntas = arrayExamenAleatorio
                    
                }
                
            }else{
                
                parsingWSAndSyncCategorias()
                consultaExamenAleatorio()
                if segue.identifier == "verExamen"{
                    
                    let objVista2 = segue.destination as! ExamenViewController
                    
                    objVista2.arrayPreguntas = arrayExamenAleatorio
                    
                }
                
            }
            
        }else{
            
            // create the alert
            let alert = UIAlertController(title: "Atención", message: "¡Antes de comenzar debes seleecionar tus opciones de licenciatura!", preferredStyle: UIAlertController.Style.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            //     alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
        }
        
        
    }


    //unwind
    @IBAction func volverVistaInfoExamen(unwindSegue: UIStoryboardSegue){
        print("Pintando vista escuelas")
    }
    
}

