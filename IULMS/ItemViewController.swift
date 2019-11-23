//
//  ItemViewController.swift
//  IULMS
//
//  Created by Syed Shaheer Sarwar on 11/17/19.
//  Copyright © 2019 Syed Shaheer Sarwar. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var textFieldItemName: UITextField!

    @IBOutlet var textFieldQt: UITextField!

    @IBOutlet var textFieldMoreInfo: UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()

        textFieldItemName.delegate = self
        textFieldQt.delegate = self
        textFieldMoreInfo.delegate = self
    }


    /**
     * Called when 'return' key pressed. return NO to ignore.
     */
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }


   /**
    * Called when the user click on the view (outside the UITextField).
    */override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}
