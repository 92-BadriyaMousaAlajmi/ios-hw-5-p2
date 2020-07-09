//
//  MovieDetailsVC.swift
//  ios-hw-5-p2
//
//  Created by بدرية موسى العجمي on 7/9/20.
//  Copyright © 2020 Moon. All rights reserved.
//

import UIKit
import AVFoundation

class MovieDetailsVC: UIViewController {
    
    var movieData : movies!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playMusic(musicName: movieData.movieName, type: "mp3")
        configureUI()
        setMovieDetails()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var MovieName: UINavigationItem!
    @IBOutlet weak var ActorsImage: UIImageView!
    @IBOutlet weak var ActorsName1: UILabel!
    @IBOutlet weak var ActorsImage2: UIImageView!
    
    @IBOutlet weak var ActorsName2: UILabel!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var rating: UILabel!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var rated: UILabel!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var movieReleaseDate: UILabel!
    @IBOutlet weak var MovieImage: UIImageView!
    
    
    
     func setMovieDetails(){
          
        MovieName.title = movieData.movieName
        self.MovieImage.image = UIImage(named: movieData.movieName)
        self.rated.text = movieData.rated
        self.rating.text = String(movieData.rating)
        self.MovieImage.image = UIImage(named: movieData.movieName)
        self.movieReleaseDate.text = String(movieData.movieReleaseDate)
        
        self.ActorsImage.image = UIImage(named: movieData.actors[0])
        self.ActorsName1.text = movieData.actors[0]
        self.ActorsImage2.image = UIImage(named: movieData.actors[1])
        self.ActorsName2.text = movieData.actors[1]

        }
        
        func configureUI(){
            rated.layer.cornerRadius = 20
            rating.layer.cornerRadius = 20
            movieReleaseDate.layer.cornerRadius = 20
        }
    var themeSong: AVAudioPlayer = AVAudioPlayer()
        func playMusic(musicName: String, type: String, loop: Int = 0)
        {
            let AssortedMusics = URL(fileURLWithPath: Bundle.main.path(forResource: musicName, ofType: type)!)
            themeSong = try! AVAudioPlayer(contentsOf: AssortedMusics)
            themeSong.prepareToPlay()
            themeSong.numberOfLoops = loop
            themeSong.volume = 0.5
            themeSong.play()
        }


    }

