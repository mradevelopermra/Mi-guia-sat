//
//  VideoViewController.swift
//  Mi-Guia
//
//  Created by Mariano Rodriguez Abarca on 17/06/20.
//  Copyright © 2020 Mariano Rodriguez Abarca. All rights reserved.
//

import UIKit
import AVKit

class VideoViewController: UIViewController {
    
    
    @IBOutlet weak var vistaVideo: UIView!
    
    var parametroCuestionario:String = ""
    
    override func viewDidLoad() {
         super.viewDidLoad()
         
         print("parametroCuestionario \(parametroCuestionario)")
         
         videoPlay()

         // Do any additional setup after loading the view.
    }
     
    func videoPlay()
      {
        
        let URLfija = "https://www.pypsolucionesintegrales.com/clases_comipems_premier_pro/"
        let URLvideo = URLfija + parametroCuestionario
         
         let videoURL = URL(string: URLvideo)
         
         let player = AVPlayer(url: videoURL!)
         let playerViewController = AVPlayerViewController()
         playerViewController.player = player

         self.addChildViewController(playerViewController)
         self.view.addSubview(playerViewController.view)
         playerViewController.view.frame = self.vistaVideo.frame

         player.play()

      }

     /*
     // MARK: - Navigation

     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
     }
     */
     
     
     func playerViewControllerWillStartPictureInPicture(_ playerViewController: AVPlayerViewController){
           print("playerViewControllerWillStartPictureInPicture")
       }

       func playerViewControllerDidStartPictureInPicture(_ playerViewController: AVPlayerViewController)
       {
           print("playerViewControllerDidStartPictureInPicture")

       }
       func playerViewController(_ playerViewController: AVPlayerViewController, failedToStartPictureInPictureWithError error: Error)
       {
           print("failedToStartPictureInPictureWithError")
       }
       func playerViewControllerWillStopPictureInPicture(_ playerViewController: AVPlayerViewController)
       {
           print("playerViewControllerWillStopPictureInPicture")
       }
       func playerViewControllerDidStopPictureInPicture(_ playerViewController: AVPlayerViewController)
       {
           print("playerViewControllerDidStopPictureInPicture")
       }
       func playerViewControllerShouldAutomaticallyDismissAtPictureInPictureStart(_ playerViewController: AVPlayerViewController) -> Bool
       {
           print("playerViewControllerShouldAutomaticallyDismissAtPictureInPictureStart")
           return true
       }
     


}
