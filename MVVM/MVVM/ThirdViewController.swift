//
//  ThirdViewController.swift
//  MVVM
//
//  Created by MacBook Pro on 06/11/22.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        msgTela3.text = mensagem.tela3
        
    }
    
    let mensagem = Mensagens()
    
    @IBOutlet weak var msgTela3: UILabel!
    
}
