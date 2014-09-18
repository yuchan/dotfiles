(function() {
  var ScopeSelector, ScopeSelectorParser;

  ScopeSelectorParser = require('./scope-selector-parser');

  module.exports = ScopeSelector = (function() {
    function ScopeSelector(source) {
      this.matcher = ScopeSelectorParser.parse(source);
    }

    ScopeSelector.prototype.matches = function(scopes) {
      return this.matcher.matches(scopes);
    };

    ScopeSelector.prototype.toCssSelector = function() {
      return this.matcher.toCssSelector();
    };

    return ScopeSelector;

  })();

}).call(this);
