//
//  ModelView.swift
//  UnicornPersonalityTest
//
//  Created by TSS on 2020/6/15.
//  Copyright © 2020 TSS. All rights reserved.
//

import Foundation

var usersPersonalityValues = PersonalityValues(eValue: 0, iValue: 0, sValue: 0, nValue: 0, tValue: 0, fValue: 0, jValue: 0, pValue: 0)
var usersPersonalityType = PersonalityType(E_or_I: .e, S_or_N: .n, T_or_F: .t, J_or_P: .p)

func calculateQuestion(whereTypeIs: String, whereAnswerIs: AnswerForQuestionIs) {
  var pointsToBook: Int
  switch whereAnswerIs {
    case AnswerForQuestionIs.stronglyAgree:
      if whereTypeIs == "E" || whereTypeIs == "I" || whereTypeIs == "J" || whereTypeIs == "P" {
        pointsToBook = 20
      } else {
        pointsToBook = 10
      }
    case AnswerForQuestionIs.agree:
      if whereTypeIs == "E" || whereTypeIs == "I" || whereTypeIs == "J" || whereTypeIs == "P" {
        pointsToBook = 10
      } else {
        pointsToBook = 5
      }
    case AnswerForQuestionIs.disagree:
      if whereTypeIs == "E" || whereTypeIs == "I" || whereTypeIs == "J" || whereTypeIs == "P" {
        pointsToBook = -10
      } else {
        pointsToBook = -5
      }
    case AnswerForQuestionIs.stronglyDisagree:
      if whereTypeIs == "E" || whereTypeIs == "I" || whereTypeIs == "J" || whereTypeIs == "P" {
        pointsToBook = -20
      } else {
        pointsToBook = -10
      }
  }
  switch whereTypeIs {
    case "E": usersPersonalityValues.eValue = usersPersonalityValues.eValue + pointsToBook
    case "I": usersPersonalityValues.iValue = usersPersonalityValues.iValue + pointsToBook
    case "S": usersPersonalityValues.sValue = usersPersonalityValues.sValue + pointsToBook
    case "N": usersPersonalityValues.nValue = usersPersonalityValues.nValue + pointsToBook
    case "T": usersPersonalityValues.tValue = usersPersonalityValues.tValue + pointsToBook
    case "F": usersPersonalityValues.fValue = usersPersonalityValues.fValue + pointsToBook
    case "J": usersPersonalityValues.jValue = usersPersonalityValues.jValue + pointsToBook
    case "P": usersPersonalityValues.pValue = usersPersonalityValues.pValue + pointsToBook
    default: print("error")
  }
}

func calculatePersonalityTypeAndReturnDescription() -> [DescriptionOfPersonalityTypeElements] {
  // E or I
  if usersPersonalityValues.eValue - 49 > usersPersonalityValues.iValue {
    usersPersonalityType.E_or_I = .ee
  } else if usersPersonalityValues.eValue > usersPersonalityValues.iValue {
    usersPersonalityType.E_or_I = .e
  } else if usersPersonalityValues.eValue < usersPersonalityValues.iValue - 49 {
    usersPersonalityType.E_or_I = .ii
  }  else if usersPersonalityValues.eValue <= usersPersonalityValues.iValue {
    usersPersonalityType.E_or_I = .i
  }

  // S or N
  if usersPersonalityValues.sValue - 49 > usersPersonalityValues.nValue {
    usersPersonalityType.S_or_N = .ss
  } else if usersPersonalityValues.sValue > usersPersonalityValues.nValue {
    usersPersonalityType.S_or_N = .s
  } else if usersPersonalityValues.sValue < usersPersonalityValues.nValue - 49 {
    usersPersonalityType.S_or_N = .nn
  }  else if usersPersonalityValues.sValue <= usersPersonalityValues.nValue {
    usersPersonalityType.S_or_N = .n
  }

  // T or F
  if usersPersonalityValues.tValue - 49 > usersPersonalityValues.fValue {
    usersPersonalityType.T_or_F = .tt
  } else if usersPersonalityValues.tValue > usersPersonalityValues.fValue {
    usersPersonalityType.T_or_F = .t
  } else if usersPersonalityValues.tValue < usersPersonalityValues.fValue - 49 {
    usersPersonalityType.T_or_F = .ff
  }  else if usersPersonalityValues.tValue <= usersPersonalityValues.fValue {
    usersPersonalityType.T_or_F = .f
  }

  // J or P
  if usersPersonalityValues.jValue - 49 > usersPersonalityValues.pValue {
    usersPersonalityType.J_or_P = .jj
  } else if usersPersonalityValues.jValue > usersPersonalityValues.pValue {
    usersPersonalityType.J_or_P = .j
  } else if usersPersonalityValues.jValue < usersPersonalityValues.pValue - 49 {
    usersPersonalityType.J_or_P = .pp
  }  else if usersPersonalityValues.jValue <= usersPersonalityValues.pValue {
    usersPersonalityType.J_or_P = .p
  }
  
  var descriptionToReturn: [DescriptionOfPersonalityTypeElements] = []
  descriptionToReturn.append(personalityDescriptionsDictionary[usersPersonalityType.E_or_I]!)
  descriptionToReturn.append(personalityDescriptionsDictionary[usersPersonalityType.S_or_N]!)
  descriptionToReturn.append(personalityDescriptionsDictionary[usersPersonalityType.T_or_F]!)
  descriptionToReturn.append(personalityDescriptionsDictionary[usersPersonalityType.J_or_P]!)
  
  return descriptionToReturn
  
}
