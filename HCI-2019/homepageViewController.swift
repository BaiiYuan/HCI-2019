//
//  homepageViewController.swift
//  HCI-2019
//
//  Created by 陳柏文 on 2019/5/13.
//  Copyright © 2019 李栢淵. All rights reserved.
//

import UIKit

class homepageViewController: UIViewController {

    @IBOutlet weak var newsFirst: UIButton!
    @IBOutlet weak var newsSecond: UIButton!
    @IBOutlet weak var newsThird: UIButton!
    @IBOutlet weak var NewsForth: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    
    @IBAction func clickOnFirstNews(_ sender: UIButton) {
         performSegue(withIdentifier: "goFirstNews", sender: sender)
    }

    @IBAction func clickOnSecondNews(_ sender: UIButton) {
        performSegue(withIdentifier: "goSecondNews", sender: sender)
    }
    
    @IBAction func clickOnThirdNews(_ sender: UIButton) {
        performSegue(withIdentifier: "goThirdNews", sender: sender)
    }
    @IBAction func clickOnForthNews(_ sender: UIButton) {
        performSegue(withIdentifier: "goForthNews", sender: sender)
    }
    @IBAction func showMessage(sender: UIButton) {
        let alertController = UIAlertController(title: "Welcome to My First App", message: "Hello World", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
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
