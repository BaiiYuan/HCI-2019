//
//  ViewController.swift
//  HCI-2019
//
//  Created by 李栢淵 on 2019/5/12.
//  Copyright © 2019 李栢淵. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITabBarControllerDelegate {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.delegate = self

    }
    override func viewDidLoad() {
        super.viewDidLoad()


        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        if tabBarController.selectedIndex == 2 {
            //            tabBarController.selectedIndex = 0
            let controller = UIAlertController(title: "上傳照片", message: nil, preferredStyle: .actionSheet)
            controller.addAction(UIAlertAction(title: "拍照", style: .default, handler: {(action) -> Void in
                self.performSegue(withIdentifier: "takePhoto", sender: self)
            }))
            controller.addAction(UIAlertAction(title: "相簿", style: .default, handler: {(action) -> Void in
                self.performSegue(withIdentifier: "album", sender: self)
            }))
            controller.addAction(UIAlertAction(title: "URL", style: .default, handler: {(action) -> Void in
                self.performSegue(withIdentifier: "goURL", sender: self)
            }))
            controller.addAction(UIAlertAction(title: "取消", style: .cancel, handler: nil))
            self.present(controller, animated: true, completion: nil)
        }
    }
}
