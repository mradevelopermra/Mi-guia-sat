//
//  HerramientasViewController.swift
//  Mi-Guia
//
//  Created by Mariano Rodriguez Abarca on 1/28/19.
//  Copyright © 2019 Mariano Rodriguez Abarca. All rights reserved.
//

import UIKit

class HerramientasViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tipoHerramienta: [String] = []
    var imagenesHerramienta: [String] = []
    
    var nombreHerramienta:String = ""
    
    var datoRecibido:String = ""
    
    var arrayEscuelas:[[String:String]] = []
    
    var arrayDatos:[[String:String]] = []
    
    var arrayHistoricos:[[String:String]] = []
    
    
    @IBOutlet weak var tablaHerramientas: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tipoHerramienta.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "herramienta", for: indexPath) as! HerramientasTableViewCell
        
        cell.layer.masksToBounds = true
        cell.layer.cornerRadius = 5
        let width = CGFloat(2.0)
        cell.layer.borderWidth = 1
        cell.layer.shadowOffset = CGSize(width: -1, height: 1)
        cell.layer.frame = CGRect(x: 0, y: cell.frame.size.height - width, width:  cell.frame.size.width, height: cell.frame.size.height)
        let borderColor: UIColor = UIColor(red:0.03, green:0.08, blue:0.39, alpha:1.0)
        cell.layer.borderColor = borderColor.cgColor
        cell.sizeToFit()
        cell.layoutIfNeeded()
        //color a los datos
        cell.nomHerramienta.textColor = borderColor
        
        // Configure the cell...
        let nombreCategoria = tipoHerramienta[indexPath.row]
        let imagen = imagenesHerramienta[indexPath.row]
        
        cell.nomHerramienta.text = nombreCategoria
        cell.imaHerramienta.image = UIImage(named: imagen as String)
        
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        nombreHerramienta = tipoHerramienta[indexPath.row]
        
        
        if let _ = tableView.cellForRow(at: indexPath) {
            if nombreHerramienta == "1.- Clases conceptuales" {
                datoRecibido = nombreHerramienta
                performSegue(withIdentifier: "classesConceptuales",
                             sender: self)
            }
            
        }
        
        if let _ = tableView.cellForRow(at: indexPath) {
            if nombreHerramienta == "Quiz" {
                datoRecibido = nombreHerramienta
                performSegue(withIdentifier: "materiasEstudiar",
                             sender: self)
            }
            
        }
        
        
        if let _ = tableView.cellForRow(at: indexPath) {
            if nombreHerramienta == "Test" {
                datoRecibido = nombreHerramienta
                performSegue(withIdentifier: "testTipo",
                             sender: self)
            }
            
        }
        
        if let _ = tableView.cellForRow(at: indexPath) {
            if nombreHerramienta == "Test review" {
                datoRecibido = nombreHerramienta
                performSegue(withIdentifier: "resexamsimu",
                             sender: self)

            }
            
        }
        if let _ = tableView.cellForRow(at: indexPath) {
            if nombreHerramienta == "Mi Diagnostico" {
                datoRecibido = nombreHerramienta
                performSegue(withIdentifier: "midiagnostico",
                             sender: self)
             
            }
            
        }
        if let _ = tableView.cellForRow(at: indexPath) {
            if nombreHerramienta == "Quiz score" {
                datoRecibido = nombreHerramienta
                performSegue(withIdentifier: "resmateria",
                             sender: self)
            }
            
        }
        
        if let _ = tableView.cellForRow(at: indexPath) {
            if nombreHerramienta == "Archived Score" {
                datoRecibido = nombreHerramienta
                performSegue(withIdentifier: "reshistoricosExamnen",
                             sender: self)
            }
            
        }
        if let _ = tableView.cellForRow(at: indexPath) {
            if nombreHerramienta == "Report a problem" {
                datoRecibido = nombreHerramienta
                performSegue(withIdentifier: "reportar",
                             sender: self)
            }
            
        }
        
       if let _ = tableView.cellForRow(at: indexPath) {
            if nombreHerramienta == "Resultados por Materia" {
                datoRecibido = nombreHerramienta
                performSegue(withIdentifier: "resmateria",
                             sender: self)
            }
            
        }

        /*  if let _ = tableView.cellForRow(at: indexPath) {
         if nombreHerramienta == "Calculadora" {
         performSegue(withIdentifier: "",
         sender: self)
         }
         
         }*/
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UINavigationBar.appearance().barTintColor = UIColor(red:0.84, green:0.62, blue:0.06, alpha:1.0)
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.0)]
        
     /*   self.addCuestions()
        
        DispatchQueue.main.async {
            
            do {
                
                self.refrescaInfo()
                
                OperationQueue.main.addOperation {
                    self.boxView.removeFromSuperview()
                }
            } catch {
                print("error in Concurrent Queue)")
            }
        }*/
        
        
        tablaHerramientas.reloadData()
        
             tipoHerramienta = [
                   //"1.- Clases conceptuales",
                   "Quiz",
                    "Test",
                    "Tools",
                   // "Calificaciòn escuela",
                    "Archived Score",
                    "Quiz score",
                    "Test review",
                    //"Mi Diagnostico",
                    "Report a problem"
                    // "Calculadora"
                ]
                
                
                imagenesHerramienta = [
                   "play.png",
                   "quimica_ios.png",
                    "",
                    "examen_simulacro_ios.png",
                    //"mi_puntaje_ios.png",
                    "resultados_historicos_ios.png",
                    "resultados_materia_ios.png",
                    "resultado_es_ios.png",
                    //"mi_diagnostico_ios.png",
                    "reportar_problema_ios.png"
                    //    "calc.png"
                ]
        // Do any additional setup after loading the view.
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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.tablaHerramientas.estimatedRowHeight = 44
        self.tablaHerramientas.rowHeight = UITableViewAutomaticDimension
        refrescaInfo()
        
    }
    
    func refrescaInfo(){
        let objDaoIngresos = DataBase()
        
        arrayEscuelas = objDaoIngresos.ejecutarSelect("SELECT * FROM opcionesescuelas") as! [[String : String]]
        
        arrayDatos = objDaoIngresos.ejecutarSelect("SELECT * FROM examenresultados") as! [[String : String]]
        
         print("totalPreguntas_: \(arrayDatos.count)")
        
        
        arrayHistoricos = objDaoIngresos.ejecutarSelect("SELECT * FROM examen") as! [[String : String]]
   
        print("arrayHistoricos \(arrayHistoricos.count)")
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        print("arrayEscuelas \(arrayEscuelas.count)")
        
        if segue.identifier == "ressexamensim"{
            
            if var indexPath = tablaHerramientas.indexPathForSelectedRow{
                
                let objMateria = self.tipoHerramienta[indexPath.row]
                print("objMateria: \(objMateria)")
                
                let numPreguntas = "120"
                let objVista2 = segue.destination as! SeleccionaTestViewController
                
                objVista2.preguntasRealizadasTest = numPreguntas
                
            }

        }
        
        if segue.identifier == "resmateria"{
            
            if var indexPath = tablaHerramientas.indexPathForSelectedRow{
                let objMateria = self.tipoHerramienta[indexPath.row]
                print("objMateria: \(objMateria)")
                
                let numPreguntas = "120"
                let objVista2 = segue.destination as! ResMateriaViewController
                
                objVista2.preguntasRealizadas = numPreguntas
                
            }
            
            
        }
        
        if segue.identifier == "reportar"{
            
            if var indexPath = tablaHerramientas.indexPathForSelectedRow{
                let objMateria = self.tipoHerramienta[indexPath.row]
                print("objMateria: \(objMateria)")
                
                let numPreguntas = "120"
                let objVista2 = segue.destination as! ReportarProblemaViewController
                
                objVista2.preguntasRealizadas = numPreguntas
                
            }
            
            
        }
        
        
        if segue.identifier == "resexamsimu"{
            
            refrescaInfo()

           // if(arrayEscuelas.count>0){
                
                //if(arrayDatos.count==120){
                    
                    if var indexPath = tablaHerramientas.indexPathForSelectedRow{
                        let objMateria = self.tipoHerramienta[indexPath.row]
                        print("objMateria: \(objMateria)")
                        
                        let objDestinoDetalle = segue.destination as! DiagnosticoExamenViewController
                        objDestinoDetalle.parametroCuestionario = objMateria
                    }
                    
                /*}else{
                    
                    // create the alert
                    let alert = UIAlertController(title: "Atención", message: "¡Para ver tu resultado del examen simulacro, primero realiza o completa el examen simulacro!", preferredStyle: UIAlertController.Style.alert)
                    
                    // add an action (button)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                    //     alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
                    
                    // show the alert
                    self.present(alert, animated: true, completion: nil)
                    tablaHerramientas.reloadData()
                }*/
                
                
                
           /* }else{
                
                // create the alert
                let alert = UIAlertController(title: "Atención", message: "¡Antes de comenzar debes seleecionar tus opciones de licenciaturas!", preferredStyle: UIAlertController.Style.alert)
                
                // add an action (button)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                //     alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
                
                // show the alert
                self.present(alert, animated: true, completion: nil)
                tablaHerramientas.reloadData()
            }*/
            
        }
        
        if segue.identifier == "midiagnostico"{
            
            refrescaInfo()

            //if(arrayEscuelas.count>0){
                
             //   if(arrayDatos.count==120){
                    
                    if var indexPath = tablaHerramientas.indexPathForSelectedRow{
                        let objMateria = self.tipoHerramienta[indexPath.row]
                        print("objMateria: \(objMateria)")
                        
                        let objDestinoDetalle = segue.destination as! ResultadosDiagnosticoViewController
                        objDestinoDetalle.parametroCuestionario = objMateria
                    }
                    
               /* }else{
                    
                    // create the alert
                    let alert = UIAlertController(title: "Atención", message: "¡Para ver tu diagnóstico, primero realiza o completa el examen simulacro!", preferredStyle: UIAlertController.Style.alert)
                    
                    // add an action (button)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                    //     alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
                    
                    // show the alert
                    self.present(alert, animated: true, completion: nil)
                    tablaHerramientas.reloadData()
                }*/
                
                
                
           /* }else{
                
                // create the alert
                let alert = UIAlertController(title: "Atención", message: "¡Antes de comenzar debes seleecionar tus opciones de licenciaturas!", preferredStyle: UIAlertController.Style.alert)
                
                // add an action (button)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                //     alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
                
                // show the alert
                self.present(alert, animated: true, completion: nil)
                tablaHerramientas.reloadData()
            }*/
        }
        
        if segue.identifier == "califEscuelas"{
            
            refrescaInfo()
            
           // if(arrayEscuelas.count>0){
                
                //if(arrayDatos.count==120){
                    
                    if var indexPath = tablaHerramientas.indexPathForSelectedRow{
                        let objMateria = self.tipoHerramienta[indexPath.row]
                        print("objMateria: \(objMateria)")
                        
                        let objDestinoDetalle = segue.destination as! CalificacionEscuelaViewController
                        objDestinoDetalle.parametroCuestionario = objMateria
                    }
                    
               /* }else{
                    
                    // create the alert
                    let alert = UIAlertController(title: "Atención", message: "¡Para ver tu calificación escuela, primero realiza o completa el examen simulacro!", preferredStyle: UIAlertController.Style.alert)
                    
                    // add an action (button)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                    //     alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
                    
                    // show the alert
                    self.present(alert, animated: true, completion: nil)
                    tablaHerramientas.reloadData()
                }*/
                
                
                
            /*}else{
                
                // create the alert
                let alert = UIAlertController(title: "Atención", message: "¡Antes de comenzar debes seleecionar tus opciones de licenciaturas!", preferredStyle: UIAlertController.Style.alert)
                
                // add an action (button)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                //     alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
                
                // show the alert
                self.present(alert, animated: true, completion: nil)
                tablaHerramientas.reloadData()
            }*/
        }
        
        if segue.identifier == "reshistoricosExamnen"{
            
            refrescaInfo()

           // if(arrayEscuelas.count>0){
                
               // if(arrayHistoricos.count>0){
                    
                    if var indexPath = tablaHerramientas.indexPathForSelectedRow{
                        let objMateria = self.tipoHerramienta[indexPath.row]
                        print("objMateria: \(objMateria)")
                        
                        let correctasFinalTotal = "999"
                        let numPreguntas = "999"
                        let objVista2 = segue.destination as! ResulExamenViewController
                        
                        objVista2.preguntasRealizadas = numPreguntas
                        objVista2.resultadoFinal = correctasFinalTotal
                    }
                    
              /* }else{
                    
                    // create the alert
                    let alert = UIAlertController(title: "Atención", message: "¡Para ver tus resultados históricos, primero realiza el examen simulacro!", preferredStyle: UIAlertController.Style.alert)
                    
                    // add an action (button)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                    //     alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
                    
                    // show the alert
                    self.present(alert, animated: true, completion: nil)
                    tablaHerramientas.reloadData()
                }*/
                
                
                
           /* }else{
                
                // create the alert
                let alert = UIAlertController(title: "Atención", message: "¡Antes de comenzar debes seleecionar tus opciones de licenciaturas!", preferredStyle: UIAlertController.Style.alert)
                
                // add an action (button)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                //     alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
                
                // show the alert
                self.present(alert, animated: true, completion: nil)
                tablaHerramientas.reloadData()
            }*/
            
            
        }
        
        
        
        
        
        
        
    }
    
    //unwind
    @IBAction func volverVistaHerramientasViewController(unwindSegue: UIStoryboardSegue){
        refrescaInfo()
        tablaHerramientas.reloadData()
        print("Pintando vista opciones de licenciaturas")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        refrescaInfo()
        
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
