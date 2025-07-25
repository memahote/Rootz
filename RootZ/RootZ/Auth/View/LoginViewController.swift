//
//  LoginViewController.swift
//  RootZ
//
//  Created by Mounir Emahoten on 25/07/2025.


import SwiftUI


class ViewController: UIViewController {
    
    //componants
    
    private let logoMessage : UILabel = {
        let logoMessage = UILabel()
        logoMessage.text = "Super! Tu vas pouvoir continuer ton apprentissage de la culture berbère. Crée ton compte pour enregistrer ta progression"
        logoMessage.font = UIFont(name: "Quicksand", size: 14)
        logoMessage.numberOfLines = 8
        logoMessage.textAlignment = .center
        logoMessage.backgroundColor = .buttonValidate
        logoMessage.layer.cornerRadius = 10
        logoMessage.layer.masksToBounds = true
        
        
        return logoMessage
    }()
    
    private let logoApp : UIImageView = {
        let logoApp = UIImageView()
        logoApp.image = UIImage(named: "Planete1")
        logoApp.contentMode = .scaleAspectFit
        
        return logoApp
    }()
    
    private let nameTextfield : UITextField = {
        let nameTextfield = UITextField()
        nameTextfield.placeholder = "Nom"
        nameTextfield.borderStyle = .roundedRect
        nameTextfield.textAlignment = .left
        
        return nameTextfield
    }()
    
    private let mailTextfield : UITextField = {
        let mailTextfield = UITextField()
        mailTextfield.placeholder = "Adresse mail"
        mailTextfield.borderStyle = .roundedRect
        mailTextfield.textAlignment = .left
        
        return mailTextfield
    }()
    
    private let passwordTextfield : UITextField = {
        let passwordTextfield = UITextField()
        passwordTextfield.placeholder = "Mot de passe"
        passwordTextfield.isSecureTextEntry = true
        passwordTextfield.borderStyle = .roundedRect
        passwordTextfield.textAlignment = .left
        
        
        return passwordTextfield
    }()
    
    private let confirmPasswordTextfield : UITextField = {
        let confirmPasswordTextfield = UITextField()
        confirmPasswordTextfield.placeholder = "Confirmer votre mot de passe"
        confirmPasswordTextfield.isSecureTextEntry = true
        confirmPasswordTextfield.borderStyle = .roundedRect
        confirmPasswordTextfield.textAlignment = .left
        
        
        return confirmPasswordTextfield
    }()
    
    private let connexionButton : UIButton = {
        let connexionButton = UIButton(type: .system)
        connexionButton.setTitle("Inscription", for: .normal)
        connexionButton.setTitleColor(.white, for: .normal)
        connexionButton.backgroundColor = .buttonDefault
        connexionButton.layer.cornerRadius = 10
        
        return connexionButton
    } ()
    
    private let errorLabel : UILabel = {
        let errorLabel = UILabel()
        errorLabel.text = "Identifiants incorrects"
        errorLabel.textColor = .systemRed
        errorLabel.font = UIFont.systemFont(ofSize: 14)
        errorLabel.textAlignment = .center
        errorLabel.numberOfLines = 0
        errorLabel.isHidden = true
        
        return errorLabel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .backgroundDefault
       
        // Do any additional setup after loading the view.
        
        setupLayout()
        setupAction()
    }
        
    
    
