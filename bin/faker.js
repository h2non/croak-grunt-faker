#!/usr/bin/env node

var path = require('path')
var croak = require('requireg').resolve('croa2k')
var args = process.argv.slice()
var echo = console.log

if (!croak) {
  echo('Ups! Seems like Croak wasn\'t installed')
  echo('\You must install it. Run:\nnpm install croak -g')
  process.exit(1)
}

args.splice(2, 0, 'run')

require(path.join(path.dirname(croak), 'cli')).parse(args)