/**
 * Check the URL of the given browser window
 * @param  {String}   falseCase   Whether to check if the URL matches the
 *                                expected value or not
 * @param  {String}   expectedUrl The expected URL to check against
 * @param  {Function} done        Function to execute when finished
 */
module.exports = (falseCase, expectedUrl, done) => {
    /**
     * The current browser window's URL
     * @type {String}
     */
    const currentUrl = browser.url().value;
    const urlEsperada = browser.options.baseUrl + expectedUrl;
    
    if (falseCase) {
        currentUrl.should.not
            .equal(urlEsperada, `expected url not to be "${currentUrl}`);
    } else {
        currentUrl.should
            .equal(
                urlEsperada,
                `expected url to be "${urlEsperada}" but found
                "${currentUrl}"`
            );
    }

    done();
};
