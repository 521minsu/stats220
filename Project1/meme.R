# Import magick library
library(magick)

# Original meme
# https://i.chzbgr.com/full/9461717760/h279C13DE/cat-working-home-expectation-reality-s%C3%B6zero-ste-officially-shelby-sro

# Create title text with "Working from home" in white, centered on a black background (PIPE)
title <- image_blank(860,100,"#000000") %>%
  image_annotate(text="Working from home", gravity="center",color="white",size=50)

# Create expectation subtitle in a similar setting as the title, with decreased overall size. (VARS)
expectation_text_blank <- image_blank(430,50,"#000000")
expectation_text <- image_annotate(expectation_text_blank, "Expectation:", "center", color="#FFFFFF", size=25)
expectation_text

# Read a photo of hardworking cat from internet & Crop to 1:1 ratio to fit the meme size/format (PIPE)
expectation_photo <- image_read("http://media.hyperrhiz.io/hyperrhiz21/miscellany/sewell/fig1.jpg") %>%
  image_crop(geometry_area(430, 430, 200), repage=FALSE) 
expectation_photo

# Create reality subtitle in the same setting as the expectation subtitle (PIPE)
reality_text <- image_blank(430,50,"#000000") %>%
  image_annotate("Reality:", "center", color="white", size=25)

# Read a photo of sleeping cat from internet & Resize/Crop to 1:1 ratio to fit the meme size/format (VARS)
reality_photo_original <- image_read("https://i.pinimg.com/originals/ae/8e/21/ae8e21e0e5cd0a0a94a5edbefcb057d4.jpg")
reality_photo_resized <- image_resize(reality_photo_original, geometry_size_pixels(height=430, preserve_aspect = TRUE))
reality_photo <- image_crop(reality_photo_resized, geometry_area(430, 430, 150))

# Combine all photos/parts from above (VARS)
expectation_combined <- image_append(c(expectation_text, expectation_photo), stack=TRUE)
reality_combined <- image_append(c(reality_text, reality_photo), stack=TRUE)
exp_real_combined <- image_append(c(expectation_combined, reality_combined))
meme <- image_append(c(title, exp_real_combined), stack=TRUE)

image_write(meme, "my_meme.png")
