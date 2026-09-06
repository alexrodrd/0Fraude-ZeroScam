//
//  HomeViewController.swift
//  PrototipoApp
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var verifiedIcon: UIImageView!
    @IBOutlet weak var avatarIcon: UIImageView!
    @IBOutlet weak var ctaIcon: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    @IBAction func phishingCategoryTapped(_ sender: Any) {
        openSearchTab(withQuery: "Phishing")
    }

    @IBAction func redesCategoryTapped(_ sender: Any) {
        openSearchTab(withQuery: "Redes Sociales")
    }

    @IBAction func identidadCategoryTapped(_ sender: Any) {
        openSearchTab(withQuery: "Robo de Identidad")
    }

    private func openSearchTab(withQuery query: String) {
        guard let tabBarController else { return }
        if let searchVC = tabBarController.viewControllers?.compactMap({ $0 as? SearchViewController }).first {
            searchVC.presetQuery = query
        }
        tabBarController.selectedIndex = 1
    }

    @IBAction func reportCTATapped(_ sender: Any) {
        tabBarController?.selectedIndex = 2
    }
}
