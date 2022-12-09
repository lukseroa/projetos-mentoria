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
    
    let calculoIdade = DadosUsuario()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calculoIdade = calculoIdade.calcularIdade(dataInserida: dataTela2!)
        
        let idade = calculoIdade

        nomeProprio.text = nomeTela1
        dataNascimento.text = idade
        
    }
    
   
    
}

