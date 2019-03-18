## Kapur Markdown Editor

[Kapur](https://github.com/rioastamal/kapur/) is lightweight Markdown editor with syntax highlighting and instant preview capability. It has two main windows -- left is used for editor and the right one is used for Markdown preview. Kapur is built on top of ShowdownJS for Markdown parser and CodeMirror for syntax highlighting.

Kapur Markdown Editor support following features.

- Github Flavored Markdown (GFM)
- Syntax highlighting
- Instant preview window
- Open file from local disk
- Save markdown to local disk
- Save html preview to local disk
- Responsive design for mobile

With all those features Kapur is only a single HTML file! No dependencies and no software to download.

Demo are available at [https://rioastamal.net/kapur/](https://rioastamal.net/kapur/)

![Demo Kapur Markdown Editor](https://s3.amazonaws.com/rioastamal-assets/kapur/kapur-demo.gif)

## Download

You can find the distribution version of Kapur at Github [release page](https://github.com/rioastamal/kapur/releases).

As an alternative you can also download the tarball from repository Download button. If you prefer cloning via Git you can use following command.

```
$ git clone https://github.com/rioastamal/kapur.git
```

## Run

Just open file `kapur.html` using web browser and you're ready to go. If you are cloning the project from Github you can also run the editor by opening file `src/kapur.html`.

## Build

The build process will generate single HTML file of the editor. It could be useful if you want to host or upload the editor to your own server. The build script only uses Bash so it should be easy to run.

```
$ bash build.sh
  adding: build/kapur.html (deflated 71%)
Build file build/kapur.html complete.
```

You can try to open file `build/kapur.html` using web browser.

## FAQ

### What Browser does Kapur support?

Kapur should works in all major modern browsers such as Safari, Chrome, Firefox and others. It has been tested with the following browsers.

1. Safari 11.1.2 on MacOS High Sierra
2. Firefox 65.0.1 on MacOS High Sierra
3. Chrome 73 on MacOS High Sierra

If you have problem running Kapur on your browser, please report.

### Can I use Kapur without internet?

Yes, absolutely. This is the main reason I develop Kapur. Just open `kapur.html` using your favorite browser and start writing in Markdown.

### Does Kapur support multi-tab editing?

Yes as long as your browser support multi-tab browsing. Just open `kapur.html` in new browser tab.

### Does Kapur support fullscreen?

Yes as long as your browser support Fullscreen mode. AFAIK all browsers in the market support this feature.

### Can I save the Preview as HTML?

Yes. Open the menu and choose "Save Preview As...".

### Can I save the Preview as PDF?

It depends on your browser or OS support. If your browser or OS able to print as PDF then you're lucky. Here's how to do it

1. Save the preview by cliking "Save Preview As..." 
2. Open the saved file using your browser
3. Choose File > Print 
4. You can choose to Print as PDF

## Author

This application is written by Rio Astamal \<rio@rioastamal.net>

## License

This application is open source licensed under [MIT license](http://opensource.org/licenses/MIT).