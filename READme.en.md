
<body>
    <p><a href="https://github.com/becadev/Jogo-Rio/blob/main/READme.md">Português</a> | <a href="https://github.com/becadev/Jogo-Rio/blob/main/READme.en.md">English</a></p>
    <h1 align="center">Aventura Carioca</h1>
    <p><strong>Project developed as part of the Computer Architecture course</strong>, using <strong>Assembly</strong> for the <strong>MIPS</strong> processor. The game, based on the movie Rio, features three stages inspired by classic video games: the first based on <strong>Pac-Man</strong>, the second on <strong>Street Fighter</strong>, and the third on <strong>Flappy Bird</strong>, offering varied and dynamic challenges.</p>
    <p>The objective of the game is to help <strong>Blue</strong>, the blue macaw, overcome all challenges to finally reunite with his beloved <strong>Jade</strong>.</p>
    
  <h2>Prerequisites</h2>
    <ul>
        <li>Ensure that your machine has the latest version of Java installed.</li>
        <li>Install the MIPS MARS 4.5 simulator: <a href="https://drive.google.com/file/d/1na6RNWXEOFsi82-5QrT-2UvlXCWKMPPT/view?hl=pt-BR">Download here</a></li>
        <li>Upload the <strong>Main.asm</strong> file to MARS.</li>
    </ul>
    
   <h2>How to Test</h2>
    <ol>
        <li>Open the <strong>Main.asm</strong> file in the MARS simulator.</li>
        <li>Press the <strong>F3</strong> key to assemble the code.</li>
        <li>In the <strong>Tools</strong> menu, select:
            <ul>
                <li>"Bitmap Display"</li>
                <li>"Keyboard and Display MMIO Simulator"</li>
            </ul>
        </li>
        <li>Configure the <strong>Bitmap Display</strong> with the following options:
            <ul>
                <li><strong>Size:</strong> 512 x 256</li>
                <li><strong>Pixel Dimension:</strong> 4x4</li>
            </ul>
        </li>
        <li>Click <strong>"Connect to MIPS"</strong> in both tools.</li>
        <li>Press <strong>F5</strong> or click the run button ▶️.</li>
        <li>Select <strong>Keyboard</strong> to enter game commands.</li>
    </ol>
    
  <h2>How to Play</h2>
    
  <h3>Stage 1: Tropical Pac-Man</h3>
    <p><strong>Objective:</strong> Blue must eat all the fruits without colliding with the gray walls. After collecting all the fruits, the player must head to the exit to proceed to the next stage.</p>
    <p><strong>Movement Keys:</strong></p>
    <pre>W - Up
A - Left
S - Down
D - Right</pre>
    
  <h3>Stage 2: Escape from Nigel</h3>
    <p><strong>Objective:</strong> Blue needs to dodge the açaí berries thrown by the cockatoo Nigel. If he manages to pass without touching him, he advances to the next stage.</p>
    <p><strong>Movement Keys:</strong></p>
    <pre>W - Jump
A - Move backward
D - Move forward</pre>
    
  <h3>Stage 3: Final Flight</h3>
    <p><strong>Objective:</strong> Blue must fly through the obstacles between the trees without colliding. If he overcomes all the obstacles, the player wins the game.</p>
    <p><strong>Movement Key:</strong></p>
    <pre>W - Fly</pre>
    
  <h2>Developers</h2>
    <a href="https://github.com/emanuellykarine">@emanuellykarine</a>: Stage integration, Start screen, and Final stage<br>
    <a href="https://github.com/josephyaraujo">@josephyaraujo</a>: Stage 2<br>
    <a href="https://github.com/becadev">@becadev</a>: Stage 1<br>
</body>
</html>
