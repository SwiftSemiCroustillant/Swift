//
//  SettingController.swift
//  CoursiOS
//
//  Created by Anthony Cordani on 14/04/2015.
//  Copyright (c) 2015 Cordani Industry. All rights reserved.
//

import UIKit

class SettingsController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var modifiableLabel: UILabel!
    @IBOutlet weak var textFieldV: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //ACTIONS
    
    @IBAction func SliderOnValueChanged(sender: UISlider) {

        progressView.progress = sender.value/100
        
    }
    

    @IBAction func buttonOkPressed(sender: UIButton) {
        modifiableLabel.text = textFieldV.text
        textFieldV.resignFirstResponder()
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        modifiableLabel.text = textField.text
        textField.resignFirstResponder()
        return true
    }
    
    
    
    
}