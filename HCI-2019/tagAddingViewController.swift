//
//  tagAddingViewController.swift
//  HCI-2019
//
//  Created by 李栢淵 on 2019/5/15.
//  Copyright © 2019 李栢淵. All rights reserved.
//

import UIKit

class tagAddingViewController: UIViewController {

    @IBOutlet weak var doneTagButton: UIBarButtonItem!
    @IBOutlet weak var mainClassButton: UIButton!
    @IBOutlet weak var mainClassButton1: UIButton!
    @IBOutlet weak var mainClassButton2: UIButton!

    @IBOutlet weak var classButton1: UIButton!
    @IBOutlet weak var classButton2: UIButton!
    @IBOutlet weak var classButton3: UIButton!
    @IBOutlet weak var classButton4: UIButton!

    @IBOutlet weak var colorButton1: UIButton!
    @IBOutlet weak var styleButton1: UIButton!
    @IBOutlet weak var brandButton1: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
//        mainClassLabel1.textColor = UIColor(red: 0/255, green: 122/255, blue: 255/255, alpha: 1)
        mainClassButton1.isEnabled = false
        mainClassButton2.isEnabled = false

        setBlueButton(button: mainClassButton)
        setBlueButton(button: classButton2)
        setBlueButton(button: colorButton1)
        setBlueButton(button: styleButton1)
        setBlueButton(button: brandButton1)
    }

    func setBlueButton(button: UIButton) {
        button.setBackgroundImage(UIImage(named: "buttonBlue"), for: .normal)
        button.setTitleColor(.white, for: .normal)
    }

    func changeButtonColor(button: UIButton) {
        if button.titleColor(for: .normal) == UIColor(red: 0/255, green: 122/255, blue: 255/255, alpha: 1) {
            button.setBackgroundImage(UIImage(named: "buttonBlue"), for: .normal)
            button.setTitleColor(.white, for: .normal)
        } else {
            button.setBackgroundImage(UIImage(named: "buttonGray"), for: .normal)
            button.setTitleColor(UIColor(red: 0/255, green: 122/255, blue: 255/255, alpha: 1), for: .normal)
        }
    }

    @IBAction func click(_ sender: UIButton) {
        changeButtonColor(button: sender)
    }
    
    @IBAction func finishAddTag(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "finishAdd", sender: sender)
        let alert = UIAlertController(title: "Successful!", message: "你成功新增了一件衣物", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK!", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
