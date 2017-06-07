import maximizeWindow from '../widgets/action/maximizeWindow';
import openWebsite from '../widgets/action/openWebsite';
import isVisible from '../widgets/check/isVisible';
import isEnabled from '../widgets/check/isEnabled';
import checkSelected from '../widgets/check/checkSelected';
import checkElementExists from '../widgets/check/checkElementExists';
import checkTitle from '../widgets/check/checkTitle';
import compareText from '../widgets/check/compareText';
import checkContent from '../widgets/check/checkContent';
import checkUrl from '../widgets/check/checkURL';
import checkProperty from '../widgets/check/checkProperty';
import checkCookieContent from '../widgets/check/checkCookieContent';
import checkCookieExists from '../widgets/check/checkCookieExists';
import checkDimension from '../widgets/check/checkDimension';
import checkOffset from '../widgets/check/checkOffset';
import resizeScreenSize from '../widgets/action/resizeScreenSize';
import closeAllButFirstTab from '../widgets/action/closeAllButFirstTab';
import checkModal from '../widgets/check/checkModal';
import checkColorProperty from '../widgets/check/checkColorProperty';

module.exports = function given() {
    
    this.Given(
        /^the element "([^"]*)?" is( not)* visible$/,
        isVisible
    );

    this.Given(
        /^the element "([^"]*)?" is( not)* enabled$/,
        isEnabled
    );

    this.Given(
        /^the element "([^"]*)?" is( not)* selected$/,
        checkSelected
    );

    this.Given(
        /^the checkbox "([^"]*)?" is( not)* checked$/,
        checkSelected
    );

    this.Given(
        /^there is (an|no) element "([^"]*)?" on the page$/,
        checkElementExists
    );

    this.Given(
        /^the title is( not)* "([^"]*)?"$/,
        checkTitle
    );

    this.Given(
        /^the element "([^"]*)?" contains( not)* the same text as element "([^"]*)?"$/,
        compareText
    );

    this.Given(
        /^the (element|inputfield) "([^"]*)?" does( not)* contain the text "([^"]*)?"$/,
        checkContent
    );

    this.Given(
        /^the (element|inputfield) "([^"]*)?" does( not)* contain any text$/,
        checkContent
    );

    this.Given(
        /^the page url is( not)* "([^"]*)?"$/,
        checkUrl
    );

    this.Given(
        /^the( css)* attribute "([^"]*)?" from element "([^"]*)?" is( not)* "([^"]*)?"$/,
        checkProperty
    );

    this.Given(
        /^the cookie "([^"]*)?" contains( not)* the value "([^"]*)?"$/,
        checkCookieContent
    );

    this.Given(
        /^the cookie "([^"]*)?" does( not)* exist$/,
        checkCookieExists
    );

    this.Given(
        /^the element "([^"]*)?" is( not)* ([\d]+)px (broad|tall)$/,
        checkDimension
    );

    this.Given(
        /^the element "([^"]*)?" is( not)* positioned at ([\d]+)px on the (x|y) axis$/,
        checkOffset
    );

    this.Given(
        /^I have a screen that is ([\d]+) by ([\d]+) pixels$/,
        resizeScreenSize
    );

    this.Given(
        /^I have closed all but the first (window|tab)$/,
        closeAllButFirstTab
    );

    this.Given(
        /^a (alertbox|confirmbox|prompt) is( not)* opened$/,
        checkModal
    );


    //FUNÇÕES TRADUZIDAS
    this.Given(
        /^Eu tenho um fullscreen$/,
        maximizeWindow
    );

    this.Given(
        /^Eu abro o (url|site) "([^"]*)?"$/,
        openWebsite
    );

    
    //FUNÇÕES PROPRIAS
    this.Given(
        /^O( css)* atributo "([^"]*)?" do elemento "([^"]*)?" is( not)* "([^"]*)?"$/,
        checkColorProperty
    )
};
