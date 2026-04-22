{ lib, pkgs, ... }:
{
  lsp.servers.harper-ls = {
    enable = true;
    config = {
      userDictPath = "~/haper-dict.txt";
      linters = {
        SpellCheck = true;
        SpelledNumbers = false;
        AnA = true;
        SentenceCapitalization = true;
        UnclosedQuotes = true;
        WrongQuotes = false;
        LongSentences = true;
        RepeatedWords = true;
        Spaces = true;
        Matcher = true;
        CorrectNumberSuffix = true;
      };
      codeActions = {
        ForceStable = true;
      };
      markdown = {
        IgnoreLinkTitle = false;
      };
      diagnosticSeverity = "hint";
      isolateEnglish = false;
      dialect = "American";
      maxFileLength = 120000;
      ignoredLintsPath = "";
      excludePatterns = { };
    };
  };
}
