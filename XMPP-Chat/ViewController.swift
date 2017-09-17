//
//  ViewController.swift
//  XMPP-Chat
//
//  Created by Sharad Paghadal on 17/09/17.
//  Copyright © 2017 Sharad Paghadal. All rights reserved.
//

import UIKit
import XMPPFramework

class ViewController: UIViewController {

    @IBOutlet weak var textFieldHostAddress: UITextField!
    @IBOutlet weak var textFieldJabberID: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    var xmppController : XMPPController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonLoginClicked(_ sender: UIButton) {
        try! self.xmppController = XMPPController(hostName: textFieldHostAddress.text!, userJIDString: textFieldJabberID.text!, password: textFieldPassword.text!)
        self.xmppController?.connect()
        
    }
    
}
