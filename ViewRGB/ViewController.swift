//
//  ViewController.swift
//  ViewRGB
//
//  Created by Karen Tsarukian on 30.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var viewMulticolor: UIView!
    
    // MARK: Color labels
    @IBOutlet var redColorValue: UILabel!
    @IBOutlet var greenColorValue: UILabel!
    @IBOutlet var blueColorValue: UILabel!
    
    //MARK: Color sliders
    @IBOutlet var redColorSlider: UISlider!
    @IBOutlet var greenColorSlider: UISlider!
    @IBOutlet var blueColorSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewMulticolor.layer.cornerRadius = 10
        
        redColorValue.text = String(redColorSlider.value)
        greenColorValue.text = String(greenColorSlider.value)
        blueColorValue.text = String(blueColorSlider.value)
    }
    @IBAction func redSliderAction() {
        redColorValue.text = String(redColorSlider.value)
    }
    
    @IBAction func greenSliderAction() {
        greenColorValue.text = String(greenColorSlider.value)
    }
    
    @IBAction func blueColorAction() {
        blueColorValue.text = String(blueColorSlider.value)
    }
    
}

