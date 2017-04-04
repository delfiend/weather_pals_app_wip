//----------------------------------------------------------------

//these are the strings that will hold the comments based on the weather

var tempSuggestion: String
var condSuggestion: String

//----------------------------------------------------------------

//these are the weather stats; will be retrieved from XML in the final program

var temperatureStr = "70"
var condition = "partly cloudy"
var militaryTimeStr = "15:00"
var sunriseTimStr = "7:22"
var sunsetTimStr = "17:13"

//----------------------------------------------------------------

//this grabs the hour from the current time of day

let colon = militaryTimeStr.characters.index(of: ":")!
let hour = String(militaryTimeStr.characters.prefix(upTo: colon))

let temperature = temperatureStr.toInt()
let time= hour.toFloat()

//----------------------------------------------------------------

//this grabs the hours (whole #) and minutes (decimals) from the day's sunrise time
//sunrise time is used to determine if it is night or day

var colon = sunriseTimStr.characters.index(of: ":")!
var rangeOfHour = sunriseTimStr.startIndex ..< colon
var rangeOfMinute = colon ..< sunriseTimStr.endIndex

var sunriseHourStr = sunriseTimStr.substring(with: rangeOfHour)
var sunriseMinuteStr = sunriseTimStr.substring(with: rangeOfMinute)

var sunriseHour = sunriseHourStr.toFloat()
var sunriseMinute = sunriseMinuteStr.toFloat()
sunriseMinute = sunriseMinute / 100

var sunrise =  sunriseHour + sunriseMinute

//----------------------------------------------------------------

//this grabs the hours (whole #) and minutes (decimals) from the day's sunset time
//sunset time is used to determine if it is night or day

colon = sunsetTimStr.characters.index(of: ":")!
rangeOfHour = sunsetTimStr.startIndex ..< colon
rangeOfMinute = colon ..< sunsetTimStr.endIndex

var sunsetHourStr = sunsetTimStr.substring(with: rangeOfHour)
var sunsetMinuteStr = sunsetTimStr.substring(with: rangeOfMinute)

var sunsetHour = sunsetHourStr.toFloat()
var sunsetMinute = sunsetMinuteStr.toFloat()
sunsetMinute = sunsetMinute / 100

var sunset =  sunsetHour + sunsetMinute 

//----------------------------------------------------------------



//----------------------------------------------------------------

//loop of conditions for daytime weather/temps
if (time <= sunset || time >= sunrise) {


switch temperature {
	case -100...10
		tempSuggestion: "Are you sure you wanna go out?"
	case 11...32
		tempSuggestion: "Itís freezing out! Bundle up with hats, gloves, and scarves & extra layers. DO NOT FORGET SOCKS."
	case 33...49
		tempSuggestion: "Itís cold! Grab a coat and some boots Ö those of Northern blood may do fine in a jacket."
	case 50...59
		tempSuggestion: "Kinda chilly today, get a jacket! Wearing sandals? Better pair them with socksÖ"
	case 60...69
		tempSuggestion: "Pretty nice out, which means you could get away with short or long sleeves and some jeans. Just remember to wear underwear Ö"
	case 70...79
		tempSuggestion: "Getting warmer, definitely wear shorter sleeves and maybe some shorts if youíre feeling risquÈ ;)"
	case 80...89
		tempSuggestion: "Woo Mama Ö itís pretty warm out! Some shorts, short sleeves, or a dress for sure! Now you can show some skin B-)"
	case 90...99
		tempSuggestion: "Itís H-O-T hot! Put on your bathing suit and head straight to the beach!"
	case 100...150
		tempSuggestion: "You might as well be made of butter, because youíre gonna melt. Stay indoors. Seriously. Youíll die (probably)."
default:
	tempSuggestion: "Why don't you stick your head outside and get a feel for the temperature!"
	
}

switch conditons {
	case "sunny", "fair (day)", "hot":
		condSuggestion: "Better grab the shades and the sunscreen! Donít be afraid to show off that beach bod youíve been working hard for!"
	case "partly cloudy", "partly cloudy (day)", "cold":
		condSuggestion: "Is it partly cloudy or partly sunny? The world may never know..."
	case "cloudy", "mostly cloudy (day)":
		condSuggestion: "Might be a bit chillier than expected without the sun... perhaps a jacket would be a wise consideration!"
	case "showers", "drizzle", "scattered showers":
		condSuggestion: "Might not seem like a lot of water, but an umbrella is your best friend when spring showers become spring downpours!"
	case "thunderstorms", "severe thunderstorms", "isolated thunderstorms", "scattered thunderstorms", "thundershowers", "isolated thundershowers":
		condSuggestion: "Ka-Chow! Donít get yourself electrocuted! Time to break out the goulashes and the ponchos! While death by lightning is unlikely but maybe tell your mother you love her before you leave?"
	case "snow", "blowing snow", "snow flurries", "light snow showers", :
		condSuggestion: "Brrrrr Ö itís cold in here! Grab some hats and gloves for this atmosphere. A little frostbite did actually hurt plenty of somebodies, soo..."
	case "heavy snow", "scattered snow showers", "snow showers":
		condSuggestion: "Gonna need some snow boots and big coats! Should be plenty of ice around for when you bust your butt on the slippery sidewalks! :-D"
	case "sleet", "mixed rain and snow", "mixed rain and sleet", "mixed snow and sleet", "freezing drizzle", "freezing rain":
		condSuggestion: "Is it snow? Is it rain? No, it's sleet! Yeah... we don't quite know what that means either. Just be ready for wet and cold!"
	case "hail", "mixed rain and hail":
		condSuggestion: "Looks like the world is is getting back at you for all the cursing you've done to the sky. Might be pea-sized chunks. Might be baseball-sized. Better hope your will is solidified, just saying..."
	case "foggy", "haze", "smokey", "dust":
		condSuggestion: "Personally, if I can't see, I don't even attempt to leave the house. But you gotta do what you gotta do."
	case "blustery", "windy":
		condSuggestion: "It's Windsday!! Hold onto your hats today folks! And remember: sunglasses aren't just good for sun, they can keep the wind from blinding you too!"
	case "tornado":
		condSuggestion: "*kicks down door* DUDE HOLY FUCK!!! Find some shelter below the ground or else youíre gonna need some 100lb ankle weights!!! No oneís going to Oz today, so donít even think about it!"
	case "hurricane", "tropical storm" :
		condSuggestion: "Rumor has it Grandma Bayou's old hip has been acting up again. You know what that means? We're in for a mild summer. Oh, and on a bit of a side note, THERE'S A HURRICANE HOLY FUCK RUN!!"
default:
	condSuggestion: "You could probably get by today with just the clothes on your back. But I never hurts to be a bit overprepared! :)"

}

}

