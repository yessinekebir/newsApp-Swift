//
//  ViewController.swift
//  ilGiornale
//
//  Created by Yessine Kebir on 09/06/18.
//  Copyright © 2018 YSN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Labels + IMG View
    
    @IBOutlet weak var newsTitle: UILabel!
    @IBOutlet weak var imageNews: UIImageView!
    @IBOutlet weak var author: UILabel!
    @IBOutlet weak var cityOfNews: UILabel!
    
    // Buttons (Leggi + Genera)
    @IBOutlet weak var readOnNextPage: UIButton!
    @IBOutlet weak var randomNewsBtn: UIButton!
    
    var selfNews : News!
    var listOfNews : [News] = []
    
    // methods
    func populateListOfNews(){
        let firstNewsRome : News = News.init(title: "Attentato Piazza del popolo", author: "Autore X", city: "Roma", imageLink: "Roma", contentDescription: "Terrorismo: la rete di Anis Amri progettava un attentato sulla metro B di Roma un attentato alla Metro di Roma. Questo lo scenario indicato agli investigatori della Digos da Yakoubi Montassar, cittadino tunisino che frequentava il centro islamico di via Chiascio a Latina prima della partenza di Anis Amrì per la Germania, dove il 19 dicembre del 2016 piombò sulla folla a bordo di un tir provocando la morte di 12 persone e 56 feriti. Il possibile attentato alla stazione Laurentina della Metro B viene raccontato sulle pagine di Repubblica da Carlo Bonini e Fabio Tonaci. L'attentatore di Berlino venne poi ucciso tre giorni dopo nel corso di un conflitto a fuoco con la polizia a Sesto San Giovanni nel milanese.")
        let secondNewsCatania : News = News.init(title: "Catania +35°", author: "Autore Y", city: "Catania", imageLink: "Catania",contentDescription: "Sarà un weekend di sole e temperature estive in quasi tutta l'Italia, con massime fino a 32 gradi: caldo previsto anche in Sicilia. Ma da lunedì sera tornerà il maltempo e sarà altalena per il meteo almeno fino al 20 del mese.La previsione è di Francesco Nucera, meteorologo di 3bmeteo.com, che sottolinea come da domani ci sarà un graduale ritorno alla stabilità, con la perturbazione intensa che ha colpito il Centronord Italia che tenderà ad attenuarsi.Arriverà da ovest - spiega - un promontorio anticiclonico che domani porterà bel tempo. E' prevista residua instabilità sul basso versante tirrenico (Campania, Calabria e Sicilia) ed è possibile qualche acquazzone anche sulla dorsale appenninica centrale, sulle Alpi e prealpi orientali e sulle Marche.")
        let thirdNewsMilano : News = News.init(title: "Sciopero dei mezzi", author: "Autore Z", city: "Milano", imageLink: "Milano", contentDescription: "Scioper dei mezzi a Milano xxx xxx xxx xxx xxx DESCRIPTION xxx xxx xxx xxx xxx")
        let fourthNewsLondon : News = News.init(title: "Matrimonio reale", author: "Anonimo", city: "London", imageLink: "London", contentDescription: "Matrimonio reale in Inghilterra xxx xxx xxx xxx xxx DESCRIPTION xxx xxx xxx xxx xxx")
        let fivethNewsManchester : News = News.init(title: "Finale Champions League", author: "Autore A", city: "Manchester", imageLink: "Manchester",contentDescription: "Finale Champions League ! Il Manchester vince un altra coppa xxx xxx xxx xxx xxx DESCRIPTION xxx xxx xxx xxx xxx")
        
        self.listOfNews = [firstNewsRome,secondNewsCatania,thirdNewsMilano,fourthNewsLondon,fivethNewsManchester]
    }
    
    @IBAction func generateNews(_ sender: Any) {
        if self.listOfNews.count > 0 {
            let tempNews = listOfNews.random()
            self.selfNews = tempNews
            self.newsTitle.text = tempNews.title
            self.author.text = tempNews.author
            self.cityOfNews.text = tempNews.city
            self.imageNews.image = UIImage.init(named: tempNews.imageLink!)
        }
    }
    
    @IBAction func readDescription(_ sender: UIButton) {
        performSegue(withIdentifier: "newsDescription", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? newsDescription {
           destination.newsDescription = selfNews.contentDescription
        }
    }
    
    
    /////
    override func viewDidLoad() {
        super.viewDidLoad()
        self.populateListOfNews()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

