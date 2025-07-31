//
//  ChapterData.swift
//  RootZ
//
//  Created by Mounir Emahoten on 18/07/2025.
//

import Foundation

struct ChapterData {
    
    
    static let berbereChapters: [Chapters] = [
        Chapters(
            nbChap: 1,
            title: "Les Symboles de ma culture",
            description: "Connaître les symboles emblématiques de son héritage",
            isUnlocked: true,
            progression: 1,                                                                                                        
            modules: [
                Module(
                    title: "Le Drapeau",
                    icon: "flag.fill",
                    isUnlocked: true,
                    color: "ButtonAfrique",
                    modulesPages: [
                        ModulePage(
                            title: "Introduction",
                            content: "Ce drapeau ne représente pas un pays, mais un peuple. Il est le symbole d'une culture millénaire partagée à travers l'Afrique du Nord. Prêt à en découvrir le sens ?",
                            mascott: "happy_lion",
                            image: "Berber_flag"
                        ),
                        ModulePage(
                            title: "Les Couleurs",
                            content: "Chaque couleur du drapeau a une signification. Le rouge symbolise la force, le vert l'espoir, et le jaune la richesse de la terre.",
                            mascott: "happy_lion",
                            image: "berber_color"
                        ),
                        ModulePage(
                            title: "Le Symbole",
                            content: "Au centre, la lettre Yaz de l’alphabet Tifinagh, qui est l’alphabet berbère symbolise l’homme libre.",
                            mascott: "happy_lion",
                            image: "Yaz_Letter"
                        ),
                        ModulePage(
                            title: "À Retenir",
                            content: "Le drapeau n'est pas qu'une simple bannière : il raconte une histoire. Apprends à l’observer avec attention.",
                            mascott: "Lion1",
                            image: nil
                        )
                    ],
                    type: .content,
                    quiz: nil,
                    isFinish: true
                ),
                Module(
                    title: "Les Emblèmes",
                    icon: "star.fill",
                    isUnlocked: false,
                    color: "ButtonAfrique",
                    modulesPages: [
                        ModulePage(
                            title: "Introduction aux Emblèmes",
                            content: "Les emblèmes sont des objets ou symboles culturels porteurs de sens spirituel, social ou historique.",
                            mascott: "happy_lion",
                            image: "livre"
                        ),
                        ModulePage(
                            title: "La Khamsa",
                            content: "Main protectrice, elle symbolise la chance et la protection contre le mauvais œil.",
                            mascott: "happy_lion",
                            image: "khamsa"
                        ),
                        ModulePage(
                            title: "Les Instruments",
                            content: "Tambours, flûtes et instruments à corde sont utilisés lors de cérémonies et rituels traditionnels.",
                            mascott: "happy_lion",
                            image: "flute"
                        ),
                        ModulePage(
                            title: "Objets et Tissus",
                            content: "Certains tissus colorés ou objets artisanaux sont considérés comme sacrés ou représentatifs de l'identité locale.",
                            mascott: "happy_lion",
                            image: "tissu"
                        )
                    ],
                    type: .content,
                    quiz: nil,
                    isFinish: false
                ),
                Module(
                        title: "Quiz Intermédiaire",
                        icon: "questionmark.circle.fill",
                        isUnlocked: false,
                        color: "ButtonAfrique",
                        modulesPages: [
                            ModulePage(
                                title: "Petit Quiz !",
                                content: "Quel symbole protège du mauvais œil ?",
                                mascott: "Lion1",
                                image: nil
                            )
                        ],
                        type: .quiz,
                        quiz: [
                            QuizQuestion(
                                question: "Quel symbole protège du mauvais œil ?",
                                answers: ["Le lion", "La khamsa", "Le drapeau", "Le tambour"],
                                correctAnswerIndex: 1
                            ),
                            QuizQuestion(
                                question: "Que représente la lettre Yaz ?",
                                answers: ["L’amour", "La liberté", "Le désert", "La richesse"],
                                correctAnswerIndex: 1
                            ),
                            QuizQuestion(
                                question: "De quelle couleur est la richesse de la terre ?",
                                answers: ["Rouge", "Vert", "Jaune", "Bleu"],
                                correctAnswerIndex: 2
                            )
                        ],
                        isFinish: false
                    ),
                Module(
                    title: "Les Proverbes",
                    icon: "staroflife.fill",
                    isUnlocked: false,
                    color: "ButtonAfrique",
                    modulesPages: [
                        ModulePage(
                            title: "Rôle des Proverbes",
                            content: "Les proverbes transmettent sagesse, valeurs et humour populaire entre les générations.",
                            mascott: "Lion3",
                            image: nil
                        ),
                        ModulePage(
                            title: "Exemples et Signification",
                            content: "“Qui veut voyager loin ménage sa monture” : la patience est la clé de la réussite.",
                            mascott: "Lion1",
                            image: nil
                        ),
                        ModulePage(
                            title: "Contextes d’utilisation",
                            content: "Les anciens utilisent ces phrases lors de discussions pour enseigner une leçon de vie.",
                            mascott: "Lion2",
                            image: "village_anciens"
                        )
                    ],
                    type: .content,
                    quiz: nil,
                    isFinish: false
                ),
                Module(
                    title: "Les Célèbrations",
                    icon: "cloud.fill",
                    isUnlocked: false,
                    color: "ButtonAfrique",
                    modulesPages: [
                        ModulePage(
                            title: "Moments de Fête",
                            content: "Les fêtes marquent des événements religieux, saisonniers ou sociaux, et rassemblent les communautés.",
                            mascott: "Lion1",
                            image: "fete_locale"
                        ),
                        ModulePage(
                            title: "Cérémonies Symboliques",
                            content: "Mariages, naissances ou semailles : chaque étape de la vie est célébrée avec des rituels riches en symboles.",
                            mascott: "Lion2",
                            image: "rituel_mariage"
                        ),
                        ModulePage(
                            title: "Danse & Musique",
                            content: "Les célébrations s’accompagnent de danses, de chants, et de musiques transmises depuis des générations.",
                            mascott: "Lion3",
                            image: "danse_traditionnelle"
                        )
                    ],
                    type: .content,
                    quiz: nil,
                    isFinish: false
                ),
                Module(
                    title: "Le Drapeau",
                    icon: "moon.fill",
                    isUnlocked: false,
                    color: "ButtonAfrique",
                    modulesPages: [
                        ModulePage(
                            title: "Quiz Final",
                            content: "Prêt à tester tes connaissances sur les symboles, les proverbes et les fêtes ?",
                            mascott: "Lion1",
                            image: "quiz_icon"
                        ),
                        ModulePage(
                            title: "Badge à Gagner",
                            content: "Réussis le quiz pour débloquer un badge exclusif représentant la culture étudiée.",
                            mascott: "Lion2",
                            image: "badge_reward"
                        )
                    ],
                    type: .content,
                    quiz: nil,
                    isFinish: false
                )
                
                
            ]
        ),
        Chapters(
            nbChap: 2,
            title: "Les Rituels du quotidien",
            description: "Apprendre les gestes, habitudes et coutumes",
            isUnlocked: false,
            progression: 0.2,
            modules: [
                Module(
                    title: "Le Drapeau",
                    icon: "flag.fill",
                    isUnlocked: false,
                    color: "ButtonAfrique",
                    modulesPages: [
                        ModulePage(
                            title: "L'Importance des Salutations",
                            content: "Saluer est une marque de respect essentielle dans les traditions orales. Le ton, le regard et le geste comptent.",
                            mascott: "Lion1",
                            image: "salutation_main"
                        ),
                        ModulePage(
                            title: "Gestes de Respect",
                            content: "Incliner légèrement la tête, poser la main sur le cœur ou embrasser la main sont des gestes fréquents.",
                            mascott: "Lion2",
                            image: "gestes_respect"
                        ),
                        ModulePage(
                            title: "Quand et Comment Saluer",
                            content: "Le moment de la journée, l'âge de la personne et la situation sociale influencent la façon de saluer.",
                            mascott: "Lion3",
                            image: nil
                        )
                    ],
                    type: .content,
                    quiz: nil,
                    isFinish: false
                ),
                Module(
                    title: "Le Drapeau",
                    icon: "flag.fill",
                    isUnlocked: false,
                    color: "ButtonAfrique",
                    modulesPages: [
                        ModulePage(
                            title: "La Tradition de l’Hospitalité",
                            content: "Accueillir chaleureusement est une valeur fondamentale, que l'on offre le thé ou un sourire.",
                            mascott: "Lion2",
                            image: "hospitalite"
                        ),
                        ModulePage(
                            title: "Offrir le Thé",
                            content: "Le service du thé suit un rituel précis : présentation, versement en hauteur, et partage symbolique.",
                            mascott: "Lion1",
                            image: "offrir_the"
                        ),
                        ModulePage(
                            title: "Préparer la Maison",
                            content: "Nettoyage, encens, et organisation des sièges sont des gestes d’honneur pour recevoir un invité.",
                            mascott: "Lion3",
                            image: "accueil_maison"
                        )
                    ],
                    type: .content,
                    quiz: nil,
                    isFinish: false
                ),
                Module(
                    title: "Le Drapeau",
                    icon: "flag.fill",
                    isUnlocked: false,
                    color: "ButtonAfrique",
                    modulesPages: [
                        ModulePage(
                            title: "Vêtements et Identité",
                            content: "Les vêtements traditionnels reflètent l’appartenance, l’histoire et la fierté communautaire.",
                            mascott: "Lion3",
                            image: "vetement_identite"
                        ),
                        ModulePage(
                            title: "Occasions Spéciales",
                            content: "Mariages, fêtes religieuses ou rituels nécessitent des habits spécifiques, souvent riches en symboles.",
                            mascott: "Lion1",
                            image: "vetements_occasions"
                        ),
                        ModulePage(
                            title: "Symbolique des Couleurs et Motifs",
                            content: "Chaque motif ou couleur a une signification : prospérité, fertilité, sagesse…",
                            mascott: "Lion2",
                            image: nil
                        )
                    ],
                    type: .content,
                    quiz: nil,
                    isFinish: false
                ),
                Module(
                    title: "Le Drapeau",
                    icon: "flag.fill",
                    isUnlocked: false,
                    color: "ButtonAfrique",
                    modulesPages: [
                        ModulePage(
                            title: "Repas et Convivialité",
                            content: "Partager un repas est un acte sacré de fraternité, de confiance et de transmission.",
                            mascott: "Lion1",
                            image: "repas_partage"
                        ),
                        ModulePage(
                            title: "Plats Typiques",
                            content: "Couscous, bouillon, riz parfumé... les plats racontent une histoire, selon les ingrédients disponibles.",
                            mascott: "Lion2",
                            image: "plats_typiques"
                        ),
                        ModulePage(
                            title: "Rituels à Table",
                            content: "On se lave les mains, on mange ensemble à la main droite, on remercie l'hôte et on partage jusqu’à la dernière bouchée.",
                            mascott: "Lion3",
                            image: nil
                        )
                    ],
                    type: .content,
                    quiz: nil,
                    isFinish: false
                )
                
                
            ]),
        Chapters(
            nbChap: 3,
            title: "Les Rituels du quotidien",
            description: "Apprendre les gestes, habitudes et coutumes",
            isUnlocked: false,
            progression: 0,
            modules: [
                Module(
                    title: "Le Drapeau",
                    icon: "flag.fill",
                    isUnlocked: true,
                    color: "ButtonAfrique",
                    modulesPages: [
                        ModulePage(
                            title: "Origines Géographiques",
                            content: "Découvre les territoires d’où viennent tes ancêtres et les chemins qu’ils ont empruntés.",
                            mascott: "Lion3",
                            image: "carte_origine"
                        ),
                        ModulePage(
                            title: "Les Premières Traces",
                            content: "Traditions orales et objets anciens aident à retracer les premières communautés locales.",
                            mascott: "Lion2",
                            image: "vestige_ancien"
                        )
                    ],
                    type: .content,
                    quiz: nil,
                    isFinish: false
                ),
                Module(
                    title: "Le Drapeau",
                    icon: "flag.fill",
                    isUnlocked: false,
                    color: "ButtonAfrique",
                    modulesPages: [
                        ModulePage(
                            title: "Déplacements Historiques",
                            content: "Guerres, échanges commerciaux ou climats ont poussé les ancêtres à migrer ou à s’adapter.",
                            mascott: "Lion1",
                            image: "migration"
                        ),
                        ModulePage(
                            title: "Influences Culturelles",
                            content: "Les rencontres avec d'autres peuples ont façonné la langue, la cuisine et les coutumes.",
                            mascott: "Lion2",
                            image: "influence_culturelle"
                        )
                    ],
                    type: .content,
                    quiz: nil,
                    isFinish: false
                ),
                Module(
                    title: "Le Drapeau",
                    icon: "flag.fill",
                    isUnlocked: false,
                    color: "ButtonAfrique",
                    modulesPages: [
                        ModulePage(
                            title: "Moments de Résistance",
                            content: "Certaines générations ont résisté à l’oppression pour préserver leur liberté et leur culture.",
                            mascott: "Lion3",
                            image: "resistance"
                        ),
                        ModulePage(
                            title: "Héros Locaux",
                            content: "Découvre des figures historiques ou anonymes qui ont marqué la mémoire collective.",
                            mascott: "Lion1",
                            image: "heros_anciens"
                        )
                    ],
                    type: .content,
                    quiz: nil,
                    isFinish: false
                ),
                Module(
                    title: "Le Drapeau",
                    icon: "flag.fill",
                    isUnlocked: false,
                    color: "ButtonAfrique",
                    modulesPages: [
                        ModulePage(
                            title: "Contes et Mythes",
                            content: "Des récits transmis à l’oral expliquent les origines du monde, des montagnes ou des animaux sacrés.",
                            mascott: "Lion2",
                            image: "legende_populaire"
                        ),
                        ModulePage(
                            title: "Valeurs Transmises",
                            content: "Les légendes servent à enseigner le courage, l’hospitalité ou la prudence aux enfants.",
                            mascott: "Lion1",
                            image: nil
                        )
                    ],
                    type: .content,
                    quiz: nil,
                    isFinish: false
                )
                
                
            ])
        
    ]
    
