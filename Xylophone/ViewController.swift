

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: Any) {
        animateButton(sender as! UIButton)
        playSound("C")
        hapticFeedback()
    }
    
    @IBAction func keyPressed2(_ sender: Any) {
        animateButton(sender as! UIButton)
        playSound("D")
        hapticFeedback()
    }
    
    @IBAction func keyPressedE(_ sender: Any) {
        animateButton(sender as! UIButton)
        playSound("E")
        hapticFeedback()
    }
    
    @IBAction func keyPressedF(_ sender: Any) {
        animateButton(sender as! UIButton)
        playSound("F")
        hapticFeedback()
    }
    
    @IBAction func keyPressedG(_ sender: Any) {
        animateButton(sender as! UIButton)
        playSound("G")
        hapticFeedback()
    }
    
    @IBAction func keyPressedA(_ sender: Any) {
        animateButton(sender as! UIButton)
        hapticFeedback()
        playSound("A")
    }
    
    @IBAction func keyPressedB(_ sender: Any) {
        animateButton(sender as! UIButton)
        playSound("B")
        hapticFeedback()
    }
    
    
    func playSound(_ soundName: String) {
        if let url = Bundle.main.url(forResource: soundName, withExtension: "wav") {
            do {
                player = try AVAudioPlayer(contentsOf: url)
                player?.play()
            } catch {
                print("Error playing sound")
            }
        }
    } // so this is my music one fun
    
    func animateButton(_ button: UIButton) {
        UIView.animate(withDuration: 0.1,
                       animations: {
            button.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
        }) { _ in
            UIView.animate(withDuration: 0.1) {
                button.transform = .identity
            }
        }
    }
    func hapticFeedback() {
        let generator = UIImpactFeedbackGenerator(style: .light)
        generator.impactOccurred()
    }
    
    

}

