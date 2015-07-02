//
//  SecondViewController.swift
//  Delegation
//
//  Created by CT MacBook Pro on 6/29/15.
//  Copyright © 2015 CT MacBook Pro. All rights reserved.
//

import UIKit

protocol DataEnteredDelegate{
    func userDidEnterInformation(info: String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    var delegate: DataEnteredDelegate? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func sendData(sender: AnyObject) {
        if delegate != nil{
            let information: String = textField.text!
            delegate!.userDidEnterInformation(information) //pass this info to the method that conforms to the protocol
            self.navigationController!.popViewControllerAnimated(true)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
