/**
 * Função para fazer login no sistema utilizando o usuário padrão "Eroque", evitando duplicação de codigo 
 * @param  {Function} done       Function to execute when finished
 */
module.exports = (done) => {
    

    const url =  'http://10.11.101.72:3000/client/dist/#' + '/login';
    
    browser.url(url);
    browser.windowHandleMaximize();

    browser.pause(6000);

    browser.setValue("#inputUsuario", browser.options.login);
    browser.setValue("#inputSenha", browser.options.senha);
    browser.pause(2000);
    browser.click("#botaoEntrar");    
    browser.pause(4000);

    done();
};
