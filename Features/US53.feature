Feature: US53 – Recomendaciones de lenguaje corporal en tiempo real

    Como usuario
    Quiero recibir recomendaciones instantáneas sobre mi lenguaje corporal 
        mientras practico
    Para corregir mi postura o gestos durante la simulación

    Scenario: E1 – Presentación del slide “Recomendaciones en tiempo real”

        Given que el visitante accede a la opción “Coach virtual y comunicación 
            avanzada” desde el menú desplegable de “Explora”
        And navega el carrusel de funcionalidades
        When llega al slide “Recomendaciones en tiempo real”
        Then se visualiza un mockup demostrando las recomendaciones y un texto 
            explicativo sobre la asistencia en tiempo real