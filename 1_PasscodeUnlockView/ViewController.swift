//
//  ViewController.swift
//  1_PasscodeUnlockView
//
//  Created by Vicki Yang on 2022/9/1.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let correctPwd = "1225"
    var inputPwd = ""
    
    @IBOutlet weak var topImageView: UIImageView!
    @IBOutlet weak var msgLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    @IBOutlet weak var pwd1ImageView: UIImageView!
    @IBOutlet weak var pwd2ImageView: UIImageView!
    @IBOutlet weak var pwd3ImageView: UIImageView!
    @IBOutlet weak var pwd4ImageView: UIImageView!
    
    @IBAction func inputPassword(_ sender: UIButton) {
        if sender.tag == 99 {
            // 刪除鍵
            if inputPwd.count > 0 {
                inputPwd.removeLast()
            }
            showDefaultMessage()
        } else if sender.tag == 100 {
            // reset
            inputPwd.removeAll()
            showDefaultMessage()
        } else {
            inputPwd += sender.currentTitle!
            if inputPwd.count == 4 {
                msgLabel.text = inputPwd == correctPwd ? "Welcome!!" : "Incorrect passcode"
                descLabel.text = ""
                let topImage = inputPwd == correctPwd ? "Welcome" : "Incorrect"
                topImageView.image = UIImage(named: topImage)
            }
        }
        reloadPwdImage()
    }
    
    func reloadPwdImage() {
        updatePwdImage(pwd1ImageView, index: 1)
        updatePwdImage(pwd2ImageView, index: 2)
        updatePwdImage(pwd3ImageView, index: 3)
        updatePwdImage(pwd4ImageView, index: 4)
    }
    
    func updatePwdImage(_ imageView: UIImageView, index: Int) {
        let imageName = inputPwd.count >= index ? String(index) : "default"
        imageView.image = UIImage(named: imageName)
    }
    
    func showDefaultMessage() {
        msgLabel.text = "Enter passcode"
        descLabel.text = "Enter your passcode below."
        topImageView.image = UIImage(named: "topDefault")
    }
}

