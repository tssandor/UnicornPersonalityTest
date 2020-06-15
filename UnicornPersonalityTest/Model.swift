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

enum AnswerForQuestionIs {
  case stronglyAgree
  case agree
  case disagree
  case stronglyDisagree
}

struct PersonalityValues {
  var eValue: Int
  var iValue: Int
  var sValue: Int
  var nValue: Int
  var tValue: Int
  var fValue: Int
  var jValue: Int
  var pValue: Int
}

enum ElementsOfPersonalityType {
  case ee
  case e
  case ii
  case i
  case ss
  case s
  case nn
  case n
  case tt
  case t
  case ff
  case f
  case jj
  case j
  case pp
  case p
}

struct DescriptionOfPersonalityTypeElements {
  var shortDescription: String
  var longDescription: String
  var recommendation: String
}

struct PersonalityType {
  var E_or_I: ElementsOfPersonalityType
  var S_or_N: ElementsOfPersonalityType
  var T_or_F: ElementsOfPersonalityType
  var J_or_P: ElementsOfPersonalityType
}

var allQuestions: [Question] = [
  Question(type: "E", text: "I really enjoy it when things are constantly changing."),
  Question(type: "E", text: "I very much like trying out new ways of doing things."),
  Question(type: "E", text: "I really enjoy it when things are constantly changing."),
  Question(type: "E", text: "I very much like trying out new ways of doing things."),
  Question(type: "E", text: "I have many friends and acquaintances."),
  Question(type: "E", text: "I am energized by being with people."),
  Question(type: "E", text: "I enjoy meeting friends."),
  Question(type: "I", text: "I really enjoy it when I can get to know one thing/person really, really well."),
  Question(type: "I", text: "I very much like contemplating my own observations."),
  Question(type: "I", text: "I like having just a few close relationships."),
  Question(type: "I", text: "Being with people drains me."),
  Question(type: "I", text: "I enjoy solving problems on my own."),
  Question(type: "S", text: "I really enjoy getting things done as and when they arise."),
  Question(type: "S", text: "I really enjoy accomplishing immediate tasks."),
  Question(type: "S", text: "I very much like doing practical things that have a tangible result."),
  Question(type: "S", text: "People irritate me when they think so much about the future that today's tasks are left undone."),
  Question(type: "S", text: "People irritate me when they start new, experimental initiatives."),
  Question(type: "S", text: "I am a realistic person."),
  Question(type: "S", text: "I enjoy seeing the tangible results of my efforts."),
  Question(type: "S", text: "I enjoy working towards a better future."),
  Question(type: "S", text: "Getting life's day to day tasks done is what matters most."),
  Question(type: "S", text: "I like to keep to a schedule."),
  Question(type: "N", text: "I really enjoy dreaming up imaginative ideas."),
  Question(type: "N", text: "I really enjoy thinking about the unfathomable."),
  Question(type: "N", text: "I very much like thinking about what is in the unknown."),
  Question(type: "N", text: "People irritate me when they invest effort in something that will soon be obsolete."),
  Question(type: "N", text: "People irritate me when they make notes of every detail."),
  Question(type: "N", text: "I feel very satisfied by imagining a radical vision of the future."),
  Question(type: "N", text: "I enjoy closing my eyes and contemplating whatever images and thoughts come to mind."),
  Question(type: "N", text: "I enjoy thinking about the past."),
  Question(type: "N", text: "Knowing where you are going in the long term is what matters most."),
  Question(type: "N", text: "I tend to notice what is going on behind the surface."),
  Question(type: "T", text: "I really like finding logical flaws in theories or explanations."),
  Question(type: "T", text: "I get annoyed if people won't compromise over their private convictions."),
  Question(type: "T", text: "I very much like forming my own rationale of why things happen."),
  Question(type: "T", text: "Justice is more important than mercy."),
  Question(type: "T", text: "I really enjoy a theory when it is true and correct."),
  Question(type: "T", text: "I feel satisfied when others follow the correct procedures."),
  Question(type: "T", text: "I dislike it when there is chaos around me."),
  Question(type: "T", text: "I dislike incoherent theories."),
  Question(type: "T", text: "Thinking logically is what matters most."),
  Question(type: "T", text: "Having a well-prepared plan is what matters most."),
  Question(type: "F", text: "I really like building better relationships between people."),
  Question(type: "F", text: "I get annoyed if people insist on following procedures."),
  Question(type: "F", text: "I very much like taking care of other people's feelings."),
  Question(type: "F", text: "Compassion is my highest ideal."),
  Question(type: "F", text: "I really enjoy relationships when there is a lot of rapport."),
  Question(type: "F", text: "I feel satisfied when I can adhere to my personal values."),
  Question(type: "F", text: "I dislike having to compromise my values."),
  Question(type: "F", text: "I dislike conflict between people."),
  Question(type: "F", text: "Caring for others is what matters most."),
  Question(type: "F", text: "Adhering to one's conscience is what matters most."),
  Question(type: "J", text: "I get annoyed if people change things that are already working well."),
  Question(type: "J", text: "I am a decisive person."),
  Question(type: "J", text: "I enjoy solving crises."),
  Question(type: "J", text: "I enjoy flitting from one activity to another."),
  Question(type: "J", text: "I dislike ambiguity and lack of clarity in information."),
  Question(type: "P", text: "I get annoyed if people want all the facts before trying anything new."),
  Question(type: "P", text: "I like to explore and keep an open mind."),
  Question(type: "P", text: "I feel satisfied when I'm contemplating the mysterious."),
  Question(type: "P", text: "I enjoy gathering lots and lots of information."),
  Question(type: "P", text: "I dislike doing the same things again and again.")
]

