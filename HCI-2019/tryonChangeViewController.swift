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

    @IBOutlet weak var infoImageView: UIImageView!
    @IBOutlet weak var infoButton: UIButton!
    @IBOutlet weak var bellyImageView: UIImageView!
    @IBOutlet weak var bellyButton1: UIButton!
    @IBOutlet weak var bellyButton2: UIButton!
    @IBOutlet weak var bellyButton3: UIButton!
    @IBOutlet weak var doneButton: UIBarButtonItem!

    var delegate: clothChangerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        bellyImageView.image = UIImage(named: "Belly1")
        infoButton.isEnabled = false
        infoImageView.isHidden = true
        doneButton.isEnabled = false
    }

    @IBAction func clickInfoButton(_ sender: UIButton) {
         performSegue(withIdentifier: "goInfo", sender: sender)
    }

    @IBAction func clickBellyButton1(_ sender: UIButton) {
        bellyImageView.image = UIImage(named: "Belly1")
        delegate?.changeCloth(name: "personFullBody1")
        infoButton.isEnabled = false
        infoImageView.isHidden = true
        doneButton.isEnabled = false
    }

    @IBAction func clickBellyButton2(_ sender: UIButton) {
        bellyImageView.image = UIImage(named: "Belly2")
        delegate?.changeCloth(name: "personFullBody2")
        infoButton.isEnabled = true
        infoImageView.isHidden = false
        doneButton.isEnabled = true
    }

    @IBAction func clickBellyButton3(_ sender: UIButton) {
        bellyImageView.image = UIImage(named: "Belly3")
//        delegate?.changeCloth(name: "personFullBody1")
        infoButton.isEnabled = false
        infoImageView.isHidden = true
        doneButton.isEnabled = false
    }

    @IBAction func clickDoneButton(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "goDone", sender: sender)
    }
}
