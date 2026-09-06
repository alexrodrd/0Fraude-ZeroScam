//
//  ReportSuccessViewController.swift
//  PrototipoApp
//

import UIKit

class ReportSuccessViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    @IBAction func continueTapped(_ sender: Any) {
        guard let navigationController else { return }
        if let tabBarController = navigationController.viewControllers.first(where: { $0 is UITabBarController }) as? UITabBarController {
            tabBarController.selectedIndex = 0
            navigationController.popToViewController(tabBarController, animated: true)
        } else {
            navigationController.popToRootViewController(animated: true)
        }
    }
}
