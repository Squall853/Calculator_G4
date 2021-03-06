//
//  ViewController.swift
//  calculator_G4
//
//  Created by Boi on 4/20/18.
//  Copyright © 2018 Boi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @objc var numberOnScreen:Double = 0;
    @objc var previousNumber:Double = 0;
    @objc var performingMath = false
    @objc var  operation = 0;
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func number(_ sender: UIButton)
    {
        if performingMath == true
        {
            label.text = String(sender.tag)
            numberOnScreen = Double(label.text!)!
            performingMath = false
        }
        else
        {
            label.text = label.text! + String(sender.tag)
            numberOnScreen = Double(label.text!)!
        }
        
    }
    
    @IBAction func buttons(_ sender: UIButton)
    {
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        {		
            previousNumber = Double(label.text!)!
            /*if sender.tag == 12 // chia
            {
                label.text = "/";
            }
            else if sender.tag == 13 // nhan
            {
                label.text = "x";
            }
            else if sender.tag == 14 // tru
            {
                label.text = "-";
            }
            else if sender.tag == 15 // cong
            {
                label.text = "+";
            }*/
            operation = sender.tag
            performingMath = true;
        }
        else if sender.tag == 16
        {
            if operation == 12
            {
                label.text = String(previousNumber / numberOnScreen)
            }
            else if operation == 13
            {
                label.text = String(previousNumber * numberOnScreen)
            }
            else if operation == 14
            {
                label.text = String(previousNumber - numberOnScreen)
            }
            else if operation == 15
            {
                label.text = String(previousNumber + numberOnScreen)
            }
        }
        else if sender.tag == 11
        {
            label.text = ""
            previousNumber = 0;
            numberOnScreen = 0;
            operation = 0;
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

