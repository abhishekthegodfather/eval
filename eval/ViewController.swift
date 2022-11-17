//
//  ViewController.swift
//  eval
//
//  Created by admin on 16/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    var nameArray = [Details1]()
    var placeArray = [Deatils2]()
    
    var student1 = Details1(name: "sample1")
    var stdplace = Deatils2(place: "sample2")
    
    var selected_Things : Bool?
    var name1 : String = ""
    var name2 : String = ""
    
    @IBOutlet weak var collectionViewLay: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        collectionViewLay.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cellThing")
        
        collectionViewLay.register(UINib(nibName: "AddCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "addbtn")

        collectionViewLay.register(UINib(nibName: "labelCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "labelcell")

    
        collectionViewLay.delegate = self
        collectionViewLay.dataSource = self
        
        
        nameArray.append(student1)
        placeArray.append(stdplace)
        
    }
    

}

extension ViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    func addbuttonisClicked(onClick: Bool) {
        selected_Things = onClick
        print(selected_Things!)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
        if indexPath.row == 0{
            let cell1 = collectionViewLay.dequeueReusableCell(withReuseIdentifier: "addbtn", for: indexPath) as! AddCollectionViewCell

            cell1.addbtnpart1.addTarget(self, action: #selector(anything), for: .touchUpInside)

            return cell1

        }else if indexPath.row == 1{
            let cell2 = collectionViewLay.dequeueReusableCell(withReuseIdentifier: "cellThing", for: indexPath) as! CollectionViewCell

            return cell2

        }else if indexPath.row == 2{
            let cell3 = collectionViewLay.dequeueReusableCell(withReuseIdentifier: "labelcell", for: indexPath) as! labelCollectionViewCell
            return cell3
        }

        return UICollectionViewCell()
    }
    
    @objc func anything(){

    }
    
}







