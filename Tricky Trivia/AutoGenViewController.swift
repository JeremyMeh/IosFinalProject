//
//  AutoGenViewController.swift
//  Tricky Trivia
//
//  Created by Jeremy Meharg on 4/19/22.
//

import UIKit

class AutoGenViewController: UIViewController {
    
    var name = ""
    var categories = ""
    var difficulty = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onAutoBack(_ sender: Any) {
        name = ""
        categories = ""
        difficulty = ""
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
