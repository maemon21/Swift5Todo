//
//  AddViewController.swift
//  Swift5Todo
//
//  Created by EMoshU on 2020/04/06.
//  Copyright © 2020 EMoshU. All rights reserved.
//

import UIKit

class AddViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var textField: UITextField!
    
    var array = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self

        // Do any additional setup after loading the view.
    }
    
    @IBAction func add(_ sender: Any) {
        
        // 現在の配列を取り出す
        if UserDefaults.standard.object(forKey: "todo") != nil {
            array = UserDefaults.standard.object(forKey: "todo") as! [String]
        }
        
        array.append(textField.text!)
        UserDefaults.standard.set(array, forKey: "todo")
        
        self.navigationController?.popViewController(animated: true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
