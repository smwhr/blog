const syntaxHighlight = require("@11ty/eleventy-plugin-syntaxhighlight"),
      markdownIt = require('markdown-it'),
      pluginRSS = require('eleventy-xml-plugin')
      ;
module.exports = eleventyConfig => {
  eleventyConfig.addPlugin(syntaxHighlight);
  eleventyConfig.addPlugin(pluginRSS);
  eleventyConfig.addPassthroughCopy('assets/fonts');
  eleventyConfig.setTemplateFormats(["md", "jpg", "png", "gif"]);
  const options = {
    html: true,
    breaks: true,
    linkify: false
  };
  eleventyConfig.setLibrary("md", markdownIt(options));

  return {
    // Use liquid in html templates
    htmlTemplateEngine: "liquid"
  };
};