/**
 * Função para fazer saida do sistema, evitando duplicação de codigo 
 * @param  {Function} done       Function to execute when finished
 */
module.exports = (done) => {
    
    browser.click("#botaoMostrarMenu");    
    browser.pause(1000);
    browser.click("#linkLogout");    

    done();
};
