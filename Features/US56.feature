Feature: US56 - Comparar los planes de suscripción
  Como usuario interesado
  Quiero visualizar los diferentes planes disponibles con sus beneficios
  Para elegir la opción que mejor se adapte a mis necesidades
  
  Scenario: E1 - Presentación de planes
    Given que el usuario visualiza la sección "Nuestros Planes"
    When observa las tarjetas de planes
    Then se muestran tres opciones con su nombre, precio y beneficios

  Scenario: E2 - Navegación a sección Planes mediante Header
    Given que el usuario está en el Landing Page
    When hace clic en el <boton> "Planes" del Header
    Then el sistema lo redirecciona a la <seccion> "Nuestros Planes"

    Examples:
    | Boton            | Seccion                      |
    | Inicio           | Hero                         |
    | Características  | Características principales  |
    | Planes           | Nuestro Planes               |
    | Testimonios      | Que dicen nuestros usuarios  |

  Scenario: E3 - Navegación desde Planes a otra sección
    Given que el usuario está visualizando la sección "Nuestros Planes"
    When hace clic en otro <boton> del Header
    Then el sistema lo redirecciona suave a la <seccion> correspondiente

    Examples:
    | Boton            | Seccion                      |
    | Inicio           | Hero                         |
    | Características  | Características principales  |
    | Planes           | Nuestro Planes               |
    | Testimonios      | Que dicen nuestros usuarios  |