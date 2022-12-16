//
//  ThirdViewController.swift
//  MVVM
//
//  Created by MacBook Pro on 06/11/22.
//

import UIKit

class Tela3ViewController: UIViewController {

    var dataTela2: String?
    var nomeTela1: String?
    
    @IBOutlet weak var nomeProprio: UILabel!
    @IBOutlet weak var dataNascimento: UILabel!
    
    let calculoIdade = Tela3ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let dataRecebida = dataTela2 {
        
        let calculoIdade = calculoIdade.calcularIdade(dataInserida: dataRecebida)
        
            guard let idadeCalculada = calculoIdade else {
                
            let alert: UIAlertController = UIAlertController(title: "Alerta", message: "Insira data válida", preferredStyle: .alert)
                
            let action1: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel)
                
            alert.addAction(action1)

           return self.present(alert, animated: true, completion: nil)
            }
            
            let idade = idadeCalculada

            nomeProprio.text = nomeTela1
            dataNascimento.text = idade
        }
    }
}

