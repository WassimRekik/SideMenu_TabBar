//
//  MenuViewController.swift
//  SideMenu_iOS
//
//  Created by Wassim Rekik on 29/05/2018.
//  Copyright © 2018 Wassim Rekik. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    //table view reference
    @IBOutlet weak var table: UITableView!
    // table view actions
    let actions : [String] = ["My Account","Setting","About"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // table view configuration
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        cell.textLabel?.text = actions[indexPath.row]
        cell.textLabel?.textColor = UIColor.white
        cell.textLabel?.backgroundColor = UIColor.clear
       
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let segueIdentifier: String
        switch indexPath.row {
            
        case 0: //for first cell
            segueIdentifier = "showAccount"
        case 1: //for second cell
            segueIdentifier = "showParam"
            
        case 3: // For third cell
            segueIdentifier = "showParam"
        default :
            segueIdentifier = "showParam"
        }
        //self.revealViewController().pushFrontViewController(revealViewController().frontViewController, animated: true)
        self.performSegue(withIdentifier: segueIdentifier, sender: self)
    }
    
    
}
