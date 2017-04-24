//
//  ImageViewController.swift
//  Media Player
//
//  Created by Levchuk Misha on 24.04.17.
//  Copyright © 2017 Levchuk Misha. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    
    var selectedImage: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(true)
        
        //var selected = self.selectedImage
        
        self.myImageView.image = UIImage(named: selectedImage)
        print(selectedImage)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
