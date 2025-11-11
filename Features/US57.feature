Feature: US57 - Visualizar testimonios de usuarios
  Como usuario
  Quiero leer testimonios reales de usuarios satisfechos
  Para tener confianza en la efectividad de HireReady antes de registrarme

  Scenario: E1 - Presentación de testimonios
    Given que el visitante se desplaza a la sección "Lo que dicen nuestros usuarios"
    When se muestran los testimonios
    Then el sistema presenta tarjetas con el nombre, cargo y comentario de cada usuario

  Scenario: E2 - Navegación a sección Testimonios mediante Header
    Given que el usuario está en el Landing Page
    When hace clic en el <boton> "Testimonios" del Header
    Then el sistema hace scroll suave a la <seccion> "Lo que dicen nuestros usuarios"

    Examples:
    | Boton            | Seccion                      |
    | Inicio           | Hero                         |
    | Características  | Características principales  |
    | Planes           | Nuestro Planes               |
    | Testimonios      | Que dicen nuestros usuarios  |

  Scenario: E3 - Navegación desde Testimonios a otra sección
    Given que el usuario está visualizando la sección "Lo que dicen nuestros usuarios"
    When hace clic en otro <boton> del Header
    Then el sistema hace scroll suave a la <seccion> correspondiente

    Examples:
    | Boton            | Seccion                      |
    | Inicio           | Hero                         |
    | Características  | Características principales  |
    | Planes           | Nuestro Planes               |
    | Testimonios      | Que dicen nuestros usuarios  |