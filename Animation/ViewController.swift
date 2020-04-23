//
//  ViewController.swift
//  Animation
//
//  Created by 滝吉慎也 on 2020/04/23.
//  Copyright © 2020 滝吉慎也. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var ImageView :UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(sender : UIButton){
        //1.0秒かけてXが0,yが-100の動きをする
//        UIView.animate(withDuration: 1.0){
//            self.ImageView.transform = CGAffineTransform(translationX: 0, y: -100)
//        }
        // {(_)inの後に、アニメーション後の動きを書く
                UIView.animate(withDuration: 1.0,animations: {
                    self.ImageView.transform = CGAffineTransform(translationX: 0, y: -100)
                }) {(_)in
        self.ImageView.transform = CGAffineTransform.identity
    }
}
}
