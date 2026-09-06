//
//  EditProfileViewController.swift
//  PrototipoApp
//

import UIKit

class EditProfileViewController: UIViewController {

    @IBOutlet weak var avatarIcon: UIImageView!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var emailField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        usernameField.applyOfraudeStyle()
        emailField.applyOfraudeStyle()
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
