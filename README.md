# Croak Grunt Faker

> Be naughty, avoid FUD from developers and tell them they are using Grunt

## About

<img align="right" height="165" src="http://oi39.tinypic.com/2qmf5gh.jpg" />

If you decide to use [Croak][croak] in your project, that's fantastic!!
but maybe introduce a new development tools can generate a bit of [FUD][fud] to the developers

This packages allow you to be naughty and makes the Croak CLI look like 
the native [Grunt][grunt] [CLI][gruntcli], making Croak really transparent to the end developer

## How to proceed

**IMPORTANT**

This is a totalitary solution as Croak Grunt faker will replace the native Grunt binary. 
All of your projects should use Croak instead of Grunt, so you can't use Grunt CLI directly. 
This is an ideal choice for project-isolated execution environments

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

The above command will be translated into a the Croak CLI as:
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
