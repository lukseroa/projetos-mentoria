//
//  ViewController.swift
//  MVVM
//
//  Created by MacBook Pro on 06/11/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mensagemVC.text = mensagem.tela1

    }
    
    let mensagem = Mensagens()

    @IBOutlet weak var mensagemVC: UILabel!
    
}

