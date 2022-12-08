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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let idade = calcularIdade()

        nomeProprio.text = nomeTela1
        dataNascimento.text = idade
        
    }
    
    let now = Date()
    
    var myFormatte = DateFormatter()
    
    func calcularIdade () -> String {
        
    myFormatte.dateFormat = "dd-MM-yyyy"
    
    let calendar = Calendar.current
    
    let finalDate : Date = myFormatte.date(from: dataTela2!)!
    
    let idade = calendar.dateComponents([.year], from: finalDate, to: now)
        
    let dateString = "\(idade.year!)"
        
    return dateString
    }
 
}
