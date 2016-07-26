#Installing Erlang

Just go here: [https://www.erlang.org/downloads](https://www.erlang.org/downloads)

Any later version is sufficient, I'm using 18.3 on my PC (Windows 64 bit).

I just went with the defaults.

#Running Erlang

Erlang can be run via **werl.exe**
(For me, that was in this path: *C:\Program Files\erl7.1\bin*)
<br/>You should also get a shortcut on your desktop.

To see if it's working at the prompt, type: **3+4.**<br/>
(make sure you don't forget to type the period).

You should get **7** (see below).


![](/GettingStarted.png "Getting Started")

This is enough to get you started and working within the interactive Erlang interpreter. If you want to save your work, you need to read on.

<br/>
#What developer IDE should I use?
I wish I had a good answer for this. Everytime I've seen this question asked the response is basically "use whatever editor you like".

Right now I'm using Notepad++ with a separately downloaded Erlang language extension I found somewhere on the internets (but it doesn't appear to work very well, otherwise I'd supply the link, lol). I could have just as easily used Visual Studio Code or Sublime (to increase my hipster cred).

Apparently there is one option that involves IntelliJ and an Erlang plugin...but I'd rather shoot myself than install IntelliJ on my machine, so...

<br/>
#Compiling to .beam file
Once you've written your Erlang programs there is no direct way to run them as a Windows executable. Instead you need to run everything as a .beam file.

But how do you get a .beam file? And how do you run a .beam file? 

Basically there are 4 steps to the workflow which we're going to step through in more detail during the Meetup. But to summarize for now:

1. Create a new file with a .erl extension. 
2. Define your module/functions in Erlang. 
3. Compile your .erl file.
4. Call your functions.

Note: If you have issues compiling because it can't find the .erl file you'll need to switch directories in the Erlang interpreter. E.g.<br/>
**cd("c:/temp").**<br/>
...will get you in the C:\temp directory. Also, notice the opposite direction of the slashes! We'll cover this as well in the Meetup.

