//
//  EscuelasViewController.swift
//  Mi-Guia
//
//  Created by Mariano Rodriguez Abarca on 1/26/19.
//  Copyright © 2019 Mariano Rodriguez Abarca. All rights reserved.
//

import UIKit

class EscuelasViewController: UIViewController, UITextFieldDelegate {
    
   /* var arrayEscuelas:[String] = [
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
    
    var arrayEscuelasPuntaje:[String] = [
        "0",
        "107",
        "102",
        "95",
        "83",
        "84",
        "86",
        "71",
        "108",
        "97",
        "89",
        "94",
        "113",
        "109",
        "81",
        "99",
        "78",
        "81",
        "100",
        "90",
        "93",
        "99",
        "89",
        "75",
        "97",
        "86",
        "96",
        "101",
        "93",
        "81",
        "106",
        "93",
        "78",
        "93",
        "103",
        "90",
        "86",
        "99",
        "104",
        "104",
        "73",
        "59",
        "103",
        "85",
        "89",
        "66",
        "96",
        "70",
        "97",
        "88",
        "87",
        "90",
        "86",
        "80",
        "55",
        "95",
        "81",
        "79",
        "75",
        "79",
        "104",
        "92",
        "113",
        "107",
        "109",
        "74",
        "80",
        "66",
        "102",
        "78",
        "81",
        "72",
        "40",
        "75",
        "108",
        "94",
        "104",
        "105",
        "100",
        "83",
        "94",
        "77",
        "84",
        "82",
        "40",
        "87",
        "104",
        "80",
        "48",
        "97",
        "67",
        "69",
        "56",
        "78",
        "81",
        "89",
        "72",
        "82",
        "82",
        "96",
        "73",
        "68",
        "62",
        "76",
        "56",
        "56",
        "40",
        "50",
        "87",
        "86",
        "83",
        "80",
        "62",
        "44",
        "89",
        "50",
        "96",
        "88",
        "71",
        "65",
        "107",
        "99",
        "90",
        "66",
        "88",
        "61",
        "41",
        "70",
        "60",
        "63",
        "69",
        "52",
        "72",
        "68",
        "41",
        "42",
        "103",
        "57",
        "86",
        "42",
        "65",
        "57",
        "60",
        "71",
        "94",
        "59",
        "45",
        "99",
        "101",
        "87",
        "104",
        "48",
        "43",
        "51",
        "40",
        "67",
        "63",
        "53",
        "89",
        "66",
        "95",
        "70",
        "77",
        "43",
        "100",
        "64",
        "87",
        "82",
        "41",
        "101",
        "81",
        "74",
        "41",
        "60",
        "73",
        "72",
        "65",
        "62",
        "101",
        "94",
        "102",
        "70",
        "74",
        "91",
        "72",
        "67",
        "65",
        "75",
        "77",
        "48",
        "107"
    ]
    
    var arrayImagenEscuela:[String] =  [
        "",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png",
        "unam.png"
    ]*/
    
    var arrayDiviones:[String] = [
          "Selecciona una división",
          "Área 1: Ciencias Físico Matemáticas y de las Ingenierias",
          "Área 2: Ciencias Biológicas, Quimicas y de la Salud",
          "Área 3: Ciencias Sociales",
          "Área 4: Humanidades y Artes"
          ]
      
      var arrayImagenDiviones:[String] =  [
          "",
          "unam.png",
          "unam.png",
          "unam.png",
          "unam.png"
      ]
      
      var arrayCalificacionDiviones:[String] =  [
          "",
          "0",
          "0",
          "0",
          "0"
      ]
    
    //licenciatura uno
    var escuelaIUPicker:String = ""
    var imagenIUPicker:String = ""
    var puntajeIUPicker:String = ""
    
    //licenciatura dos
    var escuelaIUPickerDos:String = ""
    var imagenIUPickerDos:String = ""
    var puntajeIUPickerDos:String = ""
    
