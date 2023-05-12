//
//  RockPaperScissors.swift
//  Milestone-Projects1-3
//
// Created by Ashni Croospulle on 2023-05-11
//

import Foundation

enum Gesture: CaseIterable {
    case rock
    case paper
    case scissors
}

enum Goal: CaseIterable {
    case win
    case lose
}

struct RockPaperScissors {
    var gesture: Gesture = Gesture.allCases.randomElement()!
    var goal = Goal.allCases.randomElement()!

    func isCorrect(guess: Gesture) -> Bool {
        switch goal {
        case .win:
            return isWinner(guess, over: gesture)
        case .lose:
            return isWinner(gesture, over: guess)
        }
    }

    private func isWinner(_ shouldWin: Gesture, over shouldLose: Gesture) -> Bool {
        switch shouldWin {
        case .rock:
            return shouldLose == .scissors
        case .paper:
            return shouldLose == .rock
        case .scissors:
            return shouldLose == .paper
        }
    }
}
