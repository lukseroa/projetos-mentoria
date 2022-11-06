//
//  ViewController.swift
//  jogo da sorte
//
//  Created by MacBook Pro on 22/10/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var mensagemSorte: UILabel!
    @IBOutlet weak var numeroEscolhido: UILabel!
    @IBOutlet weak var escolherNumeroUser: UITextField!
    @IBOutlet weak var checagemUI: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .green
        escolherNumeroUser.backgroundColor = .white
    }
    
    var timer = Timer()
    var tentativas = 1
    var randomInt1 = Int.random(in: 0..<10)
    
    private func textFieldDidEndEditing(_ textField: UITextField) -> Bool {
        if escolherNumeroUser.text != "" {
            return true
        } else {
            escolherNumeroUser.placeholder = "Esqueceu o numero"
            return false
        }
    }
    
    func win () {
        mensagemSorte.text = "Sortudo!"
        checagemUI.isEnabled = false
    }
    
    func lose () {
        tentativas += 1
        mensagemSorte.text = "Errou!"
    }
    
    func gameOver () {
        mensagemSorte.text = "Perdeu!"
        checagemUI.isEnabled = false
    }
    
    func sortearNumero() -> Int {
        randomInt1 = Int.random(in: 0..<10)
         return randomInt1
    }
    
    func cliclouBotao () {
        guard tentativas < 3 else {
            gameOver()
            return
          }
        
        let numeroInformado = Int(escolherNumeroUser.text ?? "") ?? 0
        
        if numeroInformado == sortearNumero() {
            win()
          }else{
            lose()
          }
    }
    
    @IBAction func numeroAleatorio(_ sender: Any) {
        
        escolherNumeroUser.endEditing(true)
        cliclouBotao()
        print(randomInt1)
    }
    
    @IBAction func resetarJogo(_ sender: UIButton) {
        
        tentativas = 1
        checagemUI.isEnabled = true
        escolherNumeroUser.text = ""
        mensagemSorte.text = "Será que é hoje?"
        randomInt1 = sortearNumero()
    }
}
