import UIKit
import AVFoundation

class ViewController: UIViewController {

    var sonido: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        reproducirSonido(name: "Trafico")
        
    }
    
    func reproducirSonido(name: String) {
        let url = Bundle.main.url(forResource: name, withExtension: "wav")
        sonido = try! AVAudioPlayer(contentsOf: url!)
        
        sonido.play()
    }

}

