
{ LineEndingCorrector } = require 'line-ending-corrector'

{ PluginError } = require('gulp-util')

through = require 'through2'

module.exports = (opt) ->

  transform = (file, enc, cb) ->

    return cb null, file if file.isNull()
      
    return cb (new PluginError 'gulp-line-ending-corrector', 'Streaming not supported') if file.isStream()
      
    data = undefined

    str = file.contents.toString('utf8')

    dest = file.path

    try

      [ wasAltered, output ] = LineEndingCorrector.correctSync input, opt

    catch err

      return cb (new PluginError 'gulp-line-ending-corrector', err)

    file.contents = new Buffer output

    file.path = dest

    cb null, file
    
    return

  through.obj transform

