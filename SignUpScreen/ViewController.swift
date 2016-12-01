//
//  ViewController.swift
//  SignUpScreen
//
//  Created by DongSu Han on 2016. 11. 29..
//  Copyright © 2016년 DongSuHan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var telTextField: UITextField!
    @IBOutlet weak var blogTextField: UITextField!
    
    @IBOutlet weak var resultTextView: UITextView!
    
    
    
    
    @IBAction func signUpAction(_ sender: Any) {
        resultTextView.text = "\(nameTextField.text!) 님 가입을 축하합니다.";
    }
    
    
    //UITextField는 눌리는 텍스트 필드
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldReturn")
        
        //키보드를 집어넣습니다.
        
        textField.resignFirstResponder();
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
//        nameTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

