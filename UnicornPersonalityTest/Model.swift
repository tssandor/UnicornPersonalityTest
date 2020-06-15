//
//  Model.swift
//  UnicornPersonalityTest
//
//  Created by TSS on 2020/6/15.
//  Copyright © 2020 TSS. All rights reserved.
//

import Foundation

struct Question {
  var type: String
  var text: String
}

struct Personality {
  var eValue: Int
  var iValue: Int
  var sValue: Int
  var nValue: Int
  var tValue: Int
  var fValue: Int
  var cValue: Int
  var pValue: Int
}

struct PersonalityType {
  let ee: (type: String, description: String) = ("Very extroverted (E+)", "You have a tendency for extraversion. This means you gain your energy from action and interaction: your likely sequence is to act, then reflect, then act further. Too much time spent passively in a reflective or contemplative mode is wearing you down. Your energy flow directs towards people and objects. . You learn best by talking and interacting with others, this way you can process and make sense of new information. You find it difficult sometimes to stay put and wait for others while the world is passing by.")
  let e: (type: String, description: String) = ("Extroverted (E)", "You have a tendency for extraversion. This means you gain your energy from action and interaction: your likely sequence is to act, then reflect, then act further. Too much time spent passively in a reflective or contemplative mode is wearing you down. Your energy flow directs towards people and objects. . You learn best by talking and interacting with others, this way you can process and make sense of new information. You find it difficult sometimes to stay put and wait for others while the world is passing by.")
  let ii = "Very introverted"
  let i = "Introverted"
  let ss = "A lover of details"
  let s = "More detail-oriented"
  let nn = "Very intuitive"
  let n = "Intuitive"
  let tt = "A true thinker"
  let t = "A thinker"
  let ff = "An empathy champion"
  let f = "Empathic"
  let cc = "Best in execution"
  let c = "A planner"
  let pp = "Pushing the boundaries!"
  let p = "An explorer"
}

func initializeQuestions() -> [Question] {
  var allQuestions: [Question] = []
  allQuestions.append(Question(type: "E", text: "I really enjoy it when things are constantly changing."))
  allQuestions.append(Question(type: "E", text: "I very much like trying out new ways of doing things."))
  allQuestions.append(Question(type: "E", text: "I have many friends and acquaintances."))
  allQuestions.append(Question(type: "E", text: "I am energized by being with people."))
  allQuestions.append(Question(type: "E", text: "I enjoy meeting friends."))
  allQuestions.append(Question(type: "I", text: "I really enjoy it when I can get to know one thing/person really, really well."))
  allQuestions.append(Question(type: "I", text: "I very much like contemplating my own observations."))
  allQuestions.append(Question(type: "I", text: "I like having just a few close relationships."))
  allQuestions.append(Question(type: "I", text: "Being with people drains me."))
  allQuestions.append(Question(type: "I", text: "I enjoy solving problems on my own."))
  allQuestions.append(Question(type: "S", text: "I really enjoy getting things done as and when they arise."))
  allQuestions.append(Question(type: "S", text: "I really enjoy accomplishing immediate tasks."))
  allQuestions.append(Question(type: "S", text: "I very much like doing practical things that have a tangible result."))
  allQuestions.append(Question(type: "S", text: "People irritate me when they think so much about the future that today's tasks are left undone."))
  allQuestions.append(Question(type: "S", text: "People irritate me when they start new, experimental initiatives."))
  allQuestions.append(Question(type: "S", text: "I am a realistic person."))
  allQuestions.append(Question(type: "S", text: "I enjoy seeing the tangible results of my efforts."))
  allQuestions.append(Question(type: "S", text: "I enjoy working towards a better future."))
  allQuestions.append(Question(type: "S", text: "Getting life's day to day tasks done is what matters most."))
  allQuestions.append(Question(type: "S", text: "I like to keep to a schedule."))
  allQuestions.append(Question(type: "N", text: "I really enjoy dreaming up imaginative ideas."))
  allQuestions.append(Question(type: "N", text: "I really enjoy thinking about the unfathomable."))
  allQuestions.append(Question(type: "N", text: "I very much like thinking about what is in the unknown."))
  allQuestions.append(Question(type: "N", text: "People irritate me when they invest effort in something that will soon be obsolete."))
  allQuestions.append(Question(type: "N", text: "People irritate me when they make notes of every detail."))
  allQuestions.append(Question(type: "N", text: "I feel very satisfied by imagining a radical vision of the future."))
  allQuestions.append(Question(type: "N", text: "I enjoy closing my eyes and contemplating whatever images and thoughts come to mind."))
  allQuestions.append(Question(type: "N", text: "I enjoy thinking about the past."))
  allQuestions.append(Question(type: "N", text: "Knowing where you are going in the long term is what matters most."))
  allQuestions.append(Question(type: "N", text: "I tend to notice what is going on behind the surface."))
  allQuestions.append(Question(type: "T", text: "I really like finding logical flaws in theories or explanations."))
  allQuestions.append(Question(type: "T", text: "I get annoyed if people won't compromise over their private convictions."))
  allQuestions.append(Question(type: "T", text: "I very much like forming my own rationale of why things happen."))
  allQuestions.append(Question(type: "T", text: "Justice is more important than mercy."))
  allQuestions.append(Question(type: "T", text: "I really enjoy a theory when it is true and correct."))
  allQuestions.append(Question(type: "T", text: "I feel satisfied when others follow the correct procedures."))
  allQuestions.append(Question(type: "T", text: "I dislike it when there is chaos around me."))
  allQuestions.append(Question(type: "T", text: "I dislike incoherent theories."))
  allQuestions.append(Question(type: "T", text: "Thinking logically is what matters most."))
  allQuestions.append(Question(type: "T", text: "Having a well-prepared plan is what matters most."))
  allQuestions.append(Question(type: "F", text: "I really like building better relationships between people."))
  allQuestions.append(Question(type: "F", text: "I get annoyed if people insist on following procedures."))
  allQuestions.append(Question(type: "F", text: "I very much like taking care of other people's feelings."))
  allQuestions.append(Question(type: "F", text: "Compassion is my highest ideal."))
  allQuestions.append(Question(type: "F", text: "I really enjoy relationships when there is a lot of rapport."))
  allQuestions.append(Question(type: "F", text: "I feel satisfied when I can adhere to my personal values."))
  allQuestions.append(Question(type: "F", text: "I dislike having to compromise my values."))
  allQuestions.append(Question(type: "F", text: "I dislike conflict between people."))
  allQuestions.append(Question(type: "F", text: "Caring for others is what matters most."))
  allQuestions.append(Question(type: "F", text: "Adhering to one's conscience is what matters most."))
  allQuestions.append(Question(type: "J", text: "I get annoyed if people change things that are already working well."))
  allQuestions.append(Question(type: "J", text: "I am a decisive person."))
  allQuestions.append(Question(type: "J", text: "I enjoy solving crises."))
  allQuestions.append(Question(type: "J", text: "I enjoy flitting from one activity to another."))
  allQuestions.append(Question(type: "J", text: "I dislike ambiguity and lack of clarity in information."))
  allQuestions.append(Question(type: "P", text: "I get annoyed if people want all the facts before trying anything new."))
  allQuestions.append(Question(type: "P", text: "I like to explore and keep an open mind."))
  allQuestions.append(Question(type: "P", text: "I feel satisfied when I'm contemplating the mysterious."))
  allQuestions.append(Question(type: "P", text: "I enjoy gathering lots and lots of information."))
  allQuestions.append(Question(type: "P", text: "I dislike doing the same things again and again."))
  return allQuestions
}

//let pers = PersonalityType.ee
