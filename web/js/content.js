content = {
    // Name der Seite
    pageName: "Notebookausleihe",
    // Definition aller anklickbaren Links
    pages: {
        login: {
            title: "Login",
            url: "index.jsp"
        },
        student: {
            title: "Student",
            url: "artists.html"
        },
        albums: {
            title: "Alben",
            url: "albums.html"
        },
        songs: {
            title: "Songs",
            url: "songs.html"
        },
        about: {
            title: "Über uns",
            url: "about.html"
        },
        impressum: {
            title: "Impressum",
            url: "impressum.html"
        }
    },
    // Links im Header und im Footer
    navbar: ["login", "artists", "albums", "songs"],
    footer: ["about", "impressum"],
};

database = {
    // Künstler
    artists: {
        cocker: {
            name: "Joe Cocker",
            picture: "database/img/artist_cocker.jpg",
            url: "database/artist_cocker.html"
        },
        knopfler: {
            name: "Mark Knopfler",
            picture: "database/img/artist_knopfler.jpg",
            url: "database/artist_knopfler.html"
        },
        fletcher: {
            name: "Guy Fletcher",
            picture: "database/img/artist_fletcher.jpg",
            url: "database/artist_fletcher.html"
        },
        bennett: {
            name: "Richard Bennett",
            picture: "database/img/artist_bennett.jpg",
            url: "database/artist_bennett.html"
        },
        harris: {
            name: "Emmylou Harris",
            picture: "database/img/artist_harris.jpg",
            url: "database/artist_harris.html"
        },
        dylan: {
            name: "Bob Dylan",
            picture: "database/img/artist_dylan.jpg",
            url: "database/artist_dylan.html"
        },
        newmann: {
            name: "Randy Newman",
            picture: "database/img/artist_newman.jpg",
            url: "database/artist_newman.html"
        }
    },
    // Alben
    albums: {
        privateering: {
            artist: "knopfler",
            title: "Privateering",
            year: 2012,
            picture: "database/img/album_privateering.jpg",
            disks: [
                {
                    name: "Disk 1",
                    tracks: [
                        "Redbud Tree",
                        "Haul Away",
                        "Don't Forget Your Hat",
                        "Privateering",
                        "Miss You Blues",
                        "Corned Beef City",
                        "Go, Love",
                        "Hot or What",
                        "Yon Two Crows",
                        "Seattle"
                    ]
                },
                {
                    name: "Disk 2",
                    tracks: [
                        "Kingdom Of Gold",
                        "Got To Have Something",
                        "Radio City Serenade",
                        "I Used To Could",
                        "Gator Blood",
                        "Bluebird",
                        "Dream Of The Drowned Submariner",
                        "Blood And Water",
                        "Today Is Okay",
                        "After The Bean Stalk",
                    ]
                },
                {
                    name: "Bonus Tracks",
                    tracks: [
                        "Occupation Blues",
                        "River of Grog",
                        "Follow The Ribbon"
                    ]
                }
            ]
        },
        get_lucky: {
            artist: "knopfler",
            title: "Get Lucky",
            year: 2009,
            picture: "database/img/album_get_lucky.jpg",
            disks: [
                {
                    name: "Album",
                    tracks: [
                        "Border Reiver",
                        "Hard Shoulder",
                        "You Can't Beat the House",
                        "Before Gas and TV",
                        "Monteleone",
                        "Cleaning My Gun",
                        "The Car Was the One",
                        "Remembrance Day",
                        "Get Lucky",
                        "So Far from the Clyde",
                        "Piper to the End",
                    ]
                },
                {
                    name: "iTunes only",
                    tracks: [
                        "Early Bird",
                        "Time In The Sun"
                    ]
                },
                {
                    name: "Bonus Tracks",
                    tracks: [
                        "Pulling Down the Ride",
                        "Home Boy",
                        "Good as Gold"
                    ]
                }
            ]
        },
        ktgc: {
            artist: "knopfler",
            title: "Kill To Get Crimson",
            year: 2007,
            picture: "database/img/album_ktgc.gif",
            disks: [
                {
                    name: "",
                    tracks: [
                        "True Love Will Never Fade",
                        "The Scaffolder's Wife",
                        "The Fizzy and the Still",
                        "Heart Full of Holes",
                        "We Can Get Wild",
                        "Secondary Waltz",
                        "Punish the Monkey",
                        "Let It All Go",
                        "Behind With the Rent",
                        "The Fish and the Bird",
                        "Madame Geneva's",
                        "In the Sky"
                    ]
                }
            ]
        },
        shangri_la: {
            artist: "knopfler",
            title: "Shangri-La",
            year: 2004,
            picture: "database/img/album_shangri_la.jpg",
            disks: [
                {
                    name: "",
                    tracks: [
                        "5.15 A.M.",
                        "Boom, Like That",
                        "Sucker Row",
                        "The Trawlerman's Song",
                        "Back to Tupelo",
                        "Our Shangri-La",
                        "Everybody Pays",
                        "Song for Sonny Liston",
                        "Whoop De Doo",
                        "Postcards from Paraguay",
                        "All That Matters",
                        "Stand Up Guy",
                        "Donegan's Gone",
                        "Don't Crash the Ambulance"
                    ]
                }
            ]
        },
        ragpicker: {
            artist: "knopfler",
            title: "The Ragpicker's Dream",
            year: 2002,
            picture: "database/img/album_ragpicker.jpg",
            disks: [
                {
                    name: "",
                    tracks: [
                        "Why Aye Man",
                        "Devil Baby",
                        "Hill Farmer's Blues",
                        "A Place Where We Used to Live",
                        "Quality Shoe",
                        "Fare Thee Well Northumberland",
                        "Marbletown",
                        "You Don't Know You're Born",
                        "Coyote",
                        "The Ragpicker's Dream",
                        "Daddy's Gone to Knoxville",
                        "Old Pigweed"
                    ]
                }
            ]
        },
        philadelphia: {
            artist: "knopfler",
            title: "Sailing to Philadelphia",
            year: 2000,
            picture: "database/img/album_philadelphia.jpg",
            disks: [
                {
                    name: "",
                    tracks: [
                        "What It Is",
                        "Sailing to Philadelphia",
                        "Who's Your Baby Now",
                        "Baloney Again",
                        "The Last Laugh",
                        "Silvertown Blues",
                        "El Macho",
                        "Prairie Wedding",
                        "Wanderlust",
                        "Speedway at Nazareth",
                        "Junkie Doll",
                        "Sands of Nevada",
                        "One More Matinee"
                    ]
                }
            ]
        },
        golden_heart: {
            artist: "knopfler",
            title: "Golden Heart",
            year: 1996,
            picture: "database/img/album_golden_heart.jpg",
            disks: [
                {
                    name: "",
                    tracks: [
                        "Darling Pretty",
                        "Imelda",
                        "Golden Heart",
                        "No Can Do",
                        "Vic and Ray",
                        "Don't You Get It",
                        "A Night in Summer Long Ago",
                        "Cannibals",
                        "I'm the Fool",
                        "Je Suis Désolé",
                        "Rüdiger",
                        "Nobody's Got the Gun",
                        "Done With Bonaparte",
                        "Are We in Trouble Now?"
                    ]
                }
            ]
        },
        hard_knocks: {
            artist: "cocker",
            title: "Hard Knocks",
            year: 2010,
            picture: "database/img/album_hard_knocks.jpg",
            disks: [
                {
                    name: "",
                    tracks: [
                        "Hard Knocks",
                        "Get On",
                        "Unforgiven",
                        "The Fall",
                        "So It Goes",
                        "Runaway Train",
                        "Stay The Same",
                        "Thankful",
                        "So",
                        "I Hope",
                    ]
                }
            ]
        },
        hfms: {
            artist: "cocker",
            title: "Hymn For My Soul",
            year: 2012,
            picture: "database/img/album_hfms.jpg",
            disks: [
                {
                    name: "",
                    tracks: [
                        "You Haven't Done Nothin'",
                        "One Word (Peace)",
                        "Love Is For Me",
                        "Don't Give Up on Me",
                        "Long as I Can See the Light",
                        "Beware of Darkness",
                        "Just Pass It On",
                        "Rivers Invitation",
                        "Ring Them Bells",
                        "Hymn 4 My Soul"
                    ]
                }
            ]
        },
        heart_soul: {
            artist: "cocker",
            title: "Heart & Soul",
            year: 2010,
            picture: "database/img/album_heart_soul.jpg",
            disks: [
                {
                    name: "",
                    tracks: [
                        "What's Going On",
                        "Chain of Fools",
                        "One",
                        "I (Who Have Nothing)",
                        "Maybe I'm Amazed",
                        "I Keep Forgettin'",
                        "I Put a Spell on You",
                        "Every Kind of People",
                        "Love Don't Live Here Anymore",
                        "Don't Let Me Be Lonely",
                        "Jealous Guy",
                        "Everybody Hurts"
                    ]
                }
            ]
        },
        respect_yourself: {
            artist: "cocker",
            title: "Respect Yourself",
            year: 2001,
            picture: "database/img/album_respect_yourself.jpg",
            disks: [
                {
                    name: "",
                    tracks: [
                        "You Can't Have My Heart",
                        "Love Not War",
                        "You Took It So Hard",
                        "Never Tear Us Apart",
                        "This Is Your Life",
                        "Respect Yourself",
                        "I'm Listening Now",
                        "Leave A Light On",
                        "It's Only Love",
                        "Every Time It Rains",
                        "Midnight Without You"
                    ]
                }
            ]
        }
    },
    // Songs
    songs: {
        redbud_tree: {
            name: "Redbud Tree",
            artist: "knopfler",
            album: "privateering",
            url: "database/song_redbud_tree.html"
        },
        haul_away: {
            name: "Haul Away",
            artist: "knopfler",
            album: "privateering",
            url: "database/song_haul_away.html"
        },
        your_hat: {
            name: "Don't Forget Your Hat",
            artist: "knopfler",
            album: "privateering",
            url: "database/song_your_hat.html"
        },
        privateering: {
            name: "Privateering",
            artist: "knopfler",
            album: "privateering",
            url: "database/song_privateering.html"
        },
        border_reiver: {
            name: "Border Reiver",
            artist: "knopfler",
            album: "get_lucky",
            url: "database/song_border_reiver.html"
        },
        get_lucky: {
            name: "Get Lucky",
            artist: "knopfler",
            album: "get_lucky",
            url: "database/song_get_lucky.html"
        },
        clyde: {
            name: "So Far From The Clyde",
            artist: "knopfler",
            album: "get_lucky",
            url: "database/song_clyde.html"
        },
        piper: {
            name: "Piper To The End",
            artist: "knopfler",
            album: "get_lucky",
            url: "database/song_piper.html"
        },
        what_it_is: {
            name: "What It Is",
            artist: "knopfler",
            album: "philadelphia",
            url: "database/song_what_it_is.html"
        },
        philadelphia: {
            name: "Sailing To Philadelphia",
            artist: "knopfler",
            album: "philadelphia",
            url: "database/song_philadelphia.html"
        },
        hard_knocks: {
            name: "Hard Knocks",
            artist: "cocker",
            album: "hard_knocks",
            url: "database/song_hard_knocks.html"
        },
        runaway_train: {
            name: "Runaway Train",
            artist: "cocker",
            album: "hard_knocks",
            url: "database/song_runaway_train.html"
        }
    }
};
