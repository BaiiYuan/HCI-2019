//
//  tryonPreviewViewController.swift
//  HCI-2019
//
//  Created by 李栢淵 on 2019/5/14.
//  Copyright © 2019 李栢淵. All rights reserved.
//

import UIKit

class tryonPreviewViewController: UIViewController {

    @IBOutlet weak var changeClothButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func goChangeCloth(_ sender: UIButton) {
        performSegue(withIdentifier: "doChangeCloth", sender: sender)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
