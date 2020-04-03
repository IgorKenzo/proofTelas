//
//  HomeViewController.swift
//  proofTelas
//
//  Created by Igor Kenzo Miyamoto Dias on 01/04/20.
//  Copyright © 2020 Igor Miyamoto. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    var texto : String?
    
    @IBOutlet weak var txtValor: UITextField!
    
    @IBOutlet weak var lblRetorno: UILabel!
    
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
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        lblRetorno.text = texto
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
    @IBAction func volta(_ unwindSegue: UIStoryboardSegue){
        if let mvViewController = unwindSegue.source as? MostraValoresViewController {
            texto = mvViewController.lblVal.text;
        }
    }
}
