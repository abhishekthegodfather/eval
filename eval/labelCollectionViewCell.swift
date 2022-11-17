//
//  labelCollectionViewCell.swift
//  eval
//
//  Created by admin on 17/11/22.
//

import UIKit

class labelCollectionViewCell: UICollectionViewCell, buttonPressed {
    
    func saveClicked(onClicked: Bool, label1: String, label2: String) {
        if onClicked == true{
            lblshow1.text = label1
            lblbutton2.text = label2
        }
    }

    @IBOutlet weak var lblshow1: UILabel!
    
    @IBOutlet weak var lblbutton2: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        
        
        
        
    }

}
