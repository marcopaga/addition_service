# Addition Service

Das ist eine einfache Elixir/Plug Web-Applikation, die zwei Zahlen addiert und das Resultat zurückgibt. Dieses Projekt wurde gemeinsam von mir und [ChatGPT](https://openai.com/research/chatgpt), einem KI-Sprachmodell von OpenAI, erstellt, um zu sehen, wie gut wir zusammenarbeiten können.

## Voraussetzungen

- Elixir 1.9 oder höher

## Installation und Start

1. Klonen Sie das Repository:

    ```
    git clone https://github.com/marcopaga/addition_service.git
    ```

2. Wechseln Sie in das Verzeichnis des Projekts und installieren Sie die Abhängigkeiten mit:

    ```
    cd addition_service
    mix deps.get
    ```

3. Starten Sie den Server:

    ```
    mix run --no-halt
    ```

## Anwendung

Nachdem der Server gestartet wurde, können Sie die Additionsfunktion durch Aufruf der folgenden URL in einem Webbrowser oder über ein HTTP-Client-Tool wie `curl` oder `httpie` nutzen:

  ```
  http://localhost:4000/?a=1&b=2
  ```


In diesem Beispiel addiert der Service die Zahlen 1 und 2 und gibt das Resultat zurück.
