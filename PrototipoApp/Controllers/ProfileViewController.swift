//
//  ProfileViewController.swift
//  PrototipoApp
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var avatarIcon: UIImageView!
    @IBOutlet weak var editBadgeIcon: UIImageView!
    @IBOutlet weak var settingsIcon: UIImageView!

    @IBOutlet weak var tab1Button: UIButton!
    @IBOutlet weak var tab2Button: UIButton!
    @IBOutlet weak var misReportesCard1: UIView!
    @IBOutlet weak var misReportesCard2: UIView!
    @IBOutlet weak var guardadosCard1: UIView!
    @IBOutlet weak var guardadosCard2: UIView!

    private let activeTabColor = UIColor.white
    private let inactiveTabColor = UIColor(red: 0.5803921568999999, green: 0.63921568629999992, blue: 0.72156862750000006, alpha: 1)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    func showGuardados() {
        guardadosTabTapped(self)
    }

    @IBAction func misReportesTabTapped(_ sender: Any) {
        tab1Button.setTitleColor(activeTabColor, for: .normal)
        tab2Button.setTitleColor(inactiveTabColor, for: .normal)
        misReportesCard1.isHidden = false
        misReportesCard2.isHidden = false
        guardadosCard1.isHidden = true
        guardadosCard2.isHidden = true
    }

    @IBAction func guardadosTabTapped(_ sender: Any) {
        tab1Button.setTitleColor(inactiveTabColor, for: .normal)
        tab2Button.setTitleColor(activeTabColor, for: .normal)
        misReportesCard1.isHidden = true
        misReportesCard2.isHidden = true
        guardadosCard1.isHidden = false
        guardadosCard2.isHidden = false
    }

    @IBAction func removeFromSaved1Tapped(_ sender: Any) {
        guardadosCard1.isHidden = true
    }

    @IBAction func removeFromSaved2Tapped(_ sender: Any) {
        guardadosCard2.isHidden = true
    }

    @IBAction func editDeleteReport1Tapped(_ sender: UIButton) {
        showEditDeleteOptions(for: sender, reportTitle: "Descuento falso de laptop en tienda clonada")
    }

    @IBAction func editDeleteReport2Tapped(_ sender: UIButton) {
        showEditDeleteOptions(for: sender, reportTitle: "Oferta falsa 2x1 en boletos de concierto por Instagram")
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