    static let reunionChapters: [Chapters] = [
        Chapters(
            nbChap: 1,
            title: "Les Symboles de ma culture",
            description: "Connaître les symboles emblématiques de son héritage",
            isUnlocked: true,
            progression: 0,
            modules: [
                Module(
                    title: "Le Drapeau",
                    icon: "flag.fill",
                    isUnlocked: true,
                    color: "ButtonBlue",
                    modulesPages: [
                        ModulePage(
                            title: "Introduction",
                            content: "Le drapeau est un marqueur d’identité culturelle à La Réunion. Il peut représenter les valeurs de plusieurs communautés.",
                            mascott: "Cameleon1",
                            image: "reunion_drapeau_intro"
                        ),
                        ModulePage(
                            title: "Les Couleurs",
                            content: "Les couleurs symbolisent la nature, la terre volcanique, et la diversité réunionnaise.",
                            mascott: "Cameleon2",
                            image: "reunion_couleurs"
                        ),
                        ModulePage(
                            title: "Les Symboles",
                            content: "Certains emblèmes comme le Piton de la Fournaise ou les étoiles peuvent être utilisés symboliquement.",
                            mascott: "Cameleon3",
                            image: "reunion_symboles"
                        ),
                        ModulePage(
                            title: "À Retenir",
                            content: "Le drapeau représente bien plus que des couleurs : il incarne un lien profond avec l’île.",
                            mascott: "Cameleon1",
                            image: nil
                        )
                    ],
                    type: .content,
                    quiz: nil,
                    isFinish: false
                ),
                Module(
                    title: "Le Drapeau",
                    icon: "flag.fill",
                    isUnlocked: false,
                    color: "ButtonBlue",
                    modulesPages: [
                        ModulePage(
                            title: "Les Objets Emblématiques",
                            content: "La marmite créole, le rouleur, ou les instruments comme le kayamb sont des symboles forts.",
                            mascott: "Cameleon2",
                            image: "reunion_emblemes"
                        ),
                        ModulePage(
                            title: "Symboles Spirituels",
                            content: "Des éléments comme la tôle ondulée ou les madras ont une place dans l’imaginaire collectif.",
                            mascott: "Cameleon3",
                            image: "reunion_spirituel"
                        ),
                        ModulePage(
                            title: "Couleurs & Tissus",
                            content: "Les tissus colorés portés lors des kabars ou célébrations expriment la joie et l’histoire.",
                            mascott: "Cameleon1",
                            image: nil
                        )
                    ],
                    type: .content,
                    quiz: nil,
                    isFinish: false
                ),
                Module(
                    title: "Le Drapeau",
                    icon: "flag.fill",
                    isUnlocked: false,
                    color: "ButtonBlue",
                    modulesPages: [
                        ModulePage(
                            title: "Rôle des Proverbes",
                            content: "À La Réunion, les proverbes en créole sont transmis oralement pour éduquer et faire réfléchir.",
                            mascott: "Cameleon3",
                            image: nil
                        ),
                        ModulePage(
                            title: "Exemples Célèbres",
                            content: "« Ti pa ti pa, nou ariv » : avec patience, on atteint son but.",
                            mascott: "Cameleon1",
                            image: nil
                        ),
                        ModulePage(
                            title: "Moments de Transmission",
                            content: "Ils sont souvent dits par les aînés lors des repas, des contes ou de moments de partage.",
                            mascott: "Cameleon2",
                            image: "reunion_proverbes"
                        )
                    ],
                    type: .content,
                    quiz: nil,
                    isFinish: false
                ),
                Module(
                    title: "Le Drapeau",
                    icon: "flag.fill",
                    isUnlocked: false,
                    color: "ButtonBlue",
                    modulesPages: [
                        ModulePage(
                            title: "Les Grands Moments",
                            content: "Les kabars, Dipavali, fête du Cavadee ou fête des Lanternes sont des moments forts de l’année.",
                            mascott: "Cameleon1",
                            image: "reunion_fete"
                        ),
                        ModulePage(
                            title: "Musiques & Danses",
                            content: "Le maloya et le séga rythment les fêtes et rendent hommage aux ancêtres.",
                            mascott: "Cameleon2",
                            image: "reunion_danse"
                        ),
                        ModulePage(
                            title: "Rituels Spécifiques",
                            content: "Encens, offrandes, chants ou processions donnent du sens aux festivités.",
                            mascott: "Cameleon3",
                            image: nil
                        )
                    ],
                    type: .content,
                    quiz: nil,
                    isFinish: false
                ),
                
                
            ]),
        Chapters(
            nbChap: 2,
            title: "Les Rituels du quotidien",
            description: "Apprendre les gestes, habitudes et coutumes",
            isUnlocked: true,
            progression: 0,
            modules: [
                Module(
                    title: "Le Drapeau",
                    icon: "flag.fill",
                    isUnlocked: true,
                    color: "ButtonBlue",
                    modulesPages: [
                        ModulePage(
                            title: "Se Saluer à La Réunion",
                            content: "On se salue avec un sourire, un ti bonjour et parfois un bisou selon les liens familiaux.",
                            mascott: "Cameleon3",
                            image: "reunion_salutation"
                        ),
                        ModulePage(
                            title: "Respect Intergénérationnel",
                            content: "Dire bonjour aux anciens est une règle de base du vivre ensemble.",
                            mascott: "Cameleon1",
                            image: nil
                        ),
                        ModulePage(
                            title: "Les Gestes du Quotidien",
                            content: "Regarder dans les yeux, parler doucement, offrir de l’aide : des gestes simples mais puissants.",
                            mascott: "Cameleon2",
                            image: "reunion_gestes"
                        )
                    ],
                    type: .content,
                    quiz: nil,
                    isFinish: false
                ),
                Module(
                    title: "Le Drapeau",
                    icon: "flag.fill",
                    isUnlocked: false,
                    color: "ButtonBlue",
                    modulesPages: [
                        ModulePage(
                            title: "La Maison Réunionnaise",
                            content: "On accueille toujours avec le cœur, souvent en offrant à boire ou manger.",
                            mascott: "Cameleon2",
                            image: "reunion_accueil"
                        ),
                        ModulePage(
                            title: "Offrir un Ti Thé ou un Jus",
                            content: "Un thé chaud à la vanille ou un jus de fruits frais fait partie du rituel d’accueil.",
                            mascott: "Cameleon3",
                            image: "reunion_the"
                        ),
                        ModulePage(
                            title: "Cohabitation & Chaleur Humaine",
                            content: "L’accueil dépasse la parole : il est dans les gestes, le regard, la posture.",
                            mascott: "Cameleon1",
                            image: nil
                        )
                    ],
                    type: .content,
                    quiz: nil,
                    isFinish: false
                ),
                Module(
                    title: "Le Drapeau",
                    icon: "flag.fill",
                    isUnlocked: false,
                    color: "ButtonBlue",
                    modulesPages: [
                        ModulePage(
                            title: "Tenues Réunionnaises",
                            content: "Les femmes portent parfois la robe fleurie traditionnelle, les hommes une chemise madras.",
                            mascott: "Cameleon1",
                            image: "reunion_tenue"
                        ),
                        ModulePage(
                            title: "Occasions Spéciales",
                            content: "Fêtes religieuses, kabars ou cérémonies sont des moments pour honorer les habits traditionnels.",
                            mascott: "Cameleon3",
                            image: "reunion_ceremonie"
                        ),
                        ModulePage(
                            title: "Histoire et Origines",
                            content: "Ces tenues trouvent leurs racines dans l’esclavage, l’engagisme et les échanges culturels.",
                            mascott: "Cameleon2",
                            image: nil
                        )
                    ],
                    type: .content,
                    quiz: nil,
                    isFinish: false
                ),
                Module(
                    title: "Le Drapeau",
                    icon: "flag.fill",
                    isUnlocked: false,
                    color: "ButtonBlue",
                    modulesPages: [
                        ModulePage(
                            title: "Manger Ensemble",
                            content: "À La Réunion, partager un cari ou un rougail est un geste d’amour et de fraternité.",
                            mascott: "Cameleon2",
                            image: "reunion_repas"
                        ),
                        ModulePage(
                            title: "Les Plats Typiques",
                            content: "Rougail saucisse, massalé cabri, riz zembrocal… des plats pleins de mémoire et de goût.",
                            mascott: "Cameleon1",
                            image: "reunion_plats"
                        ),
                        ModulePage(
                            title: "Respect à Table",
                            content: "On laisse les anciens se servir, on remercie le cuisinier, et on ne gaspille pas.",
                            mascott: "Cameleon3",
                            image: nil
                        )
                    ],
                    type: .content,
                    quiz: nil,
                    isFinish: false
                )
                
                
            ])
        
    ]
    
    
}
