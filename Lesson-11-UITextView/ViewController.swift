//
//  ViewController.swift
//  Lesson-11-UITextView
//
//  Created by Aleksandr Moroshovskyi on 25.03.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTextView.delegate = self
        myTextView.text = ""
    }


}

extension ViewController: UITextViewDelegate {
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        
        if text == "\n" {
            return false
        }
        
        return true
    }
}
