import checkTitle from '../widgets/check/checkTitle';
import isVisible from '../widgets/check/isVisible';
import waitForVisible from '../widgets/action/waitForVisible';
import checkContainsText from '../widgets/check/checkContainsText';
import checkContent from '../widgets/check/checkContent';
import compareText from '../widgets/check/compareText';
import isExisting from '../widgets/check/isExisting';
import checkWithinViewport from '../widgets/check/checkWithinViewport';
import checkURL from '../widgets/check/checkURL';
import checkURLPath from '../widgets/check/checkURLPath';
import checkInURLPath from '../widgets/check/checkInURLPath';
import checkProperty from '../widgets/check/checkProperty';
import checkSelected from '../widgets/check/checkSelected';
import isEnabled from '../widgets/check/isEnabled';
import checkCookieContent from '../widgets/check/checkCookieContent';
import checkCookieExists from '../widgets/check/checkCookieExists';
import checkDimension from '../widgets/check/checkDimension';
import checkOffset from '../widgets/check/checkOffset';
import checkClass from '../widgets/check/checkClass';
import checkNewWindow from '../widgets/check/checkNewWindow';
import checkIsOpenedInNewWindow from '../widgets/check/checkIsOpenedInNewWindow';
import checkFocus from '../widgets/check/checkFocus';
import waitfor from '../widgets/action/waitfor';
import checkModal from '../widgets/check/checkModal';
import checkModalText from '../widgets/check/checkModalText';
import checkSubString from '../widgets/check/checkSubString';
import checkList from '../widgets/check/checkList';

module.exports = function then() {
    
    this.Then(
        /^I expect that the title is( not)* "([^"]*)?"$/,
        checkTitle
    );

    this.Then(
        /^I expect that element "([^"]*)?" is( not)* within the viewport$/,
        checkWithinViewport
    );

    this.Then(
        /^I expect that element "([^"]*)?" does( not)* exist$/,
        isExisting
    );

    this.Then(
        /^I expect that element "([^"]*)?" does( not)* contain the same text as element "([^"]*)?"$/,
        compareText
    );

    this.Then(
        /^I expect that (element|inputfield) "([^"]*)?" does( not)* contain any text$/,
        checkContent
    );

    this.Then(
        /^I expect that (element|inputfield) "([^"]*)?" is( not)* empty$/,
        checkContainsText
    );

    this.Then(
        /^I expect that the path is( not)* "([^"]*)?"$/,
        checkURLPath
    );

    this.Then(
        /^I expect the url to( not)* contain "([^"]*)?"$/,
        checkInURLPath
    );

    this.Then(
        /^I expect that the( css)* attribute "([^"]*)?" from element "([^"]*)?" is( not)* "([^"]*)?"$/,
        checkProperty
    );

    this.Then(
        /^I expect that checkbox "([^"]*)?" is( not)* checked$/,
        checkSelected
    );

    this.Then(
        /^I expect that element "([^"]*)?" is( not)* selected$/,
        checkSelected
    );

    this.Then(
        /^I expect that cookie "([^"]*)?"( not)* contains "([^"]*)?"$/,
        checkCookieContent
    );

    this.Then(
        /^I expect that cookie "([^"]*)?"( not)* exists$/,
        checkCookieExists
    );

    this.Then(
        /^I expect that element "([^"]*)?" is( not)* ([\d]+)px (broad|tall)$/,
        checkDimension
    );

    this.Then(
        /^I expect that element "([^"]*)?" is( not)* positioned at ([\d]+)px on the (x|y) axis$/,
        checkOffset
    );

    this.Then(
        /^I expect that element "([^"]*)?" (has|does not have) the class "([^"]*)?"$/,
        checkClass
    );

    this.Then(
        /^I expect a new (window|tab) has( not)* been opened$/,
        checkNewWindow
    );

    this.Then(
        /^I expect the url "([^"]*)?" is opened in a new (tab|window)$/,
        checkIsOpenedInNewWindow
    );

    this.Then(
        /^I expect that element "([^"]*)?" is( not)* focused$/,
        checkFocus
    );

    this.Then(
        /^I wait on element "([^"]*)?"( for (\d+)ms)*( to( not)* (be checked|be enabled|be selected|be visible|contain a text|contain a value|exist))*$/,
        waitfor
    );

    this.Then(
        /^I expect that a (alertbox|confirmbox|prompt) is( not)* opened$/,
        checkModal
    );

    this.Then(
        /^I expect that a (alertbox|confirmbox|prompt)( not)* contains the text "([^"]*)?"$/,
        checkModalText
    );

    
    //FUNÇÕES Traduzidas

    this.Then(
        /^Eu espero que a URL( não)* seja "([^"]*)?"$/,
        checkURL
    );    
    
    this.Then(
        /^Eu espero que o elemento "([^"]*)?"( não)* esteja visível$/,
        isVisible
    );

    this.Then(
        /^Eu espero que o elemento "([^"]*)?"( não)* esteja habilitado$/,
        isEnabled
    );

    this.Then(
        /^Eu espero que o elemento "([^"]*)?"( não)* se torne visível$/,
        waitForVisible
    );

    this.Then(
        /^Eu espero que o (elemento|inputfield) "([^"]*)?"( não)* contenha o texto "([^"]*)?"$/,
        checkContent
    );

    //FUNÇÕES PROPRIAS

    this.Then(
        /^Eu espero a lista do (elemento|inputfield) "([^"]*)?" is( not)* "([^"]*)?"$/,
        checkList
    )

    this.Then(
        /^Eu espero que o (elemento|inputfield) "([^"]*)?" contenha "([^"]*)?"$/,
        checkSubString
    );

};

