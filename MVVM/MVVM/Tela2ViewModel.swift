//
//  Tela2ViewModel.swift
//  MVVM
//
//  Created by MacBook Pro on 08/11/22.
//

import UIKit

import Foundation

class Tela2ViewModel {
    
    func validateDate(dataDeNascimento: String) -> Bool {
                
        let dateFormatterGet = DateFormatter()
        
        dateFormatterGet.dateFormat = "dd-MM-yyyy"
        
        let dataInserida = dataDeNascimento
        
        return dateFormatterGet.date(from: dataInserida) != nil
}
}