    //licenciatura tres
    var escuelaIUPickerTres:String = ""
    var imagenIUPickerTres:String = ""
    var puntajeIUPickerTres:String = ""
    
    var escuelaOpciones: [String] = []
    var puntajeOpciones: [String] = []
    
    @IBOutlet weak var escuelaUno: UIPickerView!
    
    
    @IBOutlet weak var escuelaDos: UIPickerView!
    
    
    @IBOutlet weak var escuelaTres: UIPickerView!
    
    var arrayDatos:[[String:String]] = []
    
    var arrayPreguntas:[[String:String]] = []
    var arrayDatosPreguntas:[[String:String]] = []
    
    @IBOutlet weak var botonLeyenda: UIButton!
    
    @IBAction func guardarEscuelas(_ sender: Any) {
        
        //inserta escuelas
        
    //    performSegue(withIdentifier: "iniciaEstudiar",
    //                 sender: self)
        
       print("escuelaIUPicker \(escuelaIUPicker)")
        print("escuelaIUPickerDos \(escuelaIUPickerDos)")
        print("escuelaIUPickerTres \(escuelaIUPickerTres)")
        
        let objDaoIngresos = DataBase()
        
        //inserta ingreso
        
      //  if(!escuelaIUPicker.isEmpty && !escuelaIUPicker.elementsEqual("Selecciona una división")){
            
            if(!escuelaIUPickerDos.isEmpty && !escuelaIUPickerDos.elementsEqual("Selecciona una división")){
                
               // if(!escuelaIUPickerTres.isEmpty && !escuelaIUPickerTres.elementsEqual("Selecciona una división")){
                    
                 //   if(!escuelaIUPicker.elementsEqual(escuelaIUPickerDos)  || !escuelaIUPicker.elementsEqual(escuelaIUPickerTres) || !escuelaIUPickerDos.elementsEqual(escuelaIUPickerTres)){
                        
                        
                        arrayDatos = objDaoIngresos.ejecutarSelect("SELECT * FROM opcionesescuelas") as! [[String : String]]
                        
                        print("arrayDatos \(arrayDatos)")
                        
                        
                        if(arrayDatos.count<=0){
                                
                              //  objDaoIngresos.ejecutarInsert("INSERT INTO opcionesescuelas (escuelalicenciatura, aciertos) VALUES ('\(escuelaIUPicker)', '\(puntajeIUPicker)')")
                                
                                objDaoIngresos.ejecutarInsert("INSERT INTO opcionesescuelas (escuelalicenciatura, aciertos) VALUES ('\(escuelaIUPickerDos)', '\(puntajeIUPickerDos)')")
                                
                            //    objDaoIngresos.ejecutarInsert("INSERT INTO opcionesescuelas (escuelalicenciatura, aciertos) VALUES ('\(escuelaIUPickerTres)', '\(puntajeIUPickerTres)')")
                            
                            
                            // create the alert
                            let alert = UIAlertController(title: "Atención", message: "¡Se guardó correctamente, ya puedes comenzar!", preferredStyle: UIAlertController.Style.alert)
                            
                            // add an action (button)
                            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                            //     alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
                            
                            // show the alert
                            self.present(alert, animated: true, completion: nil)
                            
                        }else{
                            
                                
                          //  objDaoIngresos.ejecutarUpdate("UPDATE opcionesescuelas SET escuelalicenciatura = '\(escuelaIUPicker)', aciertos = '\(puntajeIUPicker)' WHERE id = '\(1)'")
                            
                            objDaoIngresos.ejecutarUpdate("UPDATE opcionesescuelas SET escuelalicenciatura = '\(escuelaIUPickerDos)', aciertos = '\(puntajeIUPickerDos)' WHERE id = '\(1)'")
                            
                          //  objDaoIngresos.ejecutarUpdate("UPDATE opcionesescuelas SET escuelalicenciatura = '\(escuelaIUPickerTres)', aciertos = '\(puntajeIUPickerTres)' WHERE id = '\(3)'")


                            
                            // create the alert
                            let alert = UIAlertController(title: "Atención", message: "¡Se actualizó correctamente!", preferredStyle: UIAlertController.Style.alert)
                            
                            // add an action (button)
                            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                            //     alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
                            
                            // show the alert
                            self.present(alert, animated: true, completion: nil)
                            
                            
                            
                        }
                        



                  /*  }else{
                        
                        // create the alert
                        let alert = UIAlertController(title: "Atención", message: "¡Debes seleccionar 3 opciones diferentes!", preferredStyle: UIAlertController.Style.alert)
                        
                        // add an action (button)
                        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                        //     alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
                        
                        // show the alert
                        self.present(alert, animated: true, completion: nil)
                        
                    }*/
                    
               /* }else{
                    
                    // create the alert
                    let alert = UIAlertController(title: "Atención", message: "¡Selecciona una licenciatura!", preferredStyle: UIAlertController.Style.alert)
                    
                    // add an action (button)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                    //     alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
                    
                    // show the alert
                    self.present(alert, animated: true, completion: nil)
                    
                }*/
                
                
            }else{
                
                // create the alert
                let alert = UIAlertController(title: "Atención", message: "¡Selecciona una licenciatura!", preferredStyle: UIAlertController.Style.alert)
                
                // add an action (button)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                //     alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
                
                // show the alert
                self.present(alert, animated: true, completion: nil)
                
            }
            
            
       /* }else{
            
            // create the alert
            let alert = UIAlertController(title: "Atención", message: "¡Selecciona una licenciatura!", preferredStyle: UIAlertController.Style.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            //     alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
            
        }*/
        
        
    }
    

