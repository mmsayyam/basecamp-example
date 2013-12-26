'use strict';

module.exports = function (grunt) {

  grunt.loadNpmTasks('grunt-contrib-watch');

  grunt.initConfig({
    watch: {
      coffeefiles: {
        files: ['app/assets/javascripts/*.coffee'],
        options: {
          livereload: 1337,
        }
      },
      erbfiles: {
        files: ['app/views/{,*/}*.erb'],
        options: {
          livereload: 1337,
        }
      }
    }
  });
}