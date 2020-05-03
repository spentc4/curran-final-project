//
//  ViewController.swift
//  Final Project
//
//  Created by Spencer Curran on 5/2/20.
//  Copyright © 2020 Spencer Curran. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

    
    @IBOutlet weak var number1: UITextField!
    
    @IBOutlet weak var number2: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func rating(_ sender: Any) {
        let alert = UIAlertController(title: "rating", message: "we really appreciate your rating", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title:NSLocalizedString("thank you!", comment: "default action"), style: .`default`, handler: { _ in}))
        
        self.present(alert,animated: true, completion: nil)
    }
    
    @IBAction func divButton(_ sender: Any) {
        let firstValue = Double(number1.text!)
        let secondValue = Double(number2.text!)
        var soundID: SystemSoundID = 0
        let soundFile:String=Bundle.main.path(forResource:"youGotmail",ofType:"wav")!
        let soundURL: NSURL = NSURL(fileURLWithPath: soundFile)
        AudioServicesCreateSystemSoundID(soundURL, &soundID)
        AudioServicesPlaySystemSound(soundID)
        if firstValue != nil && secondValue != nil {
        let outputValue =  Double(firstValue! / secondValue!)
            label.text = "\(outputValue)"
                    let alert = UIAlertController(title: "results", message: "\(outputValue)", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title:NSLocalizedString("ok", comment: "default action"), style: .`default`, handler: { _ in}))
                    
                    self.present(alert,animated: true, completion: nil)} else {
            let alert = UIAlertController(title: "results", message: "please enter a number", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title:NSLocalizedString("ok", comment: "default action"), style: .`default`, handler: { _ in}))
            
            self.present(alert,animated: true, completion: nil)
        }
    }
    
    @IBAction func multButton(_ sender: Any) {
        let firstValue = Double(number1.text!)
        let secondValue = Double(number2.text!)
        var soundID: SystemSoundID = 0
        let soundFile:String=Bundle.main.path(forResource:"youGotmail",ofType:"wav")!
        let soundURL: NSURL = NSURL(fileURLWithPath: soundFile)
        AudioServicesCreateSystemSoundID(soundURL, &soundID)
        AudioServicesPlaySystemSound(soundID)
        
        if firstValue != nil && secondValue != nil {
        let outputValue =  Double(firstValue! * secondValue!)
            label.text = "\(outputValue)"
                    let alert = UIAlertController(title: "results", message: "\(outputValue)", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title:NSLocalizedString("ok", comment: "default action"), style: .`default`, handler: { _ in}))
                    
                    self.present(alert,animated: true, completion: nil)} else {
            let alert = UIAlertController(title: "results", message: "please enter a number", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title:NSLocalizedString("ok", comment: "default action"), style: .`default`, handler: { _ in}))
            
            self.present(alert,animated: true, completion: nil)
        }
    }
    
    @IBAction func subButton(_ sender: Any) {
        let firstValue = Double(number1.text!)
        let secondValue = Double(number2.text!)
        var soundID: SystemSoundID = 0
        let soundFile:String=Bundle.main.path(forResource:"youGotmail",ofType:"wav")!
        let soundURL: NSURL = NSURL(fileURLWithPath: soundFile)
        AudioServicesCreateSystemSoundID(soundURL, &soundID)
        AudioServicesPlaySystemSound(soundID)
        if firstValue != nil && secondValue != nil {
        let outputValue =  Double(firstValue! - secondValue!)
            label.text = "\(outputValue)"
                    let alert = UIAlertController(title: "results", message: "\(outputValue)", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title:NSLocalizedString("ok", comment: "default action"), style: .`default`, handler: { _ in}))
                    
                    self.present(alert,animated: true, completion: nil)} else {
            let alert = UIAlertController(title: "results", message: "please enter a number", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title:NSLocalizedString("ok", comment: "default action"), style: .`default`, handler: { _ in}))
            
            self.present(alert,animated: true, completion: nil)
        }
        
    }
    
    @IBAction func addButton(_ sender: Any) {
        
        
        let firstValue = Double(number1.text!)
        let secondValue = Double(number2.text!)
        var soundID: SystemSoundID = 0
        let soundFile:String=Bundle.main.path(forResource:"youGotmail",ofType:"wav")!
        let soundURL: NSURL = NSURL(fileURLWithPath: soundFile)
        AudioServicesCreateSystemSoundID(soundURL, &soundID)
        AudioServicesPlaySystemSound(soundID)
        if firstValue != nil && secondValue != nil {
        let outputValue =  Double(firstValue! + secondValue!)
            label.text = "\(outputValue)"
                    let alert = UIAlertController(title: "results", message: "\(outputValue)", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title:NSLocalizedString("ok", comment: "default action"), style: .`default`, handler: { _ in}))
                    
                    self.present(alert,animated: true, completion: nil)} else {
            let alert = UIAlertController(title: "results", message: "please enter a number", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title:NSLocalizedString("ok", comment: "default action"), style: .`default`, handler: { _ in}))
            
            self.present(alert,animated: true, completion: nil)
        }
    }
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

