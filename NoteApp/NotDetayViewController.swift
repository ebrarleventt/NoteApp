//
//  NotDetayViewController.swift
//  NoteApp
//
//  Created by Ebrar Levent on 24.01.2024.
//

import UIKit

class NotDetayViewController: UIViewController {

    @IBOutlet weak var textFieldDersAdi: UITextField!
    
    @IBOutlet weak var textFieldNot1: UITextField!
    
    @IBOutlet weak var textFieldNot2: UITextField!
    
    var not:Notlar?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        if let n = not {
            textFieldDersAdi.text = n.ders_adi
            textFieldNot1.text = String(n.not1!)
            textFieldNot2.text = String(n.not2! )
        }
        
        
        
    }
    
  
    @IBAction func notSil(_ sender: Any) {
        
        if let n = not {
            NotlarDao().notSil(not_id: n.not_id!)
        }
    }
    
    
    @IBAction func notGuncelle(_ sender: Any) {
        
        if let n = not, let ad = textFieldDersAdi.text, let not1 = textFieldNot1.text, let not2 = textFieldNot2.text {
            if let n1 = Int(not1), let n2 = Int(not2){
                NotlarDao().notguncelle(not_id: n.not_id!, ders_adi: ad, not1: n1, not2: n2)
            }
        }
        
    }
}
 
