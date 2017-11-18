//
//  ColorViewController.swift
//  Color Picker
//
//  Created by Logan VanDerBeck on 11/17/17.
//  Copyright © 2017 Logan VanDerBeck. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate  {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].colorName
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        colorLabel.text = colors[row].colorName
        self.view.backgroundColor = colors[row].cPicker
    }
    
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var colorPicker: UIPickerView!
    
    var colors = [Color(colorName: "red", cPicker: UIColor.red),
    Color(colorName: "orange", cPicker: UIColor.orange),
    Color(colorName: "yellow", cPicker: UIColor.yellow),
    Color(colorName: "green", cPicker: UIColor.green),
    Color(colorName: "blue", cPicker: UIColor.blue),
    Color(colorName: "purple", cPicker: UIColor.purple),
    Color(colorName: "brown", cPicker: UIColor.brown)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorLabel.text = colors[0].colorName
        self.view.backgroundColor = colors[0].cPicker
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
