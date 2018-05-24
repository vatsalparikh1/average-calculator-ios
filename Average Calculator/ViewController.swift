//
//  ViewController.swift
//  Average Calculator
//
//  Created by Vatsal Parikh on 6/4/17.
//  Copyright © 2017 Vatsal Parikh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTitleLabelOUTLET: UILabel!
    @IBOutlet weak var txtInputTextOUTLET: UITextField!
    @IBOutlet weak var btnCalculateOUTLET: UIButton!
    @IBOutlet weak var lblDisplayAverageOUTLET: UILabel!
    @IBOutlet weak var btnResetOUTLET: UIButton!
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var average : Double = 0
    var total : Double = 0
    var count : Double = 0
    
    
    @IBAction func pressCalculateButton(_ sender: UIButton) {
        if(!(txtInputTextOUTLET.text?.isEmpty)!){
            count += 1
            var input = Double(txtInputTextOUTLET.text!)
            calculateAverage(inputNumber: input!)
            displayOutput(toDisplay: String(average))
            txtInputTextOUTLET.text?.removeAll()
        }else{
            displayOutput(toDisplay: String(average) + " (Enter another number)")
        }
        
    }
    
    @IBAction func pressResetButton(_ sender: UIButton) {
        resetValues()
    }
    
    func calculateAverage(inputNumber: Double) {
        total += inputNumber
        average = total / count
    }
    
    func displayOutput(toDisplay: String){
        lblDisplayAverageOUTLET.text = toDisplay
        //lblDisplayAverageOUTLET.text = String(average)
    }
    
    func resetValues(){
        lblDisplayAverageOUTLET.text = "Display average"
        average = 0
        total = 0
        count = 0
        
        
    }


}

