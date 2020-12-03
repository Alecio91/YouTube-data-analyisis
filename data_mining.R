library(tuber)
library(tidyverse)
library(lubridate)
library(stringi)
library(wordcloud)
library(gridExtra)

# Acesso alle APIs di YouTube tramite Google Account

# una volta ottenuti id_client e password inserirli, lasciare token vuoto

yt_oauth("id_client.apps.googleusercontent.com", "password", token = "")

# se l'operazione è andata a buon fine sulla console comparirà la richiesta di autorizzazione 

# ottenere la statistiche di un video (l'id video compare alla fine dell'URL)

gets_stats(video_id = "bps3m4eFTuE")

# ottenere la statistiche di un canale

gets_channel_stats(channel_id = "bps3m4eFTuE")

# ottenere i dettagli tecnici del video

gets_video_details(video_id = "bps3m4eFTuE")

# ottenere i sottotitoli dei video

gets_captions(video_id = "bps3m4eFTuE")

# cercare video sulla base di una query

ObamaYT <- yt_search("Barack Obama")

head(res[,1_3])

# ottenere i commenti di un video

comments <- get_comment_threads(c(video_id = "bps3m4eFTuE"))

head(comments)