var personalityDescriptionsDictionary:[ElementsOfPersonalityType: DescriptionOfPersonalityTypeElements] = [
.ee:DescriptionOfPersonalityTypeElements(
  shortDescription: "Very extroverted",
  longDescription: "You have a tendency for extraversion. This means you gain your energy from action and interaction: your likely sequence is to act, then reflect, then act further. Too much time spent passively in a reflective or contemplative mode is wearing you down. Your energy flow directs towards people and objects. . You learn best by talking and interacting with others, this way you can process and make sense of new information. You find it difficult sometimes to stay put and wait for others while the world is passing by.",
  recommendation: "You have a tendency for extraversion. This means you gain your energy from action and interaction: your likely sequence is to act, then reflect, then act further. Too much time spent passively in a reflective or contemplative mode is wearing you down. Your energy flow directs towards people and objects. . You learn best by talking and interacting with others, this way you can process and make sense of new information. You find it difficult sometimes to stay put and wait for others while the world is passing by."),
.e:DescriptionOfPersonalityTypeElements(
  shortDescription: "Extroverted",
  longDescription: "You have a tendency for extraversion. This means you gain your energy from action and interaction: your likely sequence is to act, then reflect, then act further. Too much time spent passively in a reflective or contemplative mode is wearing you down. Your energy flow directs towards people and objects. . You learn best by talking and interacting with others, this way you can process and make sense of new information. You find it difficult sometimes to stay put and wait for others while the world is passing by.",
  recommendation: "You have a tendency for extraversion. This means you gain your energy from action and interaction: your likely sequence is to act, then reflect, then act further. Too much time spent passively in a reflective or contemplative mode is wearing you down. Your energy flow directs towards people and objects. . You learn best by talking and interacting with others, this way you can process and make sense of new information. You find it difficult sometimes to stay put and wait for others while the world is passing by."),
.ii:DescriptionOfPersonalityTypeElements(
  shortDescription: "Very introverted",
  longDescription: "You have a tendency for introversion. You are most likely to consider all options before you act, then reflect back on results and further develop the next steps mentally before you launch into action again. Your energy flow directs towards concepts and ideas and you prefer quiet reflection and privacy. Information processing occurs through internal exploration. Lots of action and interaction exhaust you and need time spent alone in quite to regain your energy.",
  recommendation: "Encourage yourself to engage in social activities such as sports, communities of practice, public speaking groups. Enjoy the enriching experience of social exchange in debating or workplace discussions. Dont be shy to speak your mind and act according to your ideas and principles. Watch the reactions and you will be suprised!"),
.i:DescriptionOfPersonalityTypeElements(
  shortDescription: "Introverted",
  longDescription: "You have a tendency for introversion. You are most likely to consider all options before you act, then reflect back on results and further develop the next steps mentally before you launch into action again. Your energy flow directs towards concepts and ideas and you prefer quiet reflection and privacy. Information processing occurs through internal exploration. Lots of action and interaction exhaust you and need time spent alone in quite to regain your energy.",
  recommendation: "Encourage yourself to engage in social activities such as sports, communities of practice, public speaking groups. Enjoy the enriching experience of social exchange in debating or workplace discussions. Dont be shy to speak your mind and act according to your ideas and principles. Watch the reactions and you will be suprised!"),
.ss:DescriptionOfPersonalityTypeElements(
  shortDescription: "A lover of details",
  longDescription: "You have a tendency for sensation. It means you are more likely to gain information that is in the present, tangible, and concrete: that is what you can see, hear, touch, smell etc. Details and facts are your best friends. You look for meaning in the data and prefer sequential learning (step by step). It’s hard for you to understand „hidden truth” or statements that you cannot tie back to hard evidence. You are great at designing processes and procedures because you have a great „eye” for details.",
  recommendation: "It’s great that you gather data, but there is more than meets the eye. Use it as a basis for exploring future possibilities. Expand your horizon beyond the present and tangible, discuss your theories with people who could widen your scope of thinking beyond the practical and operational. Get some magazines which analyzes future trends in your area of interest or check out courses of Singularity University."),
.s:DescriptionOfPersonalityTypeElements(
  shortDescription: "Detail-oriented",
  longDescription: "You have a tendency for sensation. It means you are more likely to gain information that is in the present, tangible, and concrete: that is what you can see, hear, touch, smell etc. Details and facts are your best friends. You look for meaning in the data and prefer sequential learning (step by step). It’s hard for you to understand „hidden truth” or statements that you cannot tie back to hard evidence. You are great at designing processes and procedures because you have a great „eye” for details.",
  recommendation: "It’s great that you gather data, but there is more than meets the eye. Use it as a basis for exploring future possibilities. Expand your horizon beyond the present and tangible, discuss your theories with people who could widen your scope of thinking beyond the practical and operational. Get some magazines which analyzes future trends in your area of interest or check out courses of Singularity University."),
.nn:DescriptionOfPersonalityTypeElements(
  shortDescription: "Very intuitive",
  longDescription: "You have a tendency for intuition. This means that you trust information that is more abstract or theoretical, that can be associated with other information (either remembered or discovered by seeking a wider context or pattern). You are future driven, you get excited about new ideas and possibilities, science-fiction, products and systems that do not exist yet. The meaning for you is in the underlying theory and principles which are „hidden” in the data. You have great insights derived from pattern recognition and associations, which comes naturally to you.",
  recommendation: "Look around you and get focused on the present, information in the environment that surrounds you. Test your observation skills by listening, watching, smelling. Discuss your ideas with people who are interested in the practical, operational aspect of thing to help your theories come to life."),
.n:DescriptionOfPersonalityTypeElements(
  shortDescription: "Intuitive",
  longDescription: "You have a tendency for intuition. This means that you trust information that is more abstract or theoretical, that can be associated with other information (either remembered or discovered by seeking a wider context or pattern). You are future driven, you get excited about new ideas and possibilities, science-fiction, products and systems that do not exist yet. The meaning for you is in the underlying theory and principles which are „hidden” in the data. You have great insights derived from pattern recognition and associations, which comes naturally to you.",
  recommendation: "Look around you and get focused on the present, information in the environment that surrounds you. Test your observation skills by listening, watching, smelling. Discuss your ideas with people who are interested in the practical, operational aspect of thing to help your theories come to life."),
.tt:DescriptionOfPersonalityTypeElements(
  shortDescription: "A true thinker",
  longDescription: "You have a tendency for thinking. You tend to decide things from a more detached standpoint, measuring the decision by what seems reasonable, logical, causal, consistent, and matching a given set of rules. You are great at deductive reasoning and creating policies. You sometimes find it hard to interact with people who are inconsistent or illogical, and tend to give very direct feedback to others. It’s because you are concerned with the truth and view it as more important than being tactful.",
  recommendation: "Make effort to realize the impact of your decisions on your environment, on the people surrounding you. Practising empathy is important to help you see the emotional aspects of situations. Optimize your decisions by testing the reactions from the outside. Sometime „being right” is not enough to make a good decision, thus you need to put yourself into the „other people’s shoe” every now and then to have a better picture."),
.t:DescriptionOfPersonalityTypeElements(
  shortDescription: "A thinker",
  longDescription: "You have a tendency for thinking. You tend to decide things from a more detached standpoint, measuring the decision by what seems reasonable, logical, causal, consistent, and matching a given set of rules. You are great at deductive reasoning and creating policies. You sometimes find it hard to interact with people who are inconsistent or illogical, and tend to give very direct feedback to others. It’s because you are concerned with the truth and view it as more important than being tactful.",
  recommendation: "Make effort to realize the impact of your decisions on your environment, on the people surrounding you. Practising empathy is important to help you see the emotional aspects of situations. Optimize your decisions by testing the reactions from the outside. Sometime „being right” is not enough to make a good decision, thus you need to put yourself into the „other people’s shoe” every now and then to have a better picture."),
.ff:DescriptionOfPersonalityTypeElements(
  shortDescription: "An empathy champion",
  longDescription: "You have a tendency for feeling. You tend to come to decisions by associating or empathizing with the situation, looking at it 'from the inside' and weighing the situation to achieve, on balance, the greatest harmony, consensus and fit, considering the needs of the people involved. You are likely to connect with issues and causes where the humane aspect is important. You are a great listener and able to absorb the other’s perspective or rationale very easily. Thus, people like to turn to you to share their ideas or concerns.",
  recommendation: "You cannot satisfy everyone at the same time. Accept that usually there is no single option that would fit everyone’s interest perfectly. Make a choice along your priorities, you don’t need to discuss every decision with other people. It’s okay to go with your logic or intuition and deciding on what is the best in your opinion. You can let the people deal with the rest as they are capable of doing that even if you think the opposite."),
.f:DescriptionOfPersonalityTypeElements(
  shortDescription:"Empathetic",
  longDescription: "You have a tendency for feeling. You tend to come to decisions by associating or empathizing with the situation, looking at it 'from the inside' and weighing the situation to achieve, on balance, the greatest harmony, consensus and fit, considering the needs of the people involved. You are likely to connect with issues and causes where the humane aspect is important. You are a great listener and able to absorb the other’s perspective or rationale very easily. Thus, people like to turn to you to share their ideas or concerns.",
  recommendation: "You cannot satisfy everyone at the same time. Accept that usually there is no single option that would fit everyone’s interest perfectly. Make a choice along your priorities, you don’t need to discuss every decision with other people. It’s okay to go with your logic or intuition and deciding on what is the best in your opinion. You can let the people deal with the rest as they are capable of doing that even if you think the opposite."),
.jj:DescriptionOfPersonalityTypeElements(
  shortDescription: "Best in execution",
  longDescription: "You have a tendency for executing. This means you thrive when information is organized and structured, and you will be motivated to complete assignments to gain closure. You prefer to plan things ahead, you get confused or upset by spontaneous and unpredictable behaviour of people because they divert your planning. You do not need a lot of information to make a decision that you stick to, therefore people can rely on you keeping your word.",
  recommendation: "Go spontaneous. Do not stick to a plan that does not work anymore, just because you made it. Circumstances change, therefore you need to learn how to adapt to new situations, even if it feel unconfortable at first. Don’t worry, things will work out without you trying to control everything. How about going on a random hitch hiking tour?"),
.j:DescriptionOfPersonalityTypeElements(
  shortDescription: "A planner",
  longDescription: "You have a tendency for executing. This means you thrive when information is organized and structured, and you will be motivated to complete assignments to gain closure. You prefer to plan things ahead, you get confused or upset by spontaneous and unpredictable behaviour of people because they divert your planning. You do not need a lot of information to make a decision that you stick to, therefore people can rely on you keeping your word.",
  recommendation: "Go spontaneous. Do not stick to a plan that does not work anymore, just because you made it. Circumstances change, therefore you need to learn how to adapt to new situations, even if it feel unconfortable at first. Don’t worry, things will work out without you trying to control everything. How about going on a random hitch hiking tour?"),
.pp:DescriptionOfPersonalityTypeElements(
  shortDescription: "Pushing the boundaries!",
  longDescription: "You have a tendency for exploring. You are likely to flourish in a flexible environment in which you are stimulated by new and exciting ideas. You are driven by change and can take your environment through it. On the other hand, you dislike long processes which needs to be planned and followed through. You get bored and find it painful to go „step by step”. You are likely to be behind schedule, however, time pressure is your friend and helps you deliver results meeting the deadline. You enjoy exploring as many options as possible before making up your mind and finally making a decision.",
  recommendation: "Your time is precious, so to maximize your experience you will need to improve your time management skills. Get a diary, a good time-keeping app to structure your day and week. Make small plans and test yourself sticking to them. You will find your self-confidence and self-efficacy increasing, and the bad feeling of always being late will deminish."),
.p:DescriptionOfPersonalityTypeElements(
  shortDescription: "An explorer",
  longDescription: "You have a tendency for exploring. You are likely to flourish in a flexible environment in which you are stimulated by new and exciting ideas. You are driven by change and can take your environment through it. On the other hand, you dislike long processes which needs to be planned and followed through. You get bored and find it painful to go „step by step”. You are likely to be behind schedule, however, time pressure is your friend and helps you deliver results meeting the deadline. You enjoy exploring as many options as possible before making up your mind and finally making a decision.",
  recommendation: "Your time is precious, so to maximize your experience you will need to improve your time management skills. Get a diary, a good time-keeping app to structure your day and week. Make small plans and test yourself sticking to them. You will find your self-confidence and self-efficacy increasing, and the bad feeling of always being late will deminish.")
]
