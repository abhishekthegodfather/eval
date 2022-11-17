//
//  labelCollectionViewCell.swift
//  eval
//
//  Created by admin on 17/11/22.
//

import UIKit

class labelCollectionViewCell: UICollectionViewCell, passData {
    
    func whenDataIsFilled(clicked: Bool, nameData: String, placeData: String) {
        
            if clicked == true{
                lblshow1.text = nameData
                lblbutton2.text = placeData
            }
            
            print(nameData)
            print(placeData)
    }
    
    
    
    
    
    
    @IBOutlet weak var lblshow1: UILabel!
    
    @IBOutlet weak var lblbutton2: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
        
        
        
    }

}
