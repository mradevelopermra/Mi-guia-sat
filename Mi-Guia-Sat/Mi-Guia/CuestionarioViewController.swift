//
//  CuestionarioViewController.swift
//  Mi-Guia
//
//  Created by Mariano Rodriguez Abarca on 16/05/18.
//  Copyright © 2018 Mariano Rodriguez Abarca. All rights reserved.
//

import UIKit

class CuestionarioViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var arrayDatosPreguntas:[[String:String]] = []
    var arrayDatos:[[String:String]] = []
    
    var parametroCuestionario:String = ""
    var numPreguntas: [String] = []
    var preguntasNumero:String = ""
    var ayuda:String = "Si"
    var modoJuego:String = "Si"
    var nombreMateria:String = ""
    var idMateria:String=""
    var tipoJuego:String=""
    
    @IBOutlet weak var pregNumPicker: UIPickerView!
    
    //ayuda
    var categorySwitchIsOn:Bool =  false
    
    @IBOutlet weak var opAyuda: UISwitch!
    
    @IBOutlet weak var opModoJuego: UISwitch!
    
    var arrayCategoriaFormaPago:[[String:String]] = []
    
    var espanol:[[String:AnyObject]] = []
    var razonamientoverbal:[[String:AnyObject]] = []
    var historiauniversal:[[String:AnyObject]] = []
    var historiademexico:[[String:AnyObject]] = []
    var geouniversal:[[String:AnyObject]] = []
    var geodemexico:[[String:AnyObject]] = []
    var civismo:[[String:AnyObject]] = []
    var razonamientomatematico:[[String:AnyObject]] = []
    var matematicas:[[String:AnyObject]] = []
    var fisica:[[String:AnyObject]] = []
    var quimica:[[String:AnyObject]] = []
    var bilogia:[[String:AnyObject]] = []
    
    
    @IBOutlet weak var numPregLeyenda: UILabel!
    
    @IBOutlet weak var ayudaLeyenda: UILabel!
    
    
    @IBOutlet weak var instruccionesLeyenda: UILabel!
    
    @IBOutlet weak var btnIniciar: UIButton!
    
    @IBOutlet weak var modoJuegoLeyenda: UILabel!
    
    var arrayPreguntas:[[String:String]] = []
    
    @IBAction func iniciaCuestionario(_ sender: Any) {
        
        if opModoJuego.isOn {
            modoJuego = "Si"
        } else {
            modoJuego = "No"
        }
        
        modoJuego = "No"
        
        //modoJuego = "No"
        print("modoJuego: \(modoJuego)")
        
        if(modoJuego=="Si"){
            if(tipoJuego=="Skyinvaders"){
                performSegue(withIdentifier: "verModuloJuego", sender: sender)
            }
            if(tipoJuego=="Crucigrama"){
                performSegue(withIdentifier: "crucigrama", sender: sender)
            }
            
        }else{
            performSegue(withIdentifier: "verModulo", sender: sender)
        }
        
    }
    
    
    
    @IBAction func comienzaCuestionario(_ sender: Any) {
        
        if opModoJuego.isOn {
                modoJuego = "Si"
            } else {
                modoJuego = "No"
            }
        
        modoJuego = "No"
            
            //modoJuego = "No"
            print("modoJuego: \(modoJuego)")
            
            if(modoJuego=="Si"){
                if(tipoJuego=="Skyinvaders"){
                    performSegue(withIdentifier: "verModuloJuego", sender: sender)
                }
                if(tipoJuego=="Crucigrama"){
                    performSegue(withIdentifier: "crucigrama", sender: sender)
                }
                
            }else{
                performSegue(withIdentifier: "verModulo", sender: sender)
            }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numPregLeyenda.textColor = UIColor(red:0.03, green:0.08, blue:0.39, alpha:1.0)
        ayudaLeyenda.textColor = UIColor(red:0.03, green:0.08, blue:0.39, alpha:1.0)
        instruccionesLeyenda.textColor = UIColor(red:0.03, green:0.08, blue:0.39, alpha:1.0)
        modoJuegoLeyenda.textColor = UIColor(red:0.03, green:0.08, blue:0.39, alpha:1.0)
       /* btnIniciar.backgroundColor = UIColor(red:0.03, green:0.08, blue:0.39, alpha:1.0)*/
        
        
        UINavigationBar.appearance().barTintColor = UIColor(red:0.84, green:0.62, blue:0.06, alpha:1.0)
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.0)]
        
        //parsingWSAndSyncCategorias()
        
        opAyuda.addTarget(self, action:#selector(CuestionarioViewController.categorySwitchValueChanged(_:)), for: .valueChanged)
        
        opModoJuego.addTarget(self, action:#selector(CuestionarioViewController.categorySwitchValueChanged(_:)), for: .valueChanged)
        
        print("parametroCuestionario-CuestionarioViewController: \(parametroCuestionario)")
        nombreMateria = parametroCuestionario
        

        if opAyuda.isOn {
            ayuda = "Si"
        } else {
            ayuda = "No"
        }
        
        if opModoJuego.isOn {
            modoJuego = "Si"
        } else {
            modoJuego = "No"
        }
        

        if nombreMateria == "Reading" {
            idMateria = "14"
            tipoJuego = "Crucigrama"
        }
        if nombreMateria == "Writing and Language" {
            idMateria = "15"
            tipoJuego = "Crucigrama"
        }
        if nombreMateria == "Math" {
            idMateria = "16"
            tipoJuego = "Skyinvaders"
        }
        if nombreMateria == "Biology" {
            idMateria = "17"
            tipoJuego = "Crucigrama"
        }
        if nombreMateria == "Chemistry" {
            idMateria = "18"
             tipoJuego = "Crucigrama"
        }
        if nombreMateria == "Physics" {
            idMateria = "19"
            tipoJuego = "Skyinvaders"
        }
        if nombreMateria == "Spanish" {
            idMateria = "20"
            tipoJuego = "Crucigrama"
        }
        if nombreMateria == "Historia Universal" {
            idMateria = "3"
             tipoJuego = "Crucigrama"
        }
        if nombreMateria == "Historia de México" {
            idMateria = "8"
             tipoJuego = "Crucigrama"
        }
        if nombreMateria == "Filosofía" {
            idMateria = "2"
             tipoJuego = "Crucigrama"
        }
        

        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        examenAleatorio()
        
        let totalPreguntas = String(arrayCategoriaFormaPago.count)
        
        numPreguntas = [
            "10",
            "20",
            "30",
            "40",
            totalPreguntas
        ]
    }
    
    
    func examenAleatorio(){
        
        let objDaoIngresos = DataBase()
        
        self.arrayDatos = objDaoIngresos.ejecutarSelect("SELECT * FROM tblpreguntasmodulo") as! [[String : String]]
        
        print("arrayDatos: \(arrayDatos.count)")
        
        if(arrayDatos.count>0){
            self.arrayCategoriaFormaPago = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = \(idMateria) ORDER BY RANDOM()") as! [[String : String]]
            
         //   self.arrayCategoriaFormaPago = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = \(idMateria)") as! [[String : String]]
        }
        
        print("arrayCategoriaFormaPago: \(arrayCategoriaFormaPago.count)")
    }
    
    func parsingWSAndSyncCategorias(){
        
        let objDaoIngresos = DataBase()
        
        //objDaoIngresos.ejecutarDelete("DELETE FROM tblpreguntasmodulo")
        self.arrayPreguntas = objDaoIngresos.ejecutarSelect("SELECT * FROM tblpreguntasmodulo") as! [[String : String]]
        
        print("arrayPreguntas: \(self.arrayPreguntas.count)")
        
        if(arrayPreguntas.count<0){
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
                            
                            if(self.arrayPreguntas.count<956){
                                for k in 0 ..< self.arrayDatosPreguntas.count{
                                    
                                    print("imaPREG: \(self.arrayDatosPreguntas[k]["imagenpregunta"]!)")
                                    
                                    print("k: \(k)")
                                    
                                    objDaoIngresos.ejecutarInsert("INSERT INTO tblpreguntasmodulo (idmodulo, pregunta, respuestauno, respuestados, respuestatres, respuestacuatro, imagenpregunta, correcta, tooltip, imagentooltip) VALUES ('\(self.arrayDatosPreguntas[k]["IdMateria"]!)', '\(self.arrayDatosPreguntas[k]["pregunta"]!)', '\(self.arrayDatosPreguntas[k]["respuestaUno"]!)', '\(self.arrayDatosPreguntas[k]["respuestaDos"]!)', '\(self.arrayDatosPreguntas[k]["respuestaTres"]!)', '\(self.arrayDatosPreguntas[k]["respuestaCuatro"]! )', '\(self.arrayDatosPreguntas[k]["imagenPregunta"]!)', '\(self.arrayDatosPreguntas[k]["correcta"]!)', '\(self.arrayDatosPreguntas[k]["tooltip"]!)', '\(self.arrayDatosPreguntas[k]["tooltipImagen"]!)')")
                                    
                                    
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
    
    
    @objc func categorySwitchValueChanged(_ sender : UISwitch!){
        
        if sender.isOn {
            ayuda = "Si"
            
        } else {
            
            ayuda = "No"
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return numPreguntas.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "Test"
    }
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        let myView = UIView(frame: CGRect(x: 0, y: 20, width: pickerView.bounds.width - 30, height: 80))

        var rowString = String()
        
        let myLabel = UILabel(frame: CGRect(x: 60, y: 0, width: pickerView.bounds.width - 90, height: 80 ))
        
        //  for i in 0  ..< concpetoIngreso.count  {
        
        rowString = numPreguntas[row]

        let selectedValue = pickerView.selectedRow(inComponent: 0)
        
        for i in 0  ..< numPreguntas.count  {
            
            if(i == selectedValue){
                preguntasNumero = numPreguntas[i]
            }
            
        }
        
    
        
        myLabel.text = rowString
        
        myView.addSubview(myLabel)

        
        return myView
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        print("modoJuego: \(modoJuego)")
        
        if(modoJuego=="Si"){
            if segue.identifier == "verModuloJuego"{
                
                let objVista2 = segue.destination as! GameViewController
                objVista2.materia = nombreMateria
                objVista2.numPreguntas = preguntasNumero
                objVista2.ayuda = ayuda
                objVista2.arrayPreguntas = arrayCategoriaFormaPago
                
            }
            
            if segue.identifier == "crucigrama"{
                
                let objVista2 = segue.destination as! CrucigramaViewController
                objVista2.materia = nombreMateria
                objVista2.numPreguntas = preguntasNumero
                objVista2.ayuda = ayuda
                objVista2.arrayPreguntas = arrayCategoriaFormaPago
                
            }
        }else{
            if segue.identifier == "verModulo"{
                
                print("nombreMateria: \(nombreMateria)")
                let objVista2 = segue.destination as! PreguntasModuloViewController
                objVista2.materia = nombreMateria
                objVista2.numPreguntas = preguntasNumero
                objVista2.ayuda = ayuda
                objVista2.arrayPreguntas = arrayCategoriaFormaPago
                
            }
        }
  


        
        
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


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
