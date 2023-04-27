//
//  SingUpViewController.swift
//  IOS-HomeWork-6
//
//  Created by MacBook Pro on 27/4/23.
//

import UIKit

class SignUpViewController: UIViewController {
    
    private let topImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "topImage")
        return image
    }()
    
    private let welcomeLabel: UILabel = {
        let label = UILabel()
        label.font = label.font.withSize(28)
        label.textColor = .white
        label.text = "Register"
        return label
    }()
    
    private let infoLabel: UILabel = {
        let label = UILabel()
        label.font = label.font.withSize(20)
        label.text = "Create a new account"
        label.textColor = #colorLiteral(red: 0.7686274648, green: 0.7686274648, blue: 0.7686274648, alpha: 1)
        return label
    }()
    
    private let userNameLabel: UILabel = {
        let label = UILabel()
        label.font = label.font.withSize(18)
        label.text = "UserName"
        label.textColor = .white
        return label
    }()
    
    private let userNameTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 6
        textField.placeholder = "Username"
        return textField
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
    
    private let numberLabel: UILabel = {
        let label = UILabel()
        label.font = label.font.withSize(18)
        label.text = "Mobile Number"
        label.textColor = .white
        return label
    }()
    
    private let numberTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 6
        textField.placeholder = "Mobile Number"
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


    override func viewDidLoad() {
        updateInitUI()
        super.viewDidLoad()
        view.backgroundColor = .black
        images()
        labels()
        textFields()
        buttons()
        initAction()
    }
    
    func updateInitUI() {
        view.addSubview(topImage)
        view.addSubview(welcomeLabel)
        view.addSubview(infoLabel)
        view.addSubview(emailLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordLabel)
        view.addSubview(passwordTextField)
        view.addSubview(eyeSecuryButton)
        view.addSubview(loginButton)
        view.addSubview(userNameLabel)
        view.addSubview(userNameTextField)
        view.addSubview(numberLabel)
        view.addSubview(numberTextField)
        
    }

    private func images(){
        topImage.snp.makeConstraints { make in
            make.height.equalTo(230)
            make.leading.trailing.top.equalToSuperview().inset(0)
        }
    }
    private func labels() {
        welcomeLabel.snp.makeConstraints { make in
            make.top.equalTo(topImage.snp.bottom).offset(0)
            make.centerX.equalToSuperview()
        }
        
        infoLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(welcomeLabel.snp.bottom).offset(1)
        }
        
        userNameLabel.snp.makeConstraints { make in
            make.top.equalTo(infoLabel.snp.bottom).offset(22)
            make.leading.equalToSuperview().offset(30)
        }
        
        numberLabel.snp.makeConstraints { make in
            make.top.equalTo(userNameTextField.snp.bottom).offset(22)
            make.leading.equalToSuperview().offset(30)
        }
        
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(numberTextField.snp.bottom).offset(9)
            make.leading.equalToSuperview().offset(30)
        }
        
        passwordLabel.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(11)
            make.leading.equalToSuperview().offset(30)
        }
        
    }
    private func textFields() {
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
        
        userNameTextField.snp.makeConstraints { make in
            make.top.equalTo(userNameLabel.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
        
        numberTextField.snp.makeConstraints { make in
            make.top.equalTo(numberLabel.snp.bottom).offset(10)
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
        
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(30)
            make.leading.trailing.equalToSuperview().inset(40)
            make.height.equalTo(48)
        }
    }
    
    
    private func initAction() {
        eyeSecuryButton.addTarget(self, action: #selector(eyeTapped), for: .touchUpInside)
        loginButton.addTarget(self, action: #selector(loginBtnTapped), for: .touchUpInside)
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
        let userName = userNameTextField.checkForEmptiness()
        let number = numberTextField.checkForEmptiness()
        let email = emailTextField.checkForEmptiness()
        let password = passwordTextField.checkForEmptiness()
        
        if userName && number && email && password {
            let vc = ForgotViewController()
            vc.emailText = emailTextField.text
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
