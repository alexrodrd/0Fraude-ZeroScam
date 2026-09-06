//
//  SearchViewController.swift
//  PrototipoApp
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var verifiedIcon: UIImageView!
    @IBOutlet weak var searchField: UITextField!

    var presetQuery: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        searchField.applyOfraudeStyle()
        hideKeyboardOnTap()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        if let presetQuery {
            searchField.text = presetQuery
            self.presetQuery = nil
        }
    }
}
