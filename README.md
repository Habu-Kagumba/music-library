# Ruby Music Library :musical_note:

## Overview

A command line Music Library application. The application accepts a file path to the music mp3 files, parses them and is able to display, search, create and 'play' the music.

## Getting Started

1. Clone the repo to your local machine.

	```bash
	$  git clone https://github.com/andela-hkagumba/music-library.git
	```

2. `cd` into the music-library folder.

	```bash
	$  cd music-library
	```

3. Install dependencies

	```bash
    $  bundle install
    ```

    **or** without test and development dependencies;

    ```bash
    $ bundle install --without test development
    ```

## Usage

To start the library cli execute the `musiclibrary` file in the `bin` directory


```bash
$  bin/musiclibrary

  ----------------------------
  Welcome to Music Library
  ----------------------------

  Commands:
    list songs - List all songs.
    list artists - List all artists.
    list genres - List all genres.
    play song - Play a single song (specify the song number).
    list artist - List songs of artist.
    list genre - List songs of certain genre.
    exit - Exit the Library.

 ♯ ~

```

### Example command usage:

1. `list songs`:
    
    ```bash
     ♯ ~ list songs
    1. Action Bronson - Larry Csonka - indie
    2. Adele - Rolling In the Deep - folk
    3. Adele - Someone Like You - country
    4. AraabMuzik - Streetz Tonight - folk
    5. ASAP Rocky - Peso - dance
    6. Atlas Sound - Mona Lisa - pop
    7. Azealia Banks - 212 - hip-hop
    8. Battles - Ice Cream (Feat. Matias Aguayo) - rock
    9. Beyonce - 1+1 - house
    ...
	```
2. `play song` e.g. enter "1" for the first song:
    
    ```bash
     ♯ ~ play song
	Please enter the song number.
	1
	Playing Action Bronson - Larry Csonka - indie

    ```
3. `list artist` e.g enter "Adele":
	
	```bash
     ♯ ~ list artist
    Please enter the artist name.
    Adele
    Adele - Rolling In the Deep - folk
    Adele - Someone Like You - country
    ```

## Tests

You need to have installed test dependencies. If you ran:
```bash
$  bundle install
```
You are good and can continue to testing the application. Otherwise proceed to install all dependencies.

Run tests:
```bash
$  rspec spec
```
