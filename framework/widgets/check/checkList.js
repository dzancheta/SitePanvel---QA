/**
 * Check the given property of the given element

 * @param  {String}   elem          Element selector
 * @param  {String}   falseCase     Whether to check if the value of the
 *                                  attribute matches or not
 * @param  {Function} done          Function to execute when finished
 */
module.exports = (type, elem, falseCase, done) => {

    const command = (type !== 'inputfield') ? 'getText' : 'getValue';

    var ul = browser[command](elem);

    console.log(ul.length);
    
    done();
};