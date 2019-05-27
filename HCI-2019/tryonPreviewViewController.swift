//
//  tryonPreviewViewController.swift
//  HCI-2019
//
//  Created by 李栢淵 on 2019/5/14.
//  Copyright © 2019 李栢淵. All rights reserved.
//

import UIKit



class tryonPreviewViewController: UIViewController, clothChangerDelegate {
    @IBOutlet weak var changeClothButton: UIButton!
    @IBOutlet weak var fullBodyImageView: UIImageView!
    
    var tryonChangeViewController: tryonChangeViewController?


    override func viewDidLoad() {
        super.viewDidLoad()
        tryonChangeViewController?.delegate = self
    }
    
    @IBAction func goChangeCloth(_ sender: UIButton) {
        performSegue(withIdentifier: "doChangeCloth", sender: sender)
    }

    public func changeCloth(name: String) {
        self.fullBodyImageView.image = UIImage(named: name)
    }

}
