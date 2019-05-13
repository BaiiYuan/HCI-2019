//
//  closetViewController.swift
//  HCI-2019
//
//  Created by 李栢淵 on 2019/5/12.
//  Copyright © 2019 李栢淵. All rights reserved.
//

import UIKit

class closetViewController: UIViewController {

    @IBOutlet weak var listImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func closetSegmentedAction(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            listImageView.image = UIImage(named: "upper")
        } else if sender.selectedSegmentIndex == 1  {
            listImageView.image = UIImage(named: "lower")
        } else {
            listImageView.image = UIImage(named: "accessories")
        }
    }
}

