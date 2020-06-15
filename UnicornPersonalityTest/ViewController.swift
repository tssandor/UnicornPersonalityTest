//
//  ViewController.swift
//  UnicornPersonalityTest
//
//  Created by TSS on 2020/6/15.
//  Copyright © 2020 TSS. All rights reserved.
//

import UIKit

var allQuestions: [Question] = []

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    allQuestions = initializeQuestions().shuffled()
    
    allQuestions.forEach {
      print("\($0.type) type. \($0.text)")
    }


    // Do any additional setup after loading the view.
  }


}

