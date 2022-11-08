//
//  ViewController.swift
//  MVVM
//
//  Created by MacBook Pro on 06/11/22.
//

import UIKit

class Tela1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mensagemVC.text = mensagem.tela1

    }
    
    let mensagem = MensagensTela1()

    @IBOutlet weak var mensagemVC: UILabel!
    
}

