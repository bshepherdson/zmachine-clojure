# Z-machine in CLJS

This is a Z-machine interpreter for the web, written in Clojure(Script). The
Z-machine is a virtual machine designed to run text adventure games. (It is an
idiosyncratic 16-bit computer with specialized text handling.)

Most of the Z-machine engine is `.cljc` common code. It may prove an interesting
study in implementing a virtual machine in Clojure. On the other hand, the
Z-machine is complex and idiosyncratic compare to something like the DCPU-16 or
another toy general-purpose computer.

The web front-end uses [re-frame](https://github.com/Day8/re-frame).

For details of the Z-machine, see [the Z-machine standards document 1.1](https://inform-fiction.org/zmachine/standards/z1point1/index.html).

## Development Mode

### Compile css:

Compile css file once.

```
lein garden once
```

Automatically recompile css file on change.

```
lein garden auto
```

### Run application:

```
lein clean
lein figwheel dev
```

Figwheel will automatically push cljs changes to the browser.

Wait a bit, then browse to [http://localhost:3449](http://localhost:3449).

### Z-machine tests

```
lein test
```

Runs the engine tests in Java Clojure.


### Web UI Tests

Install karma and headless chrome

```
npm install -g karma-cli
npm install karma karma-cljs-test karma-chrome-launcher --save-dev
```

And then run your tests

```
lein clean
lein doo chrome-headless test once
```

Please note that [doo](https://github.com/bensu/doo) can be configured to run cljs.test in many JS environments (phantom, chrome, ie, safari, opera, slimer, node, rhino, or nashorn).

## Production Build


To compile clojurescript to javascript:

```
lein clean
lein cljsbuild once min
```
