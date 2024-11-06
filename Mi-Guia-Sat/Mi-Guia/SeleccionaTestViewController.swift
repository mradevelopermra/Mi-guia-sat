//
//  SeleccionaTestViewController.swift
//  Mi-Guia
//
//  Created by Mariano Rodriguez Abarca on 02/03/22.
//  Copyright © 2022 Mariano Rodriguez Abarca. All rights reserved.
//

import UIKit

class SeleccionaTestViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tablaTest: UITableView!
    
    var datoRecibido:String?
    
    var tipoHerramienta: [String] = []
    var imagenesHerramienta: [String] = []
    var nombreHerramienta:String = ""
    
    var arrayDatos:[[String:AnyObject]] = []
    
    var asignatura:String?
    var preguntasRealizadasTest:String?
    var resultadoFinal:String?
    var fecha:String?
    
    var arrayEscuelas:[[String:String]] = []
    
    var arrayPreguntas:[[String:String]] = []
    var arrayDatosPreguntas:[[String:String]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Do any additional setup after loading the view.
         
          UINavigationBar.appearance().barTintColor = UIColor(red:0.84, green:0.62, blue:0.06, alpha:1.0)
         UINavigationBar.appearance().tintColor = UIColor.white
         UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.0)]
              
              // Do any additional setup after loading the view, typically from a nib.
                 tipoHerramienta = [
                  "SAT Literature",
                  //"Fisica",
                  //"Matemáticas",
                  "SAT Math 1 & 2",
                  "SAT Biology E/M",
                  "SAT Chemistry",
                  "SAT Physics",
                  "SAT Spanish"
                  // "Calculadora"
              ]
              
              
              imagenesHerramienta = [
                  "espanol_ios.png",
                  //"fisica_ios.png",
                  //"matematicas_ios.png",
                  "matematicas_ios.png",
                  "biologia_ios.png",
                  "quimica_ios.png",
                  "fisica_ios.png",
                  "razon_verbal_ios.png"
                  //    "calc.png"
              ]
              
             /*  asignatura = "Matematicas"
               preguntasRealizadas = "10"
               resultadoFinal = "3"
               fecha = "2018-05-20"
              
              DataBase.checkAndCreateDatabase()
          
              let objDao = DataBase()
              
              objDao.ejecutarInsert("INSERT INTO materia (nombreModulo, totalPreguntas, fecha, aciertos) VALUES ('\(asignatura!)', '\(preguntasRealizadas!)', '\(fecha!)', '\(resultadoFinal!)')")
              
              arrayDatos = objDao.ejecutarSelect("SELECT * FROM materia") as! [[String : AnyObject]]*/
              
              // arrayDatos = objDao.ejecutarSelect("SELECT * FROM categorias") as! [[String : AnyObject]]
              
              //    concpetoIngreso = arrayDatos.firstObject as! [String]
              //   imagenes = arrayDatos.lastObject as! [String]
              
              print("categoria_platos: \(arrayDatos.count)")
              print("categoria_platos: \(arrayDatos)")
              
              
              refresh()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
          super.viewWillAppear(animated)
          refresh()
          
      }

      override func didReceiveMemoryWarning() {
          super.didReceiveMemoryWarning()
          // Dispose of any resources that can be recreated.
      }
      
      func numberOfSections(in tableView: UITableView) -> Int {
          return 1
      }
      
      func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return tipoHerramienta.count
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = tableView.dequeueReusableCell(withIdentifier: "test", for: indexPath) as! SeleccionaTestTableViewCell
          
          cell.layer.masksToBounds = true
          cell.layer.cornerRadius = 5
          let width = CGFloat(2.0)
          cell.layer.borderWidth = 1
          cell.layer.shadowOffset = CGSize(width: -1, height: 1)
          cell.layer.frame = CGRect(x: 0, y: cell.frame.size.height - width, width:  cell.frame.size.width, height: cell.frame.size.height)
          let borderColor: UIColor = UIColor(red:0.70, green:0.45, blue:0.27, alpha:1.0)
          cell.layer.borderColor = borderColor.cgColor
          
          //color a los datos
          cell.labelCell.textColor = borderColor
          
          // Configure the cell...
          let nombreCategoria = tipoHerramienta[indexPath.row]
          let imagen = imagenesHerramienta[indexPath.row]

          cell.labelCell.text = nombreCategoria
          cell.imageCell.image = UIImage(named: imagen as String)
          
        
          return cell
      }

      
      func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
          nombreHerramienta = tipoHerramienta[indexPath.row]
          
          if let _ = tableView.cellForRow(at: indexPath) {
              if nombreHerramienta == "SAT Literature" {
                  datoRecibido = nombreHerramienta
                  performSegue(withIdentifier: "sattest",
                               sender: self)
              }
              
          }
          if let _ = tableView.cellForRow(at: indexPath) {
              if nombreHerramienta == "SAT Math 1 & 2" {
                  datoRecibido = nombreHerramienta
                  performSegue(withIdentifier: "sattest",
                               sender: self)
              }
              
          }
          if let _ = tableView.cellForRow(at: indexPath) {
              if nombreHerramienta == "SAT Biology E/M" {
                  datoRecibido = nombreHerramienta
                  performSegue(withIdentifier: "sattest",
                               sender: self)
              }
              
          }
          
          if let _ = tableView.cellForRow(at: indexPath) {
              if nombreHerramienta == "SAT Chemistry" {
                  datoRecibido = nombreHerramienta
                  performSegue(withIdentifier: "sattest",
                               sender: self)
              }
              
          }
          if let _ = tableView.cellForRow(at: indexPath) {
              if nombreHerramienta == "SAT Physics" {
                  datoRecibido = nombreHerramienta
                  performSegue(withIdentifier: "sattest",
                               sender: self)
              }
              
          }
          if let _ = tableView.cellForRow(at: indexPath) {
              if nombreHerramienta == "SAT Spanish" {
                  datoRecibido = nombreHerramienta
                  performSegue(withIdentifier: "sattest",
                               sender: self)
              }
              
          }
          if let _ = tableView.cellForRow(at: indexPath) {
              if nombreHerramienta == "Química" {
                  datoRecibido = nombreHerramienta
                  performSegue(withIdentifier: "sattest",
                               sender: self)
              }
              
          }
          if let _ = tableView.cellForRow(at: indexPath) {
              if nombreHerramienta == "Historia Universal" {
                  datoRecibido = nombreHerramienta
                  performSegue(withIdentifier: "sattest",
                               sender: self)
              }
              
          }
          if let _ = tableView.cellForRow(at: indexPath) {
              if nombreHerramienta == "Historia de México" {
                  datoRecibido = nombreHerramienta
                  performSegue(withIdentifier: "sattest",
                               sender: self)
              }
              
          }
          if let _ = tableView.cellForRow(at: indexPath) {
              if nombreHerramienta == "Filosofía" {
                  datoRecibido = nombreHerramienta
                  performSegue(withIdentifier: "sattest",
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
      
      func refresh(){
             tipoHerramienta = [
              "SAT Literature",
              //"Fisica",
              //"Matemáticas",
              "SAT Math 1 & 2",
              "SAT Biology E/M",
              "SAT Chemistry",
              "SAT Physics",
              "SAT Spanish"
              // "Calculadora"
          ]
          
          
          imagenesHerramienta = [
              "espanol_ios.png",
              //"fisica_ios.png",
              //"matematicas_ios.png",
              "matematicas_ios.png",
              "biologia_ios.png",
              "quimica_ios.png",
              "fisica_ios.png",
              "razon_verbal_ios.png"
              //    "calc.png"
          ]
          
          
          self.tablaTest.reloadData()
          //self.refreshControl.endRefreshing()
          
          let objDaoIngresos = DataBase()
          
          arrayEscuelas = objDaoIngresos.ejecutarSelect("SELECT * FROM opcionesescuelas") as! [[String : String]]
          
      }
      
      

      /*  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
       
       
       if nombreHerramienta ==   "Ahorrar para Objetivos"{
       
       performSegue(withIdentifier: "muestraAhorros",
       sender: self)
       
       /*     if var indexPath = opcionesHerramientas.indexPathForSelectedRow{
       let objIngreso = self.tipoHerramienta[indexPath.row]
       
       let objDestinoDetalle = segue.destination as! ActIngresosViewController
       
       }*/
       }
       
       
       
       /*     if segue.identifier ==   "actGastos"{
       
       performSegue(withIdentifier: "actGastos",
       sender: self)
       
       /*     if var indexPath = opcionesHerramientas.indexPathForSelectedRow{
       let objIngreso = self.tipoHerramienta[indexPath.row]
       
       let objDestinoDetalle = segue.destination as! GastosActualizaViewController
       
       }*/
       }
       
       
       
       if segue.identifier ==   "actGastos"{
       
       performSegue(withIdentifier: "actGastos",
       sender: self)
       
       /*  if var indexPath = opcionesHerramientas.indexPathForSelectedRow{
       let objIngreso = self.tipoHerramienta[indexPath.row]
       
       let objDestinoDetalle = segue.destination as! GastosActualizaViewController
       
       }*/
       }*/
       
       
       
       
       
       
       /*     if segue.identifier ==   "gastodetallle"{
       
       if var indexPath = movTable.indexPathForSelectedRow{
       let objIngreso = self.arrayMov[indexPath.row]
       
       let objDestinoDetalle = segue.destination as! GastosActualizaViewController
       objDestinoDetalle.paramtro2 = objIngreso
       }
       }*/
       }*/
      
      /*
       // MARK: - Navigation
       
       // In a storyboard-based application, you will often want to do a little preparation before navigation
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       // Get the new view controller using segue.destinationViewController.
       // Pass the selected object to the new view controller.
       }
       */
      

      
      override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          
          print("arrayEscuelas \(arrayEscuelas)")
          
          //if(arrayEscuelas.count>0){
              if segue.identifier ==   "sattest"{
                  
                  if var indexPath = tablaTest.indexPathForSelectedRow{
                      let objMateria = self.tipoHerramienta[indexPath.row]
                      print("objMateria: \(objMateria)")
                      
                      /*let objDestinoDetalle = segue.destination as! ExamenViewController
                      objDestinoDetalle.parametroCuestionario = objMateria*/
                    
                    if(objMateria=="SAT Literature"){
                       examenAleatorioAreaUno()
                    }
                    if(objMateria=="SAT Math 1 & 2"){
                       examenAleatorioAreaDos()
                    }
                    if(objMateria=="SAT Biology E/M"){
                       examenAleatorioAreaTres()
                    }
                    if(objMateria=="SAT Chemistry"){
                       examenAleatorioAreaCuatro()
                    }
                    if(objMateria=="SAT Physics"){
                       examenAleatorioAreaCinco()
                    }
                    if(objMateria=="SAT Spanish"){
                       examenAleatorioAreaSeis()
                    }
                
                    let objVista2 = segue.destination as! ExamenViewController
                    objVista2.arrayPreguntas = arrayExamenAleatorio
                  }
              }
        

          /*}else{
              
              // create the alert
              let alert = UIAlertController(title: "Atención", message: "¡Antes de comenzar debes seleecionar tus escuelas!", preferredStyle: UIAlertController.Style.alert)
              
              // add an action (button)
              alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
              //     alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
              
              // show the alert
              self.present(alert, animated: true, completion: nil)
          }*/



      }
      
      //unwind
      @IBAction func volverVistaClasesViewController(unwindSegue: UIStoryboardSegue){
          refresh()
          print("Pintando vista escuelas")
      }
    
    
    //consulta por materias
    var ConsultarExamenesRandomEspa:[[String:String]] = []
    var ConsultarExamenesRandomRazVerbal:[[String:String]] = []
    var ConsultarExamenesRandomMatematicas:[[String:String]] = []
    var ConsultarExamenesRandomFisica:[[String:String]] = []
    var ConsultarExamenesRandomQuimica:[[String:String]] = []
    var ConsultarExamenesRandomBiologia:[[String:String]] = []
    var arrayExamenAleatorio:[[String:String]] = []
    
    func examenAleatorioAreaUno(){
           
        let objDaoIngresos = DataBase()
           
        self.arrayDatos = objDaoIngresos.ejecutarSelect("SELECT * FROM tblpreguntasmodulo") as! [[String : String]] as [[String : AnyObject]]
           
           //if(arrayDatos.count>0){
               self.ConsultarExamenesRandomEspa = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo in(14, 15) ORDER BY RANDOM() LIMIT 60") as! [[String : String]]
               
               arrayExamenAleatorio = ConsultarExamenesRandomEspa
               
               print("arrayExamenAleatorio: \(self.arrayExamenAleatorio.count)")
               print("arrayDatos: \(self.arrayDatos.count)")
               
          // }
    
    }
    
    func examenAleatorioAreaDos(){
           
        let objDaoIngresos = DataBase()
           
        self.arrayDatos = objDaoIngresos.ejecutarSelect("SELECT * FROM tblpreguntasmodulo") as! [[String : String]] as [[String : AnyObject]]
           
           //if(arrayDatos.count>0){
               self.ConsultarExamenesRandomEspa = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 16 ORDER BY RANDOM() LIMIT 60") as! [[String : String]]
               
               arrayExamenAleatorio = ConsultarExamenesRandomEspa
               
               print("arrayExamenAleatorio: \(self.arrayExamenAleatorio.count)")
               print("arrayDatos: \(self.arrayDatos.count)")
               
          // }
    
    }
    
    func examenAleatorioAreaTres(){
           
        let objDaoIngresos = DataBase()
           
        self.arrayDatos = objDaoIngresos.ejecutarSelect("SELECT * FROM tblpreguntasmodulo") as! [[String : String]] as [[String : AnyObject]]
           
           //if(arrayDatos.count>0){
               self.ConsultarExamenesRandomEspa = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 17 ORDER BY RANDOM() LIMIT 60") as! [[String : String]]
               
               arrayExamenAleatorio = ConsultarExamenesRandomEspa
               
               print("arrayExamenAleatorio: \(self.arrayExamenAleatorio.count)")
               print("arrayDatos: \(self.arrayDatos.count)")
               
          // }
    
    }

    
    func examenAleatorioAreaCuatro(){
           
        let objDaoIngresos = DataBase()
           
        self.arrayDatos = objDaoIngresos.ejecutarSelect("SELECT * FROM tblpreguntasmodulo") as! [[String : String]] as [[String : AnyObject]]
           
           //if(arrayDatos.count>0){
               self.ConsultarExamenesRandomEspa = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 18 ORDER BY RANDOM() LIMIT 60") as! [[String : String]]
               
               arrayExamenAleatorio = ConsultarExamenesRandomEspa
               
               print("arrayExamenAleatorio: \(self.arrayExamenAleatorio.count)")
               print("arrayDatos: \(self.arrayDatos.count)")
               
          // }
    
    }
    
    func examenAleatorioAreaCinco(){
           
        let objDaoIngresos = DataBase()
           
        self.arrayDatos = objDaoIngresos.ejecutarSelect("SELECT * FROM tblpreguntasmodulo") as! [[String : String]] as [[String : AnyObject]]
           
           //if(arrayDatos.count>0){
               self.ConsultarExamenesRandomEspa = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 19 ORDER BY RANDOM() LIMIT 60") as! [[String : String]]
               
               arrayExamenAleatorio = ConsultarExamenesRandomEspa
               
               print("arrayExamenAleatorio: \(self.arrayExamenAleatorio.count)")
               print("arrayDatos: \(self.arrayDatos.count)")
               
          // }
    
    }
    
    func examenAleatorioAreaSeis(){
           
        let objDaoIngresos = DataBase()
           
        self.arrayDatos = objDaoIngresos.ejecutarSelect("SELECT * FROM tblpreguntasmodulo") as! [[String : String]] as [[String : AnyObject]]
           
           //if(arrayDatos.count>0){
               self.ConsultarExamenesRandomEspa = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 20 ORDER BY RANDOM() LIMIT 60") as! [[String : String]]
               
               arrayExamenAleatorio = ConsultarExamenesRandomEspa
               
               print("arrayExamenAleatorio: \(self.arrayExamenAleatorio.count)")
               print("arrayDatos: \(self.arrayDatos.count)")
               
          // }
    
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
