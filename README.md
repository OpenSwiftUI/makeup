# Makeup 💋

Easy to use swift-based web dsl for rendering HTML. Not the first, but the best (will become, one day... 😌)

## Still in Beta

_Not recommended to for production use yet. (And you will not be able to do anything, because there is no renderer yet)_

__Calendar:__

- Rendering: November 2019

- First release: December 2019
- Contribution guide: Janruary 2020
- Attributes extended support: January 2020
- CSS extended support: February 2020
- Testing: April 2020

_Contact [me](https://twitter.com/maximkrouk) if You want to contribute._

----

## Usage

```swift
document {
    html {
        head {
            title("My first Site")
        }
        body {
            header {
                h1("Hello, world!")
            }
            main {
                h2("Rendered by Makeup.")
                a("GitHub")
                    .href("https://github.com/maximkrouk/Makeup")
                    .foreground(color: .livingCoral)
            }
            footer {
                h6("Makeup. Swift HTML-rendering framework.")
            }
        }
        .font(name: .arial)
        .foreground(color: .white)
        .background(color: .ultraviolet)
    }
}
```

is rendered to:

```html
<!DOCTYPE HTML>
<html>
    <head>
        <title>
            My first Site
        </title>
    </head>
    <body style="font-family:'arial';color:rgba(255.0,255.0,255.0,255.0);background-color:rgba(100.0,83.0,148.0,255.0);">
        <header>
            <h1>
                Hello, world!
            </h1>
        </header>
        <main>
            <h2>
                Rendered by Makeup.
            </h2>
            <a href="https://github.com/maximkrouk/Makeup", style="color:rgba(250.0,114.0,104.0,255.0);">
                GitHub
            </a>
        </main>
        <footer>
            <h6>
                Makeup. Swift HTML-rendering framework.
            </h6>
        </footer>
    </body>
</html>
```

and seems like:

<img src="./Assets/Example-iPhone5.png" alt="Example-iPhone5" width="270px" />


## Thanks for inspiration and ideas

__[Pointfree.co](https://github.com/pointfreeco)__, __[David Okun](https://github.com/dokun1/)__ & __[WWDC2019](https://developer.apple.com/videos/play/wwdc2019/402/)__

[David's Twitter](https://twitter.com/dokun24)

[PointFree's Twitter](https://twitter.com/pointfreeco)

[Vaux](https://github.com/dokun1/Vaux)

[Swift-html](https://github.com/pointfreeco/swift-html)



----

_You may contact me [here](https://twitter.com/maximkrouk) if You have any questions_

