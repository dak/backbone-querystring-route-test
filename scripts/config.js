(function () {
  'use strict';

  require.config({
    // # Paths
    paths: {
      // ## Requirejs plugins
      cs: 'libs/require-cs/cs',

      // ## Core Libraries
      jquery: 'libs/jquery/jquery',
      underscore: 'libs/underscore/underscore',
      backbone: BACKBONE_PATH,

      // ## CoffeeScript Compiler
      'coffee-script': 'libs/require-cs/coffee-script'
    },

    // # Shims
    shim: {
      // ## Core Libraries
      underscore: {
        exports: '_'
      },
      backbone: {
        deps: ['underscore', 'jquery'],
        exports: 'Backbone'
      }
    }
  });

})();
