//
//  QuestionCell.swift
//  Tricky Trivia
//
//  Created by Jeremy Meharg on 4/19/22.
//

import UIKit

class QuestionCell: UITableViewCell {

    @IBOutlet weak var questionText: UITextField!
    @IBOutlet weak var ans1: UITextField!
    @IBOutlet weak var ans2: UITextField!
    @IBOutlet weak var ans3: UITextField!
    @IBOutlet weak var ans4: UITextField!
    @IBOutlet weak var corrAns: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
