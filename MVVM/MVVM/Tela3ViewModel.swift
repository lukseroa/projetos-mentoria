//
//  Tela3ViewModel.swift
//  MVVM
//
//  Created by MacBook Pro on 08/11/22.
//

import Foundation

class Tela3ViewModel {
    
    let now = Date()
    
    var myFormatte = DateFormatter()
    
    func calcularIdade (dataInserida: String) -> String? {
        
    myFormatte.dateFormat = "dd-MM-yyyy"
    let calendar = Calendar.current
    let finalDate = myFormatte.date(from: dataInserida)
    if let dataFinal = finalDate {
        
    let ano = calendar.dateComponents([.year], from: dataFinal, to: now)
        guard let year = ano.year else {
            return nil
        }
        
    let dateString = String(year)
    return dateString
        
        }
    return nil
    }
        
}