//----------------------------------------------------------------

////loop of conditions for nighttime weather/temps
else {

switch temperature {
	case -100...10
		tempSuggestion: "Are you sure you wanna go out?"
	case 11...32
		tempSuggestion: "Itís freezing out! Bundle up with hats, gloves, and scarves & extra layers. DO NOT FORGET SOCKS."
	case 33...49
		tempSuggestion: "Itís cold! Grab a coat and some boots Ö those of Northern blood may do fine in a jacket."
	case 50...59
		tempSuggestion: "Kinda chilly today, get a jacket! Wearing sandals? Better pair them with socksÖ"
	case 60...69
		tempSuggestion: "Pretty nice out, which means you could get away with short or long sleeves and some jeans. Just remember to wear underwear Ö"
	case 70...79
		tempSuggestion: "Getting warmer, definitely wear shorter sleeves and maybe some shorts if youíre feeling risquÈ ;)"
	case 80...89
		tempSuggestion: "Woo Mama Ö itís pretty warm out! Some shorts, short sleeves, or a dress for sure! Now you can show some skin B-)"
	case 90...99
		tempSuggestion: "Itís H-O-T hot! Put on your bathing suit and head straight to the beach!"
	case 100...150
		tempSuggestion: "You might as well be made of butter, because youíre gonna melt. Stay indoors. Seriously. Youíll die (probably)."
default:
	tempSuggestion: "Why don't you stick your head outside and get a feel for the temperature!"
	
}

switch conditons {
	case "clear (night)", "fair (night)", "hot":
		condSuggestion: "It's a great night, the kind that's perfect dress up and mess up. Be safe out there!"
	case "partly cloudy", "partly cloudy (night)", "cold":
		condSuggestion: "It's a great night, the kind that's perfect dress up and mess up. Be safe out there!"
	case "cloudy", "mostly cloudy (night)":
		condSuggestion: "It's a great night, the kind that's perfect dress up and mess up. Be safe out there!"
	case "showers", "drizzle", "scattered showers":
		condSuggestion: "Rain and the dark are certain to cause a bit of a chill... wear a coat and maybe bring an umbrella with you too!"
	case "thunderstorms", "severe thunderstorms", "isolated thunderstorms", "scattered thunderstorms", "thundershowers", "isolated thundershowers": "Can't you just hear the organ music? No? Well maybe that's because the rain is so loud. If you have to go out, bundle up, bring an umbrella, and kep your eyes peeled for cars!"
		condSuggestion: 
	case "snow", "blowing snow", "snow flurries", "light snow showers", :
		condSuggestion: "Nothing is quite as magical as snow in the moonlight. But it's still cold, so b sure to bundle up and avoid frostbite!!"
	case "heavy snow", "scattered snow showers", "snow showers":
		condSuggestion: "I'm pretty sure this is the weather that Jack Torrance tried to murder his family in. Maybe just... sit this one out? If you do leave you'll need to bumdle up in plenty of layers and cover all your fingers and toes!"
	case "sleet", "mixed rain and snow", "mixed rain and sleet", "mixed snow and sleet", "freezing drizzle", "freezing rain":
		condSuggestion: "Don't go out. It's dark and there's Frankstein weather falling from the sky. It'll take more than the proper coat to savfe you from this ill-boding occurance of nature..."
	case "hail", "mixed rain and hail":
		condSuggestion: "Get pelted by Mother Nature AND not see it coming! Sounds like the best time to go outside to me!"
	case "foggy", "haze", "smokey", "dust":
		condSuggestion: "THE HOUNDS, MR. HOLMES!!!"
	case "blustery", "windy": 
		condSuggestion: "Just remember: if you kept swept away in these conditions, no one will see you go. Unless your a vampire looking for a quick escape from your naggy rommate, staying indoors is probably the best thing to do."
	case "tornado": 
		condSuggestion: "A fucking tornado and you won't even see it coming. You're fucked. Take some major shelter."
	case "hurricane", "tropical storm": 
		condSuggestion: "I'd maybe escape your current siutation. Unless you're a Floridian. Than I guess you're fine. You we bred for this. Embrace it."
default:
	condSuggestion: "Always be aware of your surroundings in the dark, as others might not be so aware of you! "

}

}