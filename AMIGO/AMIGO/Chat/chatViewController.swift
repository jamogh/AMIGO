//
//  chatViewController.swift
//  AMIGO
//
//  Created by user1 on 10/01/24.
//

import UIKit

class chatViewController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func enterButton(_ sender: Any) {
        textView.text = textField.text!
    }
    

}
