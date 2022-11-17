//
//  ViewController.swift
//  eval
//
//  Created by admin on 16/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    var nameArray = [Details]()
    var lbl1 : String = ""
    var lbl2 : String = ""
    
    var student = Details(name: "sample1", place: "sample2")

    @IBOutlet weak var collectionViewLay: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionViewLay.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cellThing")
        collectionViewLay.delegate = self
        collectionViewLay.dataSource = self
        
        nameArray.append(student)
    }
    

}


extension ViewController : UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return nameArray.count
    }
    
    
    @objc func seeThing(_ sender : UIButton){
        let point = sender.convert(CGPoint.zero, to: collectionViewLay)
        guard let indexPath = collectionViewLay.indexPathForItem(at: point) else {
            return
        }
        
        let cell = collectionViewLay.dequeueReusableCell(withReuseIdentifier: "cellThing", for: indexPath) as! CollectionViewCell
        
        
        lbl1 = cell.lblpart1.text!
        lbl2 = cell.lblpart2.text!
        
        cell.cancel.isHidden = true
        cell.addbtn.isHidden = true
        
        self.nameArray[indexPath.row] = Details(name: lbl1, place: lbl2)
        
        
        self.nameArray.append(student)
        DispatchQueue.main.async {
            self.collectionViewLay.reloadData()
            print("Data has been updated in table view")
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewLay.dequeueReusableCell(withReuseIdentifier: "cellThing", for: indexPath) as! CollectionViewCell
        
        cell.savebtn.addTarget(self, action: #selector(seeThing(_ :)), for: .touchUpInside)
        return cell
    }
    
    
    
}

