//
//  SecondViewController.swift
//  MVVM
//
//  Created by MacBook Pro on 06/11/22.
//

import UIKit

class Tela2ViewController: UIViewController {
    
    var nomeTela1: String?
    
    @IBOutlet weak var segundaMsg: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        segundaMsg.text = nomeTela1

    }
    
    let mensagem = MensagensTela2()
    
}
