import clickElement from '../widgets/action/clickElement';
import setInputField from '../widgets/action/setInputField';
import clearInputField from '../widgets/action/clearInputField';
import dragElement from '../widgets/action/dragElement';
import submitForm from '../widgets/action/submitForm';
import pause from '../widgets/action/pause';
import setCookie from '../widgets/action/setCookie';
import deleteCookie from '../widgets/action/deleteCookie';
import pressButton from '../widgets/action/pressButton';
import handleModal from '../widgets/action/handleModal';
import setPromptText from '../widgets/action/setPromptText';
import scroll from '../widgets/action/scroll';
import closeLastOpenedWindow from '../widgets/action/closeLastOpenedWindow';
import focusLastOpenedWindow from '../widgets/action/focusLastOpenedWindow';
import selectOptionByIndex from '../widgets/action/selectOptionByIndex';
import selectOption from '../widgets/action/selectOption';
import moveToElement from '../widgets/action/moveToElement';
import setEnterInputField from '../widgets/action/setEnterInputField';
import setInputFieldWithLength from '../widgets/action/setInputFieldWithLength';
import clickElementXTimes from '../widgets/action/clickElementXTimes';

module.exports = function when() {

    this.When(
        /^I clear the inputfield "([^"]*)?"$/,
        clearInputField
    );

    this.When(
        /^I drag element "([^"]*)?" to element "([^"]*)?"$/,
        dragElement
    );

    this.When(
        /^I submit the form "([^"]*)?"$/,
        submitForm
    );

    this.When(
        /^I set a cookie "([^"]*)?" with the content "([^"]*)?"$/,
        setCookie
    );

    this.When(
        /^I delete the cookie "([^"]*)?"$/,
        deleteCookie
    );

    this.When(
        /^I (accept|dismiss) the (alertbox|confirmbox|prompt)$/,
        handleModal
    );

    this.When(
        /^I enter "([^"]*)?" into the prompt$/,
        setPromptText
    );

    this.When(
        /^I scroll to element "([^"]*)?"$/,
        scroll
    );

    this.When(
        /^I close the last opened (window|tab)$/,
        closeLastOpenedWindow
    );

    this.When(
        /^I focus the last opened (window|tab)$/,
        focusLastOpenedWindow
    );

    this.When(
        /^I select the option with the (name|value|text) "([^"]*)?" for element "([^"]*)?"$/,
        selectOption
    );

    this.When(
        /^I move to element "([^"]*)?"( with an offset of (\d+),(\d+))*$/,
        moveToElement
    );


    //Traduzidas:
    this.When(
        /^Eu preencho "([^"]*)?" no inputfield "([^"]*)?"$/,
        setInputField
    );

    this.When(
        /^Eu (clico|doubleclick) no (link|botao|elemento) "([^"]*)?"$/,
        clickElement
    );


    this.When(
        /^Eu pauso por (\d+)ms$/,
        pause
    );

    this.When(
        /^Eu pressiono "([^"]*)?"$/,
        pressButton
    );

    this.When(
        /^Eu preencho "([^"]*)?" no inputfield "([^"]*)?" e submeto$/,
        setEnterInputField
    );

    this.When(
        /^Eu seleciono a (\d+)ª opção do elemento "([^"]*)?"$/,
        selectOptionByIndex
    );

    //PROPRIAS
    this.When(
        /^Eu preencho "([^"]*)?" no inputfield "([^"]*)?" até "([^"]*)?" caracteres$/,
        setInputFieldWithLength
    );
    
    this.When(
        /^Eu clico no botão "([^"]*)?" "([^"]*)?" vezes$/,
        clickElementXTimes
    );
};
