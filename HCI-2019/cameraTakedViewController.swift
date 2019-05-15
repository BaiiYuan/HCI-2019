//
//  cameraTakedViewController.swift
//  HCI-2019
//
//  Created by 李栢淵 on 2019/5/14.
//  Copyright © 2019 李栢淵. All rights reserved.
//

import UIKit

class cameraTakedViewController: UIViewController {


    @IBOutlet weak var useButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onClick(_ sender: UIButton) {
        performSegue(withIdentifier: "addTag", sender: sender)
    }
}
