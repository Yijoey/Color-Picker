//
//  ViewController.swift
//  Color Picker
//
//  Created by 赵益 on 7/13/18.
//  Copyright © 2018 Yi Zhao. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var detailLabel: UILabel!
   
    struct Color {
        let name: String
        let uiColor: UIColor
    }
    
    var PickerColors = [
        Color(name: "red", uiColor: UIColor.red),
        Color(name: "orange", uiColor: UIColor.orange),
        Color(name: "yellow", uiColor: UIColor.yellow),
        Color(name: "green", uiColor: UIColor.green),
        Color(name: "blue", uiColor: UIColor.blue),
        Color(name: "purple", uiColor: UIColor.purple)
        ]
    var color: Color?
    var index = 0
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        detailLabel.text=PickerColors[row].name
        self.title=PickerColors[row].name
        index=index+1
        return PickerColors[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return PickerColors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        detailLabel.text=PickerColors[row].name
        self.view.backgroundColor=PickerColors[row].uiColor
        index=index+1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.dataSource = self
        pickerView.delegate = self
        if (index == 0)
        {
            self.view.backgroundColor=UIColor.red
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

