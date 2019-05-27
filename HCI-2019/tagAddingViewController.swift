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
    override func viewDidLoad() {
        super.viewDidLoad()
//        mainClassLabel1.textColor = UIColor(red: 0/255, green: 122/255, blue: 255/255, alpha: 1)
        // Do any additional setup after loading the view.
    }
    

    @IBAction func click(_ sender: UIButton) {
        if mainClassButton.titleColor(for: .normal) == UIColor(red: 0/255, green: 122/255, blue: 255/255, alpha: 1) {
            mainClassButton.setBackgroundImage(UIImage(named: "buttonBlue"), for: .normal)
            mainClassButton.setTitleColor(.white, for: .normal)
        } else {
            mainClassButton.setBackgroundImage(UIImage(named: "buttonGray"), for: .normal)
            mainClassButton.setTitleColor(UIColor(red: 0/255, green: 122/255, blue: 255/255, alpha: 1), for: .normal)
        }
    }
    
    
    @IBAction func finishAddTag(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "finishAdd", sender: sender)
        let alert = UIAlertController(title: "Successful!", message: "你成功新增了一件衣物", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK!", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
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
