//
//  ViewController.swift
//  mutliply
//
//  Created by Eric Cuevas on 5/5/16.
//  Copyright © 2016 mackenstein. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//properties
    
    var num1 = 0
    var currentnum = 0
    var newnum = 0
    
//outlets
    @IBOutlet weak var logoimg : UIImageView!
    @IBOutlet weak var txtfield : UITextField!
    @IBOutlet weak var playbtn: UIButton!
    
    @IBOutlet weak var addlbl: UILabel!
    @IBOutlet weak var addbtn: UIButton!

    @IBAction func playpressed(sender:UIButton!) {
        
   
        if txtfield.text != nil && txtfield.text != "" {
            logoimg.hidden = true
            txtfield.hidden = true
            playbtn.hidden = true
            addbtn.hidden = false
            addlbl.hidden = false
            num1 =  Int(txtfield.text!)!
            currentnum = 0
            currentnum = num1 + num1
            addlbl.text = "\(num1) + \(num1) = \(currentnum)"
        }
        
        
    }
    
    @IBAction func addpressed(sender: UIButton!) {
        if gameover() {
            restart()
        }
                
        if newnum < 1000{
           newnum = currentnum + num1
            addlbl.text = "\(currentnum) + \(num1) = \(newnum)"
            currentnum = newnum
            }
        
        }
    func gameover() -> Bool {
        if currentnum >= 1000{
            return true
        }else {
            return false
        }
    }
    func restart() {
        logoimg.hidden = false
        txtfield.hidden = false
        playbtn.hidden = false
        
        addbtn.hidden = true
        addlbl.hidden = true
        newnum = 0
        currentnum = 0
        num1 = 0
        txtfield.text = ""
    }


}