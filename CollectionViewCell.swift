//
//  CollectionViewCell.swift
//  eval
//
//  Created by admin on 16/11/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var lblpart1: UITextField!
    
    @IBOutlet weak var lblpart2: UITextField!
    
    @IBOutlet weak var addbtn: UIButton!
    
    @IBOutlet weak var savebtn: UIButton!
    
    @IBOutlet weak var cancel: UIButton!
    
    
    
    @IBAction func addbtnaction(_ sender: UIButton) {
        savebtn.isHidden = false
        cancel.isHidden = false
        lblpart1.isHidden = false
        lblpart2.isHidden = false

        addbtn.isHidden = true

    }
    
    @IBAction func cancelAction(_ sender: UIButton) {
        savebtn.isHidden = true
        cancel.isHidden = true
        lblpart1.isHidden = true
        lblpart2.isHidden = true
        
        addbtn.isHidden = false
        
        
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        savebtn.isHidden = true
        cancel.isHidden = true
        lblpart1.isHidden = true
        lblpart2.isHidden = true
        
        
    }

}
