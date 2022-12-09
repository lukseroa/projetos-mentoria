//
//  Tela2ViewModel.swift
//  MVVM
//
//  Created by MacBook Pro on 08/11/22.
//

import UIKit

import Foundation

class ModeloNegocioTela2: UIAlertController {
    
    func validateDate(dataDeNascimento: String) -> Bool {
                
        let dateFormatterGet = DateFormatter()
        
        dateFormatterGet.dateFormat = "dd-MM-yyyy"
        
        let dataInserida = dataDeNascimento
        
        if dateFormatterGet.date(from: dataInserida) != nil {
            return true
        } else {
            return false
        }
    }
    
//    func alerta() {
//    
//    let alert: UIAlertController = UIAlertController(title: "Alerta", message: "Insira data válida", preferredStyle: .alert)
//    
//    let action1: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel)
//    
//    alert.addAction(action1)
//        
//    self.present(alert, animated: true, completion: nil)
//        
//    }
    
}

