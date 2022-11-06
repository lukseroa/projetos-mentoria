//
//  SecondViewController.swift
//  MVVM
//
//  Created by MacBook Pro on 06/11/22.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        segundaMsg.text = mensagem.tela2

    }
    
    let mensagem = Mensagens()
    
    @IBOutlet weak var segundaMsg: UILabel!
    
}