   /* func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.escuelaUno.reloadAllComponents();
        self.escuelaDos.reloadAllComponents();
        self.escuelaTres.reloadAllComponents();
    }*/
    
    //unwind
    @IBAction func volverVistaMoreViewController(unwindSegue: UIStoryboardSegue){

        print("Pintando vista escuelas")
    }
    
    var indicator = UIActivityIndicatorView()

    
    
    @IBOutlet weak var leyendaSelecciona: UILabel!
    
    
    @IBOutlet weak var btnSaveLeyenda: UIButton!
    
    @IBOutlet weak var textField: UITextField!

    
    @IBOutlet weak var comienzaEstudiar: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UINavigationBar.appearance().barTintColor = UIColor(red:0.84, green:0.62, blue:0.06, alpha:1.0)
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.0)]
        //self.view.backgroundColor = UIColor.blue

        leyendaSelecciona.textColor = UIColor(red:0.03, green:0.08, blue:0.39, alpha:1.0)
        btnSaveLeyenda.backgroundColor = UIColor(red:0.03, green:0.08, blue:0.39, alpha:1.0)
        comienzaEstudiar.backgroundColor = UIColor(red:0.03, green:0.08, blue:0.39, alpha:1.0)
        
        
       /* self.escuelaUno.backgroundColor = UIColor.orange
        self.escuelaDos.backgroundColor = UIColor.red
        self.escuelaTres.backgroundColor = UIColor.black*/
        
        DataBase.checkAndCreateDatabase()
           
           let objDaoIngresos = DataBase()
               
               self.arrayPreguntas = objDaoIngresos.ejecutarSelect("SELECT * FROM tblpreguntasmodulo") as! [[String : String]]
               
               print("arrayPreguntas_: \(self.arrayPreguntas.count)")
               
               if(arrayPreguntas.count<=0){
                   self.comienzaEstudiar.isHidden = true
                   parsingWSAndSyncCategorias()
               }
       
        // Do any additional setup after loading the view.
        
        title = "Auto-Complete"
        
        edgesForExtendedLayout = UIRectEdge()

      
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //instalar correctamente el sqlite
        DataBase.checkAndCreateDatabase()
        

    }
    
    let suggestions = [ "red", "orange", "yellow", "green", "blue", "purple" ]
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return !autoCompleteText(in: textField, using: string, suggestions: suggestions)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    func autoCompleteText(in textField: UITextField, using string: String, suggestions: [String]) -> Bool {
        if !string.isEmpty,
            let selectedTextRange = textField.selectedTextRange, selectedTextRange.end == textField.endOfDocument,
            let prefixRange = textField.textRange(from: textField.beginningOfDocument, to: selectedTextRange.start),
            let text = textField.text(in: prefixRange) {
            let prefix = text + string
            let matches = suggestions.filter { $0.hasPrefix(prefix) }
            
            if (matches.count > 0) {
                textField.text = matches[0]
                
                if let start = textField.position(from: textField.beginningOfDocument, offset: prefix.count) {
                    textField.selectedTextRange = textField.textRange(from: start, to: textField.endOfDocument)
                    
                    return true
                }
            }
        }
        
        return false
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
        textLabel.text = "Loading..."
        
        boxView.addSubview(activityView)
        boxView.addSubview(textLabel)
        
        view.addSubview(boxView)
    }
    
    
    func parsingWSAndSyncCategorias(){
        
        
        let objDaoIngresos = DataBase()
        
        
        //objDaoIngresos.ejecutarDelete("DELETE FROM tblpreguntasmodulo")
        
        self.arrayPreguntas = objDaoIngresos.ejecutarSelect("SELECT * FROM tblpreguntasmodulo") as! [[String : String]]
        
        print("arrayPreguntas: \(self.arrayPreguntas.count)")
        
        if(arrayPreguntas.count<598){
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
                
                let rutaJson = "https://www.pypsolucionesintegrales.com/ventas/get_preguntas_sat.php"
                
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
                            
                            //if(self.arrayPreguntas.count<956){
                                for k in 0 ..< self.arrayDatosPreguntas.count{
                                    
                                    print("imaPREG: \(self.arrayDatosPreguntas[k]["imagenpregunta"]!)")
                                    
                                    print("k: \(k)")
                                    
                                    objDaoIngresos.ejecutarInsert("INSERT INTO tblpreguntasmodulo (idmodulo, pregunta, respuestauno, respuestados, respuestatres, respuestacuatro, imagenpregunta, correcta, tooltip, imagentooltip, audiopregunta, audiotooltip) VALUES ('\(self.arrayDatosPreguntas[k]["idmodulo"]!)', '\(self.arrayDatosPreguntas[k]["pregunta"]!)', '\(self.arrayDatosPreguntas[k]["respuestauno"]!)', '\(self.arrayDatosPreguntas[k]["respuestados"]!)', '\(self.arrayDatosPreguntas[k]["respuestatres"]!)', '\(self.arrayDatosPreguntas[k]["respuestacuatro"]!)', '\(self.arrayDatosPreguntas[k]["imagenpregunta"]!)', '\(self.arrayDatosPreguntas[k]["correcta"]!)', '\(self.arrayDatosPreguntas[k]["tooltip"]!)','\(self.arrayDatosPreguntas[k]["imagentooltip"]!)','\(self.arrayDatosPreguntas[k]["audioPregunta"]!)','\(self.arrayDatosPreguntas[k]["audioTooltip"]!)')")
                                    
                                    
                                }
                            //}
                            
                            
                            
                            self.arrayPreguntas = objDaoIngresos.ejecutarSelect("SELECT * FROM tblpreguntasmodulo") as! [[String : String]]
                            
                            print("arrayDatosAFTER: \(self.arrayPreguntas.count)")
                            
                            OperationQueue.main.addOperation {
                                //self.activityIndicator.removeFromSuperview()
                                //self.activityIndicator.stopAnimating()

                                    self.boxView.removeFromSuperview()
                                self.comienzaEstudiar.isHidden = false
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
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
