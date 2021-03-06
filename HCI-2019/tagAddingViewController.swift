//
//  tagAddingViewController.swift
//  HCI-2019
//
//  Created by 李栢淵 on 2019/5/15.
//  Copyright © 2019 李栢淵. All rights reserved.
//

import UIKit

class tagAddingViewController: UIViewController, UITabBarControllerDelegate {

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

        self.tabBarController?.delegate = self

        
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
//        let alert = UIAlertController(title: "Successful!", message: "你成功新增了一件衣物", preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: "OK!", style: .default, handler: nil))
//        present(alert, animated: true, completion: nil)

        let alertController = UIAlertController(title: "你成功新增了一件衣物!", message: nil, preferredStyle: .alert)
        present(alertController, animated: true, completion: nil)

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
            self.presentedViewController?.dismiss(animated: true, completion: nil)
            self.tabBarController?.selectedIndex = 3
        }

    }
}
