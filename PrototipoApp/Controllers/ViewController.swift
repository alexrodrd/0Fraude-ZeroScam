//
//  ViewController.swift
//  PrototipoApp
//
//  Created by Alejandro on 31/08/26.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!

    private let demoEmail = "admin"
    private let demoPassword = "admin"

    override func viewDidLoad() {
        super.viewDidLoad()
        emailField.applyOfraudeStyle()
        passwordField.applyOfraudeStyle()
        hideKeyboardOnTap()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    @IBAction func createAccountTapped(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }

    @IBAction func loginSubmitTapped(_ sender: UIButton) {
        let isCorrect = emailField.text == demoEmail && passwordField.text == demoPassword
        errorLabel.isHidden = isCorrect

        guard isCorrect else { return }

        guard let tabBarController = storyboard?.instantiateViewController(withIdentifier: "MainTabBarController") else { return }
        navigationController?.pushViewController(tabBarController, animated: true)
    }
}
