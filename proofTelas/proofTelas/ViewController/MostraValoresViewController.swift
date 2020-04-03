//
//  MostraValoresViewController.swift
//  proofTelas
//
//  Created by Igor Kenzo Miyamoto Dias on 01/04/20.
//  Copyright © 2020 Igor Miyamoto. All rights reserved.
//

import UIKit

class MostraValoresViewController: UIViewController {

    @IBOutlet weak var lblVal: UILabel!
    
    var valorPassado : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblVal.text = valorPassado
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
