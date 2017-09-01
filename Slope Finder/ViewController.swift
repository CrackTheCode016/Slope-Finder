//
//  ViewController.swift
//  Slope Finder
//
//  Created by Santiago on 8/21/17.
//  Copyright © 2017 Santiago. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CalcE: UIButton!
    @IBOutlet weak var X1Vari: UITextField!
    @IBOutlet weak var Y1Vari: UITextField!
    @IBOutlet weak var X2: UITextField!
    @IBOutlet weak var Y2: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    var ys: Double = 0.0
    var xs: Double = 0.0
    
    
    
    override func
        viewDidLoad() {
        super.viewDidLoad()
        X1Vari.text = "0.0"
        Y1Vari.text = "0.0"
        X2.text = "0.0"
        Y2.text = "0.0"
        var fieldArray: [UITextField] = [X1Vari, Y1Vari, X2, Y2]
        for index in 0..<(fieldArray.count) {
            fieldArray[index].keyboardType = .decimalPad }
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        
    
    }
    
    @IBAction func clearFields() {
        resultLabel.text = "0"
        ys = 0.0
        xs = 0.0

    }
    
    @IBAction func calcSlopeBtn() {
        peformCalculation()
    }
    func createFunctionFromResults(x: Double, y: Double, slope: Double) -> String {
        let distribute = slope * x
        let xOverY = distribute/y
        let resultString = "y = \(slope)x + \(xOverY)"
        return resultString
        
    }

   
    @IBAction func createFunc(_ sender: UIButton) {
          let function = FunctionModel(_functionString: createFunctionFromResults(x: Double(X1Vari.text!)!, y: Double(Y1Vari.text!)!, slope: Double(resultLabel.text!)!))
            performSegue(withIdentifier: "FunctionVC", sender: function)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let function = createFunctionFromResults(x: Double(X1Vari.text!)!, y: Double(Y1Vari.text!)!, slope: Double(resultLabel.text!)!)
        
            if let destinaton = segue.destination as? FunctionViewVC {
                    destinaton.functionString = function
                    
                
            }
        }
    
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func peformCalculation() {
        if  X1Vari.hasText && Y1Vari.hasText && X2.hasText && Y2.hasText {
            ys = Double(Y2.text!)! - Double(Y1Vari.text!)!
            xs = Double(X2.text!)! - Double(X1Vari.text!)!
            resultLabel.text = "\(ys/xs)"

        }
        
    }

        
}



