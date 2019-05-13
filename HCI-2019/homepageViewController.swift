//
//  homepageViewController.swift
//  HCI-2019
//
//  Created by 陳柏文 on 2019/5/13.
//  Copyright © 2019 李栢淵. All rights reserved.
//

import UIKit

class homepageViewController: UIViewController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.delegate = self

    }
    
    @IBAction func showMessage(sender: UIButton) {
        let alertController = UIAlertController(title: "Welcome to My First App", message: "Hello World", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }

    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        if tabBarController.selectedIndex == 2{
            tabBarController.selectedIndex = 0
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
