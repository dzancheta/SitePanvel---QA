/**
 * Action para clicar X vezes em um elemento
 * @param  {String}   element   Element selector
 * @param  {String}   quantidade Quantidade de cliques
 * @param  {Function} done      Function to execute when finished
 */
module.exports = (element, quantidade, done) => {
    
    for(var x = 0; x < quantidade; x++) {
        browser.click(element);
        browser.pause(500);
    }
};
