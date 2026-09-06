//
//  ChangePasswordViewController.swift
//  PrototipoApp
//

import UIKit

class ChangePasswordViewController: UIViewController {

    @IBOutlet weak var currentPasswordField: UITextField!
    @IBOutlet weak var newPasswordField: UITextField!
    @IBOutlet weak var confirmPasswordField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        [currentPasswordField, newPasswordField, confirmPasswordField].forEach {
            $0?.applyOfraudeStyle()
        }
        hideKeyboardOnTap()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

    @IBAction func saveTapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
