//
//  AutoGenViewController.swift
//  Tricky Trivia
//
//  Created by Jeremy Meharg on 4/19/22.
//

import UIKit
import Parse

class AutoGenViewController: UIViewController {
    
    var name = ""
    var difficulty = ""
    var randomNum = Int.random(in: 9...32)
    
    @IBOutlet weak var difficultyMeter: UISegmentedControl!
    @IBOutlet weak var quizName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onAutoBack(_ sender: Any) {
        name = ""
        difficulty = ""
    }
    
    @IBAction func onApiCallCreate(_ sender: Any) {
        self.performSegue(withIdentifier: "apiQuiz", sender: nil)
    }
    
    @IBAction func onSubmit(_ sender: Any) {
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
