//
//  ForgotViewController.swift
//  IOS-HomeWork-6
//
//  Created by MacBook Pro on 27/4/23.
//

import UIKit

class ForgotViewController: UIViewController {
    private let topImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "topImage")
        return image
    }()
    
    private let forgotLabel: UILabel = {
        let label = UILabel()
        label.font = label.font.withSize(28)
        label.textColor = .white
        label.text = "Forgot Password"
        return label
    }()
    
    private let userNameLabel: UILabel = {
        let label = UILabel()
        label.font = label.font.withSize(18)
        label.text = "Enter your email"
        label.textColor = .white
        return label
    }()
    
    var emailText: String?
    private let emailTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 6
        textField.placeholder = "Email"
        return textField
    }()
    
    private let sendButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0, green: 0.7264280915, blue: 0.9888871312, alpha: 1)
        button.titleLabel?.font = button.titleLabel?.font.withSize(20)
        button.setTitle("Send OTP", for: .normal)
        button.layer.cornerRadius = 22
        return button
    }()
    
    private let questionLabel: UILabel = {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 0.380392164, green: 0.3803921342, blue: 0.3803921342, alpha: 1)
        label.text = "Choose Another Method"
        label.font = label.font.withSize(16)
        return label
    }()
    
    private let needButton: UIButton = {
        let button = UIButton()
        button.setTitle("Need Help?", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = button.titleLabel?.font.withSize(15)
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
    }
    
    func updateInitUI() {
        view.addSubview(topImage)
        view.addSubview(forgotLabel)
        view.addSubview(sendButton)
        view.addSubview(userNameLabel)
        view.addSubview(emailTextField)
        view.addSubview(questionLabel)
        view.addSubview(needButton)
        emailTextField.text = emailText
    }

    private func images(){
        topImage.snp.makeConstraints { make in
            make.height.equalTo(230)
            make.leading.trailing.top.equalToSuperview().inset(0)
        }
    }
    private func labels() {
        forgotLabel.snp.makeConstraints { make in
            make.top.equalTo(topImage.snp.bottom).offset(31)
            make.centerX.equalToSuperview()
        }
        
        userNameLabel.snp.makeConstraints { make in
            make.top.equalTo(forgotLabel.snp.bottom).offset(61)
            make.leading.equalToSuperview().offset(30)
        }
        
        questionLabel.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(11)
            make.leading.equalToSuperview().offset(50)
        }
        
    }
    private func textFields() {
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(userNameLabel.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }

    }
    
    private func buttons() {
        
        sendButton.snp.makeConstraints { make in
            make.top.equalTo(needButton.snp.bottom).offset(22)
            make.leading.trailing.equalToSuperview().inset(40)
            make.height.equalTo(48)
        }
        
        needButton.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(5)
            make.leading.equalTo(questionLabel.snp.trailing).offset(5)
        }
    }
}
