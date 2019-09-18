//
//  ViewController2.swift
//  PRACTICA
//
//  Created by MacBook on 14/04/2019.
//  Copyright © 2019 MacBook. All rights reserved.
//

import UIKit



class ViewController2: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var image: UIImageView!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
      image.isHidden = true
      label.isHidden = true
       
        
    }
       
    
    @IBAction func button(_ sender: Any) {
        
        image.isHidden = false
        label.isHidden = false
        
        guard textField.text?.isEmpty == false else {return}
        
        label.text = textField.text
        
    }
    

}


