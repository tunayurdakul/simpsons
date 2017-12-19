//
//  detailsVC.swift
//  Simpson Book
//
//  Created by Tuna Yurdakul on 19/12/2017.
//  Copyright © 2017 Tuna Yurdakul. All rights reserved.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var meslekLabel: UILabel!
    
    var selectedSimpson = Simpson()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedSimpson.name
        meslekLabel.text = selectedSimpson.meslek
        imageView.image = selectedSimpson.image
        
        
    }


}
