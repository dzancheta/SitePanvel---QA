import frameworkzinho from '../widgets/action/frameworkzinho.js';
import successfulLogin from '../widgets/action/successfulLogin.js';


module.exports = function given() {
    
    this.Given(
        /^Eu tenho um frameworkzinho$/,
        frameworkzinho
    );

    this.Given(
        /^Eu faço login padrão$/,
        successfulLogin
    );
};
