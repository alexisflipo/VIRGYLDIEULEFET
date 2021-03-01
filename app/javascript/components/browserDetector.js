import Bowser from "bowser";
const browserDetector = () => {
  const browser = Bowser.getParser(window.navigator.userAgent);
  if (
    browser.getBrowserName() === "Safari" &&
    browser.getBrowserVersion() < "14"
  ) {
    if (
      window.confirm(
        "Votre navigateur Safari n'est pas à jour, vérifiez bien d'avoir au minimum la version 14 pour profiter pleinement du contenu. Cliquez sur ok pour télécharger la dernière version via le site Apple. Dividproduction vous remercie."
      )
    ) {
      window.open("https://support.apple.com/fr-fr/HT204416", "_blank");
    }
  }
};

export { browserDetector };
