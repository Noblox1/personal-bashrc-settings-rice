ytcli() {
    if [ -z "$1" ]; then
        read -p "Search YouTube: " query
    else
        query="$*"
    fi

    echo "🔍 Searching YouTube for '$query'..."

    # 1. Fetch data separated by a pipe symbol
    video_selection=$(yt-dlp "ytsearch30:$query" --flat-playlist --print "%(id)s|%(title)s - %(uploader)s" 2>/dev/null | \
        fzf --prompt="Select video (Enter to play): " --height=40% --reverse --delimiter="|" --with-nth=2..)

    if [[ -n "$video_selection" ]]; then
        # 2. Isolate the 11-character video ID
        video_id=$(echo "$video_selection" | cut -d'|' -f1)

        # 3. Create the base URL variable
        base_url="https://youtube.com/watch?v="

        # 4. Glue the base URL and the appended part together directly
        full_link="${base_url}${video_id}"

        echo "🎬 Launching: $full_link"

        # Pass the fully assembled link variable straight to mpv
        mpv "$full_link"
    else
        echo "❌ Selection cancelled."
    fi
}
