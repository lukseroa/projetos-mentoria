//
//  SecondViewController.swift
//  MVVM
//
//  Created by MacBook Pro on 06/11/22.
//

import UIKit

class Tela2ViewController: UIViewController {
    
    var nomeTela1: String?
    
    @IBOutlet weak var segundaMsg: UILabel!
    @IBOutlet weak var dataDeNascimento: UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        segundaMsg.text = nomeTela1
    }
    
    let mensagem = MensagensTela2()
    
    let dateFormatterGet = DateFormatter()
    
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
        
        let action1: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel)
        
        alert.addAction(action1)
        
        let validatedDate = validateDate()
        
        if validatedDate == true {
            self.performSegue(withIdentifier: "goToTela3", sender: self)
        } else {
            self.present(alert, animated: true, completion: nil)
        }
                
    }
    

    func validateDate() -> Bool {
        
        dateFormatterGet.dateFormat = "dd-MM-yyyy"
        
        let dataInserida = dataDeNascimento.text
        
        if dateFormatterGet.date(from: dataInserida!) != nil {
            return true
        } else {
            return false
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let validDate = validateDate()
        
        if validDate == true {
                
        let telaDestino = segue.destination as! Tela3ViewController
        telaDestino.dataTela2 = dataDeNascimento.text
        telaDestino.nomeTela1 = nomeTela1
        } else {
            print("fuck")
        }
        
    }
        
    
}

