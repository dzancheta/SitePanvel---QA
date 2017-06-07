/**
 * Ação check se um elemento possui uma determinada substring
 * @param  {String}   type          Type of element (inputfield or element)
 * @param  {String}   element   Element selector
 * @param  {String}   substring Substring a se checada
 * @param  {Function} done      Function to execute when finished
 */
module.exports = (type, element, substring, done) => {
    
    const command = (type !== 'inputfield') ? 'getText' : 'getValue';

    var textoOriginal = browser[command](element);

    if(textoOriginal.includes(substring)) {
        done();
    } else {
        done(Text);
    }
};
