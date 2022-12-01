import UIKit
import AVFoundation
import SafariServices

class ViewControllerFunction: UIViewController{

    var sonido: AVAudioPlayer!
    @IBOutlet var imagenFes: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        reproducirSonido(name: "Canto")
    }
    func reproducirSonido(name: String) {
        let url = Bundle.main.url(forResource: name, withExtension: "wav")
        sonido = try! AVAudioPlayer(contentsOf: url!)
        
        sonido.play()
    }

	
    @IBAction func compartir(_ sender: UIButton) {
        guard let imagen = imagenFes.image else{
            return
        }
        
        let controlDeActividades = UIActivityViewController(activityItems: [imagen], applicationActivities: nil)
        controlDeActividades.popoverPresentationController?.sourceView = sender
        present(controlDeActividades, animated: true, completion: nil)
    }
    
    @IBAction func safari(_ sender: Any) {
        if let url = URL(string :  "http://www.aire.cdmx.gob.mx/default.php"){
            let controladorDeSafari = SFSafariViewController(url: url)
            present(controladorDeSafari, animated: true, completion: nil)
        }
    }
}
