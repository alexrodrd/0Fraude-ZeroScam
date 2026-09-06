//
//  ReportDetailViewController.swift
//  PrototipoApp
//

import UIKit

class ReportDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardOnTap()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

    @IBAction func meTooTapped(_ sender: Any) {

    }

    @IBAction func saveTapped(_ sender: Any) {
        // TODO: agregar a Reportes Guardados
    }

    @IBAction func postCommentTapped(_ sender: Any) {
        // TODO: publicar comentario
    }
}
