module NotesHelper

  def note_params
    params.require(:note).permit(:title, :topic, :content)
  end
end
