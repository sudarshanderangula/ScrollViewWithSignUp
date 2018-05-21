//
//  ViewController.swift
//  ScrollViewSample
//
//  Created by Sundir Talari on 18/05/18.
//  Copyright © 2018 Sundir Talari. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var dateOfBirthTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var genderTextField: UITextField!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var stateTextField: UITextField!
    @IBOutlet weak var pincodeTextField: UITextField!
    @IBOutlet weak var currentLocationTextField: UITextField!
    @IBOutlet weak var mobileTextField: UITextField!
    @IBOutlet weak var signInButtonObj: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        firstNameTextField.delegate = self
        lastNameTextField.delegate = self
        userNameTextField.delegate = self
        emailTextField.delegate = self
        passwordTextField.delegate = self
        confirmPasswordTextField.delegate = self
        dateOfBirthTextField.delegate = self
        ageTextField.delegate = self
        genderTextField.delegate = self
        countryTextField.delegate = self
        stateTextField.delegate = self
        pincodeTextField.delegate = self
        currentLocationTextField.delegate = self
        mobileTextField.delegate = self
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tap(gesture:)))
        self.view.addGestureRecognizer(tapGesture)
    }
    @IBAction func signInButtonPressed(_ sender: Any) {
        if(firstNameTextField.text == "") {
            print("first name is empty ")
            showAlertWithTitle(title: "first name is empty")
        }else if(lastNameTextField.text == "") {
            print("last name is empty ")
            showAlertWithTitle(title: "last name is empty")
        } else if(userNameTextField.text == "") {
            print("user name is empty ")
            showAlertWithTitle(title: "user name is empty")
            
        }else if(emailTextField.text == "") {
            print("email is empty ")
            showAlertWithTitle(title: "email is empty")
        }else if(passwordTextField.text == "") {
            print(" password is empty ")
            showAlertWithTitle(title: "password is empty")
        }else if(confirmPasswordTextField.text == "") {
            print("confirm your password ")
            showAlertWithTitle(title: "confirm your password")
        }else if(dateOfBirthTextField.text == "") {
            print("fill your date of birth ")
            showAlertWithTitle(title: "fill your date of birth")
        }else if(ageTextField.text == "") {
            print("write your age ")
            showAlertWithTitle(title: "write your age")
        }else if(genderTextField.text == "")
        {
            print("select your gender")
            showAlertWithTitle(title: "select your gender")
        }else if(countryTextField.text == "")
        {
            print("select your country")
            showAlertWithTitle(title: "select your country")
        }else if(stateTextField.text == "")
        {
            print("select your state")
            showAlertWithTitle(title: "select your state")
        }else if(pincodeTextField.text == "")
        {
            print("enter your pincode")
            showAlertWithTitle(title: "enter your pincode")
        }else if(currentLocationTextField.text == "")
        {
            print("enter your currentLocation")
            showAlertWithTitle(title: "enter your currentLocation")
        }else if(mobileTextField.text == "")
        {
            print("enter your mobile number")
            showAlertWithTitle(title: "enter your mobile number")
        }else{
            print("Your signUp is successfull")
            showAlertWithTitle(title: "Your signUp is successfull")
        }
        
    }
    func showAlertWithTitle(title:String) {
        let alertiView = UIAlertController(title: nil, message: title, preferredStyle: .alert)
        alertiView.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alertiView, animated: true, completion: nil)
    }
    @objc func tap(gesture: UITapGestureRecognizer) {
        firstNameTextField.resignFirstResponder()
        lastNameTextField.resignFirstResponder()
        userNameTextField.resignFirstResponder()
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        confirmPasswordTextField.resignFirstResponder()
        dateOfBirthTextField.resignFirstResponder()
        ageTextField.resignFirstResponder()
        genderTextField.resignFirstResponder()
        countryTextField.resignFirstResponder()
        stateTextField.resignFirstResponder()
        pincodeTextField.resignFirstResponder()
        currentLocationTextField.resignFirstResponder()
        mobileTextField.resignFirstResponder()
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
        
    }

}

