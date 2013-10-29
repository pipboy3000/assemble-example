module.exports = (grunt)->
  grunt.loadNpmTasks 'assemble'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.initConfig
    assemble:
      options:
        layoutdir: 'src/layouts'
        data: ['src/data/**/*.{json,yml}']
        partials: ['src/includes/**/*.hbs']
        flatten: true
      site:
        files:
          'dist/': ['src/pages/**/*.hbs']
    watch:
      assemble:
        files: ['src/**/*.hbs']
        tasks: ['assemble']

  grunt.registerTask 'default', ['watch']
