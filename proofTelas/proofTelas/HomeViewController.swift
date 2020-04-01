//
//  HomeViewController.swift
//  proofTelas
//
//  Created by Igor Kenzo Miyamoto Dias on 01/04/20.
//  Copyright © 2020 Igor Miyamoto. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var txtValor: UITextField!
    @IBAction func enter(_ sender: Any){
        if txtValor.text != ""
        {
            performSegue(withIdentifier: "segueDados", sender: self)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueDados"{
            if let destination = segue.destination as? MostraValoresViewController
            {
                destination.valorPassado = txtValor.text!
            }
        }
    }
    

}
