/**
 * Preenche um valor determinado a um inputfield
 * @param  {String}   value   Valor a ser preenchido no elemento
 * @param  {String}   element Elemento da tela (inputfield)
 * @param  {Function} done    Function to execute when finished
 */
module.exports = (value, element, done) => {

    browser.setValue(element, value);

    done();
};
