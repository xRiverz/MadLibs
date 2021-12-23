//
//  ViewController.swift
//  MadLibs
//
//  Created by admin on 23/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var statmentLable : UILabel!
    
    var Text : [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func unwindtomain(_ unwindSegue : UIStoryboardSegue){
        if unwindSegue.source is TextViewController {
            let senderVC = unwindSegue.source as! TextViewController
            statmentLable.text = "We are having a perfectly \(senderVC.adjField.text!) right now. Later we will \(senderVC.v1Field.text!) and \(senderVC.v2Field.text!) in the \(senderVC.nounField.text!)"
        }
    }

}

