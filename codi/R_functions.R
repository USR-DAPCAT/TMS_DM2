
lectura_fitxers_origen <- function(dir=params$dir_dades_origen) {
  
  # dir="dades"
  
  if (dir=="dades/mostra") { 

      #i)
      dt_exploracions<<-readRDS(here::here(dir,"exploracions.rds"))%>% as_tibble()
      #ii)
      dt_facturacions<<-readRDS(here::here(dir,"facturacions.rds"))%>% as_tibble()
      #iii)
      dt_poblacio<<-readRDS(here::here(dir,"pacients.rds"))%>% as_tibble()
      #iv)
      dt_prescripcions<<-readRDS(here::here(dir,"prescripcions.rds"))%>% as_tibble()
      #v)
      dt_problemes_salut<<-
        readRDS(here::here(dir,"problemes_salut.rds" ) )%>% as_tibble() %>%
        select(idp=IDP,cod=GRUP_PS,dat=DALTA,dbaixa=DBAIXA)
        #vi)
      dt_variables<<-readRDS(here::here(dir,"variables.rds"))%>% as_tibble()  
  
  } else {
      
     #i)
    dt_exploracions<<-fread(here::here(dir,"exploracions.txt"))%>% as_tibble()
    #ii)
    dt_facturacions<<-fread(here::here(dir,"facturacions.txt"))%>% as_tibble()
    #iii)
    dt_poblacio<<-fread(here::here(dir,"pacients.txt"))%>% as_tibble()
    #iv)
    dt_prescripcions<<-fread(here::here(dir,"prescripcions.txt"))%>% as_tibble()
    #v)
    dt_problemes_salut<<-
      fread(here::here(dir,"problemes_salut.txt" ) )%>% as_tibble() %>%
      select(idp=IDP,cod=GRUP_PS,dat=DALTA,dbaixa=DBAIXA)
    #vi)
    dt_variables<<-fread(here::here(dir,"variables.txt"))%>% as_tibble()  
    
    
    
    }
  
  }