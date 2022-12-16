//
//  SecondViewController.swift
//  MVVM
//
//  Created by MacBook Pro on 06/11/22.
//

import UIKit

class Tela2ViewController: UIViewController {
    
    let modelo2 = Tela2ViewModel()
    
    var nomeTela1: String?
    
    @IBOutlet weak var segundaMsg: UILabel!
    @IBOutlet weak var dataDeNascimento: UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        segundaMsg.text = nomeTela1
    }
    
    private func textFieldDidEndEditing(_ textField: UITextField) -> Bool {
        if dataDeNascimento.text != "" {
            return true
        } else {
            dataDeNascimento.placeholder = "Insira a data"
            return false
        }
    }
    
    @IBAction func passarData(_ sender: Any) {
        
        let alert: UIAlertController = UIAlertController(title: "Alerta", message: "Insira data válida", preferredStyle: .alert)
        
        let alert2: UIAlertController = UIAlertController(title: "Alerta", message: "Preencha data", preferredStyle: .alert)
        
        let action1: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel)
        
        alert.addAction(action1)
        alert2.addAction(action1)
    
        if let validatedDate = dataDeNascimento.text {
        
        let dataValida = modelo2.validateDate(dataDeNascimento: validatedDate)
        
        if dataValida == true {
            self.performSegue(withIdentifier: "goToTela3", sender: self)
            
        } else if dataDeNascimento.text == "" {
            self.present(alert2, animated: true, completion: nil)
            
        } else {
            self.present(alert, animated: true, completion: nil)
        }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                
        if let telaDestino = segue.destination as? Tela3ViewController {
            
        telaDestino.dataTela2 = dataDeNascimento.text
        telaDestino.nomeTela1 = nomeTela1
            
        }

    }
}

    


