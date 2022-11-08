//
//  ViewController.swift
//  tempo
//
//  Created by MacBook Pro on 21/10/22.
//

import UIKit
import Foundation

enum HorasDoDia: String {
    case manha = "Bom dia"
    case tarde = "Boa tarde"
    case noite = "Boa noite"
    case madrugada = "Ainda está acordado?"
    case error = "Sem mensagem"
}

class ViewController: UIViewController {

    @IBOutlet weak var minhaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let now = Date()

        let calendar = Calendar.current
        
        let hour = calendar.component(.hour, from: now)
        
        let minute = calendar.component(.minute, from: now)
        
        let currentDate = getCurrentDate(hour: hour, minute: minute)
        
        minhaLabel.text = showMessageFromDate(mensagem: currentDate)
        
    }

    func getCurrentDate(hour:Int, minute: Int) -> HorasDoDia {

    if hour >= 6, minute >= 0 && hour < 12, minute <= 59 {
        view.backgroundColor = .blue
        return HorasDoDia.manha
        
    } else if hour >= 12 && hour < 18 {
        view.backgroundColor = .green
        return HorasDoDia.tarde
        
    } else if hour >= 18 && hour < 24 {
        view.backgroundColor = .purple
        return HorasDoDia.noite

    } else if hour >= 0 && hour < 6 {
        view.backgroundColor = .red
        return HorasDoDia.madrugada
        }
        
        return HorasDoDia.error
    }

    func showMessageFromDate(mensagem:HorasDoDia) -> String {
        mensagem.rawValue
        }
}
