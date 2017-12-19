//
//  ViewController.swift
//  Simpson Book
//
//  Created by Tuna Yurdakul on 19/12/2017.
//  Copyright © 2017 Tuna Yurdakul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var mySimpsons = [Simpson]()
    var chosenSimpson = Simpson()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        //Simpsons Class
        
        let bart = Simpson()
        bart.name = "Bart Simpson"
        bart.meslek = "Student"
        bart.image = UIImage(named: "bart.png")!
        
        let homer = Simpson()
        homer.name = "Homer Simpson"
        homer.meslek = "Nuclear Safety Inspector"
        homer.image = UIImage(named: "homer.png")!
        
        let lisa = Simpson()
        lisa.name = "Lisa Simpson"
        lisa.meslek = "Student"
        lisa.image = UIImage(named: "lisa.png")!
        
        let maggie = Simpson()
        maggie.name = "Maggie Simpson"
        maggie.meslek = "Singer"
        maggie.image = UIImage(named: "maggie.png")!
        
        let marge = Simpson()
        marge.name = "Marge Simpson"
        marge.meslek = "HomeMaker"
        marge.image = UIImage(named: "marge.png")!
        
        
        
        // Simpson Array
        
        mySimpsons.append(bart)
        mySimpsons.append(homer)
        mySimpsons.append(lisa)
        mySimpsons.append(maggie)
        mySimpsons.append(marge)

        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toDetailsVC" {
            
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedSimpson = self.chosenSimpson
            
        }
        
    }
    
}

