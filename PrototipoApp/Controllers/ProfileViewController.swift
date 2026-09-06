//
//  ProfileViewController.swift
//  PrototipoApp
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var avatarIcon: UIImageView!
    @IBOutlet weak var editBadgeIcon: UIImageView!
    @IBOutlet weak var settingsIcon: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    @IBAction func editDeleteReport1Tapped(_ sender: UIButton) {
        showEditDeleteOptions(for: sender, reportTitle: "Clonación Web Bancaria")
    }

    @IBAction func editDeleteReport2Tapped(_ sender: UIButton) {
        showEditDeleteOptions(for: sender, reportTitle: "Estafa SMS Paquete Retenido")
    }

    private func showEditDeleteOptions(for sender: UIButton, reportTitle: String) {
        let alert = UIAlertController(title: reportTitle, message: nil, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Editar", style: .default) { _ in
            
        })
        alert.addAction(UIAlertAction(title: "Eliminar", style: .destructive) { _ in
            sender.superview?.isHidden = true
        })
        alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel))
        alert.popoverPresentationController?.sourceView = sender
        present(alert, animated: true)
    }
}
