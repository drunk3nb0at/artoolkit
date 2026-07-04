// Date: 0701/2026
// Input: a folder with drawing process image (.jpeg)
// Output: a gif 

// resize
md /resize

// convert *.jpeg -resize 70% resize/newname%02d.jpeg
convert *.jpeg -resize 800x resize/resized%02d.jpeg

// make a gif
cd /resize
convert -fuzz 1% -delay 50 -loop 0 *.jpeg -coalesce -layers OptimizeTransparency Catopus.gif

