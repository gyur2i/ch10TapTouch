//
//  ViewController.swift
//  chTapTouch
//
//  Created by 김규리 on 2022/01/27.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var txtMessage: UILabel!
    @IBOutlet var txtTapCount: UILabel!
    @IBOutlet var txtTouchCount: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // 터치가 시작될 때 호출
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first! as UITouch // 현재 발생한 터치 이벤트를 가져옴
        txtMessage.text = "Touchs Began" // 현재 발생한 이벤트의 종류를 출력
        txtTapCount.text = String(touch.tapCount) // 터치의 개수 출력
        txtTouchCount.text = String(touches.count) // 첫 번째 객체에서 탭의 개수
    }
    
    // 터치된 손가락이 움직였을 때 호출
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first! as UITouch // 현재 발생한 터치 이벤트를 가져옴
        txtMessage.text = "Touchs Moved" // 현재 발생한 이벤트의 종류를 출력
        txtTapCount.text = String(touch.tapCount) // 터치의 개수 출력
        txtTouchCount.text = String(touches.count) // 첫 번째 객체에서 탭의 개수
    }
    
    // 화면에서 손가락을 떼었을 때 호출
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first! as UITouch // 현재 발생한 터치 이벤트를 가져옴
        txtMessage.text = "Touchs Ended" // 현재 발생한 이벤트의 종류를 출력
        txtTapCount.text = String(touch.tapCount) // 터치의 개수 출력
        txtTouchCount.text = String(touches.count) // 첫 번째 객체에서 탭의 개수
    }

}

