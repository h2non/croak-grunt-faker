# Croak Grunt Faker

> Be naughty, avoid FUD from developers and tell them they are using Grunt

## About


<img align="right" height="280" src="http://oi39.tinypic.com/2qmf5gh.jpg" style="float: right" />


If you decide to use [Croak][croak] in your project, that's fantastic!!
but maybe the use of new tools can generate a bit of [FUD][fud] to the developers

This packages allows you to be naughty guy and makes the Croak CLI will 
looks like the native [Grunt][grunt] [CLI][gruntcli], making Croak really transparent to the end developer

## How to proceed

**IMPORTANT**

This is a totalitary solution, Croak Grunt faker will replace the native Grunt binary,
all your projects should pass over Croak instead of Grunt, so you can't use Grunt in plain. 
This is an ideal choice in project-isolated context execution environments

#### Behind the scenes

Install Croak instead of Grunt, if you don't have it already installed
```
$ npm install croak -g
```

Then configure it
```
$ croak init -g
```

#### Install the faker

```
$ npm install croak-grunt-faker -g
```

#### Lie to them

```
$ grunt im so happy with it --debug --stack
```

The above will be internally translated into the Croak CLI
```
$ croak run im so happy with it --debug --stack
```

## License

Released under the [WTFPL][wtfpl] license

[croak]: https://github.com/AdesisNetlife/croak
[grunt]: http://gruntjs.com
[gruntcli]: http://gruntjs.com/using-the-cli
[fud]: http://es.wikipedia.org/wiki/Fear,_uncertainty_and_doubt
[wtfpl]: http://www.wtfpl.net/
