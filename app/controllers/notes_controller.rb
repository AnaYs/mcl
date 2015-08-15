class NotesController < ApplicationController
  include NotesHelper

  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    @note.save
    redirect_to note_path(@note)
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to :notes
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    @note.update(note_params)
    redirect_to note_path(@note)
  end

end
