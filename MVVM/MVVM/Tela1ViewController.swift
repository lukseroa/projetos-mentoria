//
//  ViewController.swift
//  MVVM
//
//  Created by MacBook Pro on 06/11/22.
//

import UIKit

class Tela1ViewController: UIViewController {

    @IBOutlet weak var preencherNome: UITextField!
    @IBOutlet weak var mensagemVC: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mensagemVC.text = mensagem.tela1

    }
    
    let mensagem = MensagensTela1()
    
    private func textFieldDidEndEditing(_ textField: UITextField) -> Bool {
        if preencherNome.text != "" {
            return true
        } else {
            preencherNome.placeholder = "Insira o nome"
            return false
        }
    }
    
    @IBAction func enviarNome(_ sender: UIButton) {
        
        if preencherNome.text == "" {
            preencherNome.placeholder = "Insira o nome"
        } else {
            self.performSegue(withIdentifier: "goToTela2", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let telaDestino = segue.destination as! Tela2ViewController
        telaDestino.nomeTela1 = preencherNome.text
    }
    
}

