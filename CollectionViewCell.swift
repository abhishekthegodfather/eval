//
//  CollectionViewCell.swift
//  eval
//
//  Created by admin on 16/11/22.
//

import UIKit

protocol buttonPressed{
    func saveClicked(onClicked : Bool, label1: String, label2: String)
}


class CollectionViewCell: UICollectionViewCell, whenClicked {
    
    
    func addbuttonisClicked(onClick: Bool) {
        
    }
    

    @IBOutlet weak var label1: UITextField!
    
    @IBOutlet weak var label2: UITextField!
    
    var details_passing : buttonPressed?
    
    
    @IBOutlet weak var saveThings: UIButton!
    
    @IBOutlet weak var cancelThing: UIButton!
    
    
    
    @IBAction func cancelAction(_ sender: UIButton) {
        details_passing?.saveClicked(onClicked: false, label1: label1.text!, label2: label2.text!)
    }

    @IBAction func saveAction(_ sender: UIButton) {
        details_passing?.saveClicked(onClicked: true, label1: label1.text!, label2: label2.text!)
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}

