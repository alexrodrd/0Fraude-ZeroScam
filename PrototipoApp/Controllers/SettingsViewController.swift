//
//  SettingsViewController.swift
//  PrototipoApp
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

    @IBAction func savedReportsTapped(_ sender: Any) {
        guard let navigationController else { return }
        guard let tabBarController = navigationController.viewControllers.first(where: { $0 is UITabBarController }) as? UITabBarController else { return }
        if let profileVC = tabBarController.viewControllers?.compactMap({ $0 as? ProfileViewController }).first {
            profileVC.showGuardados()
        }
        tabBarController.selectedIndex = 3
        navigationController.popToViewController(tabBarController, animated: true)
    }
}
