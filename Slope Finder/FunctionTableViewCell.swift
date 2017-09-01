//
//  FunctionTableViewCell.swift
//  Slope Finder
//
//  Created by Family on 8/30/17.
//  Copyright © 2017 Santiago. All rights reserved.
//

import UIKit

class FunctionTableViewCell: UITableViewCell {
    @IBOutlet weak var functionLbl: UILabel!
    var backgroundPic: UIImage = #imageLiteral(resourceName: "background")

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func addFunc(funcModel: FunctionModel) {
        functionLbl.text = funcModel._functionString
    }
    
    
}
