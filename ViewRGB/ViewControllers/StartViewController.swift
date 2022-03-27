//
//  StartViewController.swift
//  ViewRGB
//
//  Created by Karen Tsarukian on 22.03.2022.
//

import UIKit

protocol ViewControllerDelegate {
    func setNewColor (_ color: UIColor)
}

class StartViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let viewController = segue.destination as? ViewController else { return }
        viewController.viewColor = view.backgroundColor
        viewController.delegate = self
    }
}

extension StartViewController: ViewControllerDelegate {
    func setNewColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
