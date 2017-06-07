/** 
 * Seleciona uma opção de um element select pelo index informado pelo Usuário
 * @param  {String}   index      O indice de qual select irá selecionar
 * @param  {String}   selectElem Seletor do elemento
 * @param  {Function} done       Function to execute when finished
 *
 * @todo  merge with selectOption
 */
module.exports = (index, selectElem, done) => {
    /**
     * O Índice da posição a selecionar
     * @type {Int}
     */
    const optionIndex = parseInt(index, 10);

    browser.selectByIndex(selectElem, optionIndex);

    done();
};
