module SongsHelper

    def artist_select(song)
        if song.artist.nil? # should list artists drop-down when editing via songs/:id/edit
            select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
        else #should show only an artist name when editing via a nested route
            hidden_field_tag "song[artist_id]", song.artist_name
        end
    end
end
