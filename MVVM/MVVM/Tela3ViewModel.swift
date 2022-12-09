//
//  Tela3ViewModel.swift
//  MVVM
//
//  Created by MacBook Pro on 08/11/22.
//

import Foundation

class DadosUsuario {
    
    let now = Date()
    
    var myFormatte = DateFormatter()
    
    func calcularIdade (dataInserida: String) -> String {
        
    myFormatte.dateFormat = "dd-MM-yyyy"
    let calendar = Calendar.current
    let finalDate : Date = myFormatte.date(from: dataInserida)!
    let idade = calendar.dateComponents([.year], from: finalDate, to: now)
    let dateString = "\(idade.year!)"
    return dateString
    }
        
}
