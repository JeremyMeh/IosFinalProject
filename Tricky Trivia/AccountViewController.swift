//
//  AccountViewController.swift
//  Tricky Trivia
//
//  Created by Jeremy Meharg on 4/19/22.
//

import UIKit
import Parse

class AccountViewController: UIViewController {

    @IBOutlet weak var usernameSpot: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameSpot.text = "Username: " + ((PFUser.current()?.username)!)

        // Do any additional setup after loading the view.
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
