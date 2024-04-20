//
//  ViewController.swift
//  FaixaEtária
//
//  Created by iOSLab on 20/04/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var number: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBAction func Pesquisa(_ sender: Any) {

        guard let idade = Int(number.text ?? "") else {
            //
            return
        }
        
        var resultado: String? {
            switch idade {
            case 02...04:
                "Primeira Infância"
            case 05...10:
                "Segunda Infância"
            case 11...15:
                 "Pré-adolescente"
            case 16...20:
                "Adolescência"
            case 21...26:
                 "Pós - Adolescência"
            case 27...40:
                "Adultidade"
            case 40...65:
                "Meia Idade"
            default:
                "Terceira Idade"
            }
        }
        result.text = "O resultado é \(String(describing: resultado))"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

