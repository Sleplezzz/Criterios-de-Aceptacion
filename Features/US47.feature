Feature: US47 – Activación del coach virtual

    Como usuario que realiza simulaciones
    Quiero activar un coach virtual durante mis prácticas
    Para recibir orientación inmediata y consejos adaptativos.

    Scenario: E1 - Slide “Activación del coach virtual”

        Given que el visitante accede a la opción “Coach virtual y 
            comunicación avanzada” desde el menú desplegable de “Explora”
        And navega el carrusel de funcionalidades
        When llega al slide “Activación del coach virtual”
        Then se visualiza el mockup y un texto explicativo sobre activación