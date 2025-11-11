Feature: US59 - Desplazamiento facilitado por la página
  Como estudiante curioso
  Quiero navegar de forma rápida, fácil y ordenada
  Para no perderme mientras exploro el sitio web

  Scenario: E1 - Desplazamiento mediante navegación del Header
    Given que el usuario se encuentra en el Landing Page
    When selecciona un botón del Header
    Then el sistema hace scroll suave a la sección correspondiente