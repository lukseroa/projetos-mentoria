//
//  ThirdViewController.swift
//  MVVM
//
//  Created by MacBook Pro on 06/11/22.
//

import UIKit

class Tela3ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        msgTela3.text = mensagem.tela3
        
    }
    
    let mensagem = MensagensTela3()
    
    @IBOutlet weak var msgTela3: UILabel!
    
}
