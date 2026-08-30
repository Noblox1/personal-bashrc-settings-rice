python3 -c '
path = "/home/cube/.local/share/pipx/venvs/yewtube/lib/python3.14/site-packages/mps_youtube/streams.py"
with open(path, "r") as f:
    code = f.read()
old = "get_size(ytid, stream[\x27url\x27], preloading=True)"
new = "if stream:\n        get_size(ytid, stream[\x27url\x27], preloading=True)"
code = code.replace(old, new)
with open(path, "w") as f:
    f.write(code)
'
