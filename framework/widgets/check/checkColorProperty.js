/**
 * Check the given property of the given element
 * @param  {String}   isCSS         Whether to check for a CSS property or an
 *                                  attribute
 * @param  {String}   attrName      The name of the attribute to check
 * @param  {String}   elem          Element selector
 * @param  {String}   falseCase     Whether to check if the value of the
 *                                  attribute matches or not
 * @param  {String}   expectedValue The value to match against
 * @param  {Function} done          Function to execute when finished
 */
module.exports = (isCSS, attrName, elem, falseCase, expectedValue, done) => {
    /**
     * The command to use for fetching the expected value
     * @type {String}
     */

    var color = browser.getCssProperty(elem,attrName);
    
    if(color[0].value == expectedValue) {
        console.log('FEITOOOOOO');
    }
    else {
        done(err);
    }

    done();
};
