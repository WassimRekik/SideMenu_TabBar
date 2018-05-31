//
//  CostumAlertViewController.swift
//  SideMenu_iOS
//
//  Created by Wassim Rekik on 31/05/2018.
//  Copyright © 2018 Wassim Rekik. All rights reserved.
//

import UIKit

class CostumAlertViewController: UIViewController {

    @IBOutlet weak var AlertView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        AlertView.layer.cornerRadius = 10
        AlertView.layer.masksToBounds = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func CloseAlert(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
