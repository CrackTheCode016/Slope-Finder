//
//  FunctionViewVC.swift
//  Slope Finder
//
//  Created by Family on 8/30/17.
//  Copyright © 2017 Santiago. All rights reserved.
//

import UIKit

class FunctionViewVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var functionTableArray = [FunctionModel]()
    var functionString = ""
    var functionF: FunctionModel!
    @IBOutlet weak var functionLbl: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        functionLbl.text = functionString
       functionF = FunctionModel(_functionString: functionString)
        tableView.delegate = self
        tableView.dataSource = self
        functionLbl.text = "\(functionTableArray.count)"
     
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return functionTableArray.count
    }
    
    
    @IBAction func backBtnPress(sender: Any) {
        dismiss(animated: true, completion: nil)

    }
    
   @IBAction func addFunc(_ sender: Any) {
    functionTableArray.append(FunctionModel(_functionString: functionLbl.text!))
    tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FunctionCell", for: indexPath) as? FunctionTableViewCell
            let function = functionTableArray[indexPath.row]
            cell?.addFunc(funcModel: function)
            return cell!
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
   
}
