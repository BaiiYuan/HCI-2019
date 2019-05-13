//
//  cameraTakingViewController.swift
//  HCI-2019
//
//  Created by 李栢淵 on 2019/5/14.
//  Copyright © 2019 李栢淵. All rights reserved.
//

import UIKit

class cameraTakingViewController: UIViewController {

    @IBOutlet weak var cancelButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }
    
    @IBAction func onClick(_ sender: UIButton) {
        performSegue(withIdentifier: "goCameraTaking", sender: sender)
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
