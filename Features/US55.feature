Feature: US55 - Visualización de características de producto
  Como visitante del sitio web
  Quiero ver claramente las características principales de la plataforma
  Para conocer los beneficios que ofrece antes de registrarme

  Scenario: E1 - Presentación de características
    Given que el visitante accede al Landing Page
    When se desplaza a la sección "Características principales"
    Then el sistema muestra cuatro tarjetas con titulo, ícono y descripcion 

  Scenario: E2 - Navegación desde el Header a diferentes secciones
    Given que el usuario está en el Header del Landing Page
    When hace clic en el <boton> "Características" del Header
    Then el sistema lo redirecciona a la <seccion> "Características principales"

    Examples:
    | Boton            | Seccion                      |
    | Inicio           | Hero                         |
    | Características  | Características principales  |
    | Planes           | Nuestro Planes               |
    | Testimonios      | Que dicen nuestros usuarios  |

  Scenario: E3 - Navegación desde características a otras secciones
    Given que el usuario está visualizando la sección "Características principales"
    When hace clic en otro <boton> del Header
    Then el sistema lo redirecciona a la <seccion> deseada

    Examples:
    | Boton            | Seccion                      |
    | Inicio           | Hero                         |
    | Características  | Características principales  |
    | Planes           | Nuestros Planes              |
    | Testimonios      | Que dicen nuestros usuarios  |