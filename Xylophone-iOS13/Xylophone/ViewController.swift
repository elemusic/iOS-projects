import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(soundName: sender.currentTitle!)
         UIView.animate(withDuration: 0.1) {
               sender.alpha = 0.5
           }

           DispatchQueue.main.asyncAfter(deadline: .now() + 0.1 ) {
               UIView.animate(withDuration: 0.1) {
                   sender.alpha = 1.0
               }
        }
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

