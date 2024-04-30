//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Macintosh on 04/01/24.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var calculatorWorking: UILabel!
    
    @IBOutlet weak var calculatorResult: UILabel!
    
    var working:String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
    }
    func clearAll(){
        working = ""
        calculatorWorking.text = ""
        calculatorResult.text = ""
    }
    @IBAction func equalTap(_ sender: Any) {
        if(validInput()){
        let checkedWorkingForPercent = working.replacingOccurrences(of: "%", with: "*0.01")
        let expression = NSExpression(format: checkedWorkingForPercent)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatResult(result: result)
        calculatorResult.text = resultString
        }
        else{
            let alert = UIAlertController(title: "Invalid Input",
                                          message: "Calculator unable to do math based on input",
                                          preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "okay", style: .default))
            self.present(alert, animated: true, completion: nil)
        }
    }
    func validInput() -> Bool{
        var count = 0
        var funcCharIndexes = [Int]()
        
        for char in working
        {
            
        }
        return true
    }
    
    func formatResult(result : Double) -> String{
        if(result.truncatingRemainder(dividingBy: 1) == 0)
        {
            return String(format: "%.0f", result)
        }
        else
        {
            return String(format: "%.2f", result)
        }
    }
    @IBAction func allClearTap(_ sender: Any) {
        clearAll()
    }
    @IBAction func backTap(_ sender: Any) {
        if(!working.isEmpty){
            working.removeLast()
            calculatorWorking.text = working
        }
    }
    func addToWorking(value : String){
        working = working + value
        calculatorWorking.text = working
    }
    @IBAction func percentTap(_ sender: Any) {
        addToWorking(value: "%")
    }
    
    @IBAction func divideTap(_ sender: Any) {
        addToWorking(value: "/")
    }
    
    @IBAction func timeTap(_ sender: Any) {
        addToWorking(value: "*")
    }
    
    @IBAction func minusTap(_ sender: Any) {
        addToWorking(value: "-")
    }
    
    @IBAction func plusTap(_ sender: Any) {
        addToWorking(value: "+")
    }
    
    @IBAction func decimalTap(_ sender: Any) {
        addToWorking(value: ".")
    }
    
    @IBAction func zeroTap(_ sender: Any) {
        addToWorking(value: "0")
    }
    
    @IBAction func oneTap(_ sender: Any) {
        addToWorking(value: "1")
    }
    
    @IBAction func twoTap(_ sender: Any) {
        addToWorking(value: "2")
    }
    
    @IBAction func threeTap(_ sender: Any) {
        addToWorking(value: "3")
    }
    
    @IBAction func fourTap(_ sender: Any) {
        addToWorking(value: "4")
    }
    
    @IBAction func fiveTap(_ sender: Any) {
        addToWorking(value: "5")
    }
    
    @IBAction func sixTap(_ sender: Any) {
        addToWorking(value: "6")
    }
    @IBAction func sevenTap(_ sender: Any) {
        addToWorking(value: "7")
    }
    
    @IBAction func eightTap(_ sender: Any) {
        addToWorking(value: "8")
    }
    
    @IBAction func nineTap(_ sender: Any) {
        addToWorking(value: "9")
    }
}