    private func setupLayout () {
        view.addSubview(logoMessage)
        view.addSubview(logoApp)
        view.addSubview(nameTextfield)
        view.addSubview(mailTextfield)
        view.addSubview(passwordTextfield)
        view.addSubview(confirmPasswordTextfield)
        view.addSubview(connexionButton)
        view.addSubview(errorLabel)
        
        logoMessage.translatesAutoresizingMaskIntoConstraints = false
        logoApp.translatesAutoresizingMaskIntoConstraints = false
        nameTextfield.translatesAutoresizingMaskIntoConstraints = false
        mailTextfield.translatesAutoresizingMaskIntoConstraints = false
        passwordTextfield.translatesAutoresizingMaskIntoConstraints = false
        confirmPasswordTextfield.translatesAutoresizingMaskIntoConstraints = false
        connexionButton.translatesAutoresizingMaskIntoConstraints = false
        errorLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        
        NSLayoutConstraint.activate([
            logoMessage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoMessage.topAnchor.constraint(equalTo: view.topAnchor, constant: 75),
            logoMessage.widthAnchor.constraint(equalToConstant: 250),
            logoMessage.heightAnchor.constraint(equalToConstant: 100),
            
            logoApp.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoApp.topAnchor.constraint(equalTo: logoMessage.bottomAnchor, constant: 10),
            logoApp.widthAnchor.constraint(equalToConstant: 200),
            logoApp.heightAnchor.constraint(equalToConstant: 200),
            
            
            nameTextfield.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameTextfield.topAnchor.constraint(equalTo: logoApp.bottomAnchor, constant: 50),
            nameTextfield.widthAnchor.constraint(equalToConstant: 200),
            nameTextfield.heightAnchor.constraint(equalToConstant: 35),
            
            mailTextfield.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mailTextfield.topAnchor.constraint(equalTo: nameTextfield.bottomAnchor, constant: 25),
            mailTextfield.widthAnchor.constraint(equalToConstant: 200),
            mailTextfield.heightAnchor.constraint(equalToConstant: 35),
            
            passwordTextfield.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextfield.topAnchor.constraint(equalTo: mailTextfield.bottomAnchor, constant: 25),
            passwordTextfield.widthAnchor.constraint(equalToConstant: 200),
            passwordTextfield.heightAnchor.constraint(equalToConstant: 35),
            
            confirmPasswordTextfield.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            confirmPasswordTextfield.topAnchor.constraint(equalTo: passwordTextfield.bottomAnchor, constant: 25),
            confirmPasswordTextfield.widthAnchor.constraint(equalToConstant: 200),
            confirmPasswordTextfield.heightAnchor.constraint(equalToConstant: 35),
            
            
            errorLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            errorLabel.topAnchor.constraint(equalTo: confirmPasswordTextfield.bottomAnchor, constant: 5),
            errorLabel.widthAnchor.constraint(equalToConstant: 200),
            errorLabel.heightAnchor.constraint(equalToConstant: 35),
            
            
            connexionButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            connexionButton.topAnchor.constraint(equalTo: confirmPasswordTextfield.bottomAnchor, constant: 50),
            connexionButton.widthAnchor.constraint(equalToConstant: 150),
            connexionButton.heightAnchor.constraint(equalToConstant: 50),
            
        ])
        
    }
    
    
    private func setupAction() {
        connexionButton.addTarget(self, action: #selector(loginCheck), for: .touchUpInside)
    }
    
    
    @objc private func validateInputs(mail : String, password : String) -> Bool{
        
        if mail.isEmpty || password.isEmpty {
            return false
        }
        
        if !isValidEmail(mail: mail){
            return false
        }
        
        return true
    }
    
    func isValidEmail(mail: String) -> Bool {
        let mailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let mailPred = NSPredicate(format:"SELF MATCHES %@", mailRegEx)
        return mailPred.evaluate(with: mail)
    }
    
    @objc private func loginCheck(){
        let mail = mailTextfield.text ?? ""
        let password = passwordTextfield.text ?? ""
        if validateInputs(mail: mail, password: password)
        {
            let mainPage = UIHostingController(rootView: MainTabView())
            navigationController?.pushViewController(mainPage, animated: false)
            navigationController?.setNavigationBarHidden(true, animated: false)
            
            errorLabel.isHidden = true
            
            print("je suis la")
        } else {
            errorLabel.isHidden = false
            print("Inputs Invalide")
        }
        
    }
    
}


