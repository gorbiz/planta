span=$((24*60)) # 24 hours
duration=60 # 1 minute duration
fps=20 # 20 fps
out=24hrs.mp4
find /dev/v4l/by-id/ -type l -printf "%f\n" | xargs -I{} sh gen_vid.sh images/{} $span $duration $fps $out