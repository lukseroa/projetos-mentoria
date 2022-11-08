//
//  SecondViewController.swift
//  MVVM
//
//  Created by MacBook Pro on 06/11/22.
//

import UIKit

class Tela2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        segundaMsg.text = mensagem.tela2

    }
    
    let mensagem = MensagensTela2()
    
    @IBOutlet weak var segundaMsg: UILabel!
    
}
