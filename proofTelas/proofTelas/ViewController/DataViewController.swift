//
//  DataViewController.swift
//  proofTelas
//
//  Created by Igor Kenzo Miyamoto Dias on 02/04/20.
//  Copyright © 2020 Igor Miyamoto. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var lblContent: UILabel!
    var displayText : String?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblContent.text = displayText
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
