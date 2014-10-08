//
//  SecondViewController.swift
//  MyNotes
//
//  Created by Fernando Serapio on 10/7/14.
//  Copyright (c) 2014 DevMakila. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var noteName: UITextField!
    @IBOutlet var noteDescription: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    @IBAction func addNoteToList(sender: UIButton) {
        Manager.addNote(noteName.text, description: noteDescription.text)
        self.view.endEditing(true)
        noteName.text = ""
        noteDescription.text = ""
        self.tabBarController?.selectedIndex = 0
    }
}

