
<body>
<p><a href="https://github.com/becadev/Jogo-Rio/blob/main/READme.md"> Português</a> | <a href="https://github.com/becadev/Jogo-Rio/blob/main/READme.en.md"> English</a></p>
<h1 align="center">Carioca Adventure</h1>
    <div align="center">
        <img src="capa.png" alt="game cover">
    </div>
<p><strong>Project developed as part of the Computer Architecture course</strong>, using <strong>Assembly</strong> for the <strong>MIPS</strong> processor. Inspired by the movie Rio, the game features three levels based on classic video games: the first inspired by <strong>Pac-Man</strong>, the second by <strong>Street Fighter</strong>, and the third by <strong>Flappy Bird</strong>, offering diverse and dynamic challenges.</p>
<p>The objective of the game is to help <strong>Blue</strong>, the blue macaw, overcome all challenges to finally reunite with his beloved <strong>Jade</strong>.</p>

<h2>Prerequisites</h2>
<ul>
    <li>Make sure your machine has the latest version of Java installed.</li>
    <li>Install the MIPS MARS 4.5 simulator: <a href="https://drive.google.com/file/d/1na6RNWXEOFsi82-5QrT-2UvlXCWKMPPT/view?hl=pt-BR">Download here</a></li>
    <li>Upload the <strong>Main.asm</strong> file to MARS.</li>
</ul>

<h2>How to Test</h2>
<ol>
    <li>Open the <strong>Main.asm</strong> file in the MARS simulator.</li>
    <p><strong>Note:</strong> The game's speed varies depending on the computer. If the game is running faster than desired, follow these steps to adjust the player's and NPCs' timers:</p>
    <ul>
        <li>Press <strong>Ctrl + F</strong> to open the search tool.</li>
        <li>In the <strong>Find What</strong> field, enter the following labels and click <strong>Find</strong>.</li>
        <li>Adjust the timers according to your computer's performance:
            <ul>
                <li>If your computer is fast, increase the timer value.</li>
                <li>If your computer is slow, decrease the timer value.</li>
            </ul>
        </li>
        <li>Recommended values:
            <ul>
                <li><strong>timerf1:</strong> <code>addi $15, $15, 8000</code> (ideal for high-frequency computers)</li>
                <li><strong>timerFlappy:</strong> <code>addi $16, $0, 50000</code> (ideal for high-frequency computers)</li>
                <li><strong>timerFightNigel:</strong> <code>addi $25, $0, 10000</code> (recommended for balanced performance)</li>
            </ul>
        </li>
    </ul>
    <li>Press <strong>F3</strong> to assemble the code.</li>
    <li>In the <strong>Tools</strong> menu, select:
        <ul>
            <li>"Bitmap Display"</li>
            <li>"Keyboard and Display MMIO Simulator"</li>
        </ul>
    </li>
    <li>Configure the <strong>Bitmap Display</strong> with the following settings:
        <ul>
            <li><strong>Size:</strong> 512 x 256</li>
            <li><strong>Pixel dimension:</strong> 4x4</li>
        </ul>
    </li>
    <li>Click <strong>"Connect to MIPS"</strong> in both tools.</li>
    <li>Press <strong>F5</strong> or click the ▶️ run button.</li>
    <li>Select <strong>Keyboard</strong> to enter game commands.</li>
</ol>

<h2>How to Play</h2>

<h3>Level 1: Tropical Pac-Man</h3>
<p><strong>Objective:</strong> Blue must eat all the fruits without colliding with the gray walls. After collecting all the fruits, the player must go to the exit to advance to the next level.</p>
<p><strong>Movement keys:</strong></p>
<pre>W - Up
A - Left
S - Down
D - Right</pre>

<h3>Level 2: Nigel’s Escape</h3>
<p><strong>Objective:</strong> Blue must dodge the açaí berries thrown by the cockatoo Nigel. If he manages to pass without touching Nigel's beak and jumps on his crest, he moves on to the next level.</p>
<p><strong>Movement keys:</strong></p>
<pre>W - Jump
A - Move backward
D - Move forward</pre>

<h3>Level 3: Final Flight</h3>
<p><strong>Objective:</strong> Blue must navigate through obstacles by flying between trees without colliding. If he successfully passes all obstacles, the player wins the game.</p>
<p><strong>Movement key:</strong></p>
<pre>W - Fly</pre>

<h2>Developers</h2>
<a href="https://github.com/emanuellykarine">@emanuellykarine</a>: Level integration, start screen, and final level<br>
<a href="https://github.com/josephyaraujo">@josephyaraujo</a>: Level 2<br>
<a href="https://github.com/becadev">@becadev</a>: Level 1<br>

</body>
</html>
