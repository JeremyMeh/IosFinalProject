//
//  AutoGenTakeViewController.swift
//  Tricky Trivia
//
//  Created by Jeremy Meharg on 4/25/22.
//

import UIKit
import Parse

class AutoGenTakeViewController: UITableViewController {

    var quiz = [[String:Any]]();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        let url = URL(string: "https://opentdb.com/api.php?amount=10&type=multiple")!
        let request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        let task = session.dataTask(with: request) { (data, response, error) in
             // This will run when the network request returns
             if let error = error {
                    print(error.localizedDescription)
             } else if let data = data {
                    let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
                 
                 self.quiz = dataDictionary["results"] as! [[String:Any]]
             }
        }
        task.resume()
        self.tableView.reloadData()
        let quizzes = PFObject(className: "Quizzes")
        
        quizzes["author"] = PFUser.current()!
        quizzes["name"] = "Quiz"
        quizzes["questions"] = quiz
        
        quizzes.saveInBackground { (success, error) in
            if success {
                print("Saved!")
            } else {
                print("Error!")
            }
        }
    }

    // MARK: - Table view data source
    

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return quiz.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let question = quiz[indexPath.item]
        let qText = question["question"] as! String
        var answerChoices = [String]()
        var incorrectAns = [[String]()]
        incorrectAns.append(question["incorrect_answers"] as! [String])
        answerChoices.append(question["correct_answer"] as? String ?? "")
        answerChoices.append(contentsOf: incorrectAns[0])
        answerChoices.append(contentsOf: incorrectAns[1])

        let cell = tableView.dequeueReusableCell(withIdentifier: "ApiQuizCellTableViewCell") as! ApiQuizCellTableViewCell

        cell.questionText.text = qText
        cell.option1.text = answerChoices[0]
        cell.option2.text = answerChoices[1]
        cell.option3.text = answerChoices[2]
        cell.option4.text = answerChoices[3]

        

        return cell
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
