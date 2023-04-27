//
//  ViewController.swift
//  IOS-HomeWork-6
//
//  Created by MacBook Pro on 27/4/23.
//

import UIKit
import SnapKit


class SignInViewController: UIViewController {
    
    private let topImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "topImage")
        return image
    }()
    
    private let welcomeLabel: UILabel = {
        let label = UILabel()
        label.font = label.font.withSize(28)
        label.textColor = .white
        label.text = "Welcome"
        return label
    }()
    
    private let infoLabel: UILabel = {
        let label = UILabel()
        label.font = label.font.withSize(20)
        label.text = "Login to your account"
        label.textColor = #colorLiteral(red: 0.7686274648, green: 0.7686274648, blue: 0.7686274648, alpha: 1)
        return label
    }()
    
    private let emailLabel: UILabel = {
        let label = UILabel()
        label.font = label.font.withSize(18)
        label.text = "Email"
        label.textColor = .white
        return label
    }()
    
    private let emailTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 6
        textField.placeholder = "Email"
        return textField
    }()
    
    private let passwordLabel: UILabel = {
        let label = UILabel()
        label.font = label.font.withSize(18)
        label.text = "Password"
        label.textColor = .white
        return label
    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 6
        textField.placeholder = "Password"
        textField.isSecureTextEntry = true
        return textField
    }()
    
    private let eyeSecuryButton: UIButton = {
        let button = UIButton()
        let image = UIImage(systemName: "eye.slash.fill")
        button.setImage(image, for: .normal)
        button.tintColor = #colorLiteral(red: 0.6681293249, green: 0.7030869126, blue: 0.7539162636, alpha: 1)
        return button
    }()
    
    private let forgotButton: UIButton = {
        let button = UIButton()
        button.setTitle("Forgot Password?", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.titleLabel?.font = button.titleLabel?.font.withSize(16)
        return button
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0, green: 0.7264280915, blue: 0.9888871312, alpha: 1)
        button.titleLabel?.font = button.titleLabel?.font.withSize(20)
        button.setTitle("Login", for: .normal)
        button.layer.cornerRadius = 22
        return button
    }()
    
    private let questionLabel: UILabel = {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 0.380392164, green: 0.3803921342, blue: 0.3803921342, alpha: 1)
        label.text = "Don’t have account?"
        label.font = label.font.withSize(16)
        return label
    }()
    
    private let createButton: UIButton = {
        let button = UIButton()
        button.setTitle("Create Now", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = button.titleLabel?.font.withSize(15)
        return button
    }()
    
    private let googleImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "google")
        return imageView
    }()
    
    private let instaImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "instagram")
        return imageView
    }()
    
    private let faceImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "facebook")
        return imageView
    }()

    override func viewDidLoad() {
        view.addSubview(topImage)
        view.addSubview(welcomeLabel)
        view.addSubview(infoLabel)
        view.addSubview(emailLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordLabel)
        view.addSubview(passwordTextField)
        view.addSubview(eyeSecuryButton)
        view.addSubview(forgotButton)
        view.addSubview(loginButton)
        view.addSubview(questionLabel)
        view.addSubview(createButton)
        view.addSubview(googleImage)
        view.addSubview(instaImage)
        view.addSubview(faceImage)
        super.viewDidLoad()
        view.backgroundColor = .black
        images()
        labels()
        textFields()
        buttons()
        initAction()
    }

    private func images(){
        topImage.snp.makeConstraints { make in
            make.height.equalTo(230)
            make.leading.trailing.top.equalToSuperview().inset(0)
        }
        
        googleImage.snp.makeConstraints { make in
            make.width.height.equalTo(31)
            make.top.equalTo(questionLabel.snp.bottom).offset(54)
            make.trailing.equalTo(faceImage.snp.leading).offset(-47)
        }
        
        instaImage.snp.makeConstraints { make in
            make.width.height.equalTo(31)
            make.top.equalTo(questionLabel.snp.bottom).offset(54)
            make.leading.equalTo(faceImage.snp.trailing).offset(47)
        }
        
        faceImage.snp.makeConstraints { make in
            make.width.height.equalTo(31)
            make.centerX.equalToSuperview()
            make.top.equalTo(questionLabel.snp.bottom).offset(54)
        }
    }
    private func labels() {
        welcomeLabel.snp.makeConstraints { make in
            make.top.equalTo(topImage.snp.bottom).offset(51)
            make.centerX.equalToSuperview()
        }
        
        infoLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(welcomeLabel.snp.bottom).offset(1)
        }
        
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(infoLabel.snp.bottom).offset(24)
            make.leading.equalToSuperview().offset(30)
        }
        
        passwordLabel.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(11)
            make.leading.equalToSuperview().offset(30)
        }
        
        questionLabel.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(18)
            make.leading.equalToSuperview().offset(50)
        }
    }
    private func textFields() {
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordLabel.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
    }
    
    private func buttons() {
        eyeSecuryButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.top).offset(5)
            make.leading.equalTo(passwordTextField.snp.trailing).offset(-55)
            make.height.equalTo(34)
            make.width.equalTo(55)
        }
        
        forgotButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(0)
            make.trailing.equalToSuperview().offset(-30)
            make.width.equalTo(130)
        }
        
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(forgotButton.snp.bottom).offset(30)
            make.leading.trailing.equalToSuperview().inset(40)
            make.height.equalTo(48)
        }
        
        createButton.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(13)
            make.leading.equalTo(questionLabel.snp.trailing).offset(5)
        }
    }
    
    
    private func initAction() {
        createButton.addTarget(self, action: #selector(btnTapped), for: .touchUpInside)
        eyeSecuryButton.addTarget(self, action: #selector(eyeTapped), for: .touchUpInside)
        loginButton.addTarget(self, action: #selector(loginBtnTapped), for: .touchUpInside)
    }

    @objc func btnTapped(sender: UIButton) {
        navigationController?.pushViewController(SignUpViewController(), animated: true)
    }
    
    @objc func eyeTapped(sender: UIButton) {
        if passwordTextField.isSecureTextEntry {
            let image = UIImage(systemName: "eye.fill")
            sender.setImage(image, for: .normal)
            
            passwordTextField.isSecureTextEntry = false
        } else {
            let image = UIImage(systemName: "eye.slash.fill")
            sender.setImage(image, for: .normal)
            
            passwordTextField.isSecureTextEntry = true
        }
    }
    
    @objc func loginBtnTapped(sender: UIButton) {
        let _ = emailTextField.checkForEmptiness()
        let _ = passwordTextField.checkForEmptiness()
    }
}


extension UITextField {
    func placeholderColor(color: UIColor) {
        let placeholder = self.placeholder ?? "" //There should be a placeholder set in storyboard or elsewhere string or pass empty
        self.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor : color])
    }
    func checkForEmptiness() -> Bool{
        if self.text?.isEmpty == true {
            
            self.placeholder = "Заполните, пожалуйста"
            let color: UIColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 0.5)
            self.layer.borderColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 0.5)
            self.layer.borderWidth = 2
            self.placeholderColor(color: color)
            return false
        } else {
            let color: UIColor = #colorLiteral(red: 0.6470588446, green: 0.6470588446, blue: 0.6470588446, alpha: 0.4804852214)
            self.layer.borderColor = #colorLiteral(red: 0, green: 0.4470588235, blue: 0.8823529412, alpha: 0.04303413037)
            self.placeholder = "name"
            self.placeholderColor(color: color)
            return true
        }
    }
}
