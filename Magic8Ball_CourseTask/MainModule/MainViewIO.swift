//
//  MainViewIO.swift
//  Magic8Ball_CourseTask
//
//  Created by Александр Прайд on 31.10.2022.
//

import UIKit

protocol MainViewProtocol: AnyObject {
    func setAnswer(answer: UIImage)
    
}

protocol MainPresenterProtocol: AnyObject {
    
    init(view: MainViewProtocol, model: Answer)
    func showAnswer()
}
