import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer?

    @IBAction func keyPressed(_ sender: UIButton) {
        animateButton(sender)
        hapticFeedback()

        if let note = sender.currentTitle {
            playSound(note)
        }
    }

    func playSound(_ soundName: String) {
        if let url = Bundle.main.url(forResource: soundName, withExtension: "wav") {
            player = try? AVAudioPlayer(contentsOf: url)
            player?.play()
        }
    }

    func animateButton(_ button: UIButton) {
        UIView.animate(withDuration: 0.1, animations: {
            button.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
        }) { _ in
            button.transform = .identity
        }
    }

    func hapticFeedback() {
        UIImpactFeedbackGenerator(style: .light).impactOccurred()
    }
}
