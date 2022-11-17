//
//  CollectionViewCell.swift
//  eval
//
//  Created by admin on 16/11/22.
//

import UIKit

protocol passData{
    func whenDataIsFilled(clicked : Bool, nameData : String, placeData : String)
}


class CollectionViewCell: UICollectionViewCell {


    @IBOutlet weak var label1: UITextField!
    
    @IBOutlet weak var label2: UITextField!
    
    @IBOutlet weak var saveThings: UIButton!
    
    @IBOutlet weak var cancelThing: UIButton!
    
    var deligate : passData?
    
    
    @IBAction func cancelAction(_ sender: UIButton) {
        deligate?.whenDataIsFilled(clicked: false, nameData: label1.text!, placeData: label2.text!)
    }

    @IBAction func saveAction(_ sender: UIButton) {
        deligate?.whenDataIsFilled(clicked: false, nameData: label1.text!, placeData: label2.text!)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}

