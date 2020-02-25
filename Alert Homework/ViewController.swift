//
//  ViewController.swift
//  Alert Homework
//
//  Created by Maxwell Marlatt on 2/25/20.
//  Copyright © 2020 Maxwell Marlatt. All rights reserved.
//
import AudioToolbox
import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var UserName: UITextField!
    
    //Pop Up
    
    @IBAction func alertPop(_ sender: Any) {
        let alert = UIAlertController( title: "Important", message: "Royal Cola is the best soft drink.", preferredStyle: .alert)
         
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"),
                   style: .`default` , handler: { _ in }))
           
           
               self.present(alert,animated: true, completion: nil)    }
    
   //Sound alert
    
    @IBAction func alertSound(_ sender: Any) { var soundId: SystemSoundID = 0
               let soundFile:String=Bundle.main.path(forResource:"cop_killer", ofType: "wav")!
               let soundURL: NSURL = NSURL (fileURLWithPath: soundFile)
            AudioServicesCreateSystemSoundID(soundURL, &soundId)
            AudioServicesPlaySystemSound(soundId)    }
    

    
    @IBAction func alertLogin(_ sender: Any) {
        let ac = UIAlertController(title: "What is your username?" , message: nil, preferredStyle: .alert)
        ac.addTextField()
        let submitAction = UIAlertAction(title: "Submit" , style: .default) {[unowned ac] _ in
        let answer = ac.textFields![0]
        self.UserName.text = answer.text
        
        let alert = UIAlertController(title: "Welcome:", message: answer.text, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default Action"), style:.`default`, handler:{ _ in}))
        
        self.present(alert,animated: true, completion: nil)}
        ac.addAction(submitAction)
        present(ac, animated: true)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

