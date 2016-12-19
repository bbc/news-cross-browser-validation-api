  Feature: Media Playback:

  In order to consume media content, As a user I want to playback media on any browser and device

  @media_map
  Scenario Outline: Playback Media on MAP
    Given I on a <media_asset> page
    When I click the play button
    Then it should playback

    Examples:
      | Type      | media_asset                                                                                             |
      | MPS Audio | hindi/entertainment/2016/03/160318_bbc70mm_ip                                                           |
      | MPS Video | mundo/noticias/2016/03/160322_video_belgica_bruselas_interior_aeropuerto_zaventem_explosiones_ataques_lv|
      | OMP Video | gahuza/35857408                                                                                         |
      | OMP Audio | japanese/video-35868772                                                                                 |
      | Live Video| arabic/tvandradio/2013/05/000000_bbcarabic_livetv                                                       |


  @media_nitro
  Scenario Outline: Playback Media on Nitro Pages
    Given I on a <nitro_asset> page
    When I click the play button
    Then it should playback

    Examples:
      | Type             | nitro_asset                       |
      | Live Nitro Radio | arabic/bbc_arabic_radio/liveradio |
      | Nitri Radio      | sinhala/bbc_sinhala_radio/p03r3gpk|



  @media_storypage
  Scenario Outline: Playback Media on Story Pages
    Given I on a <storypage_asset> page
    When I click the play button
    Then it should playback

    Examples:
      | Type  | storypage_asset                                                    |
      | Video | mundo/noticias/2016/03/160313_turquia_explosion_ankara_muertos_ilm |