//
//  HomeViewController.swift
//  Tricky Trivia
//
//  Created by Jeremy Meharg on 4/10/22.
//

import UIKit
import Parse

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    // Hi this is Julio's file
    
    @IBAction func onLogoutClick(_ sender: Any) {
        PFUser.logOut()
        
        let main = UIStoryboard(name: "Main", bundle: nil)
        let loginViewController = main.instantiateViewController(withIdentifier: "LoginViewController")
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene, let delegate = windowScene.delegate as? SceneDelegate else { return }
        
        delegate.window?.rootViewController = loginViewController
    }
    
    @IBAction func onCreateGame(_ sender: Any) {
        self.performSegue(withIdentifier: "createSegue", sender: nil)
    }
    
    @IBAction func onAutoGen(_ sender: Any) {
        self.performSegue(withIdentifier: "autoGenSegue", sender: nil)
    }
    
    @IBAction func onSavedGames(_ sender: Any) {
        self.performSegue(withIdentifier: "savedSegue", sender: nil)
    }
    
    @IBAction func onAccount(_ sender: Any) {
        self.performSegue(withIdentifier: "accountSegue", sender: nil)
    }
    
    @IBAction func unwindToRootViewController(segue: UIStoryboardSegue) {
        print("Unwind to Root View Controller")
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
