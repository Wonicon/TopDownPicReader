# TopDown Web Manga Reader

I can hardly find a manga reader in Linux which can arrange pictures vertically.

## Prerequisites

```
apt-get install ruby
gem install sinatra
```

## Usage

```
cd /path/to/your/root/dir/
ruby /path/to/this/repo/app.rb
```

In the browser, type the url `http://127.0.0.1:4567`.
`4567` is the default port number that a sinatra app listens on.
It may differ, but will be printed in the terminal as soon as the server starts running.

## Constraints

The root dir for the site should match the structure as follows:

```
.
└── <manga-code>
    ├── <img-filename-01>
    ├── <img-filename-02>
    ├── ...
    └── title
```

The file `title` contains the name of the manga, which is always not suitable to appear in path.
