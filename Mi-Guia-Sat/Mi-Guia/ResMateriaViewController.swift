//
//  ResMateriaViewController.swift
//  Mi-Guia
//
//  Created by Mariano Rodriguez Abarca on 11/26/19.
//  Copyright © 2019 Mariano Rodriguez Abarca. All rights reserved.
//

import UIKit

class ResMateriaViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITableViewDelegate, UITableViewDataSource {
    
    var tipoHerramienta: [String] = []
    var imagenesHerramienta: [String] = []
    
    var arrayDatos:[[String:String]] = []
    
    var nombreMateria:String = ""
    
    @IBOutlet weak var pickerMaterias: UIPickerView!
    
    
    @IBOutlet weak var calificacionMaterias: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var contador = 0
        
        if(arrayDatos.count>0){
            contador = arrayDatos.count
        }else{
            contador = 1
        }
        
        return contador
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "materiaResultado", for: indexPath)
        
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
        
        print("arrayDatosCuenta \(arrayDatos.count)")
        
        // Configure the cell...
        
        var nombreCategoria = "No score for \(nombreMateria)"
        
        if(arrayDatos.count>0){
            nombreCategoria = arrayDatos[indexPath.row]["fecha"]! + " | Hits: " + arrayDatos[indexPath.row]["aciertos"]!
        }
        
        /* let imagen = "unam.png"
         
         let bundlePathRadio = Bundle.main.path(forResource:imagen, ofType: nil)
         
         let myImageView = UIImageView(frame: CGRect(x: 0, y: 15, width: 15, height: 15))
         myImageView.image = UIImage(contentsOfFile: bundlePathRadio! )*/
        
        //cell.imageView?.image = myImageView.image
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.text = nombreCategoria as String?
        
        return cell
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        /*   if (pickerView.tag == 0){
         return arrayEscuelas.count
         }
         if (pickerView.tag == 1){
         return arrayEscuelas.count
         }
         if (pickerView.tag == 2){
         return arrayEscuelas.count
         }  */
        return tipoHerramienta.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "Test"
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 68
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        
        let objDao = DataBase()
        arrayDatos = objDao.ejecutarSelect("SELECT * FROM materia where nombreModulo='\(tipoHerramienta[row])'") as! [[String : String]]
        
        nombreMateria = tipoHerramienta[row]
        
        print("arrayDatos \(arrayDatos)")
        
        calificacionMaterias.reloadData()
        
        /*Consulta por materia*/
        
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        let myView = UIView(frame: CGRect(x: 0, y: 20, width: pickerView.bounds.width - 30, height: 80))
        
        myView.backgroundColor = UIColor(red:0.00, green:0.17, blue:0.48, alpha:1.0)
        
        
        let myImageView = UIImageView(frame: CGRect(x: 0, y: 25, width: 30, height: 30))
        
        var rowString = String()
        
        let myLabel = UILabel(frame: CGRect(x: 60, y: 0, width: pickerView.bounds.width - 90, height: 80 ))
        
        rowString = tipoHerramienta[row]
        myImageView.image = UIImage(named:imagenesHerramienta[row] )
        
        print("rowString_1 \(rowString)")
        
        myLabel.numberOfLines = 2
        myLabel.textAlignment = .justified
        myLabel.adjustsFontSizeToFitWidth = true
        myLabel.textColor = UIColor.white
        myLabel.text = rowString
        
        myView.addSubview(myLabel)
        myView.addSubview(myImageView)
        
        
        return myView
    }
    
    
    var preguntasRealizadas:String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        UINavigationBar.appearance().barTintColor = UIColor(red:0.84, green:0.62, blue:0.06, alpha:1.0)
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.0)]
        
        tipoHerramienta = [
            "Select",
            "Reading",
            "Writing and Language",
            "Math",
            "Biology",
            "Chemistry",
            "Physics",
            "Spanish"
            // "Calculadora"
        ]
        
        
        imagenesHerramienta = [
            "",
            "espanol_ios.png",
            "historia_universal_ios.png",
            "matematicas_ios.png",
            "biologia_ios.png",
            "quimica_ios.png",
            "fisica_ios.png",
            "razon_verbal_ios.png"
            //    "calc.png"
        ]
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let objDao = DataBase()
        arrayDatos = objDao.ejecutarSelect("SELECT * FROM materia where nombreModulo='\(tipoHerramienta[0])'") as! [[String : String]]
        
        print("arrayDatos \(arrayDatos)")
        
        calificacionMaterias.reloadData()
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
