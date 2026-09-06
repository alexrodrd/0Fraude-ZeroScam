//
//  RegisterViewController.swift
//  PrototipoApp
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var confirmPasswordField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        [usernameField, emailField, passwordField, confirmPasswordField].forEach {
            $0?.applyOfraudeStyle()
        }
        hideKeyboardOnTap()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

    @IBAction func createAccountTapped(_ sender: UIButton) {
        // TODO: crear cuenta
    }

}
