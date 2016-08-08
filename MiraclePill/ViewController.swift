//
//  ViewController.swift
//  MiraclePill
//
//  Created by Ricki Hassan on 02/08/2016.
//  Copyright © 2016 Tapp That Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var statePickerButton: UIButton!
    
    @IBOutlet weak var countryTextField: UITextField!
    
    @IBOutlet weak var zipCodeTextField: UITextField!
    
    @IBOutlet weak var secondView: UIView!
    
    @IBOutlet weak var successImage: UIImageView!
    
    
    let states = ["Alaska", "Arkansas", "Alabama", "California", "Maine", "New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateButtonPressed(_ sender: AnyObject) {
    statePicker.isHidden = false
    countryTextField.isHidden = true
    zipCodeTextField.isHidden = true
    }
    
    @IBAction func buyNowButtonPressed(_ sender: AnyObject) {
    secondView.isHidden = false
    successImage.isHidden = false
    
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerButton.setTitle(states[row], for: .normal)
        statePicker.isHidden = true
        countryTextField.isHidden = false
        zipCodeTextField.isHidden = false
    }

}

