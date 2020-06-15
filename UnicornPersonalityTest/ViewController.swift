//
//  ViewController.swift
//  UnicornPersonalityTest
//
//  Created by TSS on 2020/6/15.
//  Copyright © 2020 TSS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var currentCounter = -1
  
  @IBOutlet weak var questionLabel: UILabel!
  @IBOutlet weak var stronglyAgreeButton: UIButton!
  @IBOutlet weak var agreeButton: UIButton!
  @IBOutlet weak var stronglyDisagreeButton: UIButton!
  @IBOutlet weak var disagreeButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    allQuestions.shuffle()
    loadNewQuestion()
}
  
  func loadNewQuestion() {
    if currentCounter < allQuestions.count-1 {
      currentCounter += 1
      questionLabel.text = allQuestions[currentCounter].text
    } else {
      print("\n========")
      print("End of questions.")
      print("The results are:")
      let usersPersonalityDescription = calculatePersonalityTypeAndReturnDescription()
      print(usersPersonalityType)
      print(usersPersonalityDescription[0].shortDescription)
      print(usersPersonalityDescription[0].longDescription)
      print(usersPersonalityDescription[0].recommendation)
      print(usersPersonalityDescription[1].shortDescription)
      print(usersPersonalityDescription[1].longDescription)
      print(usersPersonalityDescription[1].recommendation)
      print(usersPersonalityDescription[2].shortDescription)
      print(usersPersonalityDescription[2].longDescription)
      print(usersPersonalityDescription[2].recommendation)
      print(usersPersonalityDescription[3].shortDescription)
      print(usersPersonalityDescription[3].longDescription)
      print(usersPersonalityDescription[3].recommendation)
      print(getJungianAcronym(forThisPersonality: usersPersonalityType))
    }
  }
  
  @IBAction func buttonPressed(sender: UIButton) {
    var whereAnswerIs: AnswerForQuestionIs?
    if sender == stronglyAgreeButton {
        whereAnswerIs = AnswerForQuestionIs.stronglyAgree
      } else if sender == agreeButton {
        whereAnswerIs = AnswerForQuestionIs.agree
      } else if sender == disagreeButton {
        whereAnswerIs =  AnswerForQuestionIs.disagree
      } else if sender == stronglyDisagreeButton {
        whereAnswerIs =  AnswerForQuestionIs.stronglyDisagree
    }
    calculateQuestion(whereTypeIs: allQuestions[currentCounter].type, whereAnswerIs: whereAnswerIs!)
    loadNewQuestion()
  }


}

