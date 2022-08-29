//
//  HeroDescriptionList.swift
//  Images_Practice
//
//  Created by Consultant on 8/28/22.
//

import Foundation
import UIKit

class HeroDescriptionList: UIViewController{
    var img: UIImage!
    var name: String = ""
    @IBOutlet weak var heroImage: UIImageView!
    @IBOutlet weak var heroDescription: UILabel!
    let heroDescriptionText: [String: String] = [
        "Barbarian": "The barbarian is an excellent warrior. Where the fighter's skill in combat comes from training and discipline, however, the barbarian has a powerful rage. While in this berserk fury, he becomes stronger and tougher, better able to defeat his foes and withstand their attacks. These rages leave him winded, and he has the energy for only a few such spectacular displays per day, but those few rages are usually sufficient. He is at home in the wild, and he runs at great speed.",
        "Bard": "It is said that music has a special magic, and the bard proves that saying true. Wandering across the land, gathering lore, telling stories, working magic with his music, and living on the gratitude of his audience - such is the life of a bard. When chance or opportunity draws them into a conflict, bards serve as diplomats, negotiators, messengers, scouts, and spies.",
        "Cleric": "The handiwork of the gods is everywhere - in places of natural beauty, in mighty crusades, in soaring temples, and in the hearts of worshipers. Like people, gods run the gamut from benevolent to malicious, reserved to intrusive, simple to inscrutable. The gods, however, work mostly through intermediaries - their clerics. Good clerics heal, protect, and avenge. Evil clerics pillage, destroy, and sabotage. A cleric uses the power of his god to make his god's will manifest. And if a cleric uses his god's power to improve his own lot, that's to be expected, too.",
        "Fighter": "The questing knight, the conquering overlord, the king's champion, the elite foot soldier, the hardened mercenary, and the bandit king - all are fighters. Fighters can be stalwart defenders of those in need, cruel marauders, or gutsy adventurers. Some are among the land's best souls, willing to face death for the greater good. Others are among the worst, with no qualms about killing for private gain, or even for sport. Fighters who are not actively adventuring may be soldiers, guards, bodyguards, champions, or criminal enforcers. An adventuring fighter might call himself a warrior, a mercenary, a thug, or simply an adventurer.",
        "Paladin": "The compassion to pursue good, the will to uphold law, and the power to defeat evil - these are the three weapons of the paladin. Few have the purity and devotion that it takes to walk the paladin's path, but those few are rewarded with the power to protect, to heal, and to smite. In a land of scheming wizards, unholy priests, bloodthirsty dragons, and infernal fiends, the paladin is the final hope that cannot be extinguished.",
        "Ranger": "The forests are home to fierce and cunning creatures, such as bloodthirsty owlbears and malicious displacer beasts. But more cunning and powerful than these monsters is the ranger, a skilled hunter and stalker. He knows the woods as if they were his home (as indeed they are), and he knows his prey in deadly detail.",
        "Rogue":"Rogues share little in common with each other. Some are stealthy thieves. Others are silver-tongued tricksters. Still others are scouts, infiltrators, spies, diplomats, or thugs. What they share is versatility, adaptability, and resourcefulness. In general, rogues are skilled at getting what others don't want them to get: entrance into a locked treasure vault, safe passage past a deadly trap, secret battle plans, a guard's trust, or some random person's pocket money.",
        "Sorcerer": "Sorcerers create magic the way a poet creates poems, with inborn talent honed by practice. They have no books, no mentors, no theories - just raw power that they direct at will. Some sorcerers claim that the blood of dragons courses through their veins. That claim may even be true in some cases - it is common knowledge that certain powerful dragons can take humanoid form and even have humanoid lovers, and it's difficult to prove that a given sorcerer does not have a dragon ancestor.",
        "Wizard": "A few unintelligible words and fleeting gestures carry more power than a battleaxe, when they are the words and gestures of a wizard. These simple acts make magic seem easy, but they only hint at the time the wizard must spend poring over her spellbook preparing each spell for casting, and the years before that spent in apprenticeship to learn the arts of magic."
    ]
    
    override func viewDidLoad() {
        print(name)
        
        heroImage?.image = img
        heroDescription?.text = heroDescriptionText[name]!
        super.viewDidLoad()
    }
}
