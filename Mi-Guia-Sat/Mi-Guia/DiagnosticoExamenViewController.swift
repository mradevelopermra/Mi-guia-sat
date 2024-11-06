//
//  DiagnosticoExamenViewController.swift
//  Mi-Guia
//
//  Created by Mariano Rodriguez Abarca on 2/5/19.
//  Copyright © 2019 Mariano Rodriguez Abarca. All rights reserved.
//

import UIKit

class DiagnosticoExamenViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var totalAciertos: UILabel!
    
    var parametroCuestionario:String = ""

    @IBOutlet weak var tablaDiagnostico: UITableView!
    
    var arrayDatos:[[String:String]] = []
    
    var contador:Int = 0

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayDatos.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "diagnostico", for: indexPath) as! DiagnosticoExamenTableViewCell
        
        cell.layer.masksToBounds = true
        cell.layer.cornerRadius = 5
        let width = CGFloat(2.0)
        cell.layer.borderWidth = 1
        cell.layer.shadowOffset = CGSize(width: -1, height: 1)
        cell.layer.frame = CGRect(x: 0, y: cell.frame.size.height - width, width:  cell.frame.size.width, height: cell.frame.size.height)
        
        let borderColor: UIColor = UIColor(red:0.00, green:0.43, blue:0.76, alpha:1.0)
        
        cell.layer.borderColor = borderColor.cgColor
               //color a los datos
        cell.preguntaDiag.textColor = borderColor
        
        let leyendaAcierto = arrayDatos[indexPath.row]["aciertos"]
        
        // Configure the cell...
        let preguntaDiag = arrayDatos[indexPath.row]["pregunta"]!.trimmingCharacters(in: .whitespaces)
        
        cell.preguntaDiag?.text = preguntaDiag
        cell.preguntaDiag?.sizeToFit()
        cell.preguntaDiag?.numberOfLines = 0
        cell.preguntaDiag?.adjustsFontSizeToFitWidth = true
        cell.preguntaDiag?.lineBreakMode = NSLineBreakMode.byWordWrapping
        //cell.preguntaDiag?.preferredMaxLayoutWidth = 50
 
        
        let pregImagen = arrayDatos[indexPath.row]["preguntaImagen"]!.trimmingCharacters(in: .whitespaces)
        
        print("pregImagen: \(pregImagen)")
        
        if(pregImagen != ""){
            let bundlePath = Bundle.main.path(forResource: pregImagen, ofType: nil)
            
            print("bundlePath: \(String(describing: bundlePath))")
            
            // create an NSMutableAttributedString that we'll append everything to
            let fullString = NSMutableAttributedString(string: "")
            
            // create our NSTextAttachment
            let image1Attachment = NSTextAttachment()
            image1Attachment.image = UIImage(contentsOfFile: bundlePath! )
            
            // wrap the attachment in its own attributed string so we can append it
            let image1String = NSAttributedString(attachment: image1Attachment)
            
            // add the NSTextAttachment wrapper to our full string, then add some more text.
            fullString.append(image1String)
            //fullString.append(NSAttributedString(string: "End of text"))
            
            cell.pregImaDi?.numberOfLines = 0
            cell.pregImaDi?.lineBreakMode  = NSLineBreakMode.byWordWrapping
            cell.pregImaDi?.sizeToFit()
            cell.pregImaDi?.attributedText = fullString
        }else{
            cell.pregImaDi?.text = ""
        }
        
        let respuestaDiag = arrayDatos[indexPath.row]["respuesta"]!
        
       if(respuestaDiag.contains(".PNG") || respuestaDiag.contains(".png") ){
            let bundlePath = Bundle.main.path(forResource: respuestaDiag, ofType: nil)
            
            // create an NSMutableAttributedString that we'll append everything to
            let fullString = NSMutableAttributedString(string: "Your answer: ")
            
            // create our NSTextAttachment
            let image1Attachment = NSTextAttachment()
            image1Attachment.image = UIImage(contentsOfFile: bundlePath! )
            
            // wrap the attachment in its own attributed string so we can append it
            let image1String = NSAttributedString(attachment: image1Attachment)
            
            // add the NSTextAttachment wrapper to our full string, then add some more text.
            fullString.append(image1String)
            //fullString.append(NSAttributedString(string: "End of text"))
        
            cell.respuestaDiag?.numberOfLines = 0
            cell.respuestaDiag?.lineBreakMode  = NSLineBreakMode.byWordWrapping
            cell.respuestaDiag?.sizeToFit()
            cell.respuestaDiag?.attributedText = fullString
        }else{
            cell.respuestaDiag?.numberOfLines = 0
            cell.respuestaDiag?.lineBreakMode  = NSLineBreakMode.byWordWrapping
            cell.respuestaDiag?.sizeToFit()
            cell.respuestaDiag.text = "Your answer: " + respuestaDiag
        }
        
        if(leyendaAcierto == "1"){
            cell.correctaDiag.text = ""
            
        }else{
            
            let correctoDiag = arrayDatos[indexPath.row]["correcta"]!
            
            if(correctoDiag.contains(".PNG") || correctoDiag.contains(".png") ){
                let bundlePath = Bundle.main.path(forResource: correctoDiag, ofType: nil)
                
                // create an NSMutableAttributedString that we'll append everything to
                let fullString = NSMutableAttributedString(string: "Correct answer: ")
                
                // create our NSTextAttachment
                let image1Attachment = NSTextAttachment()
                image1Attachment.image = UIImage(contentsOfFile: bundlePath! )
                
                // wrap the attachment in its own attributed string so we can append it
                let image1String = NSAttributedString(attachment: image1Attachment)
                
                // add the NSTextAttachment wrapper to our full string, then add some more text.
                fullString.append(image1String)
                //fullString.append(NSAttributedString(string: "End of text"))
                
                
                cell.correctaDiag?.numberOfLines = 0
                cell.correctaDiag?.lineBreakMode  = NSLineBreakMode.byWordWrapping
                cell.correctaDiag?.sizeToFit()
                cell.correctaDiag?.attributedText = fullString
            }else{
                cell.correctaDiag.textColor = borderColor
                cell.correctaDiag?.numberOfLines = 0
                cell.correctaDiag?.lineBreakMode  = NSLineBreakMode.byWordWrapping
                cell.correctaDiag?.sizeToFit()
                cell.correctaDiag.text = "Correct answer: " + correctoDiag
            }
            
        }
        

        if(leyendaAcierto == "1"){
            cell.tooltipDiag.text = ""
            cell.imaTooltipDi.text = ""
        }else{
            let tooltipDiag = arrayDatos[indexPath.row]["tooltip"]!
            
            cell.tooltipDiag?.numberOfLines = 0
            cell.tooltipDiag?.lineBreakMode  = NSLineBreakMode.byWordWrapping
            cell.tooltipDiag?.sizeToFit()
            cell.tooltipDiag.text = "Tooltip: " + tooltipDiag
            
            let tooltipImagDiag = arrayDatos[indexPath.row]["tooltipImagen"]!.trimmingCharacters(in: .whitespaces)
            
            print("tooltipImagDiag: \(tooltipImagDiag)")
            if(tooltipImagDiag != ""){
                let bundlePath = Bundle.main.path(forResource: tooltipImagDiag, ofType: nil)
                
                // create an NSMutableAttributedString that we'll append everything to
                let fullString = NSMutableAttributedString(string: "")
                
                // create our NSTextAttachment
                let image1Attachment : NSTextAttachment!
                image1Attachment = NSTextAttachment()
                image1Attachment.image = UIImage(contentsOfFile: bundlePath! )
                
                // wrap the attachment in its own attributed string so we can append it
                let image1String = NSAttributedString(attachment: image1Attachment)
                
                // add the NSTextAttachment wrapper to our full string, then add some more text.
                fullString.append(image1String)
                //fullString.append(NSAttributedString(string: "End of text"))
                
                cell.imaTooltipDi?.numberOfLines = 0
                cell.imaTooltipDi?.lineBreakMode  = NSLineBreakMode.byWordWrapping
                cell.imaTooltipDi?.sizeToFit()
                cell.imaTooltipDi?.attributedText = fullString
            }else{
                cell.imaTooltipDi.text = ""
            }
            
        }
        
        
        
        if(leyendaAcierto == "0"){
            let imagen = "tache.jpg"
            let bundlePathCheck = Bundle.main.path(forResource:imagen, ofType: nil)
            cell.aciertoDiag.textColor = borderColor
            cell.aciertoImagenDiag?.image = UIImage(contentsOfFile: bundlePathCheck!)
            cell.aciertoDiag.text = "Incorrecta"
        }else{
            let imagen = "an_ic_check_on.png"
            let bundlePathCheck = Bundle.main.path(forResource:imagen, ofType: nil)
            cell.aciertoDiag.textColor = borderColor
            cell.aciertoImagenDiag?.image = UIImage(contentsOfFile: bundlePathCheck!)
            cell.aciertoDiag.text = "Correcta"
        }
        
        
        return cell
    }

    
    @IBOutlet weak var btnDiagnoLeyenda: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnDiagnoLeyenda.backgroundColor = UIColor(red:0.03, green:0.08, blue:0.39, alpha:1.0)
        
        UINavigationBar.appearance().barTintColor = UIColor(red:0.84, green:0.62, blue:0.06, alpha:1.0)
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.0)]
        
       /* self.addCuestions()
        
        DispatchQueue.main.async {
            
            do {
                
                let objDaoIngresos = DataBase()
                
                self.arrayDatos = objDaoIngresos.ejecutarSelect("SELECT * FROM examenresultados") as! [[String : String]]
                
                
                for i in 0  ..< self.arrayDatos.count  {
                    
                    if(self.arrayDatos[i]["aciertos"] == "1"){
                        self.contador = self.contador + 1
                    }
                    
                }
                
                self.totalAciertos.text = "Obtuviste \(self.contador) aciertos de 120 preguntas"
                
                self.tablaDiagnostico.reloadData()
                
                OperationQueue.main.addOperation {
                    self.boxView.removeFromSuperview()
                }
            } catch {
                print("error in Concurrent Queue)")
            }
        }*/
     
        //tablaDiagnostico.rowHeight = UITableViewAutomaticDimension
        //tablaDiagnostico.estimatedRowHeight = 600
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let objDaoIngresos = DataBase()
        
        self.arrayDatos = objDaoIngresos.ejecutarSelect("SELECT * FROM examenresultados") as! [[String : String]]
        
        
        for i in 0  ..< self.arrayDatos.count  {
            
            if(self.arrayDatos[i]["aciertos"] == "1"){
                self.contador = self.contador + 1
            }
            
        }
        
       // self.totalAciertos.text = "Obtuviste \(self.contador) aciertos de 120 preguntas"
        
        if(arrayDatos.count > 0){
            totalAciertos.text = "Got \(contador) hits of 60 questions"
            
            totalAciertos.font = UIFont(name: totalAciertos.font.fontName, size: 17)
            
        }else{
            totalAciertos.text = "No score, first you mut make a test."
            totalAciertos.font = UIFont(name: totalAciertos.font.fontName, size: 12)
            
        }
        
        self.tablaDiagnostico.reloadData()
    }
    
    
    
    //unwind
    @IBAction func volverResultadoExamen(unwindSegue: UIStoryboardSegue){
        tablaDiagnostico.reloadData()
        print("Pintando vista ResultadoExamen")
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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
