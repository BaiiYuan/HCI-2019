//
//  tryonChangeViewController.swift
//  HCI-2019
//
//  Created by 李栢淵 on 2019/5/28.
//  Copyright © 2019 李栢淵. All rights reserved.
//

import UIKit

protocol clothChangerDelegate {
    func changeCloth(name: String)
}

class tryonChangeViewController: UIViewController {

    @IBOutlet weak var bellyImageView: UIImageView!
    @IBOutlet weak var bellyButton1: UIButton!
    @IBOutlet weak var bellyButton2: UIButton!
   
    var delegate: clothChangerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        bellyImageView.image = UIImage(named: "Belly1")
        
    }

    @IBAction func clickBellyButton1(_ sender: UIButton) {
        bellyImageView.image = UIImage(named: "Belly1")
        delegate?.changeCloth(name: "personFullBody1")
    }
    @IBAction func clickBellyButton2(_ sender: UIButton) {
        bellyImageView.image = UIImage(named: "Belly2")
        delegate?.changeCloth(name: "personFullBody2")
    }
}
