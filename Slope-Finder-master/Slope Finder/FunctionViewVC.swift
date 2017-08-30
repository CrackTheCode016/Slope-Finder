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
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return functionTableArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FunctionCell", for: indexPath)
        return cell
    }
}
