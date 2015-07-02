//
//  ViewController.swift
//  Delegation
//
//  Created by CT MacBook Pro on 6/29/15.
//  Copyright © 2015 CT MacBook Pro. All rights reserved.
//

import UIKit


@IBDesignable
class ViewController: UIViewController, DataEnteredDelegate {

    @IBOutlet weak var dataLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "showSecondVC"{
            var seccondVC: SecondViewController = SecondViewController()
            seccondVC = segue.destinationViewController as! SecondViewController
        }
        
    }
    func userDidEnterInformation(info: String) {
        dataLabel.text = info
    }

}

