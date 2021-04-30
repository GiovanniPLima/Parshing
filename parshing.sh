#!/bin/bash
 # MISSÃO = ACHAR SUBDOMINIOS = PARSHING EM HTML		
  # 1 PARTE = BAIXAR O INDEX HTML ( WGET + SITE )
  # 2 PARTE = FILTRAR POR // CUT -D "/" -F3
  # 3 LIMPAR FILTRO = GREP "\."
  # 4 PARTE = CUTD -D '"' -F1
  # 5 REMOVER = GREP -V "<L"
  # 6 FINALIZAR E DIRECIONAR PARA UM ARQUIVO 
  echo "                                                                                                           

 
  

______ _ _        _           _  ______         
| ___ (_) |      | |         (_) |  ___|        
| |_/ /_| |_ ___ | |__  _   _ _  | |_ ___  _ __ 
|  __/| | __/ _ \| '_ \| | | | | |  _/ _ \| '__|
| |   | | || (_) | | | | |_| | | | || (_) | |   
\_|   |_|\__\___/|_| |_|\__,_|_| \_| \___/|_|   
                                                
                                                
______              _               _   _ ________  ___ _     
| ___ \            (_)             | | | |_   _|  \/  || |    
| |_/ /_ _ _ __ ___ _ _ __   __ _  | |_| | | | | .  . || |    
|  __/ _` | '__/ __| | '_ \ / _` | |  _  | | | | |\/| || |    
| | | (_| | |  \__ \ | | | | (_| | | | | | | | | |  | || |____
\_|  \__,_|_|  |___/_|_| |_|\__, | \_| |_/ \_/ \_|  |_/\_____/
                             __/ |                            
                            |___/                             
  


                                              
                                         
                          " 
 
 
 
 read index
  if [index == ""]
then
		echo "Modo de Usar: $0 + arquivo.html"
else 
	grep href $index | cut -d "/" -f3 | grep "\." | cut -d '"' -f1 | grep -v "<l" > lista

	for url in $(cat lista); do host $url | grep "has address"; done
                     
  
  
 fi
 echo "
________                 _        ______              _             
|  ___(_)               | |       | ___ \            (_)            
| |_   _ _ __ ___     __| | ___   | |_/ /_ _ _ __ ___ _ _ __   __ _ 
|  _| | | '_ ` _ \   / _` |/ _ \  |  __/ _` | '__/ __| | '_ \ / _` |
| |   | | | | | | | | (_| | (_) | | | | (_| | |  \__ \ | | | | (_| |
\_|   |_|_| |_| |_|  \__,_|\___/  \_|  \__,_|_|  |___/_|_| |_|\__, |
                                                               __/ |
                                                              |___/  "
