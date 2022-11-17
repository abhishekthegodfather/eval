//
//  AddCollectionViewCell.swift
//  eval
//
//  Created by admin on 17/11/22.
//

import UIKit


protocol whenClicked {
    func addbuttonisClicked(onClick : Bool)
}

class AddCollectionViewCell: UICollectionViewCell{

    
    @IBOutlet weak var addbtnpart1: UIButton!


    var clickingbtn : whenClicked?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}


