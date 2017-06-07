/**
 * Set the value of the given input field to a new value or add a value to the
 * current element value
 * @param  {String}   value      Valor a ser preenchido no inputfield
 * @param  {String}   selector   seletor do elemento
 * @param  {String}   length     tamanho maximo do valor
 * @param  {Function} done       Function to execute when finished
 */
module.exports = (value, selector, length, done) => {

    if(length >= value.length) {
        browser.setValue(selector, value);    
    } else {
        done(valorMaior);
    }
    
    done();

};
