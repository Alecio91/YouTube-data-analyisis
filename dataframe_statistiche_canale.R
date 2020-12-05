library(tuber)
library(writexl)

yt_oauth("clientid.apps.googleusercontent.com", "password", token = "")

DataframeStats <- as.data.frame(get_all_channel_video_stats(channel_id = "channel_id"))

## se si vuole salvare il dataframe in Excel ##

write_xlsx(DataframeStats, "C:\\Users\Percorso\Nomedataframe.xlsx")

