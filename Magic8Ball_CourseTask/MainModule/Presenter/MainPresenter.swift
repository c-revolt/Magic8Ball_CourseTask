//
//  MainPresenter.swift
//  Magic8Ball_CourseTask
//
//  Created by Александр Прайд on 31.10.2022.
//

import UIKit

class MainPresenter: MainPresenterProtocol {
    
    weak var view: MainViewProtocol?
    let model: Answer
    
    required init(view: MainViewProtocol, model: Answer) {
        self.view = view
        self.model = model
    }
    
    func showAnswer() {
        
        let answerArray = [K.ball1, K.ball2, K.ball3, K.ball4, K.ball5]
        
        guard var answer = UIImage(named: self.model.answerString) else { return }
        answer = UIImage(named: answerArray[Int.random(in: 0...4)]) ?? UIImage()
        
        self.view?.setAnswer(answer: answer)
    }
    
    
}

