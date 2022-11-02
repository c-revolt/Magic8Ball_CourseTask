//
//  MainPresentetTest.swift
//  Magic8Ball_CourseTaskTests
//
//  Created by Александр Прайд on 31.10.2022.
//

import XCTest
@testable import Magic8Ball_CourseTask

class MockView: MainViewProtocol {
    
    var answerImageTest: UIImage?
    
    func setAnswer(answer: UIImage) {
        self.answerImageTest = answer
    }
    
    
}

final class MainPresentetTest: XCTestCase {
    
    var view: MockView!
    var model: Answer!
    var presenter: MainPresenter!

    override func setUpWithError() throws {
        view = MockView()
        model = Answer(answerString: "_ball5")
        presenter = MainPresenter(view: view, model: model)
    }

    override func tearDownWithError() throws {
        view = nil
        model = nil
        presenter = nil
    }

   
    func testModuleNotNil() {
        XCTAssertNotNil(view, ">>> view is not nil")
        XCTAssertNotNil(model, ">>> model is not nil")
        XCTAssertNotNil(presenter, ">>> presenter is not nil")
    }
    
    func testView() {
        presenter.showAnswer()
        
        XCTAssertEqual(view.answerImageTest, UIImage(named: "_ball5"))
    }

}
