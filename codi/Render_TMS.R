## Generar informe ####


rmarkdown::render(here::here("codi","1_lectura_TMS_DM2.Rmd"),
                  output_file = here::here("resultats",paste0("Informe_LECTURA.",Sys.Date())),
                  params = list(dir_dades_origen="dades"))


## Generar informe 2 
rmarkdown::render(here::here("codi","2_preparacio_TMS_DM2.Rmd"),
                  output_file = here::here("resultats",paste0("Informe_exploratori",Sys.Date())),
                  params = list(dir_dades_origen="dades"))


