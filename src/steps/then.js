import exitPip from '../widgets/action/exitPip';

module.exports = function then() {
    
    this.Then(
        /^Eu saio do sistema$/,
        exitPip
    )
};

