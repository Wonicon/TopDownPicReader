# TopDown Web Manga Reader

I can hardly find a manga reader in Linux which can arrange pictures vertically.

## Build

```
sudo apt-get install ruby
sudo gem install sinatra
```

## Usage

```
ruby app.rb
```

In the browser, type the url `http://127.0.0.1:4567/dir/<absolute-path-to-the-pic-dir>`.

`4567` is the port number the application server listens on.
It may differ, but will be printed in the terminal as soon as the server starts running.
