+++
date = "2019-02-23T21:19:10"
lastmod = "2019-10-26T15:13:10"
title = "Streaming Music From The Terminal"
image = "/img/guitar.jpg"
description = "The joy of headless apps."
categories = ["tips"]
tags = ["music","pandora", "streaming"]
+++

Do you remember Rdio? It was a better than Spotify at streaming music back in 2012.

In 2013, Entertainment Weekly compared a number of music services and judged Rdio the best, grading it "A" and writing that it had "by far the best app and online interface, making database searching and playlist curation easy" - [source][1]

Rdio ended up not finding the right business model, or spending too much of its 200 million, or who knows what, but it filed for bankruptcy in 2015 and Pandora purchased it and all of its assets for 75 million cash.

Fast forward to today, and I still use Pandora (I also am on [Spotify][2]).

What doesn't make sense to me about Pandora is that there is no desktop client. I guess they focus on mobile and web? Or is there a workaround?

Enter [Pianobar][4]. A thoughtful command line client for Pandora. Here is what mine looks like when I initialize it:

<pre>
$ pianobar
Welcome to pianobar (2018.06.22)! Press ? for a list of commands.
(i) Login... Ok.
(i) Get stations... Ok.
|>  Station "Sunset Rubdown Radio" (54342580605901210)
(i) Receiving new playlist... Ok.
|>  "You Go On Ahead (Trumpet Trumpet II)" by "Sunset Rubdown" on "Dragonslayer" <3
#   -05:41/05:45
</pre>

It auto loads the previous station you were listening to, in my case it was [Sunset Rubdown][5] Radio.

It turns out if you are on a Mac, and have [homebrew][3] installed, you can do `brew install pianobar` and you can access and stream music from the terminal, complete with keyboard shortcuts to change stations and thumb-up (`shift + =`) or thumb-down (`-`) tracks. The `?` gets you the list of all of the commands. For completeness here ya go:

<pre>
	+    love song
	-    ban song
	a    add music to station
	c    create new station
	d    delete station
	e    explain why this song is played
	g    add genre station
	h    song history
	i    print information about song/station
	j    add shared station
	n    next song
	p    pause/resume playback
	q    quit
	r    rename station
	s    change station
	t    tired (ban song for 1 month)
	u    upcoming songs
	x    select quickmix stations
	b    bookmark song/artist
	(    decrease volume
	)    increase volume
	=    delete seeds/feedback
	v    create new station from song or artist
	P    resume playback
	S    pause playback
	^    reset volume
	!    change settings
</pre>

As a step further, you can create a config file at `~/.config/pianobar/config` by `mkdir -p ~/.config/pianobar` and `nano ~/.config/pianobar/config` that will auto-log you into your Pandora account and even autostream a particular station of interest if you wish.

Example config from `man pianobar`:

<pre>
audio_quality = high
autostart_station = 2

password = plaintext_password
user = your@user.name
</pre>


It is one of the headless apps I use every day, so I thought I would share it.

What apps are indispensible to you?


[1]: http://www.ew.com/ew/article/0,,20663844,00.html "The best, but filed for bankruptcy."
[2]: https://open.spotify.com/user/jamesanthonycampbell "Yep, I am a hipster."
[3]: https:/brew.sh "homebrew is a great package manager, and works on windows and linux now too."
[4]: https://6xq.net/pianobar/ "I was hesitant to link to it, I don't want it to get too popular."
[5]: https://en.wikipedia.org/wiki/Sunset_Rubdown "Was a great Canadian indie rock band that included piano hero Spencer Krug."
