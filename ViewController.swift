//
//  ViewController.swift
//  The luak games app
//
//  Created by zach Kitchens on 6/5/21.
//  Copyright © 2021 Zachary Kitchens. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var picker: UIPickerView!
    
    let data = ["Latin", "Spanish" , "French", "German", "Mandarin"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        picker.dataSource = self
        picker.delegate = self
    }
}


extension ViewController: UIPickerViewDataSource
{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
}

extension ViewController: UIPickerViewDelegate
{
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
        
    }
}
