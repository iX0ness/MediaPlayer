//
//  ViewController.swift
//  Media Player
//
//  Created by Levchuk Misha on 24.04.17.
//  Copyright © 2017 Levchuk Misha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var myCollectionView: UICollectionView!
    
    var images = ["acdc1", "acdc2", "queen1", "queen2"]
    
    var images1 : [UIImage] = [#imageLiteral(resourceName: "acdc1"), #imageLiteral(resourceName: "acdc2"), #imageLiteral(resourceName: "queen1"), #imageLiteral(resourceName: "queen2")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.myCollectionView.delegate = self
        self.myCollectionView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CollectionViewCell
        cell.myImageView.image = UIImage(named: images[indexPath.row])
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let myImageViewPage: ImageViewController = self.storyboard?.instantiateViewController(withIdentifier: "ImageViewController") as! ImageViewController
        
        myImageViewPage.selectedImage = self.images[indexPath.row]
        
        self.navigationController?.pushViewController(myImageViewPage, animated: true)
        
        
    }
    

}

